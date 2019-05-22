Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F6426084
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzuh/K+HFLHwE0vESfJfIHMpUz5cv00fk3KQrLqLWAA=; b=BmS4aQ4tvr+Hg/
	bdFYtS4PnrkcAMPs6mTAFhkHD7KgBwtmf0TUVvLNIpRiT4XPFFOVw850rNTWDb7X+QJqo6wAaZJIM
	TSQFCQUVspXVW0+6BQ2D6hVPYBWyO9d+95c6U3mYT25BqzRYqWVlMVRJkZlYYefo3J5Zysiwo1I0k
	abr/m+beyXTfz1gRhJWge4p9KsAwQ8sI5aQzq0KfO9Nnv3CPVWwlgx9dur93+begReBzrj0S9Rgta
	m3SXul05O8xOyaY/d/YuEOAw3rqmYK6Dzq/3OHQHJrMoJEldWppMd+WHBOqLJDALorse14ncD2Cim
	01TpKMlOL23HCr2msTeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNa4-000638-0t; Wed, 22 May 2019 09:30:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNZv-00062m-4e
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:30:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id i3so1442327wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 02:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=+VK7fLshFfrAgd2rmmiVLNHyPAHPZZGXsuVy0XdS+Zc=;
 b=p1vVrT54TqP7Tv92KeSNxtCIKuVh2was82RL9sqlsEHAdDh2H92mU+5C8DI7g4nWA9
 i3gl7B3ndoe5+0YE0YsQh97LdUGeRyA+qKuVr5IxMCSdyTmWj88ezs+VPsiQSidfaUOx
 nMwyYdFrAY59hOb8Z70FDRyo6llGJNl1RnZaQjrFuGtBibmnjtPtJcqWMQBzAKGJi/yY
 w90y0HTNXO0xxbADc/H1ZIfStFB8ee25hmcLtJs5/3Rwiyv8rZau4N9xonQVjuERSZ9g
 5zA4zplXyKSdEUdqJDu/8K+MjKIv7rFTsGhQd76J7EIAPwSf8VO3O6ukvm1/MoxXQZxN
 yNMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=+VK7fLshFfrAgd2rmmiVLNHyPAHPZZGXsuVy0XdS+Zc=;
 b=Q3oPvpWENgDgf1RJQn5k/XEvCyt7/cBChzAVZW0YFgU/shUx45YCz8O6GI4JptNFKJ
 1QSRGd6m/uYtzx9TXN+MCOqkM5Bw4MBQ40tUYPsC88l6pNcBInkG6Uryjp7b9dZLL4U/
 gcd5D815pCAvDqUDv3+oVmtRqvsKp4XRYq7bGrL7LEgLzf6dWigWWrxUFf6vD8zj5lF8
 GUvImWfIyhoNKU5LNaX9U0EHBIys1d+BeVrxlUKIOWdK17Vi/tlEkdZSINfx6pFpTER7
 g+SN9h7x22iyBbVtPi8PBwV1lf2489VRBC5TxnZsu0q70OPdAvFtQ7VXocxKE+kOuIqz
 YE6Q==
X-Gm-Message-State: APjAAAVxwEia2UrDGCxJiLchKsDu2oqxUwH7qdCn6/jrDuTQC6t7AAoi
 78rBIreuBVaY+wiegsfWp6wxCg==
X-Google-Smtp-Source: APXvYqwWvQYOAuut9pW+SWIr2WhinP84EdHxdOWjWpQnLL2IrrpfL3/E5WtmX1qrlrUmJEKNMHencA==
X-Received: by 2002:a1c:7503:: with SMTP id o3mr7066267wmc.28.1558517429034;
 Wed, 22 May 2019 02:30:29 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id g17sm21322431wrr.65.2019.05.22.02.30.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 02:30:28 -0700 (PDT)
Date: Wed, 22 May 2019 10:30:26 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie DELAUNAY <amelie.delaunay@st.com>
Subject: Re: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
Message-ID: <20190522093026.GG4574@dell>
References: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
 <20190522054833.GB4574@dell>
 <eb8425ec-989a-9701-7fee-61bd1d2b93c1@st.com>
 <20190522084133.GF4574@dell>
 <bc1b5f1d-23b0-141d-f58f-b54ac303fe20@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc1b5f1d-23b0-141d-f58f-b54ac303fe20@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_023031_213255_D9B906E4 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMiBNYXkgMjAxOSwgQW1lbGllIERFTEFVTkFZIHdyb3RlOgoKPiBPbiA1LzIyLzE5
IDEwOjQxIEFNLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBXZWQsIDIyIE1heSAyMDE5LCBBbWVs
aWUgREVMQVVOQVkgd3JvdGU6Cj4gPj4gT24gNS8yMi8xOSA3OjQ4IEFNLCBMZWUgSm9uZXMgd3Jv
dGU6Cj4gPj4+IE9uIE1vbiwgMjAgTWF5IDIwMTksIEFtZWxpZSBEZWxhdW5heSB3cm90ZToKPiA+
Pj4KPiA+Pj4+IFdoZW4gQ09ORklHX0dQSU9fT0YgaXMgbm90IGRlZmluZWQsIHN0cnVjdCBncGlv
X2NoaXAgJ29mX25vZGUnIG1lbWJlciBkb2VzCj4gPj4+PiBub3QgZXhpc3Q6Cj4gPj4+PiBkcml2
ZXJzL3BpbmN0cmwvcGluY3RybC1zdG1meC5jOiBJbiBmdW5jdGlvbiAnc3RtZnhfcGluY3RybF9w
cm9iZSc6Cj4gPj4+PiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1zdG1meC5jOjY1MjoxNzogZXJy
b3I6ICdzdHJ1Y3QgZ3Bpb19jaGlwJyBoYXMgbm8gbWVtYmVyIG5hbWVkICdvZl9ub2RlJwo+ID4+
Pj4gICAgICAgIHBjdGwtPmdwaW9fY2hpcC5vZl9ub2RlID0gbnA7Cj4gPj4+Pgo+ID4+Pj4gRml4
ZXM6IDE0OTBkOWY4NDFiMSAoInBpbmN0cmw6IEFkZCBTVE1GWCBHUElPIGV4cGFuZGVyIFBpbmN0
cmwvR1BJTyBkcml2ZXIiKQo+ID4+Pj4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxs
a3BAaW50ZWwuY29tPgo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogQW1lbGllIERlbGF1bmF5IDxhbWVs
aWUuZGVsYXVuYXlAc3QuY29tPgo+ID4+Pj4gLS0tCj4gPj4+PiAgICBkcml2ZXJzL3BpbmN0cmwv
cGluY3RybC1zdG1meC5jIHwgMiArKwo+ID4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQo+ID4+Pj4KPiA+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvcGluY3Ry
bC1zdG1meC5jIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYwo+ID4+Pj4gaW5kZXgg
ZWJhODcyYy4uYmI2NGFhMCAxMDA2NDQKPiA+Pj4+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5j
dHJsLXN0bWZ4LmMKPiA+Pj4+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmMK
PiA+Pj4+IEBAIC02NDgsNyArNjQ4LDkgQEAgc3RhdGljIGludCBzdG1meF9waW5jdHJsX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPj4+PiAgICAJcGN0bC0+Z3Bpb19jaGlw
LmJhc2UgPSAtMTsKPiA+Pj4+ICAgIAlwY3RsLT5ncGlvX2NoaXAubmdwaW8gPSBwY3RsLT5wY3Rs
X2Rlc2MubnBpbnM7Cj4gPj4+PiAgICAJcGN0bC0+Z3Bpb19jaGlwLmNhbl9zbGVlcCA9IHRydWU7
Cj4gPj4+PiArI2lmZGVmIENPTkZJR19PRl9HUElPCj4gPj4+PiAgICAJcGN0bC0+Z3Bpb19jaGlw
Lm9mX25vZGUgPSBucDsKPiA+Pj4+ICsjZW5kaWYKPiA+Pj4KPiA+Pj4gVGhpcyBpcyBwcmV0dHkg
dWdseS4gIFdpbGwgU1RNRlggZXZlciBiZSB1c2VkIHdpdGhvdXQgT0Ygc3VwcG9ydD8gIElmCj4g
Pj4+IG5vdCwgaXQgbWlnaHQgYmUgYmV0dGVyIHRvIHBsYWNlIHRoaXMgcmVzdHJpY3Rpb24gb24g
dGhlIGRyaXZlciBhcyBhCj4gPj4+IHdob2xlLgo+ID4+Pgo+ID4+PiBJbmNpZGVudGFsbHksIHdo
eSBpcyB0aGlzIGJsYW5rZWQgb3V0IGluIHRoZSBzdHJ1Y3R1cmUgZGVmaW5pdGlvbj8KPiA+Pj4g
RXZlbiAnc3RydWN0IGRldmljZScgZG9lc24ndCBkbyB0aGlzLgo+ID4+Pgo+ID4+IGNvbmZpZyBQ
SU5DVFJMX1NUTUZYCj4gPj4gCXRyaXN0YXRlICJTVE1pY3JvZWxlY3Ryb25pY3MgU1RNRlggR1BJ
TyBleHBhbmRlciBwaW5jdHJsIGRyaXZlciIKPiA+PiAJZGVwZW5kcyBvbiBJMkMKPiA+PiAJZGVw
ZW5kcyBvbiBPRiB8fCBDT01QSUxFX1RFU1QKPiA+PiAJc2VsZWN0IEdFTkVSSUNfUElOQ09ORgo+
ID4+IAlzZWxlY3QgR1BJT0xJQl9JUlFDSElQCj4gPj4gCXNlbGVjdCBNRkRfU1RNRlgKPiA+Pgo+
ID4+IFRoZSBpc3N1ZSBpcyBkdWUgdG8gQ09NUElMRV9URVNUOiB3b3VsZCAiZGVwZW5kcyBvbiBP
RiB8fCAoT0YgJiYKPiA+PiBDT01QSUxFX1RFU1QpIiBiZSBiZXR0ZXIgPwo+ID4gCj4gPiBMaW51
cyB3b3VsZCBiZSBpbiBhIGJldHRlciBwb3NpdGlvbiB0byByZXNwb25kLCBidXQgZnJvbSB3aGF0
IEkgY2FuCj4gPiBzZWUsIG1heWJlOgo+ID4gCj4gPiAgICBkZXBlbmRzIG9uIE9GIHx8IChPRl9H
UElPICYmIENPTVBJTEVfVEVTVCkKPiA+IAo+ID4gQWx0aG91Z2gsIEknbSB1bnN1cmUgd2h5IG90
aGVyIENPTVBJTEVfVEVTVHMgaGF2ZW4ndCBoaWdobGlnaHRlZCB0aGlzCj4gPiBpc3N1ZS4gIFBl
cmhhcHMgYmVjYXVzZSB0aGV5IGhhdmUgYWxsIGJlZW4gbG9ja2VkIGRvd24gdG8gYSBwYXJ0aWN1
bGFyCj4gPiBhcmNoOgo+ID4gCj4gPiAkIGdyZXAgQ09NUElMRV9URVNUIC0tIGRyaXZlcnMvcGlu
Y3RybC9LY29uZmlnCj4gPiAJYm9vbCAiU3VwcG9ydCBwaW4gbXVsdGlwbGV4aW5nIGNvbnRyb2xs
ZXJzIiBpZiBDT01QSUxFX1RFU1QKPiA+IAlib29sICJTdXBwb3J0IHBpbiBjb25maWd1cmF0aW9u
IGNvbnRyb2xsZXJzIiBpZiBDT01QSUxFX1RFU1QKPiA+IAlkZXBlbmRzIG9uIE9GICYmIChBUkNI
X0RBVklOQ0lfREE4NTAgfHwgQ09NUElMRV9URVNUKQo+ID4gCWRlcGVuZHMgb24gT0YgJiYgKEFS
Q0hfRElHSUNPTE9SIHx8IENPTVBJTEVfVEVTVCkKPiA+IAlkZXBlbmRzIG9uIE9GICYmIChBUkNI
X0xQQzE4WFggfHwgQ09NUElMRV9URVNUKQo+ID4gCWRlcGVuZHMgb24gQVJDSF9SN1M3MjEwMCB8
fCBDT01QSUxFX1RFU1QKPiA+IAlkZXBlbmRzIG9uIEFSQ0hfUjdTOTIxMCB8fCBDT01QSUxFX1RF
U1QKPiA+IAlkZXBlbmRzIG9uIEFSQ0hfUlpOMSB8fCBDT01QSUxFX1RFU1QKPiA+IAlkZXBlbmRz
IG9uIE1JUFMgfHwgQ09NUElMRV9URVNUCj4gPiAKPiA+IFdoYXQgYWJvdXQgYWRkaW5nIHRoaXMg
dG8geW91ciBLY29uZmlnIGVudHJ5Ogo+ID4gCj4gPiAgICBzZWxlY3QgT0ZfR1BJTwo+ID4gCj4g
Cj4gWWVzIENPTVBJTEVfVEVTVCBpcyBjb21iaW5lZCB3aXRoIGFyY2ggd2hlbiBkZXBlbmRpbmcg
b24gT0YuIEJ1dCBTVE1GWCAKPiBpc24ndCBhcmNoIGRlcGVuZGVudCwgaXQgaXMganVzdCBPRiBh
bmQgSTJDIGRlcGVuZGVudC4KPiAKPiBSYW5keSBhbHNvIHNlZSBhIGJ1aWxkIGVycm9yIGluIHBp
bmN0cmwtc3RtZnguYyB3aGVuIENPTkZJR19PRiBpcyBub3QgCj4gc2V0L2VuYWJsZWQgKHJhbmRj
b25maWcpOgo+IAo+IC4uL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmM6NDA5OjIwOiBl
cnJvcjogCj4g4oCYcGluY29uZl9nZW5lcmljX2R0X25vZGVfdG9fbWFwX3BpbuKAmSB1bmRlY2xh
cmVkIGhlcmUgKG5vdCBpbiBhIGZ1bmN0aW9uKQo+ICAgIC5kdF9ub2RlX3RvX21hcCA9IHBpbmNv
bmZfZ2VuZXJpY19kdF9ub2RlX3RvX21hcF9waW4sCj4gCj4gT0ZfR1BJTyBkZXBlbmRzIG9uIE9G
Lgo+IAo+IFNvIGVpdGhlcgo+ICAgICAgZGVwZW5kcyBvbiBPRiB8fCAoT0YgJiYgQ09NUElMRV9U
RVNUKQo+IG9yCj4gICAgICBkZXBlbmRzIG9uIE9GIHx8IChPRl9HUElPICYmIENPTVBJTEVfVEVT
VCkKPiAKPiBhbmQKPiAKPiAgICAgIHNlbGVjdCBPRl9HUElPCj4gCj4gV2hhdCBpcyB0aGUgcHJl
dHRpZXN0IHdheSA/CgpJJ2xsIGxlYXZlIHRoZSBmaW5hbCBjYWxsIHVwIHRvIExpbnVzLgoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
