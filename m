Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA5BE05D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 16:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4X4YG53YMgUWcsP6MNjPbFrM3qUJfJR3GIUAemqjJE=; b=AN5bGHMYWL5hiU
	mU7EHFoOjbEbEnDzgZM83PE5qsFVvMSoeqQXPsKLVcV/dqfPJRpP6N/CKBUr4Vu+x50nXRlYgaB0A
	3tIdZL8ulaC2haBDTGMzdiCgkI6L8JRFfYjpFYraAQQ/rFPoSGty2HDpB4IHoywnh3Qqas5nAeyhu
	A+JK7/f82mu/4qx6NXzPCe6OPiqx1hm3D1Wfzd5GmvnelbmvPnAZqq8v+L14vNkn77xERBx4e/0rE
	PwlXnQvYukzJR9Ulu+oxz4kDoDr4cCKyis4FOagd2wQDeIpnbAdahtFDLaq1Q6n0iikDu707b7IVM
	OZ4WrjARt6YusPpdCYJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuln-0005zG-6U; Tue, 22 Oct 2019 14:04:19 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuj6-0005u7-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 14:01:46 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Md6hP-1hn1bu2yZf-00aGtW for <linux-arm-kernel@lists.infradead.org>; Tue,
 22 Oct 2019 16:01:29 +0200
Received: by mail-qk1-f174.google.com with SMTP id f18so15707968qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 07:01:29 -0700 (PDT)
X-Gm-Message-State: APjAAAXTlLs354wCdp5kFGyak7EMdusf1zuGsMRQ35YcLqW/dlYOdBfQ
 EKbL3SxxIE9ptGMFXuhAQAoiom9UKfsbSDwj31Q=
X-Google-Smtp-Source: APXvYqzNJSBsmzArUiJoxHmomaDqQtkgb7eiZl33ieH3Pnwwm1/FZ2lXqT+Z19UoP0NfH21IBu5WdckCCzmNgI5QFYQ=
X-Received: by 2002:a37:a50f:: with SMTP id o15mr1985123qke.3.1571752888552;
 Tue, 22 Oct 2019 07:01:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-11-arnd@arndb.de>
 <20191011055149.4dudr4tk2znpt65u@pengutronix.de>
In-Reply-To: <20191011055149.4dudr4tk2znpt65u@pengutronix.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 22 Oct 2019 16:01:12 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1st8gR7u+8-oyP6HrzZdmrzhq7PRonYuz0a5O8rfKaSA@mail.gmail.com>
Message-ID: <CAK8P3a1st8gR7u+8-oyP6HrzZdmrzhq7PRonYuz0a5O8rfKaSA@mail.gmail.com>
Subject: Re: [PATCH 11/36] ARM: s5pv210: split from plat-samsung
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Provags-ID: V03:K1:jvfYbeguqsY+8AAp3B0n7a6U9fis4KnIUlMvmL7XKdh6MkJGQwW
 KpOkq5S1aGJtBmqhFlKXNc8sSpnlH2gFlaS0kyVU5umOyQNPMcfUnTFjd/qcozDqY0Bmad6
 yUJf3uuvv+7HGal6fucboXDxNHqu3MmLOKFBauN54I4edBGix7ben6VGIblxABKkcuonw/L
 an5mexdT+DqDcQ5tJQE6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DP8zpGco6fE=:Q/+oDqLTXzG9JtBxtod2NG
 LqbtdCMWpq6lZ9cs4tdPRUIxgOYYxr0WQWMCQ7eNakEWpEjlbn0OkLjmcXDfQaLbxFSPQcUWj
 091+lJhwTuIaDjMf3Qe5s5lHI/a3reI93T1EmmlRWvqDx9+MHX3b17thZa//IBzw0BcfJ6tja
 +KBtZ3L4EXeHOl2Q9sQslBLVkMuk3K2ZL/NBfvFWqHYUAwnogeiX+AW9ff1FZO2+FidP049C1
 jz99C5ap7LxXjriSTTX/oJcbK1PzKKT6mT9qhOmbdNMCRrEkirTzvQU49MQ6T6fWw4AEL5gmd
 ntOjnkZesGP1Dc7OLSDCRwYPIcYMCsGFMh1aw73P5CQoek0B0cYmA1ZIWZtvQcFEZnj4b5h/x
 /sX2Kc5qT+/5g83Lz8+LmnffMH4kEH3ZjodCvkWBep90Fh/7eICAD4P//9YyqdtR3XiKJ6Tni
 rHzyabG54qGopupySTRts1wuLjUuZqTvQTSerQCQLaRfyUKgyXe4QxDRtVjTjhhKpmJiOZDyY
 g+tBcaChcE6wVM/CM+mvdvguwI0qPEyOzwxLLkqzvsCmbWs7MQAcNtL8WmtZTQKMuJeeW+6Ty
 PEii/HNdrKo/dB+27+0efFDFs4w5WuTvNYI9Bk3Cq4ppmZNJDkh+ut8XwfKGC/kxNnH6ZayBs
 gSMpSXNk09OgkM3ngkFjyABgWQQ/iTxxc05Bf7cjDb60mDrACEi46VGFC/rpzUnxMm8mOS+3+
 X/gmEvoG1zmSSx/ljpfZY/ZTYbybrVW2guqgO/oTx5Vu712LsinCImooEjxNC8PrbeVH7G9R4
 T8iDrz/M7T0CT8343RFHZaj5vHUBoFyrgF+SyJK0hfqOy16GJ827RSFekEHG1zMgzZABuXQx7
 H9cZWA4RqeQQXh+Ogobw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_070133_790081_61655541 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 linux-spi <linux-spi@vger.kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgNzo1MSBBTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIFRodSwgT2N0IDEwLCAyMDE5
