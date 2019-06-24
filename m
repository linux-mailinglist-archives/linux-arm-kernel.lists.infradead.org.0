Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712EC5029A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 08:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8dCK1lJ7/6szTWJDoKytOy4HRpdpdMEvtll1O+8osk=; b=VR2QLyQEcUAbOO
	9YSKZTmenbgK4AyV2Z61FYs0OH/R+JYpef0j3RHeNjlqBuOLFIVh54kiLGoDjJIHXlDa1VNZ8yJbd
	TbFC+SNFcokEhidgmgCofcZR8pVcvkLDVYPPgs95YcTCTWdpcdowQk4qmVlrevMd8opk3UE1/FuIh
	8KXpGXejNSsdNfVgNn1/5GAKn/XlVky5DIZofMaab5RMpk1QXWQH0s7cLzAz1KcCzPP91dn6b8z5Z
	aISW1MK3jo7g7zgyhLqeSGMsLrtbZS7aEUmRvIQteGj5mDPdDSi6HaBMXWWBft3pw3NTBepUgJ25m
	YyTaFsK7LvnwOwQcoCHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfIub-0005sm-5z; Mon, 24 Jun 2019 06:57:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfIuP-0005s5-6q
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 06:56:58 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55B5B2146F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561359416;
 bh=Wmle4DmUHAJz9qxbWxUuCO6gcEUZ8pGJ4hH7DvFoVHc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BZRSOZwnvbTtrhE5FdhMr78QW7zS+u3+C0+kDVKvvXlEFAAiAv1CYiZKFI/RWBEHU
 QoVnOObxJg0OyB7oKA4lV4pLeYu3bw7phQ8UCPWIM1UHlhqTZ2H/o6Yyso5RFhmLS3
 OSenBnmvuMdUNYsUcZbMIMdm0cGNQAhQZOtdbvN0=
Received: by mail-lj1-f182.google.com with SMTP id 131so11472482ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 23:56:56 -0700 (PDT)
X-Gm-Message-State: APjAAAXAwFcJcLuTPmx3PjRaiveMQJBK8YFTr2QwPV3MMs3uCbJVQGcr
 Ncx/rti9mGg37TAJcpFwinKmr9vjtCyDYJVZF78=
X-Google-Smtp-Source: APXvYqwuYsg0YtPp4HSVT4GsrVo3BqbfBMVGJw+z+cnqoCkDTdXplaaPso8EW7Ygbl0e07xoKBfuQzhZfcbiBsmYcXk=
X-Received: by 2002:a2e:12dc:: with SMTP id 89mr16648875ljs.40.1561359414533; 
 Sun, 23 Jun 2019 23:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190621180208.25361-7-krzk@kernel.org>
 <20190622191838.29850-1-krzk@kernel.org>
 <CAGTfZH2g6E2pCEtqjfCd+PjEzjwc2AB75LXJfCeO+PcYLiLTUw@mail.gmail.com>
 <CGME20190623192007epcas4p2a3995bb00091b436562828fceb6ff790@epcas4p2.samsung.com>
 <CAJKOXPcFFY08R1H-DrrzX2BC3L8x4NPJTP7nDn9yixAvmaiF9Q@mail.gmail.com>
 <6edbe882-314c-85e1-4109-7c3b324dc7ab@samsung.com>
