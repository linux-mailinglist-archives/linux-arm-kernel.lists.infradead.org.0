Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C694EB384F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tMw0XE2p3NFhHittoewpbe68DOfjulHDYUXkzFef9k=; b=DoGRjnbkNWjim5
	bUCKy6sKC9i4KkIH8yixXOj9liEo/nB1AythexG+q7uAdXFGkwLJ9a6mtgQ7hOWnurwhX3wwoG9OD
	tWMoRoxssCz+k443wdB0vC234zwdp8b6bajSDikcg9IiOH1VIptyy2oulUg+80z+DMCs19DLx4D8v
	e+QOjJR8p5fi0q2OmtmvtV/lTWGMEtpBu6KSIEm/dF/On9lSCuCpgQy7egUyLzPoxgfOkNd2NfA2W
	Po1TE+pDBPFZX9f3a9oLYuXApoJtgNYtdWMVKIU9Gz8Z22DBl6zmzDKd1nzAGDg5lgt9hvyJ8OotS
	n4Np/BUv0Yc44/+LZU0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oOe-0006Rv-Qi; Mon, 16 Sep 2019 10:38:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oMv-0005Oq-7b
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:36:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 0662A28D1E3
Subject: Re: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
To: Andrzej Hajda <a.hajda@samsung.com>, Brian Masney
 <masneyb@onstation.org>, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 agross@kernel.org, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
References: <20190815004854.19860-1-masneyb@onstation.org>
 <CGME20190815004918epcas3p135042bc52c7e3c8b1aca7624d121af97@epcas3p1.samsung.com>
 <20190815004854.19860-6-masneyb@onstation.org>
 <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <98199a9b-f7e0-ef95-62d7-401273457692@collabora.com>
