Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EE71EA651
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wdy9vjXHkhn3LXHMW1TatKZ+hWx8fH0PigUXtaNKsS4=; b=E7NXEUd6H2rXyT
	H8ngXDnmI14Uk6O3apfHA4c/6U3eWEpCC54kYP4MIdwbpdenUNN1E6CC9zbovG3b6XssemXPR2yOn
	XifHIdOouk469dTNHukHLUbBWor3YjNJHBkcdVTXN6MNmg8R6FhDJAj/ODmHgnzYK/u0zrc9581fy
	nLK0MBrao2WD+YH/tZEdMCWWiBCU8l/rILXCatfNVTE+07qfOgubdveRH9Ces9Srmrm2P23V+T1Hz
	N5JENna9fS92Y9/CqyS0vTELHSuVHWo8ZtzqItK72tVlvKfpx3AJnBzhvSvcUD2wWAQYNBshZJCo9
	hWABc5U3e0bGCKTKZPrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflqw-0006vl-7v; Mon, 01 Jun 2020 14:55:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflqS-0006e1-BL
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:55:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U6svMtqcdNVZBeODbLBQ1meD+XZ/5XHSqOip4+ySlb8=; b=lPZXaaaSFtZMIifMSEnnbwo2h
 HbPwcaFT6JtRkMCO/OryCy5BAJzCLMNo3miJkXpqiOSfbNl3CznySB8ClclBky85ckywzPRJMQFlo
 TIyhQcFkNiKp+ApX8TE8E3wyXnrptK3+2NqojscdIKChGJChQyFMuUvnLUlqnv6r5isu9bsWbzKaA
 3Alp3Fn3MIApO2pYbrrmyyYyqOeVlcj/nLDqJWpA8aYkhPbUvRg/VIdNeDbfQD3txGqCSnXl3B47H
 BUi1WmQHVWJSdhyP/WSvN3lcCEIQ56LxT4W7zQWTn/P+TSnYmT4AvooEPO39BxM2601lPageK6yFk
 EamrnkQIA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:48044)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jflqC-0000Z4-FT; Mon, 01 Jun 2020 15:55:04 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jflqA-0003Oh-6w; Mon, 01 Jun 2020 15:55:02 +0100
Date: Mon, 1 Jun 2020 15:55:02 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 3/5] arm: decompressor: define a new zImage tag
Message-ID: <20200601145502.GJ1551@shell.armlinux.org.uk>
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <CGME20200601142810eucas1p1c42ff7c9b417f04bc506261726f08b4f@eucas1p1.samsung.com>
 <20200601142754.26139-4-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601142754.26139-4-l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_075520_483172_EAD50C70 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ben Dooks <ben-linux@fluff.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMDQ6Mjc6NTJQTSArMDIwMCwgxYF1a2FzeiBTdGVsbWFj
