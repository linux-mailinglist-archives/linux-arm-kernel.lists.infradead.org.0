Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614DE13631B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 23:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDg6ViG78FRIQHrYVo8hMzd9CfFfPWtTpQ0ksGlFaQQ=; b=NHy4xbs+RraWwJ
	98WqC0P2y1jhSfoX+7Mzw/P1SPYJSCkSEZ0VufZLXrXGXmIZF5iyLKf1AApqB0NmHJgEDpaeK+J6X
	ENJL38sHqs3RHoNhfnFvhu4vQr4EgVfU2NcUO2+Au4XXsjlzAOoPtJgUGITK5bgFmiC4+tDfKW8BP
	avhM1oj9ZlsCHVIfLhkQWlLBZlbzdHKuwW1xyi6D2esRvlAmJn9N27ERJAbcCpTjld4yOSFiJdiP1
	Qo9Jh8acGn5q3fc9AiXueLhQwOD7Ew4sS6PfliT3M45LBVYzHxhBCFxUa5X1dsJ04PohW1P7o9xZH
	4OonkX40r9AYk8MPpDNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipg2Z-0002vO-Gy; Thu, 09 Jan 2020 22:12:31 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipg2T-0002uR-G2
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 22:12:27 +0000
Received: by mail-oi1-f195.google.com with SMTP id p125so113910oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 14:12:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AUzrpm3sEv4FUbDtxyORZJwwFEEsXnw0vdkx3PoXBx8=;
 b=CEQtGsrL6vvUfa9L/zKOY1Hd0quojqHRVymTNx531ioSEjeVZWJ0vCjHpBw/bX6wge
 hcEnVjCQa57Pmj3sYza1Q8dyKmkA7VfqkKptLf7mfbhmUQxO86VSgnmmqBaq2sGb23T8
 Ba7QlIHZMpx5/DITuig08YxGnmEZw+Bk2x3nKc4/KiXkaSXO+E4q4EzbCISJD5iWlaak
 yoaCKMJc+lZNpX5HKzcqsWE5QZPyn6iMZpYHQgPPF+9EeGMUlC8OrPxma1DgGs9xfppl
 MPobgf8QvvtCIKF7Io/BJbeUm0d88oncbQ35QsHd2e58I3LushWyoOtFY0EoiW1uCqyv
 YIdQ==
X-Gm-Message-State: APjAAAX0NZz1Bh4BR0igud/wMm29MqLpZ+T7feYEbgEeTTdb19JYDddk
 6uZBWUwS5jdPo/owRA3rMtAIFe1UqLD20/xz+LE=
X-Google-Smtp-Source: APXvYqyX3gzA2iZLZF6a6Zoyk2WBsT2dvHOETCKarm/3/0LNleqC+csc3+SDvQAnjn9N3Mi7D44XlaDDRjRGOGiMZus=
X-Received: by 2002:aca:48cd:: with SMTP id v196mr5203388oia.102.1578607941317; 
 Thu, 09 Jan 2020 14:12:21 -0800 (PST)
MIME-Version: 1.0
References: <20191227174055.4923-1-sashal@kernel.org>
 <20191227174055.4923-96-sashal@kernel.org>
In-Reply-To: <20191227174055.4923-96-sashal@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Jan 2020 23:12:10 +0100
Message-ID: <CAMuHMdVgOPdo1YwcX7wG8tv5+B-ZDR62HS61p3LjqQh-se9h1Q@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 5.4 096/187] ARM: shmobile: defconfig: Restore
 debugfs support
