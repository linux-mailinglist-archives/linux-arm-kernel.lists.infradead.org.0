Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0A2FDDFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:35:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KThJlS1tW+SIPGIcLp2b8n5OuJ3NSBaTKGVrDwj4oc0=; b=qlYl1dDWX0ltfw
	62myAeZ06NqHqqDtC0tw5uru7L38rr4HLk1r6tPq79QzIqcOyPCZ38OMn44XS7fqfpbPyPkarrNgI
	DMAVR/2iZ62DshibVWVH6I+cT1bEngwJn0aeOngFJSFpmyRgVedAlehNrsWIQCkuSy492saccN6LG
	aDYJNymBwu6R3I1TrBfobSTwwzGcs083HF5DIKAnzZjh/S2bWb1GGZAoyFfkmcrmJWI/dwGF/+tU/
	cF20bc9F+PvvQ2O41vsa0GV/b198Qyh+O/jH75m3TxjrxkirsXQM5cW/H26lKyHx1/B36dtUDEKXW
	vygiExKexaSi6l88Vfzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVaos-000114-W0; Fri, 15 Nov 2019 12:35:23 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVaoe-0000hK-Mc; Fri, 15 Nov 2019 12:35:10 +0000
Received: by mail-ot1-f67.google.com with SMTP id n23so7842608otr.13;
 Fri, 15 Nov 2019 04:35:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=weseOzPMtZu2Zkh9G1J+5ddsMGjRBKSp1rgb8MnewWI=;
 b=HmvPjUNLfq3UFXu1dBcR+CdS0CtlJkw30004IJcyGMrJN37EJbBHUupVnhSjw4fsEU
 RLEB3t9QwmJ4vfhM3wJUxlwwBNQdizeEcPgTmGjq0Zs6oGP3tqwNHp+CyIQ8ALW3melL
 SH8al2qq6aHN5aidu5ZDWN/L+3lHYc9kqwtoim7ioHOZW9lJ3Q+aGVftdYse0RscmjUO
 PtTsxC0JMbFPAOcIBde9U3RGIwV2mnx9uKEsAfYGbWqLgogrckiYeh9aM741q2yeHJ9z
 f8iISDYK+fNS1L8ldIONYihhNIqhEZrRYVsKRhKB5a/pUVtj6L68ZJEFRWxttoP58PZl
 gMfg==
X-Gm-Message-State: APjAAAUIxw/W1W41Tycs3rp7CNf7Rn+6FqM/45ZUPJ5fBlbGN2ubw9ia
 tdvlPH388lG3u8XKKHPjgYJ/Rjp+vmxFeQDMC/4=
X-Google-Smtp-Source: APXvYqxQbOJhyQwpGQWBZF1hmsyHYrJBcMAR+hAoTdODxyYX/u2VKxAy7/eJUh/M6a4TbETYPv02VjN0xr9BlR4aCVA=
X-Received: by 2002:a9d:5511:: with SMTP id l17mr2945702oth.145.1573821307279; 
 Fri, 15 Nov 2019 04:35:07 -0800 (PST)
MIME-Version: 1.0
References: <20191103013645.9856-3-afaerber@suse.de>
 <20191111045609.7026-1-afaerber@suse.de>
 <20191111052741.GB3176397@kroah.com>
 <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
 <20191111064040.GA3502217@kroah.com>
 <a88442df-dc6b-07e5-8dee-9e308bdda450@suse.de>
 <20191112052347.GA1197504@kroah.com>
 <20191112072926.isjxfa4ci6akhx56@pengutronix.de>
 <aff81b8e-f041-73a5-6a95-d308fa07842c@suse.de>
 <c8572f70-5550-8cee-4381-fd7de7ae5af0@baylibre.com>
 <CAMuHMdWOWWQoJh5=07VMRhtrFR_Gc_qNhjTV4tCsvwvMn0kYfA@mail.gmail.com>
 <a0a6d71f-4fb7-51ce-fe33-74f9e588b791@suse.de>
