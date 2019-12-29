Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A00A12CAF8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 22:18:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kWP3NJXIV62Dw7L7aULScQyWTeTZEq0X99T6neiLK8=; b=Wtzr0a6/2wQhKA
	ukSuNPI002BFOMdy1822p13DcgBufeo1oOWx9S00lbR6cB7inFgU9lyP7Pb9HxP0W+Nxc99ORzy+S
	i0LReH2X029WFVZhw/tXABEIDokw6kU40axT0SEqbxkKcLL1u5xzWecE2e7rzGA+vV4um4PUNPKFk
	sdNfjb41WamMtm9qY5gt140hDgxfem8V6iC9rDbumGuHRqTWMMWP2ke4JJubcHtcF2W63GUkVkmmd
	kWnIGyQSjdyp76zT6vaU+QuPMYThuZGUDTSjW1HxxTLTb2jowWMH2AcxZxm8tQ4AeZxIw1OeV+aqW
	MOIrCGkPKIv23OrlkakQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfx9-0003tf-F8; Sun, 29 Dec 2019 21:18:23 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfwx-0003tB-OQ
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 21:18:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id u2so12779616wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 13:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=AzclGfOCXNAFhVFAqVBZxuEHKEXk4tM/YU8j/8O1+hs=;
 b=lLXBgiKMMyD7FokQ2U/JUSDBMZFzOQoIKCgHNI+60AGG2ilT5T2fPG8yYN3suuMKin
 Ot4fwogQYRhL1id4XrGEOtBHY9Gn5q9jIFuhDFeEqnOr1DHcfut+J/0XHaXrCDsc3ASO
 UMWEBAfm4VSlIr+LCTkZUb0qhrj76kPYpboGv5on7vqBrECTTvO8i1E+Xx1Pp/on0yf9
 QGFRQ1s9tbhkRQNcZOptghoOob6+dWxH4uVGf9WtwU/LeDqkZ8ZOwePRRP87wk7QybhX
 PAnMrPunncO6eeN33A/zL3WIKuUV2zu5LBpnasEFZi73W4YBMaFQDjlzcAfo0YcMMpXL
 q6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=AzclGfOCXNAFhVFAqVBZxuEHKEXk4tM/YU8j/8O1+hs=;
 b=Ukwx9gfhvx+459EqlZpMuLuNZtqlaNugwp5xO5TgXJMgSuwAxDRYLNynayy919zx+2
 FQQMrCeoMVRXoeggbt619y5fSXdDYk556txayUFQmGP4EhlWDxw0ZO1tpuosrD2/w9gj
 6X7NEDiIIrdOu8wAbNRkvQIQpwhercviehKnhKIIVDq3KcTUvzh9vUXjtaUG+0YzqWim
 4eCfinqUb6yFr5mmHgg4fGRAPOFSxG8orxV9XTlu2ObSdXf27Jy+5ldZvdcZS2arF1u4
 IzRJfOQVna+6dHg76VJLzFXay4UMoYUBS6DXtqDQPChJqEj1EJiCmcqsFIWrATvPMWGL
 LbpA==
X-Gm-Message-State: APjAAAWWcfyqWdSkwJkEDtE4SJEY8bFHfJw8EVfuqVy1q/CRt2k7x/B2
 O7cBWWPJFeX7EvNfZYEAPn4=
X-Google-Smtp-Source: APXvYqwe4j7BCJKoNmzgx6G5UOUHUdaOfUj1LA5ALQmFsCT3xRlnki75ehUVZZ75w3+5DilW8p5V+Q==
X-Received: by 2002:a1c:48c1:: with SMTP id v184mr31728708wma.5.1577654289600; 
 Sun, 29 Dec 2019 13:18:09 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id d8sm43791504wre.13.2019.12.29.13.18.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 13:18:08 -0800 (PST)
Date: Sun, 29 Dec 2019 22:18:05 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
Message-ID: <20191229211805.GA26718@Red>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191219173321.bni4tbrhfkkphv7k@gilmour.lan>
 <4015380d-33ef-312c-a886-6e8bf65c976a@linaro.org>
 <20191226092751.dc3boaxsaeivuhw4@hendrix.home>
 <20191226104419.GA26677@Red>
 <CAEExFWtNZM3QSSMEksK=-opKZqxvCqyG2=3=iCo3VU6tfie64w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWtNZM3QSSMEksK=-opKZqxvCqyG2=3=iCo3VU6tfie64w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_131811_824305_B699E1A4 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgMjYsIDIwMTkgYXQgMDg6NDc6NDdQTSArMDgwMCwgRnJhbmsgTGVlIHdyb3Rl
