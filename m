Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2823D8B438
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 11:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vw5x5Ys3A0z4Be4pYhMi1U6+ZR35XPFEb5ZkGDSw6PY=; b=DuiA/KgZ4TuKZ9
	RTGl0ls/xs1YS/3vEVtErSGVjxr1m0BZSATGWVx9uJQVyGra1b7g47xBT/fJ/Q6EWki8alncxaAr4
	zQccTkAbfQlKCj1Ooygem3ezL/ESIO+aF4fsewgYy+LktYRpC1SVQwjE0FSuPS/Hixw5Tne8pisXr
	XvSc+BVs1fSUVu6fIxEND2yUk7C0Io+ncuxeSLc6xoMIORCOpxkIypNO0VG/Dt9wFLOk2Fxm/Q1GU
	Wqxo69jt8VgY/X1PrlhndNchcoH1xwDv0HdBSiz/k2c8B7LpF3WsS1adn5EdbKy6FLIevD9mXet4f
	uFUI88VmDZ1xrJ097VCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTC8-0003Zj-QS; Tue, 13 Aug 2019 09:34:21 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTBb-0003XG-1p; Tue, 13 Aug 2019 09:33:48 +0000
Received: by mail-ot1-f66.google.com with SMTP id n5so170078490otk.1;
 Tue, 13 Aug 2019 02:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fe2+dAApvC1/VPt5qF5G9PQvhNevUg8+Cv3+qUMDu8o=;
 b=KbYpvxfZ6RAeVerhkv3CZdm1FxV2OWevNTwmYuvYXRI8h/veFe4gKuhNXdeBjL6vWR
 6gT8/LWjm9gHvGwFoLPm2iAYBhcPePIfJcp//rhN9lcSAIwZGezLmrKb33yD4r2ttV+T
 PFGh2L89JNaYlIQ6KC5jSF03RWf/56k/jCLCSXoTHQ7N11lQrEjtmo7YfKyN4Wclmgyh
 k0OhiKgTurQJ4Zt4G4JvUGmJz3EyRAfo5rhv/YdMy3RyEskcup7E9+y20C0FyP6GriZa
 I5WxcMCduoMNpfkTfJE0WCN+T9DTqPWdmWO4KGjrgSxT40HabkMp2DNfGNxVnhrE1ZoB
 t7lw==
X-Gm-Message-State: APjAAAUh0vw2kTkTKDBbu9JiCxyf3c1ftbu76d8rGlLtG4XeAGJjfjqs
 n5w1a1/tRGX3C7ffr7FD/3EwY0ec4omQp7rbfp0=
X-Google-Smtp-Source: APXvYqwEtEvl7H6vDy32xA+A2TjXiepeEmCEppGcjO6tLj2iPxuIL4+T4ZepBvzdNwRLEXhv/kpaoXuvNsmrqAGDsHI=
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr73710oto.250.1565688823565;
 Tue, 13 Aug 2019 02:33:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <ebb75e71b8b7c8d65d54a947a03fd21b8969fb3a.1564161140.git.andrzej.p@collabora.com>
 <20190808034208.GA31284@roeck-us.net>
In-Reply-To: <20190808034208.GA31284@roeck-us.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 13 Aug 2019 11:33:32 +0200
Message-ID: <CAMuHMdXyGtogEfyFP1RnG2kM504WZ=nzfN_3z6rk4wJZqHaJQw@mail.gmail.com>
Subject: Re: [PATCH v6 19/24] drm/bridge: dumb-vga-dac: Provide ddc symlink in
 connector sysfs directory
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_023347_097443_596A852B 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Dave Airlie <airlied@redhat.com>,
 freedreno@lists.freedesktop.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jyri Sarha <jsarha@ti.com>, Mamta Shukla <mamtashukla555@gmail.com>,
 linux-mediatek@lists.infradead.org, Maxime Ripard <mripard@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Enrico Weigelt <info@metux.net>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR8O8bnRlciwKCk9uIFRodSwgQXVnIDgsIDIwMTkgYXQgNTo0MiBBTSBHdWVudGVyIFJvZWNr