In-Reply-To: <a0a6d71f-4fb7-51ce-fe33-74f9e588b791@suse.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 15 Nov 2019 13:34:55 +0100
Message-ID: <CAMuHMdU7EYHWRAR+s3ee4Wy6+6_MZON5xARszO7TDXZGyw8d5w@mail.gmail.com>
Subject: Re: Sense of soc bus? (was: [PATCH] base: soc: Export
 soc_device_to_device() helper)
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_043508_754495_62CC4245 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-realtek-soc@lists.infradead.org, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 boot-architecture@lists.linaro.org, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:TI ETHERNET SWITCH DRIVER \(CPSW\)" <linux-omap@vger.kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIEZyaSwgTm92IDE1LCAyMDE5IGF0IDE6MDEgUE0gQW5kcmVhcyBGw6Ry
YmVyIDxhZmFlcmJlckBzdXNlLmRlPiB3cm90ZToKPiBBbSAxNS4xMS4xOSB1bSAwOTo1OCBzY2hy
aWViIEdlZXJ0IFV5dHRlcmhvZXZlbjoKPiA+IE9uIEZyaSwgTm92IDE1LCAyMDE5IGF0IDk6NTIg
QU0gTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPiB3cm90ZToKPiA+PiBP
biAxMi8xMS8yMDE5IDExOjQ3LCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4gPj4+IEZvciBleGFt
cGxlLCBSVEQxMjk1IHdpbGwgc3VwcG9ydCBMU0FEQyBvbmx5IGZyb20gcmV2aXNpb24gQjAwCj4g
Pj4+IG9uIChhbmQgaXQncyBub3QgdGhlIGZpcnN0IHRpbWUgSSdtIHNlZWluZyBzdWNoIHRoaW5n
cyBpbiB0aGUgaW5kdXN0cnkpLgo+ID4+PiBTbyBpZiBhIHVzZXIgY29tcGxhaW5zLCBpdCB3aWxs
IGJlIGhlbHBmdWwgdG8gc2VlIHRoYXQgaW5mb3JtYXRpb24uCj4gPj4+Cj4gPj4+IFJlZmVyZW5j
aW5nIHlvdXIgQW1sb2dpYyByZXZpZXcsIHdpdGggYWxsIGR1ZSByZXNwZWN0IGZvciBpdHMgYXV0
aG9ycywKPiA+Pj4gdGhlIGNvbW1vbiBmcmFtZXdvcmsgaGVyZSBqdXN0IGxldHMgdGhhdCBpbmZv
cm1hdGlvbiBldmFwb3JhdGUgaW50byB0aGUKPiA+Pj4gZGVlcHMgb2Ygc3lzZnMuCj4gPj4KPiA+
PiBIb3BlZnVsbHkgd2UgbmV2ZXIgaGFkIHRoZSBjYXNlIHdoZXJlIG5lZWRlZCB0byB1c2UgdGhl
IHNvYyBpbmZvIGluIGRyaXZlcnMsCj4gPj4gYnV0IG5vdyB3ZSBoYXZlIG9uZSBhbmQgaGF2aW5n
IHN1Y2ggaW5mcmFzdHJ1Y3R1cmUgYWxyZWFkeSBpbi1wbGFjZSB3aWxsIGhlbHAuCj4gPj4KPiA+
PiBSZW5lc2FzIHBsYXRmb3JtcyBtYWtlcyBhIGV4dGVuc2l2ZSB1c2FnZSBvZiB0aGUgc29jIGlu
Zm8gaW5mcmFzdHJ1Y3R1cmUgdG8KPiA+PiBmaWd1cmUgb3V0IHBsZW50eSBvZiBIVyBwYXJhbWV0
ZXJzIGF0IHJ1bnRpbWUgYW5kIGxvd2VyIHRoZWlyIERUIGNoYW5nZXMuCj4gPgo+ID4gV2UgZG8g
b3VyIGJlc3QgdG8gdXNlIGl0IHNvbGVseSBmb3IgZGV0ZWN0aW5nIHF1aXJrcyBpbiBlYXJseSBT
b0MgcmV2aXNpb25zLgo+Cj4gR290IGEgcG9pbnRlcj8gSSBmYWlsIHRvIGltbWVkaWF0ZWx5IHVu
ZGVyc3RhbmQgaG93IHN5c2ZzIHdvdWxkIGhlbHAKPiBkcml2ZXJzIChhcyBvcHBvc2VkIHRvIHVz
ZXJzcGFjZSkgZGV0ZWN0IHF1aXJrczogUGFyc2luZyBzdHJpbmdzIGJhY2sKPiBkb2Vzbid0IHNv
dW5kIGVmZmljaWVudCwgYW5kIEkgZG9uJ3Qgc2VlIHlvdSBleHBvcnRpbmcgYW55IGN1c3RvbSBB
UElzCj4gaW4gZHJpdmVycy9zb2MvcmVuZXNhcy9yZW5lc2FzLXNvYy5jPwoKV2UgdXNlIHNvY19k
ZXZpY2VfbWF0Y2goKSwgaW5zaWRlIGtlcm5lbCBkcml2ZXJzLgpFeHBvc3VyZSB0aHJvdWdoIHN5
c2ZzIGlzIGEgc2lkZS1lZmZlY3Qgb2YgdXNpbmcgc29jX2RldmljZV9yZWdpc3RlcigpLAphbmQg
d2VsY29tZWQsIGFzIGl0IGFsbG93cyB0aGUgdXNlciB0byBmaW5kIG91dCBxdWlja2x5IHdoaWNo
IFNvQyBhbmQKcmV2aXNpb24gaXMgYmVpbmcgdXNlZC4KCkZUUiwgbHNodyAoVWJ1bnR1IDE4LjA0
IGhhcyB2Mi4xOCwgd2hpY2ggZG9lcyBzZWVtIHRvIGJlIHRoZSBsYXRlc3QKdXBzdHJlYW0gdmVy
c2lvbikgZG9lcyBub3QgcGFyc2UgL3N5cy9kZXZpY2VzL3NvYzAvLgoKR3J7b2V0amUsZWV0aW5n
fXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZl
biAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4
ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJ
IGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0
cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