Ogo+IE9uIFRodSwgRGVjIDI2LCAyMDE5IGF0IDY6NDQgUE0gQ29yZW50aW4gTGFiYmUKPiA8Y2xh
YmJlLm1vbnRqb2llQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gVGh1LCBEZWMgMjYsIDIw
MTkgYXQgMTA6Mjc6NTFBTSArMDEwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiA+ID4gT24gVHVl
LCBEZWMgMjQsIDIwMTkgYXQgMDc6MzA6NTVQTSArMDEwMCwgRGFuaWVsIExlemNhbm8gd3JvdGU6
Cj4gPiA+ID4gT24gMTkvMTIvMjAxOSAxODozMywgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiA+ID4g
PiA+IEhpLAo+ID4gPiA+ID4KPiA+ID4gPiA+IE9uIFRodSwgRGVjIDE5LCAyMDE5IGF0IDA5OjI4
OjE2QU0gLTA4MDAsIFZhc2lseSBLaG9ydXpoaWNrIHdyb3RlOgo+ID4gPiA+ID4+IFRoaXMgcGF0
Y2hzZXQgYWRkcyBkcml2ZXIgZm9yIHRoZXJtYWwgc2Vuc29yIGluIEE2NCwgQTgzVCwgSDMsIEg1
LAo+ID4gPiA+ID4+IEg2IGFuZCBSNDAgU29Dcy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGFua3Mg
YWdhaW4gZm9yIHdvcmtpbmcgb24gdGhpcy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJJ2xsIG1lcmdl
IHRoZSBEVCBwYXRjaGVzIHdoZW4gdGhlIGRyaXZlciB3aWxsIGhhdmUgYmVlbiBtZXJnZWQuCj4g
PiA+ID4KPiA+ID4gPiBJJ3ZlIGFwcGxpZWQgcGF0Y2hlcyAxICYgMi4KPiA+ID4gPgo+ID4gPiA+
IFRoZXkgYXJlIGluIHRoZSB0ZXN0aW5nIGJyYW5jaCBhbmQgd2lsbCBnbyB0byB0aGUgbGludXgt
bmV4dCBicmFuY2ggYXMKPiA+ID4gPiBzb29uIGFzIHRoZSBrZXJuZWxjaSBwYXNzZXMuCj4gPiA+
Cj4gPiA+IEkganVzdCBtZXJnZWQgYWxsIHRoZSBvdGhlciBwYXRjaGVzIChleGNlcHQgdGhlIHBh
dGNoIDYsIGZvciB0aGUgSDYsCj4gPiA+IGFzIHJlcXVlc3RlZCBieSBWYXNpbHkgb24gSVJDKS4K
PiA+ID4KPiA+Cj4gPiBIZWxsbwo+ID4KPiA+IFZhc2lseSBhc2tlZCB0byBub3QgYXBwbHkgSDYg
ZHVlIHRvIG15IHRlc3QgZmFpbGxpbmcgb24gaDYgYW5kIHNpbmNlIGhlIGRpZG50IG93biBhbnkg
SDYgaHcuCj4gPiBCdXQgaXQgd2FzIGZhaWxsaW5nIGR1ZSBteSBmYXVsdCAoYSBmYWlsbGluZyBi
dWlsZCkuCj4gPgo+ID4gU28gdGhlIHBhdGNoc2V0IHdvcmsgcGVyZmVjdCBvbiBINiAob3BpMSss
IG9waTMsIHBpbmVINjQgYm90aCBtb2RlbCBBIGFuZCBCKSBhcyByZXBvcnRlZCBieSBteSBhbnN3
ZXIgdG8gdGhpcyB0aHJlYWQuCj4gCj4gSEkgQ29yZW50aW4sCj4gCj4gQWx0aG91Z2ggaXQgaXMg
bm90IGNhbGlicmF0ZWQsIGl0IHNob3VsZCB3b3JrIG9uIHRoZSBSNDAuIENhbiB5b3UgZ2l2ZQo+
IG15IHBhdGNoIGEgdHJ5Pwo+IAo+IFRoeO+8jAo+IFlhbmd0YW8KPiAKCkhlbGxvCgpJdCB3b3Jr
czoKdW5hbWUgLWEKTGludXggemxhZCA1LjUuMC1yYzItbmV4dC0yMDE5MTIyMCsgIzE5NiBTTVAg
UFJFRU1QVCBTdW4gRGVjIDI5IDIyOjA4OjA1IENFVCAyMDE5IGFybXY3bCBBUk12NyBQcm9jZXNz
b3IgcmV2IDUgKHY3bCkgQWxsd2lubmVyIHN1bjhpIEZhbWlseSBHTlUvTGludXgKY2F0IC9zeXMv
ZGV2aWNlcy92aXJ0dWFsL3RoZXJtYWwvdGhlcm1hbF96b25lMC90ZW1wCjMwNzM2CmNhdCAvc3lz
L2RldmljZXMvdmlydHVhbC90aGVybWFsL3RoZXJtYWxfem9uZTAvdHlwZSAKY3B1MC10aGVybWFs
CmNhdCAvc3lzL2RldmljZXMvdmlydHVhbC90aGVybWFsL3RoZXJtYWxfem9uZTEvdGVtcAoyOTM4
MApjYXQgL3N5cy9kZXZpY2VzL3ZpcnR1YWwvdGhlcm1hbC90aGVybWFsX3pvbmUxL3R5cGUgCmdw
dS10aGVybWFsCgpTbyB5b3UgY291bGQgYWRkIHRvIHlvdXIgcGF0Y2g6ClRlc3RlZC1ieTogQ29y
ZW50aW4gTGFiYmUgPGNsYWJiZS5tb250am9pZUBnbWFpbC5jb20+ClRlc3RlZC1vbjogc3VuOGkt
cjQwLWJhbmFuYXBpLW0yLXVsdHJhCgp0aGFua3MKUmVnYXJkcwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
