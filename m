Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F67D5DDFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 08:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++rGP+NMnw9AEOg7+SpcoJsscSvu/dw75G96YPmeIDo=; b=nSTVMdY4lQ7/3H
	Kf4SFGIaYJmN239xjLwzHK5IdYE8AuYf7VtDzjfHOsmYj/01baQAW4cQOxkFYntwubq/8uPS7bfO7
	MEUjI3Pbfn/yZ1QGEL/87p4nE2gERKZDLiTPpW/RzodNwpf4d5ZTw+ueGtHR4RCOEQqwwK9S1cVky
	6SHxLSypE1uJhc4s4zmF781vHRunCjBgUQmFJhbY+VmOHF8ejNtFEyg5OKKShCNxvJy+lnmMNfUjP
	G9T9khCZyr0vfQ+LpCGDaLk6JvhbilJ+tzmT3exnNpFNTKyTOAsfyqq3z7WqpA1oth+nZwQ21O81H
	Ss7nrlqNZqHT3I87WDEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiYaz-0006ZW-5Q; Wed, 03 Jul 2019 06:18:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiYaU-0006OR-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 06:17:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id p11so1248973wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 23:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=+b+ZNE8muQpXOkikX4gDxD4noa9WUcqsJTLAj8ORuJM=;
 b=JKwTiDBL2F+xPIXodfp3SDz4pvAQOhkw28XjDRRIIYEZDf0uHXJ1kaleuATAaqGLSj
 /lUVb0laNogltshs0CJYJM/yRK5yRpb7G7aiJv4OhPU4LA7450Dc2/qnaeiyRbXcW6sU
 nm0PusQqZCpWiHtb9fRFRri5N45uAQ3MzhWMu9l+CFg/k5JUiRkPVLg+Nqw8/WwRE2A8
 lGEnGR1X1u/hGIzOEXy2X1Ud6SvgllAo5AV9pnp0rHC2lFF7dZez2Of7YCaciwEvGILQ
 iI+ghMdv9+1ejKc7ydDrAXaUhi/ErjFpwMBtxxQXrETNf0ebq/cu896eshbhURPsvkcR
 gcqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=+b+ZNE8muQpXOkikX4gDxD4noa9WUcqsJTLAj8ORuJM=;
 b=hjLurjDjU9lA6Fd+Ukj8POjzqw5VVYW3cLDJtYGHfXVVh17BJN41OCFnHQDu4vs4hp
 y2qKqzZw29FhXtBl5LTcAi4AxC1l3aqDdUG++Vz9xkDhyh2JJtgb7898N/TL1cjRezNZ
 74Kd2QcOjhYEkJXpix9BZw1nQM1JZXPalLcOOEFLnH9Sp8aXqzbB56Ep3MyVHE3yQJl2
 fMAU+BBwOBhI7BXm1YfnJ+Dm8y2mc3IuYQhfQ1O1hkenJPZH0x80z/1A7cX2Qu9USWJ/
 zKYt61jr6nPt5PnvkBy3diloULfHQ0jtS091HgGGNfLbhaGYyQtAmkCpUWPM9nJ1MZ0B
 7YhQ==
X-Gm-Message-State: APjAAAXPRilxRvPG00+I16o2z0t125DmKLDZSH3ONpq96K3tNuHv7BI3
 sAo1SQ0+Tzic7RZM7VPN/YktEg==
X-Google-Smtp-Source: APXvYqz+4yF7FL0ZwdGQ6A6cFS0uz4zTCMWbnntXpvljfOHA2f6i0BKfL5+UQZ2+UhOOhD69RM5yiA==
X-Received: by 2002:a5d:494d:: with SMTP id r13mr28538311wrs.152.1562134669005; 
 Tue, 02 Jul 2019 23:17:49 -0700 (PDT)
Received: from dell ([2.27.35.164])
 by smtp.gmail.com with ESMTPSA id c1sm1572121wrh.1.2019.07.02.23.17.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Jul 2019 23:17:48 -0700 (PDT)
Date: Wed, 3 Jul 2019 07:17:46 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Lothar =?iso-8859-1?Q?Wa=DFmann?= <LW@KARO-electronics.de>
Subject: Re: [PATCH 2/4] input: keyboard/mouse/touchscreen/misc: Use
 dev_get_drvdata()
Message-ID: <20190703061746.GI4652@dell>
References: <20190701032342.25971-1-huangfq.daxian@gmail.com>
 <20190701075255.GD172968@dtor-ws>
 <CABXRUiSO2Fos1V3hR5t3AviZ9Hit_y+E-Tp3PNOQj6-FKUBJBw@mail.gmail.com>
 <CAHp75VeUo2Au66tETo3zneBpeaVU+Y+-h5zghpo+hPuB=a6-eA@mail.gmail.com>
 <CABXRUiQ77feNzEdQ7GqNxLS9YAMybVG3eAWWSDPFdGvERaxCyg@mail.gmail.com>
 <20190702143225.12b0fe07@karo-electronics.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702143225.12b0fe07@karo-electronics.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_231750_905116_7244876A 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Anson Huang <anson.huang@nxp.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Luca Weiss <luca@z3ntu.xyz>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input <linux-input@vger.kernel.org>,
 Fuqian Huang <huangfq.daxian@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Brian Masney <masneyb@onstation.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>, Pascal PAILLET-LME <p.paillet@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Christian Hoff <christian_hoff@gmx.net>,
 Shawn Guo <shawnguo@kernel.org>, Gabriel Fernandez <gabriel.fernandez@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwMiBKdWwgMjAxOSwgTG90aGFyIFdhw59tYW5uIHdyb3RlOgoKPiBIaSwKPiAKPiBP
