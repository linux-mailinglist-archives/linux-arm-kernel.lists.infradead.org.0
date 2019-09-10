Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93EFAEED9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 17:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5hTPnvoIHyrKo0+IkuWSuRVIyu9jZQhnHhtJ/dBraQ=; b=OUhIkc79vkaJsD
	UpPTXTDQLRqvRMjNCBiTwP3jMfzaTWJoyQnSv7b+r+4bJWtImKDNlO6J7v2QrsW4VMuc2Jq3ui9E+
	/MkCTeGQMkgEdE0MpACtoZfW6kdZiBjmFTniGa4BruHsp8Kwx1shX+Li/9bV64RMl3/GDWwzC97zH
	mTuEVHD/VegQ9DQgg2DW9u/z5LLWmZrLykUfsRVDwNiQYZv8I5PXqJQzSTwxu9grvWl4/byhLFWy2
	ygYY6Mi8XVL8VuFDS680yCGxFmC7Sfz7GFMVeC9FN08qcl6cbW0zLTrZmGYNVl2JHZ8Co6PUiRQET
	vOnHL+ljz3XXkHNLlbRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iMG-0005gC-CZ; Tue, 10 Sep 2019 15:47:08 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7iM5-0005fl-Bu
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 15:46:58 +0000
Received: from localhost (unknown [148.69.85.38])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3697E154F788C;
 Tue, 10 Sep 2019 08:46:55 -0700 (PDT)
Date: Tue, 10 Sep 2019 17:46:53 +0200 (CEST)
Message-Id: <20190910.174653.800353422834551780.davem@davemloft.net>
To: alexandru.ardelean@analog.com
Subject: Re: [PATCH] net: stmmac: socfpga: re-use the `interface` parameter
 from platform data
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190910.174544.945128884852877943.davem@davemloft.net>
References: <20190906123054.5514-1-alexandru.ardelean@analog.com>
 <20190910.174544.945128884852877943.davem@davemloft.net>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 10 Sep 2019 08:46:57 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_084657_407739_59008C19 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRGF2aWQgTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0Pg0KRGF0ZTogVHVlLCAxMCBT
ZXAgMjAxOSAxNzo0NTo0NCArMDIwMCAoQ0VTVCkNCg0KPiBGcm9tOiBBbGV4YW5kcnUgQXJkZWxl
YW4gPGFsZXhhbmRydS5hcmRlbGVhbkBhbmFsb2cuY29tPg0KPiBEYXRlOiBGcmksIDYgU2VwIDIw
MTkgMTU6MzA6NTQgKzAzMDANCj4gDQo+PiBUaGUgc29jZnBnYSBzdWItZHJpdmVyIGRlZmluZXMg
YW4gYGludGVyZmFjZWAgZmllbGQgaW4gdGhlIGBzb2NmcGdhX2R3bWFjYA0KPj4gc3RydWN0IGFu
ZCBwYXJzZXMgaXQgb24gaW5pdC4NCj4+IA0KPj4gVGhlIHNoYXJlZCBgc3RtbWFjX3Byb2JlX2Nv
bmZpZ19kdCgpYCBmdW5jdGlvbiBhbHNvIHBhcnNlcyB0aGlzIGZyb20gdGhlDQo+PiBkZXZpY2Ut
dHJlZSBhbmQgbWFrZXMgaXQgYXZhaWxhYmxlIG9uIHRoZSByZXR1cm5lZCBgcGxhdF9kYXRhYCAo
d2hpY2ggaXMNCj4+IHRoZSBzYW1lIGRhdGEgYXZhaWxhYmxlIHZpYSBgbmV0ZGV2X3ByaXYoKWAp
Lg0KPj4gDQo+PiBBbGwgdGhhdCdzIG5lZWRlZCBub3cgaXMgdG8gZGlnIHRoYXQgaW5mb3JtYXRp
b24gb3V0LCB2aWEgc29tZQ0KPj4gYGRldl9nZXRfZHJ2ZGF0YSgpYCAmJiBgbmV0ZGV2X3ByaXYo
KWAgY2FsbHMgYW5kIHJlLXVzZSBpdC4NCj4+IA0KPj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZHJ1
IEFyZGVsZWFuIDxhbGV4YW5kcnUuYXJkZWxlYW5AYW5hbG9nLmNvbT4NCj4gDQo+IFRoaXMgZG9l
c24ndCBidWlsZCBldmVuIG9uIG5ldC1uZXh0Lg0KDQpTcGVjaWZpY2FsbHk6DQoNCmRyaXZlcnMv
bmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXNvY2ZwZ2EuYzogSW4gZnVuY3Rpb24g
oXNvY2ZwZ2FfZ2VuNV9zZXRfcGh5X21vZGWiOg0KZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNy
by9zdG1tYWMvZHdtYWMtc29jZnBnYS5jOjI2NDo0NDogZXJyb3I6IKFwaHltb2RloiB1bmRlY2xh
cmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiChcGh5X21vZGVz
oj8NCiAgMjY0IHwgICBkZXZfZXJyKGR3bWFjLT5kZXYsICJiYWQgcGh5IG1vZGUgJWRcbiIsIHBo
eW1vZGUpOw0KICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXn5+fn5+fg0KLi9pbmNsdWRlL2xpbnV4L2RldmljZS5oOjE0OTk6MzI6IG5vdGU6IGluIGRl
ZmluaXRpb24gb2YgbWFjcm8goWRldl9lcnKiDQogMTQ5OSB8ICBfZGV2X2VycihkZXYsIGRldl9m
bXQoZm10KSwgIyNfX1ZBX0FSR1NfXykNCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF5+fn5+fn5+fn5+DQpkcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9k
d21hYy1zb2NmcGdhLmM6MjY0OjQ0OiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRpZmllciBp
cyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBpbg0KICAy
NjQgfCAgIGRldl9lcnIoZHdtYWMtPmRldiwgImJhZCBwaHkgbW9kZSAlZFxuIiwgcGh5bW9kZSk7
DQogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+
fn5+DQouL2luY2x1ZGUvbGludXgvZGV2aWNlLmg6MTQ5OTozMjogbm90ZTogaW4gZGVmaW5pdGlv
biBvZiBtYWNybyChZGV2X2VycqINCiAxNDk5IHwgIF9kZXZfZXJyKGRldiwgZGV2X2ZtdChmbXQp
LCAjI19fVkFfQVJHU19fKQ0KICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Xn5+fn5+fn5+fn4NCmRyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXNv
Y2ZwZ2EuYzogSW4gZnVuY3Rpb24goXNvY2ZwZ2FfZ2VuMTBfc2V0X3BoeV9tb2RlojoNCmRyaXZl
cnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXNvY2ZwZ2EuYzozNDA6NjogZXJy
b3I6IKFwaHltb2RloiB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRp
ZCB5b3UgbWVhbiChcGh5X21vZGVzoj8NCiAgMzQwIHwgICAgICBwaHltb2RlID09IFBIWV9JTlRF
UkZBQ0VfTU9ERV9NSUkgfHwNCiAgICAgIHwgICAgICBefn5+fn5+DQogICAgICB8ICAgICAgcGh5
X21vZGVzDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
