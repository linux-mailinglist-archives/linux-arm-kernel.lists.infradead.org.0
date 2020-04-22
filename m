Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8FC1B4274
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 13:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S02G6UpR4r6hH6oNjyk/7YqkTRXkOwuuEca+TOWI0bQ=; b=E5gZh3agJzk/Gb
	EqynPGiiNehQkUXisz+Nu34SYCH202rTmj2FTQo4vypULz1xUXOJE/NMblGOvH0+0h2V/wIJFMHDW
	0C3kWEuhCWOyoMP5hyDQQvloyR0PQo9VAfko8IaAykbacewjzTK5i6TGByacjmHXkOEiB0A2KKV57
	G4IDd4Wb510h2JylZkK7GwxbG9fSB8dTNuD/CNq6KZTm9puWooJaq7XdBgnuvuSsZbKfrMAGwKvXd
	mtyELQu9oBQZygqW5Li/i5EYr0+MQzsgex3P4XPM4GpFjcgWhic9oDJcR2oH9EbvTLp0dOUmkZppy
	1vy/+6tJpb5tAlrJa5mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRD8c-0008MI-Vd; Wed, 22 Apr 2020 11:01:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRD8T-0008Kc-Hv
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 11:01:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B267231B;
 Wed, 22 Apr 2020 04:01:43 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 905FE3F6CF;
 Wed, 22 Apr 2020 04:01:43 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 35482682F3D; Wed, 22 Apr 2020 12:01:42 +0100 (BST)
