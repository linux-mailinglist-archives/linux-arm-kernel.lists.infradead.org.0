Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342F55CF8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 14:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSTp9Dy/LLDwN/7IxJ2Weh1W316ZyyQP1/q5e0ZyQaM=; b=KacEIguGLDTnoH
	PoGL4qd3DOOcZEFK9A/p863r9yk5pn5mji0638QMXEP9ItV4r6C04pU+uyxVJBxAZIuNtXo9F45fH
	tV1+XOChhbP791fEBqvREOxW7NSAQwRsSUlxSvgn6mEZq/8oZcEUo72FVrizAchLmTF5XG5ZGN1Ic
	cjQMH2KMU7OAbvuvKQgbDgEzsT/kCyte+l25htU3zztY3fa8y3+zf5nzVE/fFUUi9HnEo/hYy0Rko
	Btsed1jPKeHQ4TClOopKFpyrCA2vhOYHNbxKcs5D/5oX8+oaSia2dbC5XYvwoyosj1VgG9PV4ijbW
	2CZE9DEjuEPSNZz1isHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiI0Q-00069u-TR; Tue, 02 Jul 2019 12:35:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiHzt-00069I-30
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 12:34:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id a93so312646pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 05:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jokG8y7pGP2+UWx7IWucDqOqprFGw3L7LysoH2ndPPk=;
 b=QfZYXZ7feC/e+gYdXOs2JA4AM/I1wxZBQRu5H5BgIt0t195g9UcDFz7Uj/hLMc3Oyg
 J+hKy0Lf5pwPl6dKDZd4fQ/s0jc8R1wWGUiMvck0lMW9hpxHhBZBsdxhzMbuzQNQf60G
 pewif1bLaGPE6sZx5mjxVKnfsZ3mXS5l+i8WBOalZVORTZuMtcyYU7bbcBSg6fh9W2Rl
 l4IalWd7tfFFceLc+uPmCDNQFHNJeNmnNrhHZKmYZlrohaRnkDA4ESOrwclwibELzEDk
 9ktNk56ksCafz8CgLft8+XvtgsdGOAnAhHKpKw62aM3XY/xsveaSXJ0YTntJVku2s97i
 rNMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jokG8y7pGP2+UWx7IWucDqOqprFGw3L7LysoH2ndPPk=;
 b=NVXxLMBt29sn1phO0i5SJtnFh5Mo1dyxXxYcykdl93gU7xitAF3o2un21lvEvLq+zz
 DZnXcXu9ZEX1IGNswmUgYxLkzv76Sj17rTkFvmb0fnjHpJTgHs6+b+6kkOru6eRVEuxH
 gFAlP+RMKQ3N/8C+X+Erj6ZiQyH/YYQlguD1vgZFOtmcCyZwl3oRKEuFEWOxKPTHyO65
 ufWlYhZQlyKY7EEssh6Qg1b/mwIA56hrI+OXsJ1EX1x0m3+YHA7bVF9auSHNelVZ6hat
 H+WO7ie66Ee+UDlxJR9HuKIvqBPVAYPracWxulU3v+fqA5Cbrl73bzCWB/m2WxC4gYTh
 4bhA==
X-Gm-Message-State: APjAAAVfiFvaQH8F9ueIGsBLfi08xH1OAlsZpcrNtok80QW4YcmGoUAQ
 /9eqZwh4tfZNXKBzig1apMotKSGn0e2qtdu7el0=
X-Google-Smtp-Source: APXvYqziILDu4WGQDw+R/UG1FckXLxR/PCpLHn/GWKNMFPxPSAKS+R2u6XB44qkhaHx36v7Mh2CmIGdRE7aMEkjyxuI=
X-Received: by 2002:a17:902:934a:: with SMTP id
 g10mr35770980plp.18.1562070895967; 
 Tue, 02 Jul 2019 05:34:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190701032342.25971-1-huangfq.daxian@gmail.com>
 <20190701075255.GD172968@dtor-ws>
 <CABXRUiSO2Fos1V3hR5t3AviZ9Hit_y+E-Tp3PNOQj6-FKUBJBw@mail.gmail.com>
 <CAHp75VeUo2Au66tETo3zneBpeaVU+Y+-h5zghpo+hPuB=a6-eA@mail.gmail.com>
 <CABXRUiQ77feNzEdQ7GqNxLS9YAMybVG3eAWWSDPFdGvERaxCyg@mail.gmail.com>
In-Reply-To: <CABXRUiQ77feNzEdQ7GqNxLS9YAMybVG3eAWWSDPFdGvERaxCyg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 2 Jul 2019 15:34:43 +0300
Message-ID: <CAHp75Vf-_me0HxTZ5cm7Tc_Y5oVqO7qOQvKycjjDv_7C91+Q+g@mail.gmail.com>
Subject: Re: [PATCH 2/4] input: keyboard/mouse/touchscreen/misc: Use
 dev_get_drvdata()
