Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB4116AF3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjqvyenmud5NDx9+DPai+bNj+4HFSgfBrLIFglda6/k=; b=dwLNBWrOd252Xa
	0fCnXuogkcIoiUEj5MrvwTaTc1Twwb/fLGxEThdmt5/h52qpULF/kDJ+JHjx2xY6BeNHLqzNhNZTD
	OStvClHajCS1LpeDdS3xEwf9RbRGa1uYS0WmHsBtKwlUTU0SdWbHWCggwwTPyeHc8bIHl7Fn4C2QQ
	ATwY0wxkHNtGPBOn8xkQrhBAxVfFToQz829SBRyjcdo2Okp/6yatQqvzvDQeHrtxPx7aq+83BxscK
	f2WCchoEjmqa3ilxSJnclLmtNpKFPz1NR6/CJw9kiCDUHAd83d6SE+dK0wizB7nmrr6yCp7Sy/MDe
	Rn91RVT8kDukPSB6ElPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IYR-0008Re-84; Mon, 24 Feb 2020 18:34:07 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IXP-0007ML-BM
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:33:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582569181; bh=9mqkV16PsZRdF8vb7JAmbDN3tZ6Pelbha30uweql6Dc=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=L3/tRvvN9VGe+SIY9zKlDypNgHtG9CvMG6/DnGGu/Pj5Xoykbk7JMbxD4PZ5Z6HGL
 uthPS2w4LoCkM8jw2Ec6jipbasGJ6RnXPbqAzUu1aYXv8/rQ4xhC+4TRf/dXAbngHM
 6Tc/o3+stmYbsNKoyrsPJmEvUHT1htQRM9Y00k+A=
Date: Mon, 24 Feb 2020 19:33:00 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v2] ARM: dts: sun8i-a83t: Add thermal trip points/cooling
 maps
Message-ID: <20200224183300.jnclticehmc7uevs@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20200224165417.334617-1-megous@megous.com>
 <2e4213a6-2aaf-641c-f741-9503f3ffd5fe@linaro.org>
 <20200224172328.yauwfgov664ayrd6@core.my.home>
 <20200224173940.huwpaqhrc5ngbmji@core.my.home>
 <25a5dfb2-93bb-90c3-8156-0cfbed1f9995@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25a5dfb2-93bb-90c3-8156-0cfbed1f9995@linaro.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_103303_745905_68B4E133 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: bootlin.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMDY6NTY6MThQTSArMDEwMCwgRGFuaWVsIExlemNhbm8g
d3JvdGU6Cj4gT24gMjQvMDIvMjAyMCAxODozOSwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiBP
biBNb24sIEZlYiAyNCwgMjAyMCBhdCAwNjoyMzoyOFBNICswMTAwLCBtZWdvdXMgaGxhdm5pIHdy
b3RlOgo+ID4gCj4gPiBUbyBiZSBtb3JlIGNsZWFyLCBuZXcgdGVtcGVyYXR1cmVzIGFyZSBhdmFp
bGFibGUgZnJvbSB0aGUgdGhlcm1hbCBzZW5zb3IgZHJpdmVyCj4gPiBhdCB0aGUgcmF0ZSBvZiA0
IHBlciBzZWNvbmQsIHdoaWNoIHNob3VsZCBiZSBlbm91Z2ggdG8gZG8gcXVpY2sgYWRqdXN0bWVu
dHMgdG8KPiA+IHRoZSB0aGVybWFsIHpvbmUvY29vbGluZyBkZXZpY2UgZXZlbiBmb3IgcXVpY2sg
dGVtcGVyYXR1cmUgcmlzZXMuCj4gPiAKPiA+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xp
bnV4L3Y1LjYtcmMzL3NvdXJjZS9kcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhlcm1hbC5jI0w0NDIK
PiA+IAo+ID4gVGhlcmUncyBubyBzbG93L2Zhc3QgcGVyaW9kIGRlcGVuZGluZyBvbiB3aGV0aGVy
IHRoZSBjb29saW5nIGlzIGFjdGl2ZS4KPiA+IEl0J3MgYWx3YXlzIGZhc3QgYW5kIG5vIHBvbGxp
bmcgb2YgdGhlIHRoZXJtYWwgc2Vuc29yIGlzIG5lZWRlZC4KPiAKPiBUaGFua3MgZm9yIHRoZSBj
bGFyaWZpY2F0aW9uLiBBbGwgc2Vuc29ycyBoYXZlIHRoZWlyIHNwZWNpZmljaXR5Lgo+IAo+IERv
ZXMgdGhlIHNlbnNvciBhbGxvdyB0byBjcmVhdGUgYSB0aHJlc2hvbGQgdGVtcGVyYXR1cmUgd2hl
cmUgYW4KPiBpbnRlcnJ1cHQgZmlyZXMgd2hlbiBjcm9zc2luZyB0aGUgYm91bmRhcnk/IFRoYXQg
d291bGQgYmUgaW50ZXJlc3RpbmcKPiBmb3IgcGVyZm9ybWFuY2UgYW5kIGVuZXJneSBzYXZpbmcg
dG8gZGlzYWJsZSB0aGUgaW50ZXJydXB0cyB1bnRpbAo+ICdjcHUwX2hvdCcgaXMgcmVhY2hlZCwg
bm8/CgpJIHRoaW5rIHNvLiBJIGRvbid0IHRoaW5rIGl0IHdvdWxkIGFmZmVjdCB0aGlzIGJpbmRp
bmcgdGhvdWdoLiBJdCB3b3VsZCBzdGlsbApyZXF1aXJlIG5vIHBvbGxpbmcsIGFuZCB0aGVybWFs
IGRyaXZlciB3b3VsZCBwcm9iYWJseSBqdXN0IGhhdmUgdG8gYmUgdXBkYXRlZAp0byBnZXQgdGhl
IHJlbGV2YW50IGluZm9ybWF0aW9uIGFib3V0IHRyaXAgcG9pbnRzIGZyb20gdGhlIHRoZXJtYWwg
em9uZSBhbmQKbm90aWZ5IGl0IG9mIGNoYW5nZXMvdHJpcCBwb2ludCBjcm9zc2luZy4KCkkgZG9u
J3QgdGhpbmsgaXQgd291bGQgYWZmZWN0IHBlcmZvcm1hbmNlIG9yIGVuZXJneSBzYXZpbmcgbXVj
aCB0aG91Z2guCjQgaW50ZXJydXB0cyBwZXIgc2Vjb25kIGlzIGJhcmVseSBub3RpY2VhYmxlLCBh
bmQgdGhlcmUgYXJlIG11Y2ggYmlnZ2VyCmZpc2ggdG8gZnJ5LCB3aGVuIGl0IGNvbWVzIHRvIHBv
d2VyIHNhdmluZ3Mgb24gQTgzVCBhdCB0aGlzIHBvaW50LgoKdGhhbmsgeW91IGFuZCByZWdhcmRz
LAoJby4KCgo+IC0tIAo+ICA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCj4gCj4gRm9sbG93IExpbmFybzogIDxo
dHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPiA8aHR0cDov
L3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8Cj4gPGh0dHA6Ly93d3cubGluYXJv
Lm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
