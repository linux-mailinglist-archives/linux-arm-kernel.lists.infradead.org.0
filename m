Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4637160964
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 05:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68rx4SGj971BUSoW+8UAYYw18USz3WakoGM7hnvhSno=; b=OXcBbwun2iiBOo
	zXtMeUHzKPXTrv0ys4aGnwtbbOTPZFb+tXTXBrel75W/+ZLw8iCVEa0GJQNwXJgSyJYeMlv3epeN1
	xrN/IyoNTIDeylQ9AuSfjZXCKdST4+DzBatFKrSYnMpEECz/npv57UG9j+nU6hyb0cME5TN8g20yo
	yPcKcrhyqGJvSzYWGOfFBJlw6KpbND8eARTsmt75qrmFz3dcCiVkocxMJtJNB2u7EhybX/F23xzb3
	mw3rqIXy/q4H3fwGE8Zf4RtWpZ0aHzXMiLTjHy5sjA9oVW09H8o3Pl3r5ewIpeE5H6kKT4XszJZ+i
	lEzaaaTZU/Sko5kMJAjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XZu-0000AP-La; Mon, 17 Feb 2020 04:00:14 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XZe-00009H-Vh
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 04:00:00 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D16A2158489B5;
 Sun, 16 Feb 2020 19:59:57 -0800 (PST)
Date: Sun, 16 Feb 2020 19:59:57 -0800 (PST)
Message-Id: <20200216.195957.2300038427552527679.davem@davemloft.net>
To: ilias.apalodimas@linaro.org
Subject: Re: [PATCH net-next] net: page_pool: API cleanup and comments
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200216.195300.260413184133485319.davem@davemloft.net>
References: <20200216094056.8078-1-ilias.apalodimas@linaro.org>
 <20200216.195300.260413184133485319.davem@davemloft.net>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 16 Feb 2020 19:59:58 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_195959_019805_51778797 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mcoquelin.stm32@gmail.com, kuba@kernel.org, alexandre.torgue@st.com,
 daniel@iogearbox.net, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jaswinder.singh@linaro.org,
 joabreu@synopsys.com, thomas.petazzoni@bootlin.com, jonathan.lemon@gmail.com,
 peppe.cavallaro@st.com, bpf@vger.kernel.org, lorenzo@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 hawk@kernel.org
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRGF2aWQgTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0Pg0KRGF0ZTogU3VuLCAxNiBG
ZWIgMjAyMCAxOTo1MzowMCAtMDgwMCAoUFNUKQ0KDQo+IEZyb206IElsaWFzIEFwYWxvZGltYXMg
PGlsaWFzLmFwYWxvZGltYXNAbGluYXJvLm9yZz4NCj4gRGF0ZTogU3VuLCAxNiBGZWIgMjAyMCAx
MTo0MDo1NSArMDIwMA0KPiANCj4+IEZ1bmN0aW9ucyBzdGFydGluZyB3aXRoIF9fIHVzdWFsbHkg
aW5kaWNhdGUgdGhvc2Ugd2hpY2ggYXJlIGV4cG9ydGVkLA0KPj4gYnV0IHNob3VsZCBub3QgYmUg
Y2FsbGVkIGRpcmVjdGx5LiBVcGRhdGUgc29tZSBvZiB0aG9zZSBkZWNsYXJlZCBpbiB0aGUNCj4+
IEFQSSBhbmQgbWFrZSBpdCBtb3JlIHJlYWRhYmxlLg0KPj4gDQo+PiBwYWdlX3Bvb2xfdW5tYXBf
cGFnZSgpIGFuZCBwYWdlX3Bvb2xfcmVsZWFzZV9wYWdlKCkgd2VyZSBkb2luZw0KPj4gZXhhY3Rs
eSB0aGUgc2FtZSB0aGluZy4gS2VlcCB0aGUgcGFnZV9wb29sX3JlbGVhc2VfcGFnZSgpIHZhcmlh
bnQNCj4+IGFuZCBleHBvcnQgaXQgaW4gb3JkZXIgdG8gc2hvdyB1cCBvbiBwZXJmIGxvZ3MuDQo+
PiBGaW5hbGx5IHJlbmFtZSBfX3BhZ2VfcG9vbF9wdXRfcGFnZSgpIHRvIHBhZ2VfcG9vbF9wdXRf
cGFnZSgpIHNpbmNlIHdlDQo+PiBjYW4gbm93IGRpcmVjdGx5IGNhbGwgaXQgZnJvbSBkcml2ZXJz
IGFuZCByZW5hbWUgdGhlIGV4aXN0aW5nDQo+PiBwYWdlX3Bvb2xfcHV0X3BhZ2UoKSB0byBwYWdl
X3Bvb2xfcHV0X2Z1bGxfcGFnZSgpIHNpbmNlIHRoZXkgZG8gdGhlIHNhbWUNCj4+IHRoaW5nIGJ1
dCB0aGUgbGF0dGVyIGlzIHRyeWluZyB0byBzeW5jIHRoZSBmdWxsIERNQSBhcmVhLg0KPj4gDQo+
PiBBbHNvIHVwZGF0ZSBuZXRzZWMsIG12bmV0YSBhbmQgc3RtbWFjIGRyaXZlcnMgd2hpY2ggdXNl
IHRob3NlIGZ1bmN0aW9ucy4NCj4+IA0KPj4gU3VnZ2VzdGVkLWJ5OiBKb25hdGhhbiBMZW1vbiA8
am9uYXRoYW4ubGVtb25AZ21haWwuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogSWxpYXMgQXBhbG9k
aW1hcyA8aWxpYXMuYXBhbG9kaW1hc0BsaW5hcm8ub3JnPg0KPiANCj4gQXBwbGllZCB0byBuZXQt
bmV4dCwgdGhhbmtzLg0KDQpBY3R1YWxseSB0aGlzIGRvZXNuJ3QgY29tcGlsZSwgcGxlYXNlIHJl
c3BpbjoNCg0KZHJpdmVycy9uZXQvZXRoZXJuZXQvc29jaW9uZXh0L25ldHNlYy5jOiBJbiBmdW5j
dGlvbiChbmV0c2VjX3VuaW5pdF9wa3RfZHJpbmeiOg0KZHJpdmVycy9uZXQvZXRoZXJuZXQvc29j
aW9uZXh0L25ldHNlYy5jOjEyMDE6NDogZXJyb3I6IHRvbyBmZXcgYXJndW1lbnRzIHRvIGZ1bmN0
aW9uIKFwYWdlX3Bvb2xfcHV0X3BhZ2WiDQogICAgcGFnZV9wb29sX3B1dF9wYWdlKGRyaW5nLT5w
YWdlX3Bvb2wsIHBhZ2UsIGZhbHNlKTsNCiAgICBefn5+fn5+fn5+fn5+fn5+fn4NCkluIGZpbGUg
aW5jbHVkZWQgZnJvbSBkcml2ZXJzL25ldC9ldGhlcm5ldC9zb2Npb25leHQvbmV0c2VjLmM6MTc6
DQouL2luY2x1ZGUvbmV0L3BhZ2VfcG9vbC5oOjE3Mjo2OiBub3RlOiBkZWNsYXJlZCBoZXJlDQog
dm9pZCBwYWdlX3Bvb2xfcHV0X3BhZ2Uoc3RydWN0IHBhZ2VfcG9vbCAqcG9vbCwgc3RydWN0IHBh
Z2UgKnBhZ2UsDQogICAgICBefn5+fn5+fn5+fn5+fn5+fn4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
