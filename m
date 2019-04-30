Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984D8FDC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q27ohJU0aKX3JjM5Ck1XQUAa/awXNJxd4dz1lsGQzyw=; b=oVDPE7SZW7qbGl
	eToelfCEmYDsekmIe9RA+tsO2hn99E1kOsttoi/g4/bNsGT0NkQ8QBU6Jx1BDr/PqeFqpdv1PAXhn
	csQQy+aOy8BU8lYbIxud5NP8/MwbJ+Qi61O9zsU3r23HXrB/AR+uEhJqTc+9V+cDiUUurVFvcvSTj
	t5wAmhLX6qTcdaYajU2gwpMi7M1UHKXAgREID4qWyHlmVAg0ipggBqLdbtlRPe8LYaqK6lubY4F2j
	IJsdGryhwFv/9MlasYwVMXdMlHO0A1YYq55Pu+wYWs5oNMgUvgdAaMgshu120qu9G1JA04W+YbT9g
	rV7ol+AlnpHoMsWiP6bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVZ5-0000yT-IW; Tue, 30 Apr 2019 16:25:07 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVYt-0000xq-U0
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:24:57 +0000
Received: by mail-lj1-x244.google.com with SMTP id b12so12196188lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 09:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T12C8ZsnEAO+1u2qvY8HiXn5RKB3DNqdmhVjJCv7uAY=;
 b=ge+rpflX4QyQP0WB5MTXlg5cJM2dsK0O0QRkDpbuArj0l/NK8RzRLLgnql9QK9cMFG
 R3FYrL+jcmmmFD8onpCKhF8auOODos0kymTfQfUlw52MDOITu8TmlIjmLXUdan7C6LRb
 9zXt8UfM6xtzw1x9F+/TcLcFWtgQ5tVV7ydHk3gtUy7Zxpb4Hx3Y9M6U03+xI0RPLN79
 Cx7/oSoGzqFlFW5hmeFVYbPoxawNLIrT0jYvDD95jXRUx/lrnIYwux1IuVGV4rgTKs9u
 /euWKUI+miwQPjZtG81U8riXUMKgRhICUo4XK9tSHbXzlCLh2jsbxwzA558DmMn+NdcV
 dLUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T12C8ZsnEAO+1u2qvY8HiXn5RKB3DNqdmhVjJCv7uAY=;
 b=Ra8sH2y0vBGAq6kDOZH/8dZwmFpHcG7XyeoYt03oEhfeZZVfClLl3Wf8/GFrf/AMML
 AnG6NexFO0VAGBw80SNEmzwDEDnUognHC72HO0JDse1hgU+AQ8TbsqkYssew/6tGS0uz
 5YSfaNUY62tX1Fr0eK0TmL1M4McZLKeFQwdg1wt10jFs/+Vr5V1rjawP32cudG92QysM
 d10XKuxxipsjXCBVXR3gOBJGwR6H6qkcjklTn+7nA5ttMX5YPl1IXvKuKrsFsBDEtXIL
 CUnoS6m8k7Rs+KhJ6PWgM6VqnIZH+9IyP+p+tsQTsG0RCfTnHZQ6z0OGUFhbQbjvtIGW
 sRPA==
X-Gm-Message-State: APjAAAUiyrx0PYpkNBaZCr+ccfSU8N0ImTaZmzrokMsS298V9iuzkFpO
 1lTdq9BuSEU5X4owruMNx2xRbAluhc4aYK5K2nM=
X-Google-Smtp-Source: APXvYqzVoXGyn1uVc/WjKZkLjOBzqPleu6K+XY10NxzaKn++y6S+xC0yhjmHgAh9N3hq+diziQD7M2FQz9qMJlrz1Ys=
X-Received: by 2002:a2e:7318:: with SMTP id o24mr1644011ljc.138.1556641493748; 
 Tue, 30 Apr 2019 09:24:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556633413.git.agx@sigxcpu.org>
 <b999b07673e59c676d2e43a786b635beb056e9bf.1556633413.git.agx@sigxcpu.org>