biBUdWUsIDIgSnVsIDIwMTkgMTk6NDc6MTYgKzA4MDAgRnVxaWFuIEh1YW5nIHdyb3RlOgo+ID4g
QW5keSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPiDmlrwgMjAxOeW5tDfm
nIgy5pel6YCx5LqMIOS4i+WNiDU6NTHlr6vpgZPvvJoKPiA+ID4KPiA+ID4gT24gVHVlLCBKdWwg
MiwgMjAxOSBhdCAxMToyMCBBTSBGdXFpYW4gSHVhbmcgPGh1YW5nZnEuZGF4aWFuQGdtYWlsLmNv
bT4gd3JvdGU6ICAKPiA+ID4gPgo+ID4gPiA+IEkgYW0gbm90IGFuIGV4cGVydCBvbiB0aGlzLiBJ
IGp1c3Qgd3JpdGUgYSBjb2NjaW5lbGxlIHNjcmlwdCB0byBzZWFyY2gKPiA+ID4gPiB0aGlzIGtp
bmQgb2YgbWlzdXNlIGFuZCBmaXggaXQgaW4gYSBuYWl2ZSB3YXkuCj4gPiA+ID4gQ291bGQgeW91
IHRlbGwgbWUgYWJvdXQgaG93IHRvIHVzZSB0aGUgcHJvcGVyIGJ1cyBhY2Nlc3NvcnM/IFRoZW4g
SQo+ID4gPiA+IHdpbGwgZml4IGl0IHVwIGFuZCByZXNlbmQgYSB2MiBwYXRjaCBzZXQuICAKPiA+
ID4KPiA+ID4gRmlyc3QsIGRvbid0IHRvcCBwb3N0Lgo+ID4gPiBBbmQgYW5zd2VyaW5nIHRvIHRo
aXMsIHNpbXBsZSBkcm9wIHRoZSBwYXRjaC4KPiA+ID4gUHJvcGVyIGJ1cyBhY2Nlc3NvcnMgaXMg
ZXhhY3RseSB3aGF0IGl0J3MgdXNlZCBpbiB0aGUgY3VycmVudCBjb2RlLiAgCj4gPiAKPiA+IEJ1
dCB3aHkgbm90IHVzZSBkZXZfZ2V0X2RydmRhdGEgZGlyZWN0bHkuCj4gPiBJdCBzaW1wbGlmaWVz
IGdldHRpbmcgdGhlICdkcml2ZXJfZGF0YScgZnJvbSAnc3RydWN0IGRldmljZScgZGlyZWN0bHku
Cj4gPiBBbmQgdGhlIHBsYXRmb3JtX2RldmljZSBoZXJlIGlzIG5vdCByZXF1aXJlZC4KPiA+IFJl
cGxhY2UgaXQgY2FuIHJlbW92ZSB0aGUgdW5uZWNlc3Nhcnkgc3RlcCBiYWNrIGFuZCBmb3J0aC4g
KGRldiAtPiBwZGV2IC0+IGRldikuCj4gPiAKPiBEaWQgeW91IGNoZWNrIHdoZXRoZXIgdGhlIGNv
bXBpbGVyIGdlbmVyYXRlcyBkaWZmZXJlbnQgKGJldHRlcikgY29kZQo+IHdpdGggYW5kIHdpdGhv
dXQgeW91ciBwYXRjaD8gTXkgZ3Vlc3MgaXMgaXQgd29uJ3QuCgpJIGNhbiBzZWUgRnVxaWFuJ3Mg
cG9pbnQuICBJZiBidXMgQVBJcyBhcmUgcHJlZmVycmVkLCBtYXliZSBpdCB3b3VsZApiZSBuaWNl
ciBpZiB0aGUgZnVuY3Rpb24gd2FzIGFkYXB0ZWQgdG8gYWNjZXB0IGEgcGxhdGZvcm1fZGV2aWNl
Cmluc3RlYWQ/CgpDYXZlYXQ6IEkgaGF2ZW4ndCB0YWtlbiB0aGUgdGltZSB0byBsb29rIGludG8g
dGhlIGNhbGwtc2l0ZSBkZXRhaWxzLgoJVGhpcyBjb21tZW50IGlzIGJhc2VkIG9uIGp1c3QgdGhl
IHBhdGNoIGFsb25lLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMg
VGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFS
TSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
