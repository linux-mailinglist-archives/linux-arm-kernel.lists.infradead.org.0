Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4741D16024
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWDljfwQnqttRYgihLgpbShLGSgYQxJYgsRisMgM8zY=; b=Pvyc6eZ/kkAjHc
	KsRhqd18ESLbpHCnA5BDzNPpvm1g4XMVmZDdDodL+PMeutHccavoSQEzBNVz2e3qElKcRmFVW3dLW
	uO3Lz0EAWkiXWTiPXaeQf/nuJAjWAsNtBRg3m26FLV1PijFnXwRsiXomSxJRomYGh910xiEpeEMwV
	LCgK5tdSTTUojJPYkk3HlyKz8uE+2Q4/dkbRF6Wv57N84AW5RTJZ6lRJOZaI+TeIeyrWZY589gqLp
	Tb/EZzbAn6tDSOLj2wibO0AdgxYJSUsscc3SOEumHihbofZEqI8nJbKwCo8X+qipwrclnV0lChUV3
	t1lX1d0YM9bp8C9Xyt8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNw4o-0004Wa-Ff; Tue, 07 May 2019 09:07:54 +0000
Received: from mail-vs1-f65.google.com ([209.85.217.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNw4f-0004VT-GI; Tue, 07 May 2019 09:07:47 +0000
Received: by mail-vs1-f65.google.com with SMTP id r10so4583945vsi.10;
 Tue, 07 May 2019 02:07:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8lThRAo28vQwCl4DV4/hRXs4pusVcLZ06vXVXU+ReNg=;
 b=kwlBmSUZRGGDsGavELmAX2qixv7/iiBdB4+elknJQU09Zem39dZznagsHzt77ovpPj
 BM5netctDIRjY+wDQ5tPkYz0RunzUv+hS1LGlIpMLF61TmdkzHSOJWoQN5USuTwPIb/6
 qOFfhFEKy7XKhh6/5Xt+L0FIP/A80otXLvP0h+DDpgR1vEhWAjlH8rhPBli0hgJBLK0u
 XR8FeuB1ulwLaQC/AmWXMGrHXswW1bpe0gfL7sEjYQQHLuj7Mt39KU7imKmfxkTLRUXZ
 ZPy5iV+qgI1KJ/fYaijDqTDS25FCB63R8AAasfYoqtR58el3rWKmuU92qzK6uZmaYepe
 Hn1w==
X-Gm-Message-State: APjAAAUNfMGqkeQwkwRFvkEXFajiQ4Qq8VqBYVYYOdHHgQK6Dz4LkayS
 jZURrZ6t2G229Q+z+PRqYoKBOPjd3Z45u2dhHwE=
X-Google-Smtp-Source: APXvYqyd0GOgX82w7/Ps0Lm4sBbfBrQV34Mg2L46fkooG6+5Z29jjbCP+ChBPEI7uLyAXz7jM3WBzg+6K0S1grth8pg=
X-Received: by 2002:a67:8e03:: with SMTP id q3mr15845324vsd.152.1557220063399; 
 Tue, 07 May 2019 02:07:43 -0700 (PDT)
MIME-Version: 1.0
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
In-Reply-To: <1557177887-30446-1-git-send-email-ynezz@true.cz>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 May 2019 11:07:31 +0200
Message-ID: <CAMuHMdVra2h00OUCxZ1s=ExpkgkN_SGZdUtdohBapjNHf6hesQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_020745_540558_FE8CBEE4 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.65 listed in wl.mailspike.net]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-mediatek@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGV0ciwKCk9uIE1vbiwgTWF5IDYsIDIwMTkgYXQgMTE6MjUgUE0gUGV0ciDFoHRldGlhciA8
eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gdGhpcyBwYXRjaCBzZXJpZXMgaXMgYW4gYXR0ZW1wdCB0
byBmaXggdGhlIG1lc3MsIEkndmUgc29tZWhvdyBtYW5hZ2VkIHRvCj4gaW50cm9kdWNlLgo+Cj4g
Rmlyc3QgcGF0Y2ggaW4gdGhpcyBzZXJpZXMgaXMgZGVmYWN0byB2NSBvZiB0aGUgcHJldmlvdXMg
MDUvMTAgcGF0Y2ggaW4gdGhlCj4gc2VyaWVzLCBidXQgc2luY2UgdGhlIHY0IG9mIHRoaXMgMDUv
MTAgcGF0Y2ggd2Fzbid0IHBpY2tlZCB1cCBieSB0aGUKPiBwYXRjaHdvcmsgZm9yIHNvbWUgdW5r
bm93biByZWFzb24sIHRoaXMgcGF0Y2ggd2Fzbid0IGFwcGxpZWQgd2l0aCB0aGUgb3RoZXIKPiA5
IHBhdGNoZXMgaW4gdGhlIHNlcmllcywgc28gSSdtIHJlc2VuZGluZyBpdCBhcyBhIHNlcGFyYXRl
IHBhdGNoIG9mIHRoaXMKPiBmaXh1cCBzZXJpZXMgYWdhaW4uCj4KPiBTZWNvbmQgcGF0Y2ggaXMg
YSByZXN1bHQgb2YgdGhpcyByZWJhc2UgYWdhaW5zdCBuZXQtbmV4dCB0cmVlLCB3aGVyZSBJIHdh
cwo+IGNoZWNraW5nIGFnYWluIGFsbCBjdXJyZW50IHVzZXJzIG9mIG9mX2dldF9tYWNfYWRkcmVz
cyBhbmQgZm91bmQgb3V0LCB0aGF0Cj4gdGhlcmUncyBuZXcgb25lIGluIERTQSwgc28gSSd2ZSBj
b252ZXJ0ZWQgdGhpcyB1c2VyIHRvIHRoZSBuZXcgRVJSX1BUUgo+IGVuY29kZWQgZXJyb3IgdmFs
dWUgYXMgd2VsbC4KPgo+IFRoaXJkIHBhdGNoIHdoaWNoIHdhcyBzZW50IGFzIHY1IHdhc24ndCBj
b25zaWRlcmVkIGZvciBtZXJnZSwgYnV0IEkgc3RpbGwKPiB0aGluaywgdGhhdCB3ZSBuZWVkIHRv
IGNoZWNrIGZvciBwb3NzaWJsZSBOVUxMIHZhbHVlLCB0aHVzIGN1cnJlbnQgSVNfRVJSCj4gY2hl
Y2sgaXNuJ3Qgc3VmZmljaWVudCBhbmQgd2UgbmVlZCB0byB1c2UgSVNfRVJSX09SX05VTEwgaW5z
dGVhZC4KPgo+IEZvdXJ0aCBwYXRjaCBmaXhlcyB3YXJuaW5nIHJlcG9ydGVkIGJ5IGtidWlsZCB0
ZXN0IHJvYm90Lgo+Cj4gQ2hlZXJzLAo+Cj4gUGV0cgo+Cj4gUGV0ciDFoHRldGlhciAoNCk6Cj4g
ICBuZXQ6IGV0aGVybmV0OiBzdXBwb3J0IG9mX2dldF9tYWNfYWRkcmVzcyBuZXcgRVJSX1BUUiBl
cnJvcgoKSSBkaWRuJ3QgcmVjZWl2ZSB0aGUgcGF0Y2ggdGhyb3VnaCBlbWFpbCwgYnV0IHBhdGNo
d29yayBkb2VzIGhhdmUgaXQ6Cmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA5
NjA1NC8KClRoaXMgZml4ZXMgdGhlIGNyYXNoICgiVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgcGFn
aW5nIHJlcXVlc3QgYXR2aXJ0dWFsCmFkZHJlc3MgZmZmZmZmZmUiKSBJJ20gc2VlaW5nIHdpdGgg
c2hfZXRoIG9uIHI4YTc3OTEva29lbHNjaCwgc28KClRlc3RlZC1ieTogR2VlcnQgVXl0dGVyaG9l
dmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAg
ICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUn
cyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBw
ZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2Vs
ZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNh
eSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