In-Reply-To: <b999b07673e59c676d2e43a786b635beb056e9bf.1556633413.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Apr 2019 13:24:45 -0300
Message-ID: <CAOMZO5BerzB94YvJgZoOVYaA3fCsHQiuC5FyVVVRV+ttEg92uQ@mail.gmail.com>
Subject: Re: [PATCH v9 2/2] phy: Add driver for mixel mipi dphy found on NXP's
 i.MX8 SoCs
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_092456_049195_F83B8552 
X-CRM114-Status: GOOD (  29.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>, Abel Vesa <abel.vesa@nxp.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Thierry Reding <treding@nvidia.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpPbiBUdWUsIEFwciAzMCwgMjAxOSBhdCAxMTo0MCBBTSBHdWlkbyBHw7xudGhl
ciA8YWd4QHNpZ3hjcHUub3JnPiB3cm90ZToKPgo+IFRoaXMgYWRkcyBzdXBwb3J0IGZvciB0aGUg
TWl4ZWwgRFBIWSBhcyBmb3VuZCBvbiBpLk1YOCBDUFVzIGJ1dCBzaW5jZQo+IHRoaXMgaXMgYW4g
SVAgY29yZSBpdCB3aWxsIGxpa2VseSBiZSBmb3VuZCBvbiBvdGhlcnMgaW4gdGhlIGZ1dHVyZS4g
U28KPiBpbnN0ZWFkIG9mIGFkZGluZyB0aGlzIHRvIHRoZSBud2wgaG9zdCBkcml2ZXIgbWFrZSBp
dCBhIGdlbmVyaWMgUEhZCj4gZHJpdmVyLgo+Cj4gVGhlIGRyaXZlciBzdXBwb3J0cyB0aGUgaS5N
WDhNUS4gU3VwcG9ydCBmb3IgaS5NWDhRTSBhbmQgaS5NWDhRWFAgY2FuIGJlCj4gYWRkZWQgb25j
ZSB0aGUgbmVjZXNzYXJ5IHN5c3RlbSBjb250cm9sbGVyIGJpdHMgYXJlIGluIHZpYQo+IG1peGVs
X2RwaHlfZGV2ZGF0YS4KPgo+IENvLWF1dGhvcmVkLWJ5OiBSb2JlcnQgQ2hpcmFzIDxyb2JlcnQu
Y2hpcmFzQG54cC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4
Y3B1Lm9yZz4KCkkgd2lzaCBJIGNvdWxkIHRlc3QgaXQgb24gYSBpbXg4bS1ldmsgLCBidXQgdGhl
cmUgYXJlIHNvbWUgb3RoZXIKcGllY2VzIG5lZWRlZCBzdWNoIGFzIE5vcnRod2VzdCBMb2dpYyBk
cml2ZXIsIG14c2ZiIGNoYW5nZXMgZm9yCnN1cHBvcnRpbmcgbXg4bSwgT0xFRCBwYW5lbCBkcml2
ZXIsIGV0YwoKQW55d2F5LCBpdCBsb29rcyBnb29kIHRvIG1lIGFuZCBJIGhhdmUgb25seSBhIGZl
dyBtaW5vciBjb21tZW50czoKCj4gLS0tCj4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmln
ICAgICAgICAgICAgICAgICB8ICAxMSArCj4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9NYWtlZmls
ZSAgICAgICAgICAgICAgICB8ICAgMSArCj4gIC4uLi9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14
OC1taXBpLWRwaHkuYyAgICB8IDUwNiArKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFu
Z2VkLCA1MTggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtaW14OC1taXBpLWRwaHkuYwo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9LY29uZmlnIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL0tjb25maWcK
PiBpbmRleCA4MzI2NzBiNDk1MmIuLmExMTFiMTMwZjlkMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BoeS9mcmVlc2NhbGUvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29u
ZmlnCj4gQEAgLTMsMyArMywxNCBAQCBjb25maWcgUEhZX0ZTTF9JTVg4TVFfVVNCCj4gICAgICAg
ICBkZXBlbmRzIG9uIE9GICYmIEhBU19JT01FTQo+ICAgICAgICAgc2VsZWN0IEdFTkVSSUNfUEhZ
Cj4gICAgICAgICBkZWZhdWx0IEFSQ0hfTVhDICYmIEFSTTY0Cj4gKwo+ICtjb25maWcgUEhZX01J
WEVMX01JUElfRFBIWQo+ICsgICAgICAgdHJpc3RhdGUgIk1peGVsIE1JUEkgRFNJIFBIWSBzdXBw
b3J0Igo+ICsgICAgICAgZGVwZW5kcyBvbiBPRiAmJiBIQVNfSU9NRU0KPiArICAgICAgIHNlbGVj
dCBHRU5FUklDX1BIWQo+ICsgICAgICAgc2VsZWN0IEdFTkVSSUNfUEhZX01JUElfRFBIWQo+ICsg
ICAgICAgc2VsZWN0IFJFR01BUF9NTUlPCj4gKyAgICAgICBkZWZhdWx0IEFSQ0hfTVhDICYmIEFS
TTY0CgpJIGRvbid0IHRoaW5rIHRoYXQgdGhpcyBkZWZhdWx0IGlzIGEgZ29vZCBpZGVhLgoKVGhl
cmUgYXJlIGlteDhtIHN5c3RlbXMgdGhhdCBkbyBub3QgaGF2ZSBkaXNwbGF5LCBzbyBpbiB0aGlz
IGNhc2UgaXQKZG9lcyBub3QgbWFrZSBzZW5zZSB0byBhbHdheXMgZm9yY2UgdGhlIGJ1aWxkIG9m
IHRoaXMgZHJpdmVyLgoKPiArICAgICAgIGhlbHAKPiArICAgICAgICAgRW5hYmxlIHRoaXMgdG8g
YWRkIHN1cHBvcnQgZm9yIHRoZSBNaXhlbCBEU0kgUEhZIGFzIGZvdW5kCj4gKyAgICAgICAgIG9u
IE5YUCdzIGkuTVg4IGZhbWlseSBvZiBTT0NzLgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9m
cmVlc2NhbGUvTWFrZWZpbGUgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvTWFrZWZpbGUKPiBpbmRl
eCBkYzJiM2YxZjJmODAuLjA3NDkxYzkyNmEyYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9m
cmVlc2NhbGUvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvTWFrZWZpbGUK
PiBAQCAtMSArMSwyIEBACj4gIG9iai0kKENPTkZJR19QSFlfRlNMX0lNWDhNUV9VU0IpICAgICAg
ICs9IHBoeS1mc2wtaW14OG1xLXVzYi5vCj4gK29iai0kKENPTkZJR19QSFlfTUlYRUxfTUlQSV9E
UEhZKSAgICAgICs9IHBoeS1mc2wtaW14OC1taXBpLWRwaHkubwo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4LW1pcGktZHBoeS5jIGIvZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtaW14OC1taXBpLWRwaHkuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5kNmI1YWYwYjMzODAKPiAtLS0gL2Rldi9udWxsCj4gKysr
IGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OC1taXBpLWRwaHkuYwo+IEBAIC0w
LDAgKzEsNTA2IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsv
Kgo+ICsgKiBDb3B5cmlnaHQgMjAxNywyMDE4IE5YUAo+ICsgKiBDb3B5cmlnaHQgMjAxOSBQdXJp
c20gU1BDCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ICsjaW5jbHVkZSA8
bGludXgvY2xrLXByb3ZpZGVyLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICsjaW5j
bHVkZSA8bGludXgvaW8uaD4KPiArI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgo+ICsjaW5jbHVk
ZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICsjaW5jbHVkZSA8
bGludXgvb2ZfcGxhdGZvcm0uaD4KPiArI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ICsjaW5j
bHVkZSA8bGludXgvcGh5L3BoeS5oPgoKUGxlYXNlIGtlZXAgdGhlIGhlYWRlcnMgc29ydGVkLgoK
PiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgoKCj4gK3N0YXRpYyBpbnQgbWl4
ZWxfZHBoeV92YWxpZGF0ZShzdHJ1Y3QgcGh5ICpwaHksIGVudW0gcGh5X21vZGUgbW9kZSwgaW50
IHN1Ym1vZGUsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuaW9uIHBoeV9jb25m
aWd1cmVfb3B0cyAqb3B0cykKPiArewo+ICsgICAgICAgc3RydWN0IG1peGVsX2RwaHlfY2ZnIGNm
ZyA9IHsgMCB9Owo+ICsKPiArICAgICAgIGlmIChtb2RlICE9IFBIWV9NT0RFX01JUElfRFBIWSkK
PiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsgICAgICAgcmV0dXJuIG1p
eGVsX2RwaHlfY29uZmlnX2Zyb21fb3B0cyhwaHksICZvcHRzLT5taXBpX2RwaHksICZjZmcpOwo+
ICt9Cj4gKwo+ICsKCkEgc2luZ2xlIGJsYW5rIGxpbmUgaXMgZW5vdWdoLgoKPiArc3RhdGljIGlu
dCBtaXhlbF9kcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICt7Cj4gKyAgICAgICBwaHlfd3Jp
dGUocGh5LCBQV1JfT0ZGLCBEUEhZX1BEX1BMTCk7Cj4gKyAgICAgICBwaHlfd3JpdGUocGh5LCBQ
V1JfT0ZGLCBEUEhZX1BEX0RQSFkpOwo+ICsKPiArICAgICAgIHJldHVybiAwOwo+ICt9Cj4gKwo+
ICsKCkRpdHRvLgoKPiArc3RhdGljIGludCBtaXhlbF9kcGh5X2V4aXQoc3RydWN0IHBoeSAqcGh5
KQo+ICt7Cj4gKyAgICAgICBwaHlfd3JpdGUocGh5LCAwLCBEUEhZX0NNKTsKPiArICAgICAgIHBo
eV93cml0ZShwaHksIDAsIERQSFlfQ04pOwo+ICsgICAgICAgcGh5X3dyaXRlKHBoeSwgMCwgRFBI
WV9DTyk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KPiArCj4gKwoKRGl0dG8uCgo+ICtz
dGF0aWMgaW50IG1peGVsX2RwaHlfcG93ZXJfb2ZmKHN0cnVjdCBwaHkgKnBoeSkKPiArewo+ICsg
ICAgICAgc3RydWN0IG1peGVsX2RwaHlfcHJpdiAqcHJpdiA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkp
Owo+ICsKPiArICAgICAgIHBoeV93cml0ZShwaHksIFBXUl9PRkYsIERQSFlfUERfUExMKTsKPiAr
ICAgICAgIHBoeV93cml0ZShwaHksIFBXUl9PRkYsIERQSFlfUERfRFBIWSk7Cj4gKwo+ICsgICAg
ICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHByaXYtPnBoeV9yZWZfY2xrKTsKPiArCj4gKyAgICAg
ICByZXR1cm4gMDsKPiArfQo+ICsKPiArCgpEaXR0by4KCj4gKyAgICAgICByZXMgPSBwbGF0Zm9y
bV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJDRV9NRU0sIDApOwo+ICsgICAgICAgcmVncyA9
IGRldm1faW9yZW1hcF9yZXNvdXJjZShkZXYsIHJlcyk7Cj4gKyAgICAgICBpZiAoSVNfRVJSKHJl
Z3MpKSB7Cj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiQ291bGRuJ3QgbWFwIHRoZSBE
UEhZIHJlZ2lzdGVyc1xuIik7CgpZb3UgY2FuIHNraXAgdGhpcyBlcnJvciBtZXNzYWdlLCBiZWNh
dXNlIHRoZSBjb3JlIGFscmVhZHkgY29tcGxhaW5zIG9uCmlvcmVtYXAgZmFpbHVyZXMuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
