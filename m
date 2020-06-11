Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC401F68F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSCOk2vGvS2DJdPB+TQrhwn1j7N/hbRcGC/hHS/S+kc=; b=hV/0JCXPI5XSCl
	DVEiEtKwYjA1wzck1G113CBk56I3qpbVi/03yBXc8oZh5E4Z2meqNBUZGYreAfQ49ma4dxNBwcyli
	sUQflirEP27Qg5eqwezVOLYj+ElTOOOL2yCsF0cBd+dFnsvlGKvh7Sehe4n0DsqSLHC0+IvfDrT1G
	A4UsbfR2uvahDWlfPaoD7xscsb6Cp3iEnOvMoKkWh6b0hLL28FW26zO9e1EWqthVmKvra/NwDCFaB
	qjbmBCMxdGEbAfLTApGebGJ1W6DBZo8GluKlWUPZc5ZD1ozjJVDCWA98NdG8cS4G0q084WfLKanZE
	FzueKl3ZYSWwZlq7L2LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjN6M-0007ZE-15; Thu, 11 Jun 2020 13:18:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjN6F-0007YK-9J
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:18:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id r9so4949667wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 06:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3D40KyYMeXLRFbWmcuYLD5ZmMexI/dbs3uEPHhCTA4U=;
 b=S/jl+slL4mssBKVD02XQnVYrrTOFXjeWo7eAXEftnHakKzcEeJu79b3roxehmDRQLa
 kzmUXI63zJ99Ff+zyFfuphDwSrKVjOOnFmkLlbzMUHsu7x8mz+FO5iQxXm+/R9kv6fCq
 iTV1yBhl6egCeeQ33/ivG+d3xVEOcFFrSJqVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3D40KyYMeXLRFbWmcuYLD5ZmMexI/dbs3uEPHhCTA4U=;
 b=hsUHjEcjnxj/Xt84D3E+LLDflVcw6KgGx1GZHL5x/CIaJ1Ipez0urms8Lw2eNEgS9a
 yiXPt5homceF+I4JXYuqys5G6/AvocvG5AOJ/BxkJtMKGmFMbxsjbcATffrheYO2cZMC
 xOkPGAx6NbTBz2aXbjxO3yQ1r1A2z1JOFaoc+MlQljd1GLiL1dsLvdIqM6rkh/gZC1Sm
 S1UuhSMraj+Uz0CZy993dGCgEXuTzhvzsjhRXNc4WRi6dJB8LNmPOwSJ2+DHGXlZ9Rqi
 MFoiQ3s3s1bH4pkuAhXINciWNqQcbUM2fVsG2jA0Ud3/3xbzcqXsLY59O2Z2cMt94J1B
 R9fg==
X-Gm-Message-State: AOAM5320sq9IniOokIB7DLrYv2MGjtbuejzhQ+AoSCiPRf51z9iC3ZJe
 PVQ8ebpociejna3JQVuqtDRN4DrRLEOuzSVcymcV6w==
X-Google-Smtp-Source: ABdhPJyN9QaXL2/nALzV6Wm81/61c10NORZKfBtIvPfa3KPmZdM5dbRmE8hjWi4WODPLxAiHTdkMMTDuDyWSkjv413E=
X-Received: by 2002:a1c:7206:: with SMTP id n6mr8461880wmc.4.1591881509341;
 Thu, 11 Jun 2020 06:18:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-3-daniel@0x0f.com>
 <f66978d8-22c5-1883-c6bf-52c0c19d6603@suse.de>