IGF0IDEwOjI5OjU1UE0gKzAyMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gPiBUaGVzZSBjYW4g
YmUgYnVpbGQgY29tcGxldGVseSBpbmRlcGVuZGVudGx5LCBzbyBzcGxpdAo+ID4gdGhlIHR3byBL
Y29uZmlnIHN5bWJvbHMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFubiA8YXJu
ZEBhcm5kYi5kZT4KPgo+IEknZCBtZW50aW9uIHRoZSB0d28gc3ltYm9scycgbmFtZXMgeW91J3Jl
IHdvcmtpbmcgb24gaW4gdGhlIGNvbW1pdCBsb2cuCj4gSSBndWVzcyBpdCdzIGFib3V0IFBMQVRf
U0FNU1VORyBhbmQgQVJDSF9TNVBWMjEwLiBBbmQgSSB3b3VsZG4ndCBjYWxsIGl0Cj4gInNwbGl0
IiB3aGljaCBJTUhPIHN1Z2dlc3RzIHRoZXJlIHdhcyBvbmx5IG9uZSBzeW1ib2wgYmVmb3JlLgo+
Cj4gTWF5YmU6Cj4KPiAgICAgICAgIERvbid0IGltcGx5IFBMQVRfU0FNU1VORyBpZiBBUkNIX1M1
UFYyMTAgaXMgZW5hYmxlZAo+Cj4gd291bGQgYmUgYSBiZXR0ZXIgc3ViamVjdCBsaW5lPwoKT2ss
IGNoYW5nZWQgdG8KCkFSTTogczVwdjIxMDogZG9uJ3QgaW1wbHkgQ09ORklHX1BMQVRfU0FNU1VO
RwoKPiA+IEBAIC0yMzUsNyArMjM1LDYgQEAgbWFjaGluZS0kKENPTkZJR19QTEFUX1NQRUFSKSAg
ICAgICAgICAgICAgKz0gc3BlYXIKPiA+ICAjIGJ5IENPTkZJR18qIG1hY3JvIG5hbWUuCj4gPiAg
cGxhdC0kKENPTkZJR19BUkNIX09NQVApICAgICArPSBvbWFwCj4gPiAgcGxhdC0kKENPTkZJR19B
UkNIX1MzQzY0WFgpICArPSBzYW1zdW5nCj4gPiAtcGxhdC0kKENPTkZJR19BUkNIX1M1UFYyMTAp
ICArPSBzYW1zdW5nCj4KPiBXb3VsZCBpdCBtYWtlIG1vcmUgc2Vuc2UgdG8gbWFrZSB0aGlzCj4K
PiAgICAgICAgIHBsYXQtJChQTEFUX1NBTVNVTkcpICs9IHNhbXN1bmcKPgo+IChpbiBhIHNlcGFy
YXRlIHBhdGNoKT8gSG1tLCBpdCBzZWVtcyB0aGVyZSBpcyBubyBwbGF0LXkgZm9yCj4gUExBVF9T
M0MyNFhYPXkgYnVpbGRzLiBJcyB0aGlzIGludGVuZGVkPyBJZiB5ZXMsIHRoZSBkaXJlY3Rvcnkg
bmFtZQo+IGNvbnRhaW5pbmcgInNhbXN1bmciIHN1Z2dlc3RzIHNvbWV0aGluZyB0aGF0IHNlZW1z
IHVudHJ1ZS4KCkJ5IHRoZSBlbmQgb2YgdGhlIHNlcmllcywgdGhlIHBsYXQtc2Ftc3VuZyBkaXJl
Y3RvcnkgaXMgY29tcGxldGVseQpyZW1vdmVkIChmb2xkZWQgaW50byBtYWNoLXMzYyksIHNvIHRo
YXQgd291bGQgb25seSBhZGQgbW9yZQpjaHVybiBmb3IgdGhlIHNhbWUgcmVzdWx0IEkgdGhpbmsu
CgogICAgIEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