Date: Mon, 16 Sep 2019 12:36:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <dc10dd84-72e2-553e-669b-271b77b4a21a@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_033629_503175_73CDE470 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcnplaiBhbmQgQnJpYW4KCk9uIDE2LzkvMTkgMTI6MDIsIEFuZHJ6ZWogSGFqZGEgd3Jv
dGU6Cj4gT24gMTUuMDguMjAxOSAwMjo0OCwgQnJpYW4gTWFzbmV5IHdyb3RlOgo+PiBXaGVuIGF0
dGVtcHRpbmcgdG8gY29uZmlndXJlIHRoaXMgZHJpdmVyIG9uIGEgTmV4dXMgNSBwaG9uZSAobXNt
ODk3NCksCj4+IHNldHRpbmcgdXAgdGhlIGR1bW15IGkyYyBidXMgZm9yIFRYX1AwIHdvdWxkIGZh
aWwgZHVlIHRvIGFuIC1FQlVTWQo+PiBlcnJvci4gVGhlIGRvd25zdHJlYW0gTVNNIGtlcm5lbCBz
b3VyY2VzIFsxXSBzaG93cyB0aGF0IHRoZSBwcm9wZXIgdmFsdWUKPj4gZm9yIFRYX1AwIGlzIDB4
NzgsIG5vdCAweDcwLCBzbyBjb3JyZWN0IHRoZSB2YWx1ZSB0byBhbGxvdyBkZXZpY2UKPj4gcHJv
YmluZyB0byBzdWNjZWVkLgo+Pgo+PiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL0FJQ1Ava2VybmVs
X2xnZV9oYW1tZXJoZWFkL2Jsb2IvbjcuMS9kcml2ZXJzL3ZpZGVvL3NsaW1wb3J0L3NsaW1wb3J0
X3R4X3JlZy5oCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIE1hc25leSA8bWFzbmV5YkBvbnN0
YXRpb24ub3JnPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgtYW54
Nzh4eC5oIHwgMiArLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4
LWFueDc4eHguaCBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgtYW54Nzh4eC5oCj4+
IGluZGV4IDI1ZTA2M2JjZWNiYy4uYmM1MTFmYzYwNWM5IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4LWFueDc4eHguaAo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2FuYWxvZ2l4LWFueDc4eHguaAo+PiBAQCAtNiw3ICs2LDcgQEAKPj4gICNpZm5k
ZWYgX19BTlg3OHh4X0gKPj4gICNkZWZpbmUgX19BTlg3OHh4X0gKPj4gIAo+PiAtI2RlZmluZSBU
WF9QMAkJCQkweDcwCj4+ICsjZGVmaW5lIFRYX1AwCQkJCTB4NzgKPiAKPiAKPiBUaGlzIGJvdGhl
cnMgbWUgbGl0dGxlLiBUaGVyZSBhcmUgbm8gdXBzdHJlYW0gdXNlcnMsIGdyZXBwaW5nIGFuZHJv
aWQKPiBzb3VyY2VzIHN1Z2dlc3RzIHRoYXQgYm90aCB2YWx1ZXMgY2FuIGJlIHVzZWQgWzFdWzJd
wqAgKGdyZXAgZm9yICIjZGVmaW5lCj4gVFhfUDAiKSwgbW9yZW92ZXIgdGhlcmUgaXMgY29kZSBz
dWdnZXN0aW5nIGJvdGggdmFsdWVzIGNhbiBiZSB2YWxpZCBbM10uCj4gCj4gQ291bGQgeW91IHZl
cmlmeSBkYXRhc2hlZXQgd2hpY2ggaTJjIHNsYXZlIGFkZHJlc3NlcyBhcmUgdmFsaWQgZm9yIHRo
aXMKPiBjaGlwLCBpZiBib3RoIEkgZ3Vlc3MgdGhpcyBwYXRjaCBzaG91bGQgYmUgcmV3b3JrZWQu
Cj4gCgpPbiBteSBjYXNlIHRoZSB2YWxpZCBpMmMgc2xhdmUgYWRkcmVzcyBpcyAweDcwIChmcm9t
IGRhdGFzaGVldCwgdmVyeSBzb3JyeSBJCmNhbid0IHNoYXJlIGl0KSBhbmQgdGhlIGJyaWRnZSB1
c2VkIGlzIGFuIEFOWDc4MTQsIGl0IGNvdWxkIGJlIHRoYXQgQU5YNzgwOCBvcgpBTlg3ODEyIGhh
dmUgZGlmZmVyZW50IHNsYXZlIGFkZHJlc3Nlcz8KClJlZ2FyZHMsCiBFbnJpYwoKPiAKPiBbMV06
Cj4gaHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL21zbS8rL2FuZHJvaWQt
bXNtLWZsby0zLjQtamItbXIyL2RyaXZlcnMvbWlzYy9zbGltcG9ydF9hbng3ODA4L3NsaW1wb3J0
X3R4X3JlZy5oCj4gCj4gWzJdOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9BbmRyb2lkR1gvU2ltcGxl
R1gtTU0tNi4wX0g4MTVfMjBkL2Jsb2IvbWFzdGVyL2RyaXZlcnMvdmlkZW8vc2xpbXBvcnQvYW54
NzgxMi9zbGltcG9ydDc4MTJfdHhfcmVnLmgKPiAKPiBbM106Cj4gaHR0cHM6Ly9naXRodWIuY29t
L2NvbW1hYWkvYW5kcm9pZF9rZXJuZWxfbGVlY29fbXNtODk5Ni9ibG9iL21hc3Rlci9kcml2ZXJz
L3ZpZGVvL21zbS9tZHNzL2RwL3NsaW1wb3J0X2N1c3RvbV9kZWNsYXJlLmgjTDczCj4gCj4gCj4g
UmVnYXJkcwo+IAo+IEFuZHJ6ZWoKPiAKPiAKPj4gICNkZWZpbmUgVFhfUDEJCQkJMHg3YQo+PiAg
I2RlZmluZSBUWF9QMgkJCQkweDcyCj4+ICAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