aCB3cm90ZToKPiBBZGQgRENTWiB0YWcgd2hpY2ggaG9sZHMgZHluYW1pYyBtZW1vcnkgKHN0YWNr
LCBic3MsIG1hbGxvYyBwb29sKQo+IHJlcXVpcmVtZW50cyBvZiB0aGUgZGVjb21wcmVzc29yIGNv
ZGUuCgpXaHkgZG8gd2UgbmVlZCB0byBrbm93IHRoZSBzdGFjayBhbmQgQlNTIHNpemUsIHdoZW4g
dGhlIHVzZXJzcGFjZQprZXhlYyB0b29sIGRvZXNuJ3QgbmVlZCB0byBrbm93IHRoaXMgdG8gcGVy
Zm9ybSB0aGUgc2FtZSBmdW5jdGlvbi4KCj4gCj4gU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVs
bWFjaCA8bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9jb21w
cmVzc2VkL3ZtbGludXgubGRzLlMgfCAgOSArKysrKysrKy0KPiAgYXJjaC9hcm0vaW5jbHVkZS9h
c20vaW1hZ2UuaCAgICAgICAgICAgfCAxMyArKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybS9ib290L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUyBiL2FyY2gvYXJtL2Jvb3QvY29tcHJl
c3NlZC92bWxpbnV4Lmxkcy5TCj4gaW5kZXggMzA4ZTljZDZhODk3Li5kY2ZkYjMyMDljOTAgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMKPiArKysg
Yi9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUwo+IEBAIC0zOSw2ICszOSwx
MSBAQCBTRUNUSU9OUwo+ICAgICAgTE9ORyhBUk1fWklNQUdFX01BR0lDMykKPiAgICAgIExPTkco
WklNQUdFX01BR0lDKF9fcGlnZ3lfc2l6ZV9hZGRyIC0gX3N0YXJ0KSkKPiAgICAgIExPTkcoWklN
QUdFX01BR0lDKF9rZXJuZWxfYnNzX3NpemUpKQo+ICsgICAgTE9ORyhaSU1BR0VfTUFHSUMoNSkp
Cj4gKyAgICBMT05HKEFSTV9aSU1BR0VfTUFHSUM0KQo+ICsgICAgTE9ORyhaSU1BR0VfTUFHSUMo
X2VuZCAtIF9fYnNzX3N0YXJ0KSkKPiArICAgIExPTkcoWklNQUdFX01BR0lDKF9zdGFja19lbmQg
LSBfc3RhY2tfc3RhcnQpKQo+ICsgICAgTE9ORyhaSU1BR0VfTUFHSUMoX21hbGxvY19zaXplKSkK
PiAgICAgIExPTkcoMCkKPiAgICAgIF90YWJsZV9lbmQgPSAuOwo+ICAgIH0KPiBAQCAtMTA4LDEw
ICsxMTMsMTIgQEAgU0VDVElPTlMKPiAgICAuID0gQlNTX1NUQVJUOwo+ICAgIF9fYnNzX3N0YXJ0
ID0gLjsKPiAgICAuYnNzCQkJOiB7ICooLmJzcykgfQo+ICsgIC4gPSBBTElHTig4KTsJCS8qIHRo
ZSBzdGFjayBtdXN0IGJlIDY0LWJpdCBhbGlnbmVkIGFuZCBhZGpvaW4gYnNzICovCj4gICAgX2Vu
ZCA9IC47Cj4gIAo+IC0gIC4gPSBBTElHTig4KTsJCS8qIHRoZSBzdGFjayBtdXN0IGJlIDY0LWJp
dCBhbGlnbmVkICovCj4gKyAgX3N0YWNrX3N0YXJ0ID0gLjsKPiAgICAuc3RhY2sJCTogeyAqKC5z
dGFjaykgfQo+ICsgIF9zdGFja19lbmQgPSAuOwo+ICAKPiAgICBQUk9WSURFKF9fcGVjb2ZmX2Rh
dGFfc2l6ZSA9IEFMSUdOKDUxMikgLSBBRERSKC5kYXRhKSk7Cj4gICAgUFJPVklERShfX3BlY29m
Zl9lbmQgPSBBTElHTig1MTIpKTsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20v
aW1hZ2UuaCBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2ltYWdlLmgKPiBpbmRleCBkNWMxOGEwZjZh
MzQuLjYyNDQzODc0MGYyMyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9pbWFn
ZS5oCj4gKysrIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vaW1hZ2UuaAo+IEBAIC0xNSw2ICsxNSw3
IEBACj4gICNkZWZpbmUgQVJNX1pJTUFHRV9NQUdJQzEgWklNQUdFX01BR0lDKDB4MDE2ZjI4MTgp
Cj4gICNkZWZpbmUgQVJNX1pJTUFHRV9NQUdJQzIgKDB4NDU0NTQ1NDUpCj4gICNkZWZpbmUgQVJN
X1pJTUFHRV9NQUdJQzMgWklNQUdFX01BR0lDKDB4NWE1MzRjNGIpCj4gKyNkZWZpbmUgQVJNX1pJ
TUFHRV9NQUdJQzQgWklNQUdFX01BR0lDKDB4NWE1MzQzNDQpCj4gIAo+ICAjaWZuZGVmIF9fQVNT
RU1CTFlfXwo+ICAKPiBAQCAtNDMsNiArNDQsMTggQEAgc3RydWN0IGFybV96aW1hZ2VfdGFnIHsK
PiAgCX0gdTsKPiAgfTsKPiAgCj4gK3N0cnVjdCBhcm1femltYWdlX3RhZ19kYyB7Cj4gKwlzdHJ1
Y3QgdGFnX2hlYWRlciBoZHI7Cj4gKwl1bmlvbiB7Cj4gKyNkZWZpbmUgWklNQUdFX1RBR19ERUNP
TVBfU0laRSBBUk1fWklNQUdFX01BR0lDNAo+ICsJCXN0cnVjdCB6aW1hZ2VfZGVjb21wX3NpemUg
ewo+ICsJCQlfX2xlMzIgYnNzX3NpemU7Cj4gKwkJCV9fbGUzMiBzdGFja19zaXplOwo+ICsJCQlf
X2xlMzIgbWFsbG9jX3NpemU7Cj4gKwkJfSBkZWNvbXBfc2l6ZTsKPiArCX0gdTsKPiArfTsKPiAr
Cj4gICNlbmRpZiAvKiBfX0FTU0VNQkxZX18gKi8KPiAgCj4gICNlbmRpZiAvKiBfX0FTTV9JTUFH
RV9IICovCj4gLS0gCj4gMi4yNi4yCj4gCj4gCgotLSAKUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRw
czovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCkZUVEMgZm9yIDAuOG0g
KGVzdC4gMTc2Mm0pIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTMuMU1icHMgZG93biA0MjRr
YnBzIHVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
