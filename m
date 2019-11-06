Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0B7F18C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VtmynMBpxAb3WIYf2emaVptVMK6WFK/yRoCGIskjmE=; b=n4gH40Oa4SPm8I
	38fCeOsHRdwNryJc2LxqxAZDItH8wMG16CB+yLQVdlC104rBmPh3yukh4FIl8uTzHHWu157w0ToEp
	lEOo+34mBThYUKuZCvCAxUmzvBzgXUWCv9STfsNiogr5lKzMdSXDZWct2k/N+MctSpd+oVw54K3FF
	/Uj9NUTFMK3vIMWYT8ID9s4jd7Kn2ZvcnAV9je0zr9+MOkYf3WEbZIFfJbazoCTMKye8Wy6SbplQr
	OEkDKpV7lh2VARasQLjcOFSum5kO4/Y1NWBi+s3LwY8ITaq7pA3RE1a6v4wKEwLIEVUvU5/s8LGl2
	xG1+EiV2lXlsWiEmLyhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMQg-00058L-Do; Wed, 06 Nov 2019 14:37:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMQY-000574-7b; Wed, 06 Nov 2019 14:36:55 +0000
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EAAC021929;
 Wed,  6 Nov 2019 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573051013;
 bh=vlXZpNZoJiZw0moABeBNaD+/PavQRurfOu7gykExpKY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rXLXKG77ox5Exb7OgGuWzYQD0J5wZe5xWO7ETkwRJ2xIvJJyINp+/DaL6OApB5q1n
 UMU5V6hzFG5xbIJRAJtA3J/MdMyejfWPumsFOcwymxnETkNJTAFRBpX9F+rd27rBPh
 CSMfhdfiyd4LIEHgQd5MAZX3TP+eGwFablygUjbs=
Received: by mail-lf1-f52.google.com with SMTP id z12so18222126lfj.9;
 Wed, 06 Nov 2019 06:36:52 -0800 (PST)
X-Gm-Message-State: APjAAAVjJG0HTuC32S3liVYLj7QD07mFmCBiAaI7ibLOjNDiWhsB0NIx
 szdbkdmKdb8WR8Cq8iicfkU+KvJl2zXkdl1+Yi4=
X-Google-Smtp-Source: APXvYqy81A/2+lWcpeO2gkzgbqW8TQsAHsbUEDFF+X+/DsCRQrIr3qeMIW85fIoFrSsx9XX2WotPoKKCooOri+vcmco=
X-Received: by 2002:a19:22d3:: with SMTP id i202mr24254981lfi.69.1573051011148; 
 Wed, 06 Nov 2019 06:36:51 -0800 (PST)
MIME-Version: 1.0
References: <20191104013932.22505-1-afaerber@suse.de>
 <20191104013932.22505-2-afaerber@suse.de>
 <CAL_JsqL3NOstoa5ZY1JE9e3Ay=WTmz153H-KbHErhi-GBX-5GA@mail.gmail.com>
In-Reply-To: <CAL_JsqL3NOstoa5ZY1JE9e3Ay=WTmz153H-KbHErhi-GBX-5GA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 6 Nov 2019 15:36:40 +0100
X-Gmail-Original-Message-ID: <CAJKOXPdiE=L-8ymra=GC22=5QqOpJWW+hWqTUvNmwi5+caOPrA@mail.gmail.com>
Message-ID: <CAJKOXPdiE=L-8ymra=GC22=5QqOpJWW+hWqTUvNmwi5+caOPrA@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: gpu: mali-midgard: Tidy up conversion to
 YAML
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_063654_289137_0FE21DDD 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Guillaume Gardet <guillaume.gardet@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-realtek-soc@lists.infradead.org, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCA2IE5vdiAyMDE5IGF0IDE1OjI1LCBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
PiB3cm90ZToKPgo+IE9uIFN1biwgTm92IDMsIDIwMTkgYXQgNzo0MCBQTSBBbmRyZWFzIEbDpHJi
ZXIgPGFmYWVyYmVyQHN1c2UuZGU+IHdyb3RlOgo+ID4KPiA+IEluc3RlYWQgb2YgZ3JvdXBpbmcg
YWxwaGFiZXRpY2FsbHkgYnkgdGhpcmQtcGFydHkgdmVuZG9yLCBsZWFkaW5nIHRvCj4gPiBvbmUt
ZWxlbWVudCBlbnVtcywgc29ydCBieSBNYWxpIG1vZGVsIG51bWJlciwgYXMgZG9uZSBmb3IgVXRn
YXJkLgo+ID4KPiA+IFRoaXMgYWxyZWFkeSBhbGxvd3MgdXMgdG8gZGUtZHVwbGljYXRlIHR3byAi
YXJtLG1hbGktdDc2MCIgc2VjdGlvbnMgYW5kCj4gPiB3aWxsIG1ha2UgaXQgZWFzaWVyIHRvIGFk
ZCBuZXcgdmVuZG9yIGNvbXBhdGlibGVzLgo+Cj4gVGhhdCB3YXMgdGhlIGludGVudC4gTm90IHN1
cmUgaG93IEkgbWVzc2VkIHRoYXQgdXAuLi4KPgo+IFRoaXMgcGF0Y2ggaXMgcHJvYmxlbWF0aWMg
YmVjYXVzZSB0aGVyZSdzIGNoYW5nZXMgaW4gYXJtLXNvYyBqdW5vL2R0Cj4gYnJhbmNoIGFuZCB0
aGVyZSdzIG5vdyBhIHBhdGNoIGZvciBleHlub3M1NDIwICh0NjI4KS4gSSdkIHByb3Bvc2UgSQo+
IGFwcGx5IHRoaXMgc3VjaCB0aGF0IHdlIGRvbid0IGdldCBhIG1lcmdlIGNvbmZsaWN0IHdpdGgg
anVuby9kdCBhbmQgd2UKPiBmaW5pc2ggcmVzb3J0aW5nIGFmdGVyIHJjMSAob3Igd2hlbiBib3Ro
IGJyYW5jaGVzIGFyZSBpbiBMaW51cycgdHJlZSkuCgpBZnRlciByZXN1Ym1pdCwgeW91IGNvdWxk
IHRha2UgdGhlIGV4eW5vczU0MjAgYmluZGluZ3Mgb25lIChhbmQgSSdsbAp0YWtlIHRoZSBEVFMp
LiBIb3dldmVyIHRoZSBzdWJtaXR0ZXIgc2hvdWxkIGJhc2UgdGhlbiBvbiBsYXRlc3QgbmV4dCwK
YXNzdW1pbmcgeW91J2xsIGFwcGx5IHRoaXMgb25lLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