In-Reply-To: <6edbe882-314c-85e1-4109-7c3b324dc7ab@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 24 Jun 2019 08:56:43 +0200
X-Gmail-Original-Message-ID: <CAJKOXPd6BRm+Hz363BhP8xr9dZ6jZxMQmaT7KuiEHAyZz-hDoQ@mail.gmail.com>
Message-ID: <CAJKOXPd6BRm+Hz363BhP8xr9dZ6jZxMQmaT7KuiEHAyZz-hDoQ@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: defconfig: Enable Panfrost and Lima drivers
To: Chanwoo Choi <cw00.choi@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_235657_289593_6AE26B93 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Simon Horman <horms+renesas@verge.net.au>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, cwchoi00@gmail.com,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyNCBKdW4gMjAxOSBhdCAwMTozNiwgQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ft
c3VuZy5jb20+IHdyb3RlOgo+Cj4gT24gMTkuIDYuIDI0LiDsmKTsoIQgNDoxNiwgS3J6eXN6dG9m
IEtvemxvd3NraSB3cm90ZToKPiA+IE9uIFN1biwgMjMgSnVuIDIwMTkgYXQgMDY6MzEsIENoYW53
b28gQ2hvaSA8Y3djaG9pMDBAZ21haWwuY29tPiB3cm90ZToKPiA+Pgo+ID4+IEhpIEtyenlzenRv
ZiwKPiA+Pgo+ID4+IDIwMTnrhYQgNuyblCAyM+ydvCAo7J28KSDsmKTsoIQgNDoyMCwgS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPuuLmOydtCDsnpHshLE6Cj4gPj4+Cj4gPj4+
IEVuYWJsZSBzdXBwb3J0IGZvciBNYWxpIEdQVSB3aXRoIFBhbmZyb3N0IGFuZCBMaW1hIGRyaXZl
cnMgZm9yOgo+ID4+PiAxLiBTYW1zdW5nIEV4eW5vczU0MzMgYW5kIEV4eW5vczcgKGhhdmluZyBN
YWxpIFQ3NjApLAo+ID4+PiAyLiBBbGx3aW5lciBBNjQgYW5kIEg1IChNYWxpIDQwMC80NTApLgo+
ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5l
bC5vcmc+Cj4gPj4+Cj4gPj4+IC0tLQo+ID4+Pgo+ID4+PiBDaGFuZ2VzIHNpbmNlIHYxOgo+ID4+
PiAxLiBFbmFibGUgTGltYSBkcml2ZXIKPiA+Pj4gLS0tCj4gPj4+ICBhcmNoL2FybTY0L2NvbmZp
Z3MvZGVmY29uZmlnIHwgMyArKy0KPiA+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29u
Zmlncy9kZWZjb25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4gPj4+IGluZGV4
IGZiYmMwNjU0MTVkNC4uM2QzMTYxMTM2OGFmIDEwMDY0NAo+ID4+PiAtLS0gYS9hcmNoL2FybTY0
L2NvbmZpZ3MvZGVmY29uZmlnCj4gPj4+ICsrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25m
aWcKPiA+Pj4gQEAgLTUxOCw2ICs1MTgsOCBAQCBDT05GSUdfRFJNX0hJU0lfSElCTUM9bQo+ID4+
PiAgQ09ORklHX0RSTV9ISVNJX0tJUklOPW0KPiA+Pj4gIENPTkZJR19EUk1fTUVTT049bQo+ID4+
PiAgQ09ORklHX0RSTV9QTDExMT1tCj4gPj4+ICtDT05GSUdfRFJNX0xJTUE9bQo+ID4+PiArQ09O
RklHX0RSTV9QQU5GUk9TVD1tCj4gPj4+ICBDT05GSUdfRkI9eQo+ID4+PiAgQ09ORklHX0ZCX01P
REVfSEVMUEVSUz15Cj4gPj4+ICBDT05GSUdfQkFDS0xJR0hUX0dFTkVSSUM9bQo+ID4+PiBAQCAt
NzE4LDcgKzcyMCw2IEBAIENPTkZJR19BUkNIX1RFR1JBXzE5NF9TT0M9eQo+ID4+PiAgQ09ORklH
X0FSQ0hfSzNfQU02X1NPQz15Cj4gPj4+ICBDT05GSUdfU09DX1RJPXkKPiA+Pj4gIENPTkZJR19U
SV9TQ0lfUE1fRE9NQUlOUz15Cj4gPj4+IC1DT05GSUdfREVWRlJFUV9HT1ZfU0lNUExFX09OREVN
QU5EPXkKPiA+Pgo+ID4+IEV4eW5vczU0MzMtdG0yIGJvYXJkIHN1cHBvcnQgdGhlIGV4eW5vcy1i
dXMgZGV2aWNlIHdoaWNoCj4gPj4gdXNlZCB0aGUgc2ltcGxlX29uZG1lbmFkIGdvdmVybm9yIG9m
IGRldmZyZXEuCj4gPj4gV2h5IGRvIHlvdSByZW1vdmUgdGhpcyBjb25maWd1cmF0aW9uIGZyb20g
dGhlIGRlZmNvbmZpZz8KPiA+Cj4gPiBJdCBpcyBzZWxlY3RlZCBieSBkZWZhdWx0IGJ5IERSTV9Q
QU5GUk9TVC4gVGhlIGRpZmZlcmVuY2UgaXMgdGhhdAo+ID4gUEFORlJPU1Qgc2VsZWN0cyBpdCBh
cyBtb2R1bGUuIFRoZSAneScgaXMgY2hvc2VuIGJlY2F1c2Ugb2Y6Cj4gPiAgIFNDU0lfVUZTSENE
IFs9eV0gJiYgU0NTSV9MT1dMRVZFTCBbPXldICYmIFNDU0kgWz15XSAmJiBTQ1NJX0RNQSBbPXld
Cj4KPiBXaGVuIEkgdHJpZWQgdG8gZmluZCB0aGUgaGlzdG9yeSBvZiBDT05GSUdfREVWRlJFUV9H
T1ZfU0lNUExFX09OREVNQU5ECj4gZm9yIGRlZmNvbmZpZywgdGhlIGZvbGxvd2luZyBwYXRjaFsx
XSBhZGRlZCB0aGlzIGNvbmZpZ3VyYXRpb24uCj4gWzFdIGI5NzJmZjc1ZjI5MzhjMzllMjIwNWMy
M2VhMGU1MzFkMzZiMjdmODYKPiAtICJhcm02NDogZGVmY29uZmlnOiBFbmFibGUgVUZTIG9uIG1z
bTg5OTYiCj4KPiBJIHRoaW5rIHRoYXQgdGhpcyBwYXRjaCB3aWxsIGFmZmVjdCB0aGUgb3ByYXRp
b24gb2YgJ1VTRiBvbiBtc204OTk4Jy4KCkhpIENoYW53b28sCgpUaGFua3MgZm9yIHRoZSBmZWVk
YmFjay4gVW5mb3J0dW5hdGVseSBJIGRvIG5vdCBzZWUgaG93IHJlbW92aW5nIGEKZGVwZW5kZW5j
eSB3aWxsIGFmZmVjdCB0aGF0IFNDU0lfVUZTSENELiBUaGUKREVWRlJFUV9HT1ZfU0lNUExFX09O
REVNQU5EIGlzIHN0aWxsIGJ1aWx0IGluLCBleGFjdGx5IHRoZSBzYW1lIGFzCmJlZm9yZS4uLgoK
QmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