In-Reply-To: <f66978d8-22c5-1883-c6bf-52c0c19d6603@suse.de>
From: Daniel Palmer <daniel@0x0f.com>
Date: Thu, 11 Jun 2020 22:18:13 +0900
Message-ID: <CAFr9PX=jNE-y++W=PVr=EQTiA4CtTM6xpsy2=pnJGPB_Z-BLqg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] ARM: mstar: Add machine for MStar/Sigmastar
 infinity/mercury family ARMv7 SoCs
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_061831_325564_CD814C60 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 tim.bird@sony.com, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Krzysztof Adamski <k@japko.eu>,
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMjE6NTgsIEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cgo+IFlvdSBjYWxsIHRoZSBkaXIgbWFjaC1tc3Rh
ciwgYnV0IG5hbWUgdGhlIEtjb25maWcgQVJDSF9NU1RBUlY3LiBJIGhhZAo+IHByZXZpb3VzbHkg
YmVlbiBhc2tlZCB0byBqdXN0IHVzZSB0aGUgdmVuZG9yIG5hbWUsIHNvIHRoaXMgc2hvdWxkCj4g
cHJvYmFibHkgYmUganVzdCBBUkNIX01TVEFSLiBPdXRzaWRlIGFyY2gvYXJtLyB5b3UgY2FuIHRo
ZW4gdXNlIEFSTSAmJgo+IEFSQ0hfTVNUQVIgY29uZGl0aW9uIHRvIG1ha2UgdGhpbmdzIDMyLWJp
dCBvbmx5LCBhbGxvd2luZyB0byByZXVzZQo+IEFSQ0hfTVNUQVIgZm9yIGFybTY0IG9yIHdoYXRl
dmVyLgoKVGhlIEFSTTkgTVN0YXIgY2hpcHMgYmVmb3JlIHRoZXkgc3dpdGNoZWQgdG8gYSBjb21t
b24gQVJNdjcgYmFzZSBhcmVuJ3QgZGlyZWN0bHkKY29tcGF0aWJsZSBzbyBJIHRob3VnaHQgdGhl
cmUgc2hvdWxkIGJlIHNvbWUgZGlzdGluY3Rpb24gdGhlcmUuIEkKZG91YnQgYW55b25lIHdpbGwg
ZG8gaXQKYnV0IEkgbWFkZSB0aGUgZGlyZWN0b3J5IG1hY2gtbXN0YXIgc28gcG90ZW50aWFsbHkg
c29tZW9uZSBjb3VsZCBhZGQKbWFjaGluZSBzdXBwb3J0CmZvciB0aGUgb2xkZXIgc3R1ZmYgdG8g
d2l0aG91dCBoYXZpbmcgbW9yZSBkaXJlY3Rvcmllcy4KCj4gPiArICAgICBib29sICJNU3Rhci9T
aWdtYXN0YXIgQVJNdjcgU29DIFN1cHBvcnQiCj4gPiArICAgICBkZXBlbmRzIG9uIEFSQ0hfTVVM
VElfVjcKPiA+ICsgICAgIHNlbGVjdCBBUk1fR0lDCj4gPiArICAgICBzZWxlY3QgQVJNX0hFQVZZ
X01CCj4gPiArICAgICBoZWxwCj4gPiArICAgICAgIFN1cHBvcnQgZm9yIG5ld2VyIE1TdGFyL1Np
Z21hc3RhciBTb0MgZmFtaWxpZXMgdGhhdCBhcmUKPiA+ICsgICAgICAgYmFzZWQgb24gQVJNdjcg
Y29yZXMgbGlrZSB0aGUgQ29ydGV4IEE3IGFuZCBzaGFyZSB0aGUgc2FtZQo+ID4gKyAgICAgICBi
YXNpYyBoYXJkd2FyZSBsaWtlIHRoZSBpbmZpbml0eSBhbmQgbWVyY3VyeSBzZXJpZXMuCj4gPiAr
Cj4gPiAraWYgQVJDSF9NU1RBUlY3Cj4gPiArCj4gPiArY29uZmlnIE1BQ0hfSU5GSU5JVFkKPiA+
ICsgICAgIGJvb2wgIk1TdGFyL1NpZ21hc3RhciBpbmZpbml0eSBTb0Mgc3VwcG9ydCIKPiA+ICsg
ICAgIGRlZmF1bHQgQVJDSF9NU1RBUlY3Cj4gPiArICAgICBoZWxwCj4gPiArICAgICAgIFN1cHBv
cnQgZm9yIE1TdGFyL1NpZ21hc3RhciBpbmZpbml0eSBJUCBjYW1lcmEgU29Dcy4KPiA+ICsKPiA+
ICtjb25maWcgTUFDSF9NRVJDVVJZCj4gPiArICAgICBib29sICJNU3Rhci9TaWdtYXN0YXIgbWVy
Y3VyeSBTb0Mgc3VwcG9ydCIKPiA+ICsgICAgIGRlZmF1bHQgQVJDSF9NU1RBUlY3Cj4gPiArICAg
ICBoZWxwCj4gPiArICAgICAgIFN1cHBvcnQgZm9yIE1TdGFyL1NpZ21hc3RhciBtZXJjdXJ5IGRh
c2ggY2FtZXJhIFNvQ3MuCj4gPiArICAgICAgIE5vdGUgdGhhdCBvbGRlciBNZXJjdXJ5MiBTb0Nz
IGFyZSBBUk05IGJhc2VkIGFuZCBub3Qgc3VwcG9ydGVkLgo+Cj4gSXMgdGhpcyBjb21tZW50IHJl
YWxseSBoZWxwZnVsPyBUaGlzIG1lbnUgaXRlbSB3b3VsZCBvbmx5IHNlZW0gdG8gY29tZQo+IHVw
IGFmdGVyIGhhdmluZyBzZWxlY3RlZCBtdWx0aV92Nywgd2hpY2gga2luZCBvZiBydWxlcyBvdXQg
QVJNOS4KClRoZSBvbGRlciBtZXJjdXJ5MiBiYXNlZCBjaGlwcyBzZWVtIHRvIHN0aWxsIGJlIGF2
YWlsYWJsZSBhbmQgdXNlZCBpbgpkcml2ZSByZWNvcmRlcnMKdGhhdCBhcmUgb24gdGhlIG1hcmtl
dCByaWdodCBub3cuIFRoZSBpbmZpbml0eSBzZXJpZXMgaXMgYWxsIEFSTXY3IHNvCmNhbiBiZSBz
dXBwb3J0ZWQKYnV0IGZvciB0aGUgbWVyY3VyeSBzZXJpZXMgb25seSB0aGUgbmV3ZXIgb25lcyBh
cmUgQVJNdjcgc28gSSB0aG91Z2h0Cml0IHdhcyB3b3J0aAptZW50aW9uaW5nIHRoYXQgIm1lcmN1
cnkgU29DIHN1cHBvcnQiIGRvZXNuJ3QgbWVhbiBhbGwgb2YgdGhlbS4gSSdsbAp0YWtlIGl0IG91
dCBpZiB5b3UKdGhpbmsgaXQncyB1bm5lY2Vzc2FyeS4KCj4gQ29uc2lkZXIgYWRkaW5nIG1lcmN1
cnkgaW4gYSBzZWNvbmQgc3RlcD8KCkknbGwgdGhpbmsgYWJvdXQgdGhhdC4gSSB3YW50ZWQgdG8g
dHJ5IHRvIGdldCBhIG1hY2hpbmUgdGhhdCBpc24ndCBvbmUKSSdtIHBlcnNvbmFsbHkgbWFraW5n
CmludG8gdGhlIHNlcmllcy4KCkNoZWVycywKCkRhbmllbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