IDxsaW51eEByb2Vjay11cy5uZXQ+IHdyb3RlOgo+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDA3
OjIzOjEzUE0gKzAyMDAsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPiA+IFVzZSB0aGUg
ZGRjIHBvaW50ZXIgcHJvdmlkZWQgYnkgdGhlIGdlbmVyaWMgY29ubmVjdG9yLgo+ID4KPiA+IFNp
Z25lZC1vZmYtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5j
b20+Cj4gPiBSZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUu
Y29tPgo+Cj4gVGhpcyBwYXRjaCByZXN1bHRzIGluIGEgY3Jhc2ggd2hlbiBydW5uaW5nIHFlbXU6
dmVyc2F0aWxlcGIuCj4KPiBVbmFibGUgdG8gaGFuZGxlIGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVy
ZWZlcmVuY2UgYXQgdmlydHVhbCBhZGRyZXNzIDAwMDAwMGM1Cj4gcGdkID0gKHB0cnZhbCkKPiBb
MDAwMDAwYzVdICpwZ2Q9MDAwMDAwMDAKPiBJbnRlcm5hbCBlcnJvcjogT29wczogNSBbIzFdIEFS
TQo+IE1vZHVsZXMgbGlua2VkIGluOgo+IENQVTogMCBQSUQ6IDEgQ29tbTogc3dhcHBlciBOb3Qg
dGFpbnRlZCA1LjMuMC1yYzErICMxCj4gSGFyZHdhcmUgbmFtZTogQVJNLVZlcnNhdGlsZSAoRGV2
aWNlIFRyZWUgU3VwcG9ydCkKPiBQQyBpcyBhdCBzeXNmc19kb19jcmVhdGVfbGlua19zZCsweDM4
LzB4ZDgKPiBMUiBpcyBhdCBzeXNmc19kb19jcmVhdGVfbGlua19zZCsweDM4LzB4ZDgKCj4gWzxj
MDFhYzk0Yz5dIChzeXNmc19kb19jcmVhdGVfbGlua19zZCkgZnJvbSBbPGMwNGM3ZmMwPl0gKGRy
bV9jb25uZWN0b3JfcmVnaXN0ZXIucGFydC4xKzB4NDAvMHhhMCkKPiBbPGMwNGM3ZmMwPl0gKGRy
bV9jb25uZWN0b3JfcmVnaXN0ZXIucGFydC4xKSBmcm9tIFs8YzA0Yzg3ZTA+XSAoZHJtX2Nvbm5l
Y3Rvcl9yZWdpc3Rlcl9hbGwrMHg5MC8weGI4KQo+IFs8YzA0Yzg3ZTA+XSAoZHJtX2Nvbm5lY3Rv
cl9yZWdpc3Rlcl9hbGwpIGZyb20gWzxjMDRjZWZjYz5dIChkcm1fbW9kZXNldF9yZWdpc3Rlcl9h
bGwrMHg0NC8weDZjKQo+IFs8YzA0Y2VmY2M+XSAoZHJtX21vZGVzZXRfcmVnaXN0ZXJfYWxsKSBm
cm9tIFs8YzA0YjRlYmM+XSAoZHJtX2Rldl9yZWdpc3RlcisweDE1Yy8weDFjMCkKPiBbPGMwNGI0
ZWJjPl0gKGRybV9kZXZfcmVnaXN0ZXIpIGZyb20gWzxjMDRkZjJmOD5dIChwbDExMV9hbWJhX3By
b2JlKzB4MmUwLzB4NGFjKQo+IFs8YzA0ZGYyZjg+XSAocGwxMTFfYW1iYV9wcm9iZSkgZnJvbSBb
PGMwNDVlOGQ4Pl0gKGFtYmFfcHJvYmUrMHg5Yy8weDExOCkKClNlZWluZyB0aGUgc2FtZSB0aGlu
ZyBvbiBTYWx2YXRvci1YUywgZHVlIHRvIHZnYS0+ZGRjIGJlaW5nIC1FTk9ERVYuCgo+ICMgZmly
c3QgYmFkIGNvbW1pdDogW2E0ZjkwODdlODVkZTE0MWU0ZTZkMjFhYzJjNTgzYWUwOTZjYzlhYmFd
IGRybS9icmlkZ2U6IGR1bWItdmdhLWRhYzogUHJvdmlkZSBkZGMgc3ltbGluayBpbiBjb25uZWN0
b3Igc3lzZnMgZGlyZWN0b3J5CgpGaXggc2VudApodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21s
LzIwMTkwODEzMDkzMDQ2LjQ5NzYtMS1nZWVydCtyZW5lc2FzQGdsaWRlci5iZS8KCkdye29ldGpl
LGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0
ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxp
bnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBl
b3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91
cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