To: Sasha Levin <sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_141225_535362_5038F555 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2FzaGEsCgoocmVwbHlpbmcgd2l0aCB0aGUgc2FtZSByZXNwb25zZSB0byBhbiBlbWFpbCB3
aXRoIGJyb2FkZXIgYXVkaWVuY2UpCgpPbiBGcmksIERlYyAyNywgMjAxOSBhdCA2OjQyIFBNIFNh
c2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBGcm9tOiBHZWVydCBVeXR0
ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+Cj4gWyBVcHN0cmVhbSBjb21taXQg
ZmEyY2RiMTc2MmQxNWY3MDFiODNlZmE2MGIwNGYwZDA0ZTcxYmY4OSBdCj4KPiBTaW5jZSBjb21t
aXQgMGU0YTQ1OWY1NmMzMmQzZSAoInRyYWNpbmc6IFJlbW92ZSB1bm5lY2Vzc2FyeSBERUJVR19G
Uwo+IGRlcGVuZGVuY3kiKSwgQ09ORklHX0RFQlVHX0ZTIGlzIG5vIGxvbmdlciBhdXRvLWVuYWJs
ZWQuICBUaGlzIGJyZWFrcwoKQUZBSUssIHRoYXQgY29tbWl0IGlzIG5vdCBwcmVzZW50IGluIHY1
LjQsIGFuZCBoYXNuJ3QgYmVlbiBiYWNrcG9ydGVkIHlldC4KU28gSSBkb24ndCB0aGluayB0aGVy
ZSBpcyBhIG5lZWQgdG8gYmFja3BvcnQgdGhpcyBhbmQgYWxsIG90aGVyIGZpeGVzIHJlc3Rvcmlu
ZwpkZWJ1Z2ZzIHN1cHBvcnQgaW4gcG9zdC12NS40IGtlcm5lbHMuCgpCVFcsIEkgbm90aWNlZCB5
b3UgcGxhbiB0byBiYWNrcG9ydCB0aGlzICJmaXgiIG5vdCBqdXN0IHRvIHY1LjQsIGJ1dCBhbHNv
CnRvIHY0LjE5PwoKPiBib290aW5nIERlYmlhbiA5LCBhcyBzeXN0ZW1kIG5lZWRzIGRlYnVnZnM6
Cj4KPiAgICAgW0ZBSUxFRF0gRmFpbGVkIHRvIG1vdW50IC9zeXMva2VybmVsL2RlYnVnLgo+ICAg
ICBTZWUgJ3N5c3RlbWN0bCBzdGF0dXMgc3lzLWtlcm5lbC1kZWJ1Zy5tb3VudCcgZm9yIGRldGFp
bHMuCj4gICAgIFtERVBFTkRdIERlcGVuZGVuY3kgZmFpbGVkIGZvciBMb2NhbCBGaWxlIFN5c3Rl
bXMuCj4gICAgIC4uLgo+ICAgICBZb3UgYXJlIGluIGVtZXJnR2l2ZSByb290IHBhc3N3b3JkIGZv
ciBtYWludGVuYW5jZQo+ICAgICAob3IgcHJlc3MgQ29udHJvbC1EIHRvIGNvbnRpbnVlKToKPgo+
IEZpeCB0aGlzIGJ5IGVuYWJsaW5nIENPTkZJR19ERUJVR19GUyBleHBsaWNpdGx5Lgo+Cj4gU2Vl
IGFsc28gY29tbWl0IDE4OTc3MDA4ZjQ0YzY2YmQgKCJBUk06IG11bHRpX3Y3X2RlZmNvbmZpZzog
UmVzdG9yZQo+IGRlYnVnZnMgc3VwcG9ydCIpLgo+Cj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0
dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiBSZXZpZXdlZC1ieTogTmlrbGFz
IFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2guc2U+Cj4gTGlu
azogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDE5MTIwOTEwMTMyNy4yNjU3MS0xLWdlZXJ0
K3JlbmVzYXNAZ2xpZGVyLmJlCj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBr
ZXJuZWwub3JnPgo+IC0tLQo+ICBhcmNoL2FybS9jb25maWdzL3NobW9iaWxlX2RlZmNvbmZpZyB8
IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybS9jb25maWdzL3NobW9iaWxlX2RlZmNvbmZpZyBiL2FyY2gvYXJtL2NvbmZpZ3Mvc2ht
b2JpbGVfZGVmY29uZmlnCj4gaW5kZXggYzZjNzAzNTUxNDFjLi43ZTdiNjc4YWUxNTMgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm0vY29uZmlncy9zaG1vYmlsZV9kZWZjb25maWcKPiArKysgYi9hcmNo
L2FybS9jb25maWdzL3NobW9iaWxlX2RlZmNvbmZpZwo+IEBAIC0yMTUsNCArMjE1LDUgQEAgQ09O
RklHX0RNQV9DTUE9eQo+ICBDT05GSUdfQ01BX1NJWkVfTUJZVEVTPTY0Cj4gIENPTkZJR19QUklO
VEtfVElNRT15Cj4gICMgQ09ORklHX0VOQUJMRV9NVVNUX0NIRUNLIGlzIG5vdCBzZXQKPiArQ09O
RklHX0RFQlVHX0ZTPXkKPiAgQ09ORklHX0RFQlVHX0tFUk5FTD15CgpHcntvZXRqZSxlZXRpbmd9
cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVu
IC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhr
Lm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkg
Y2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3Rz
IEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