Date: Wed, 22 Apr 2020 12:01:42 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 08/17] clk: vexpress-osc: Support building as a module
Message-ID: <20200422110142.GT364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-9-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-9-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_040145_701025_31923638 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDg6MDFQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gRW5hYmxlIGJ1aWxkaW5nIHRoZSB2ZXhwcmVzcy1vc2MgY2xvY2sgZHJpdmVyIGFzIGEg
bW9kdWxlLgo+IAo+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+
Cj4gQ2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgo+IENjOiBTdWRlZXAgSG9s
bGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29tPgo+IENjOiBMb3JlbnpvIFBpZXJhbGlzaSA8bG9yZW56
by5waWVyYWxpc2lAYXJtLmNvbT4KPiBDYzogTWljaGFlbCBUdXJxdWV0dGUgPG10dXJxdWV0dGVA
YmF5bGlicmUuY29tPgo+IENjOiBTdGVwaGVuIEJveWQgPHNib3lkQGtlcm5lbC5vcmc+Cj4gQ2M6
IGxpbnV4LWNsa0B2Z2VyLmtlcm5lbC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8
cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2Nsay92ZXJzYXRpbGUvS2NvbmZpZyAg
ICAgICAgICAgIHwgIDQgKystLQo+ICBkcml2ZXJzL2Nsay92ZXJzYXRpbGUvY2xrLXZleHByZXNz
LW9zYy5jIHwgMTAgKysrKy0tLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvdmVyc2F0aWxl
L0tjb25maWcgYi9kcml2ZXJzL2Nsay92ZXJzYXRpbGUvS2NvbmZpZwo+IGluZGV4IDViZGQ1Yzk4
OTkwYi4uOWRlMjM5NmRjZjliIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3ZlcnNhdGlsZS9L
Y29uZmlnCj4gKysrIGIvZHJpdmVycy9jbGsvdmVyc2F0aWxlL0tjb25maWcKPiBAQCAtMTUsOCAr
MTUsOCBAQCBjb25maWcgQ0xLX1NQODEwCj4gIAkgIG9mIHRoZSBBUk0gU1A4MTAgU3lzdGVtIENv
bnRyb2xsZXIgY2VsbC4KPiAgCj4gIGNvbmZpZyBDTEtfVkVYUFJFU1NfT1NDCj4gLQlib29sICJD
bG9jayBkcml2ZXIgZm9yIFZlcnNhdGlsZSBFeHByZXNzIE9TQyBjbG9jayBnZW5lcmF0b3JzIgo+
IC0JZGVwZW5kcyBvbiBWRVhQUkVTU19DT05GSUcgfHwgQ09NUElMRV9URVNUCj4gKwl0cmlzdGF0
ZSAiQ2xvY2sgZHJpdmVyIGZvciBWZXJzYXRpbGUgRXhwcmVzcyBPU0MgY2xvY2sgZ2VuZXJhdG9y
cyIKPiArCWRlcGVuZHMgb24gVkVYUFJFU1NfQ09ORklHCgpMb29rcyBnb29kIHRvIG1lIHdpdGgg
dGhlIGV4Y2VwdGlvbiBvZiBDT01QSUxFX1RFU1QgYXBwZWFyaW5nIGluIHBhdGNoIDUgYW5kCmRp
c2FwcGVhcmluZyBoZXJlLiBXaGljaCBvbmUgc2hvdWxkIGJlIHRoZSBvbmUgdG8gc3Vydml2ZT8K
CkJlc3QgcmVnYXJkcywKTGl2aXUKCj4gIAlkZWZhdWx0IHkgaWYgQVJDSF9WRVhQUkVTUwo+ICAJ
LS0taGVscC0tLQo+ICAJICBTaW1wbGUgcmVnbWFwLWJhc2VkIGRyaXZlciBkcml2aW5nIGNsb2Nr
IGdlbmVyYXRvcnMgb24gVmVyc2F0aWxlCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3ZlcnNh
dGlsZS9jbGstdmV4cHJlc3Mtb3NjLmMgYi9kcml2ZXJzL2Nsay92ZXJzYXRpbGUvY2xrLXZleHBy
ZXNzLW9zYy5jCj4gaW5kZXggNWJiMWQ1YTcxNGQwLi5iMmIzMmZhMmQ3YzMgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9jbGsvdmVyc2F0aWxlL2Nsay12ZXhwcmVzcy1vc2MuYwo+ICsrKyBiL2RyaXZl
cnMvY2xrL3ZlcnNhdGlsZS9jbGstdmV4cHJlc3Mtb3NjLmMKPiBAQCAtNyw2ICs3LDcgQEAKPiAg
I2luY2x1ZGUgPGxpbnV4L2Nsa2Rldi5oPgo+ICAjaW5jbHVkZSA8bGludXgvY2xrLXByb3ZpZGVy
Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+IEBAIC0xMDgsNiArMTA5LDcgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgdmV4cHJlc3Nfb3NjX29mX21hdGNoW10g
PSB7Cj4gIAl7IC5jb21wYXRpYmxlID0gImFybSx2ZXhwcmVzcy1vc2MiLCB9LAo+ICAJe30KPiAg
fTsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgdmV4cHJlc3Nfb3NjX29mX21hdGNoKTsKPiAg
Cj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHZleHByZXNzX29zY19kcml2ZXIgPSB7
Cj4gIAkuZHJpdmVyCT0gewo+IEBAIC0xMTYsOSArMTE4LDUgQEAgc3RhdGljIHN0cnVjdCBwbGF0
Zm9ybV9kcml2ZXIgdmV4cHJlc3Nfb3NjX2RyaXZlciA9IHsKPiAgCX0sCj4gIAkucHJvYmUgPSB2
ZXhwcmVzc19vc2NfcHJvYmUsCj4gIH07Cj4gLQo+IC1zdGF0aWMgaW50IF9faW5pdCB2ZXhwcmVz
c19vc2NfaW5pdCh2b2lkKQo+IC17Cj4gLQlyZXR1cm4gcGxhdGZvcm1fZHJpdmVyX3JlZ2lzdGVy
KCZ2ZXhwcmVzc19vc2NfZHJpdmVyKTsKPiAtfQo+IC1jb3JlX2luaXRjYWxsKHZleHByZXNzX29z
Y19pbml0KTsKPiArbW9kdWxlX3BsYXRmb3JtX2RyaXZlcih2ZXhwcmVzc19vc2NfZHJpdmVyKTsK
PiArTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwo+IC0tIAo+IDIuMjAuMQo+IAoKLS0gCj09PT09
PT09PT09PT09PT09PT09CnwgSSB3b3VsZCBsaWtlIHRvIHwKfCBmaXggdGhlIHdvcmxkLCAgfAp8
IGJ1dCB0aGV5J3JlIG5vdCB8CnwgZ2l2aW5nIG1lIHRoZSAgIHwKIFwgc291cmNlIGNvZGUhICAv
CiAgLS0tLS0tLS0tLS0tLS0tCiAgICDCr1xfKOODhClfL8KvCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
