Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213DA57B63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XePy90FdI1PwlMguohfDuF/YbCcbxzT/J4aJXDKWJHE=; b=VDstXjoFlApVJ2
	m1rtGbcFW13+H1Sf80VHENlXqUd3YixMb6rAMOuks1s1hmcB6E5zCZpxh7hcmblMVD3PVARQdHyeE
	b8b5ttozRuXkaAqEb5TZ8d2yj3gOj5/3g0m4JVYa3bQKifntgkSLVF6YzUkJenFoNdmDD47iclrnk
	JWfL0zBG8WklLRxro9idbRbzbYIBdT9hpRvnFmIokulSsTlYs5yZtzCoI+SWKNHKk0WwEOuQePDKY
	UGiByk3olDwPnXvp4FvC85E3DM+CW/PRQfEadkEvkPg9SgH1EySBt9LaZ+urXCclU70Jt/N9TehcY
	1Urvef7sdxCUIZ9m3OfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMx0-0007ZO-Nt; Thu, 27 Jun 2019 05:28:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMpo-0007bR-P9
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Px+6b6uXpiBRR/JoLIFORviExsXN0iHiGzxIl6YX/NU=; b=DPp4AWAWuEA3x0xve92l1q+vH/
 rOHggGG/3RX6ADZGrrPc5jX28XjpG6/cFJ61FHwt+3livrcfNAfnzjlEPiHJC1f1/siQbNzZXye9x
 uPattREUqGIK70V23kDsl8LICBdkrnV0sFKR1cejUzGbGpfgGojJ4zQFFTePtXc5Tks596IC8U8XU
 cO6bMleOaKzyiOO97Dq7sPryU9eIQT/wzEH1xa8pLl8wNgoVyQFONASaKUld8xTuME/QLcrnSnkRQ
 GgkTU6pxqI33PMpXSIm7TfA5+wEMRP9hBUmtuYp3esfnb5TdQ/KnAEZNEAzClUlcyUW5HikV7t8n/
 JLp4kzzw==;
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJrr-0001pw-78
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:10:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id e5so1241887iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Px+6b6uXpiBRR/JoLIFORviExsXN0iHiGzxIl6YX/NU=;
 b=KtCIplIh5juRENvNwELTSrj8elv+gor3VDPsVOkIvKfDhFv7rjaMygt+oDt54MZp5n
 zwatm/vNIYpXXCmZVYje3FiC89rV6ofz4yhGSP58F7NlouZu2kJHlw4KOHua5AQ4VK0h
 oGgxu+ohG1OzrOEk+ngECTcvilMwRPnIawAODkX/GyKyC/GEUYywKqra5RrTgjSopm+M
 UVqlR8hquf4UZN0gSI/dKkLGnfZ4R69khyNYZcVmaxXYY6w00gjftk8HfODYRJIBC7JS
 9e+k44VbPxd0JiUPDhPfVzRd+/KeY7K7r83nxke/R74EacIghFBVgomFjccik7rFyf4K
 rYhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Px+6b6uXpiBRR/JoLIFORviExsXN0iHiGzxIl6YX/NU=;
 b=RNPG/FSDASsNj2zxdFHxIrwT3Evn3IUnPGAcZXdCfXcOsrTILnicnQJTVDZ+2hIWol
 Gqk6w2iTISP4wNvykrJaFsq8c056lwUuRWMCvpTjgmFZSeGh2tubgHhe4JmRgtiWRwq/
 o45ZDQya7nnbWcTyKszcLD6slpW0mIEnyjV+cEBWIievwEy8ZdWpnepuA5VbUyzgKmfZ
 HFALrNjThO9PiANyGN36qXIn2mLRyNjvpUlMqhdMMBsofqSbIJIUU1PCcasOV+cxpGn8
 RBfU9lji4pfmKMLYJvnjuT9KsJslpqPZAhDa+Tb6cKRXTxsZw/6rpEqmjNyd1Ekghc/a
 lFkg==
X-Gm-Message-State: APjAAAXIapOn1t334FzFXTvm6XwbXm3CM2rwmo3m+RCeRIMyq0/5UVul
 agPybHFs2FCnxg4tuXkVCGkkIbSJ6pYb/urcC7mytw==
X-Google-Smtp-Source: APXvYqyVb7rW7VyQ37cN3cp64jApIdMcve+prnvfzkLQtlFLYiCUVVjbJ6dWg59DWaA5FHle5HS8ZwZm2w4yzofA/Go=
X-Received: by 2002:a6b:9257:: with SMTP id u84mr1595625iod.278.1561601303506; 
 Wed, 26 Jun 2019 19:08:23 -0700 (PDT)
MIME-Version: 1.0
References: <e4e2f9cf-d986-4648-a196-fba54f048edf.lettre@localhost>
 <20190625121552.gso5dc7n6a7dka2z@localhost>
 <20190625145213.f6jyyvp5lklg642z@flea>
