Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8821EFBAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 16:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lmwz/VC4kHP1bIkq7f/1vRHfwmBDq3XY8J0bNJ739f4=; b=jpHvnB0QydYiQNVtbb75ntrwH
	wxl2SfsdorGtSsiSEUkI6VdpZYhelqtYEvS7yk14rphASm6mrbawijn2dsbU2hVsvScBH3aB2WRe3
	ZxM5td3eiuyYsnJfHFCQc8O+MmvHFFwcjyPADu+qcGes1RsV1B5IpdxE6hvJANl0uLzqrbk0vca1J
	eeI0wQctIRwqKd10EFRPKBbtt8OqVKgVDxfsm0o6COkbHuwDi3ZA1o01Go6IL1sXsBqcVT+OH/b2i
	ehN2mjuLMAj6RFThIQoKhl1xFL8TtW6wNwizvgyRRLaganV0R7sd29gh6N0bdchBpq4iUKVDQqvxW
	IY4toeGsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDXa-0003EV-HF; Fri, 05 Jun 2020 14:41:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDXS-0003D4-Ig; Fri, 05 Jun 2020 14:41:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7949331B;
 Fri,  5 Jun 2020 07:41:39 -0700 (PDT)
Received: from [10.57.10.23] (unknown [10.57.10.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 77DA73F305;
 Fri,  5 Jun 2020 07:41:32 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
From: Robin Murphy <robin.murphy@arm.com>
To: Mark Brown <broonie@kernel.org>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
Message-ID: <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
Date: Fri, 5 Jun 2020 15:41:27 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_074142_659150_0E0DE484 
X-CRM114-Status: GOOD (  13.84  )
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNi0wNSAxNDo0NiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjAtMDYtMDUg
MTQ6MjAsIE1hcmsgQnJvd24gd3JvdGU6Cj4+IE9uIEZyaSwgSnVuIDA1LCAyMDIwIGF0IDEyOjM0
OjM2UE0gKzAxMDAsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+IE9uIDIwMjAtMDYtMDQgMjI6Mjgs
IEZsb3JpYW4gRmFpbmVsbGkgd3JvdGU6Cj4+Cj4+Pj4gRm9yIHRoZSBCQ00yODM1IGNhc2Ugd2hp
Y2ggaXMgZGVlbWVkIHBlcmZvcm1hbmNlIGNyaXRpY2FsLCB3ZSB3b3VsZCAKPj4+PiBsaWtlCj4+
Pj4gdG8gY29udGludWUgdXNpbmcgYW4gaW50ZXJydXB0IGhhbmRsZXIgd2hpY2ggZG9lcyBub3Qg
aGF2ZSB0aGUgZXh0cmEKPj4+PiBjb21wYXJpc29uIG9uIEJDTTI4MzVfU1BJX0NTX0lOVFIuCj4+
Cj4+PiBGV0lXLCBpZiBJJ20gcmVhZGluZyB0aGUgcGF0Y2ggY29ycmVjdGx5LCB0aGVuIHdpdGgg
c2Vuc2libGUgY29kZWdlbiAKPj4+IHRoYXQKPj4+ICJvdmVyaGVhZCIgc2hvdWxkIGFtb3VudCB0
byBhIGJpdCB0ZXN0IG9uIGEgbGl2ZSByZWdpc3RlciBwbHVzIGEgCj4+PiBub3QtdGFrZW4KPj4+
IGNvbmRpdGlvbmFsIGJyYW5jaCAtIGFjY29yZGluZyB0byB0aGUgMTE3NiBUUk0gdGhhdCBzaG91
bGQgYWRkIHVwIHRvIGEKPj4+IHdob3BwaW5nIDIgY3ljbGVzLiBJZiB0aGF0J3MgcmVhbGx5IHNp
Z25pZmljYW50IHRoZW4gSSdkIGhhdmUgdG8gd29uZGVyCj4+PiB3aGV0aGVyIHlvdSB3YW50IHRv
IGJlIGF0IHRoZSBtZXJjeSBvZiB0aGUgd2hvbGUgZ2VuZXJpYyBJUlEgc3RhY2sgYXQgCj4+PiBh
bGwsCj4+PiBhbmQgc2hvdWxkIHBlcmhhcHMgY29uc2lkZXIgdXNpbmcgRklRIGluc3RlYWQuCj4+
Cj4+IFllcywgYW5kIGluZGVlZCB0aGUgY29tcGlsZXIgZG9lcyBzZWVtIHRvIG1hbmFnZSB0aGF0
LsKgIEl0ICppcyogbm9uLXplcm8KPj4gb3ZlcmhlYWQgdGhvdWdoLgo+IAo+IFRydWUsIGJ1dCBz
bydzIHRoZSBleGlzdGluZyBsZXZlbCBvZiBwb2ludGVyLWNoYXNpbmcgaW5kaXJlY3Rpb24gdGhh
dCAKPiB3aXRoIHNvbWUgc3RyYWlnaHRmb3J3YXJkIHJlZmFjdG9yaW5nIGNvdWxkIGJlIHRha2Vu
IHJpZ2h0IG91dCBvZiB0aGUgCj4gY3JpdGljYWwgcGF0aCBhbmQgY29uZmluZWQgdG8ganVzdCB0
aGUgY29uZGl0aW9uYWwgY29tcGxldGUoKSBjYWxsLiAKPiBUaGF0J3MgdGhlIGtpbmQgb2YgdGhp
bmcgbGVhdmluZyBtZSB1bmNvbnZpbmNlZCB0aGF0IHRoaXMgaXMgY29kZSB3aGVyZSAKPiBldmVy
eSBzaW5nbGUgY3ljbGUgY291bnRzIDspCgpIYSwgYW5kIGluIGZhY3QgaGF2aW5nIGNoZWNrZWQg
YSBidWlsZCBvdXQgb2YgY3VyaW9zaXR5LCB0aGlzIHBhdGNoIAphcy1pcyBhY3R1YWxseSBzdGFu
ZHMgdG8gbWFrZSB0aGluZ3MgY29uc2lkZXJhYmx5IHdvcnNlLiBBdCBsZWFzdCB3aXRoIApHQ0Mg
OC4zIGFuZCBiY20yODM1X2RlZmNvbmZpZywgYmNtMjgzNV9zcGlfaW50ZXJydXB0X2NvbW1vbigp
IGRvZXNuJ3QgCmdldCBpbmxpbmVkLCB3aGljaCBtZWFucyBiY20yODM1X3NwaV9pbnRlcnJ1cHQo
KSBwdXNoZXMvcG9wcyBhIHN0YWNrIApmcmFtZSBhbmQgbWFrZXMgYW4gb3V0LW9mLWxpbmUgY2Fs
bCB0byBiY20yODM1X3NwaV9pbnRlcnJ1cHRfY29tbW9uKCksIApyZXN1bHRpbmcgaW4gbWFzc2l2
ZWx5ICptb3JlKiB3b3JrIHRoYW4gdGhlIGV4dHJhIHR3byBpbnN0cnVjdGlvbnMgb2YgCnNpbXBs
eSBpbmxpbmluZyB0aGUgdGVzdC4KClNvIHllcywgdGhlIG92ZXJoZWFkIG9mIGlubGluaW5nIHRo
ZSB0ZXN0IHZzLiB0aGUgYWx0ZXJuYXRpdmUgaXMgaW5kZWVkIApub24temVyby4gSXQncyBqdXN0
IGFsc28gbmVnYXRpdmUgOkQKClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
