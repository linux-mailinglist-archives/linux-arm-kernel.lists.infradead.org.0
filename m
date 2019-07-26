Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF6376403
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wHjaYbhf9UPwJOsYWrD7MX5flTzEhKbY0a3+kZsYMQ=; b=eX9CpguUcADFix
	vzwqdjdY3kjLZdIhSSOPdsH6MjNOg1mYVQFvhJbK7RREvsnYM64M/V6WxDTqEIkijQrGBNSLBkkRJ
	/0NICvlFQ5+1R8wjk0j+mSUwA+74wJAasucPtvH+dpoCVmkrZn7d7dEQ1zKrxlZqNHow/+N5TCmFU
	IkKQBM6Fm0YF5SXAgqHqRULg3gJwqe2lQWYbieorADYOH9BWVBNTVCEAaUv5JRrg9kM0UiH4VvMGm
	M3gGTRigIA+/+7YLgS8dqXTyo3HyI3Aolgvxtfmt//+QfkIbuuwWkdN9nSFS7Y0G8r2e2mRXjfoM0
	iPkVZXbfwY/dsAxFZsLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxxz-0008GT-R6; Fri, 26 Jul 2019 11:00:51 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxxq-0008Fi-FC
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:00:44 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 0FABA5C02B3;
 Fri, 26 Jul 2019 13:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1564138837;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EYDHF2viGAO7INulhQjnGn1wMlyhHlC54xWBdg+6oIw=;
 b=Abl1Av9XYNIGg7/KWzSis/iAAeoLSkkVbDapmS9iSmxuO/x9+keLZx4mhaq96DkqPNeAE1
 Lg0y2TsF9fLpyY4ZCna4GxpQulihTPQ61oUSrDCCx06gBltqE5dOSXM04sqDOCi6Ses1+u
 MeuI7kqT2SLCl26GU59MynKLg9ZyZuM=
MIME-Version: 1.0
Date: Fri, 26 Jul 2019 13:00:37 +0200
From: Stefan Agner <stefan@agner.ch>
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH 1/1] drm/mxsfb: Read bus flags from bridge if present
In-Reply-To: <9390060f65f94722cb13101d4835d9048037f7a0.1564134488.git.agx@sigxcpu.org>
References: <cover.1564134488.git.agx@sigxcpu.org>
 <9390060f65f94722cb13101d4835d9048037f7a0.1564134488.git.agx@sigxcpu.org>
Message-ID: <cdf94095134f91656752d4872fea9d3c@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_040042_655311_9CB915C0 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marek Vasut <marex@denx.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robert Chiras <robert.chiras@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNy0yNiAxMTo0OSwgR3VpZG8gR8O8bnRoZXIgd3JvdGU6Cj4gVGhlIGJyaWRnZSBt
aWdodCBoYXZlIHNwZWNpYWwgcmVxdWlybWVudGVzIG9uIHRoZSBpbnB1dCBidXMuIFRoaXMKPiBp
cyBlLmcuIHVzZWQgYnkgdGhlIGlteC1ud2wgYnJpZGdlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1
aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+CgpMb29rcyBnb29kIHRvIG1lLgoKUmV2aWV3
ZWQtYnk6IFN0ZWZhbiBBZ25lciA8c3RlZmFuQGFnbmVyLmNoPgoKClRoYXQgaXMgc2ltaWxhciB0
byB3aGF0IEkgc2VudCBmb3IgdGhlIGlteCBEUk0gZHJpdmVyOgoKaHR0cHM6Ly9sa21sLm9yZy9s
a21sLzIwMTgvOS8xMi85MTMKCkkgcHJvYmFibHkgc2hvdWxkIGZvbGxvdyB1cCBvbiB0aGF0IHBh
dGNoc2V0LgoKLS0KU3RlZmFuCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJf
Y3J0Yy5jIHwgNSArKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9j
cnRjLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9jcnRjLmMKPiBpbmRleCBlODRi
YWMzYTU0MWQuLjNiOGViM2FjMTNiNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXhz
ZmIvbXhzZmJfY3J0Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMu
Ywo+IEBAIC0yMTUsNyArMjE1LDcgQEAgc3RhdGljIHZvaWQgbXhzZmJfY3J0Y19tb2RlX3NldF9u
b2ZiKHN0cnVjdAo+IG14c2ZiX2RybV9wcml2YXRlICpteHNmYikKPiAgewo+ICAJc3RydWN0IGRy
bV9kZXZpY2UgKmRybSA9IG14c2ZiLT5waXBlLmNydGMuZGV2Owo+ICAJc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKm0gPSAmbXhzZmItPnBpcGUuY3J0Yy5zdGF0ZS0+YWRqdXN0ZWRfbW9kZTsKPiAt
CWNvbnN0IHUzMiBidXNfZmxhZ3MgPSBteHNmYi0+Y29ubmVjdG9yLT5kaXNwbGF5X2luZm8uYnVz
X2ZsYWdzOwo+ICsJdTMyIGJ1c19mbGFncyA9IG14c2ZiLT5jb25uZWN0b3ItPmRpc3BsYXlfaW5m
by5idXNfZmxhZ3M7Cj4gIAl1MzIgdmRjdHJsMCwgdnN5bmNfcHVsc2VfbGVuLCBoc3luY19wdWxz
ZV9sZW47Cj4gIAlpbnQgZXJyOwo+ICAKPiBAQCAtMjM5LDYgKzIzOSw5IEBAIHN0YXRpYyB2b2lk
IG14c2ZiX2NydGNfbW9kZV9zZXRfbm9mYihzdHJ1Y3QKPiBteHNmYl9kcm1fcHJpdmF0ZSAqbXhz
ZmIpCj4gIAo+ICAJY2xrX3NldF9yYXRlKG14c2ZiLT5jbGssIG0tPmNydGNfY2xvY2sgKiAxMDAw
KTsKPiAgCj4gKwlpZiAobXhzZmItPmJyaWRnZSAmJiBteHNmYi0+YnJpZGdlLT50aW1pbmdzKQo+
ICsJCWJ1c19mbGFncyA9IG14c2ZiLT5icmlkZ2UtPnRpbWluZ3MtPmlucHV0X2J1c19mbGFnczsK
PiArCj4gIAlEUk1fREVWX0RFQlVHX0RSSVZFUihkcm0tPmRldiwgIlBpeGVsIGNsb2NrOiAlZGtI
eiAoYWN0dWFsOiAlZGtIeilcbiIsCj4gIAkJCSAgICAgbS0+Y3J0Y19jbG9jaywKPiAgCQkJICAg
ICAoaW50KShjbGtfZ2V0X3JhdGUobXhzZmItPmNsaykgLyAxMDAwKSk7CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