In-Reply-To: <20190625145213.f6jyyvp5lklg642z@flea>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 27 Jun 2019 10:08:11 +0800
Message-ID: <CAOesGMjrnf_UM72CnJ1Lm1D0kLG5HbXO2ByekhP=Xr31nrzT_w@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner arm64 defconfig Changes for 5.3
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_031031_338912_EEFD345C 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chen-Yu Tsai <wens@csie.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMTA6NTIgUE0gTWF4aW1lIFJpcGFyZAo8bWF4aW1lLnJp
cGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIEp1biAyNSwgMjAxOSBhdCAwNTox
NTo1MkFNIC0wNzAwLCBPbG9mIEpvaGFuc3NvbiB3cm90ZToKPiA+IEhpLAo+ID4KPiA+IE9uIEZy
aSwgSnVuIDIxLCAyMDE5IGF0IDEwOjEzOjU4QU0gKzAyMDAsIE1heGltZSBSaXBhcmQgd3JvdGU6
Cj4gPiA+IEhpLAo+ID4gPgo+ID4gPiBQbGVhc2UgcHVsbCB0aGUgZm9sbG93aW5nIGNoYW5nZXMg
Zm9yIHRoZSBuZXh0IHJlbGVhc2UuCj4gPiA+Cj4gPiA+IFRoYW5rcyEKPiA+ID4gTWF4aW1lCj4g
PiA+Cj4gPiA+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgYTE4ODMzOWNhNWEz
OTZhY2M1ODhlNTg1MWVkN2UxOWY2NmIwZWJkOToKPiA+ID4KPiA+ID4gICBMaW51eCA1LjItcmMx
ICgyMDE5LTA1LTE5IDE1OjQ3OjA5IC0wNzAwKQo+ID4gPgo+ID4gPiBhcmUgYXZhaWxhYmxlIGlu
IHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKPiA+ID4KPiA+ID4gICBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdW54aS9saW51eC5naXQgcmVmcy90YWdzL3N1
bnhpLWNvbmZpZzY0LWZvci01LjMtMjAxOTA2MjEwODEzCj4gPiA+Cj4gPiA+IGZvciB5b3UgdG8g
ZmV0Y2ggY2hhbmdlcyB1cCB0byBkYWUzMzViY2FlODZjYWI4ZjVlMWRmMzJkOWMwZWMyMDA1ODVh
OTJkOgo+ID4gPgo+ID4gPiAgIGFybTY0OiBkZWZjb25maWc6IGVuYWJsZSBBbGx3aW5uZXIgRE1B
IGRyaXZlcnMgKDIwMTktMDYtMTEgMTA6Mjg6MTggKzAyMDApCj4gPiA+Cj4gPiA+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiA+ID4gT3VyIHVzdWFsIGJ1bmNoIG9mIGFybTY0IGRlZmNvbmZpZyBjaGFuZ2VzLCB0aGlzIHRp
bWUgbW9zdGx5IHRvIGVuYWJsZQo+ID4gPiBzb21lIG1pc3NpbmcgZHJpdmVycyBmb3IgdGhlIEFs
bHdpbm5lciBBNjQuCj4gPiA+Cj4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gQ2zDqW1lbnQgUMOpcm9uICgy
KToKPiA+ID4gICAgICAgYXJtNjQ6IGRlZmNvbmZpZzogZW5hYmxlIHN1bnhpIHdhdGNoZG9nCj4g
PiA+ICAgICAgIGFybTY0OiBkZWZjb25maWc6IGVuYWJsZSBBbGx3aW5uZXIgRE1BIGRyaXZlcnMK
PiA+ID4KPiA+ID4gWWFuZ3RhbyBMaSAoMSk6Cj4gPiA+ICAgICAgIGFybTY0OiBkZWZjb25maWc6
IGFkZCBhbGx3aW5uZXIgc2lkIHN1cHBvcnQKPiA+Cj4gPiBJcyB0aGVyZSBhIHJlYXNvbiB0aGlz
IGlzbid0IGEgbW9kdWxlPyBJIGRvbid0IHRoaW5rIGl0J3MgbmVlZGVkIHRvIG1vdW50Cj4gPiBy
b290ZnMuCj4gPgo+ID4gKE5vdCBtZXJnZWQgdW50aWwgY2xhcmlmaWVkKS4KPgo+IEl0J3Mgbm90
IG5lZWRlZCB0byBtb3VudCB0aGUgcm9vdGZzLCBidXQgdGhpcyBpcyBuZWVkZWQgb24gb25lIG9m
IG91cgo+IFNvQ3MgdG8gc3RvcmUgdGhlIGJpbiwgYW5kIHRodXMgdGhlIGNwdWZyZXEgc2V0dGlu
Z3MgdG8gYXBwbHksIGFuZCBvbgo+IGFsbCBvdXIgU29DcyB0byBzdG9yZSB0aGUgY2FsaWJyYXRp
b24gZGF0YSBmb3IgdGhlIHRoZXJtYWwgc2Vuc29yLAo+IHdoaWNoIGluIHR1cm4gaXMgdXNlZCBm
b3IgdGhlcm1hbCB0aHJvdHRsaW5nLgo+Cj4gQm90aCBhcmUgaW1wb3J0YW50IGVub3VnaCBzbyB0
aGF0IHRoZXkgZG9uJ3QgZGVwZW5kIG9uIGEgbW9kdWxlIGJlaW5nCj4gbG9hZGVkIHRvIG1lLCBi
dXQgSSdtIG5vdCByZWFsbHkgc3VyZSB3aGF0IHRoZSBwb2xpY3kgaXMgaGVyZS4KClllYWgsIHRo
ZXJtYWwgc2hvdWxkIGxpa2VseSBiZSBlbmFibGVkIHdpdGhvdXQgcm9vdGZzL21vZHVsZXMsIHNv
CnRoYXQncyBvayBpbiB0aGlzIGNhc2UuCgpNZXJnZWQgbm93LCB0aGFua3MhCgoKLU9sb2YKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