To: Fuqian Huang <huangfq.daxian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_053457_137294_0B107434 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Richard Fontana <rfontana@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Anson Huang <anson.huang@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Luca Weiss <luca@z3ntu.xyz>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Brian Masney <masneyb@onstation.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-input <linux-input@vger.kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Pascal PAILLET-LME <p.paillet@st.com>, Shawn Guo <shawnguo@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Christian Hoff <christian_hoff@gmx.net>,
 Enrico Weigelt <info@metux.net>, Gabriel Fernandez <gabriel.fernandez@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMiwgMjAxOSBhdCAyOjQ3IFBNIEZ1cWlhbiBIdWFuZyA8aHVhbmdmcS5kYXhp
YW5AZ21haWwuY29tPiB3cm90ZToKPgo+IEFuZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hlbmtv
QGdtYWlsLmNvbT4g5pa8IDIwMTnlubQ35pyIMuaXpemAseS6jCDkuIvljYg1OjUx5a+r6YGT77ya
Cj4gPgo+ID4gT24gVHVlLCBKdWwgMiwgMjAxOSBhdCAxMToyMCBBTSBGdXFpYW4gSHVhbmcgPGh1
YW5nZnEuZGF4aWFuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEkgYW0gbm90IGFuIGV4
cGVydCBvbiB0aGlzLiBJIGp1c3Qgd3JpdGUgYSBjb2NjaW5lbGxlIHNjcmlwdCB0byBzZWFyY2gK
PiA+ID4gdGhpcyBraW5kIG9mIG1pc3VzZSBhbmQgZml4IGl0IGluIGEgbmFpdmUgd2F5Lgo+ID4g
PiBDb3VsZCB5b3UgdGVsbCBtZSBhYm91dCBob3cgdG8gdXNlIHRoZSBwcm9wZXIgYnVzIGFjY2Vz
c29ycz8gVGhlbiBJCj4gPiA+IHdpbGwgZml4IGl0IHVwIGFuZCByZXNlbmQgYSB2MiBwYXRjaCBz
ZXQuCj4gPgo+ID4gRmlyc3QsIGRvbid0IHRvcCBwb3N0Lgo+ID4gQW5kIGFuc3dlcmluZyB0byB0
aGlzLCBzaW1wbGUgZHJvcCB0aGUgcGF0Y2guCj4gPiBQcm9wZXIgYnVzIGFjY2Vzc29ycyBpcyBl
eGFjdGx5IHdoYXQgaXQncyB1c2VkIGluIHRoZSBjdXJyZW50IGNvZGUuCj4KPiBCdXQgd2h5IG5v
dCB1c2UgZGV2X2dldF9kcnZkYXRhIGRpcmVjdGx5Lgo+IEl0IHNpbXBsaWZpZXMgZ2V0dGluZyB0
aGUgJ2RyaXZlcl9kYXRhJyBmcm9tICdzdHJ1Y3QgZGV2aWNlJyBkaXJlY3RseS4KPiBBbmQgdGhl
IHBsYXRmb3JtX2RldmljZSBoZXJlIGlzIG5vdCByZXF1aXJlZC4KPiBSZXBsYWNlIGl0IGNhbiBy
ZW1vdmUgdGhlIHVubmVjZXNzYXJ5IHN0ZXAgYmFjayBhbmQgZm9ydGguIChkZXYgLT4gcGRldiAt
PiBkZXYpLgoKTGlrZSBqdXN0IG5vdyBMb3RoYXIgZ2l2ZXMgYSBnb29kIGlkZWEgZm9yIHlvdSB0
byBzZWxsIGlzIHRvIGNoZWNrCmNvbXBpbGVyIG91dHB1dC4KCkJ1dCB0aGUgcXVlc3Rpb24gaXRz
ZWxmIGlzIGFkZHJlc3NlZCB0byBzdWJzeXN0ZW0gbWFpbnRhaW5lci4KCj4gSnVzdCBsaWtlIHRo
ZSBjb21taXQKCj4gMTk0OGQ0OThkY2Y2KCJ0aGVybWFsOiBpbnRlbDogaW50MzQweDogcHJvY2Vz
c29yX3RoZXJtYWxfZGV2aWNlOgo+IHNpbXBsaWZ5IHRvIGdldCBkcml2ZXIgZGF0YSIpCgpTaWRl
IG5vdGU6IHRoaXMgZXhhbXBsZSBpcyBub3QgZ29vZCwgc2luY2UgdGhlIG1hY3JvIGlzIGJ1cyBh
Z25vc3RpYy4KCj4gYW5kIG1hbnkgb3RoZXIgc2ltaWxhciBjb21taXRzIGluIHRoZSBMaW51eCBn
aXQgbG9nLgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
