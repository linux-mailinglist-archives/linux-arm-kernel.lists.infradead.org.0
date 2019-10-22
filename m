Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9441E089D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9+DBldacvsQJ+84dbVInFvntnjVrfPxA5A+tciygfA=; b=aABfuM0fl8EcmM
	wfrBAw2KAMeETkUaUa6ZXT/Ayux37pAvjfcW8mwqe9czNZkp0EsQWPebVBpERCIzlkkos+wMvIreF
	Q1T94RLFYM59ooAljG4TvjT6YuJlaxX2ds61os6dN5ub7AsyNsguSGR+hws2PLPisnu396aI84LXc
	S9dGRqIanq5h6wPhQloqJA1pkRn0LpgEYZCt21O3Hu5FNdRpvfTeli5tHxsty7qFyMztSuDaoKX18
	T6PRh1zZ7peD0fqbO/zwKS4/NjdBc472m7UszCYoqCLZ0QVeFMyBwJr4sSr43MD3RMJ+ILFeYGXSy
	qjN0rlq/cL3Gu+00u0cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwuL-0006JC-6q; Tue, 22 Oct 2019 16:21:17 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwu5-0006IM-B5
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:21:03 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MXGak-1iWL4f07ME-00YfOw for <linux-arm-kernel@lists.infradead.org>; Tue,
 22 Oct 2019 18:20:59 +0200
Received: by mail-qt1-f169.google.com with SMTP id c21so27579301qtj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 09:20:58 -0700 (PDT)
X-Gm-Message-State: APjAAAWeXR/8ME67uN+xt1pPg2XoGAunHhflG7a5u6wKeZMoLQHWMDrN
 zCOXgSPxicPSOCxRyzBH0wNJkN3iZ2jRujs+x0Y=
X-Google-Smtp-Source: APXvYqyoLKHktNxYMbHgU6oEzWDucDHxX3DzLUXc70BjhpXFB5K+Mcs4VGMIh8ghBPfcQzJ4zkTEBWIuMQ3o+13CFPs=
X-Received: by 2002:ac8:33d4:: with SMTP id d20mr4201539qtb.204.1571761258010; 
 Tue, 22 Oct 2019 09:20:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-11-arnd@arndb.de>
 <20191011055149.4dudr4tk2znpt65u@pengutronix.de>
 <CAK8P3a1st8gR7u+8-oyP6HrzZdmrzhq7PRonYuz0a5O8rfKaSA@mail.gmail.com>
 <20191022155307.izh4ryorm7thw7tq@pengutronix.de>
In-Reply-To: <20191022155307.izh4ryorm7thw7tq@pengutronix.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 22 Oct 2019 18:20:41 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1mvbss6Q-CQBYRAf7ozYgyOu3WFGkoaSaoJriUbuRACA@mail.gmail.com>
Message-ID: <CAK8P3a1mvbss6Q-CQBYRAf7ozYgyOu3WFGkoaSaoJriUbuRACA@mail.gmail.com>
Subject: Re: [PATCH 11/36] ARM: s5pv210: split from plat-samsung
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Provags-ID: V03:K1:LgBnjrxJRsPCeDRamXAODvtHFPbUJXydkmx80suGFAd+eRQ0imF
 MvcPhmDRfRCF1KGGI7EJ4pXVfx75e2O+8xuI8ez8xLP3jqhRqfLvG/bUa/xXgfP6cj4cMUi
 SnVpeu7yM0LloxIzXY4pnWUhHiFgPCjaRCJDQ1hbAmJxEj9QHVfdmtxfWU2NLvbGdC7oS5g
 cMH80uQnXSV1g7P/iQR1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:54IeOSIFU/A=:ddlLb8X9OU+wPy8opAWBdp
 hlxySeUJsCUHxMo/8Zj/MZvuRyjsMc0XKKEFKqCAI85DhNzhdEX5Cg2wxqUYbGf2dJzq1GQe1
 UomCO48bRES+s3uICnXUm39s+qdoF2+hrujs3uc1kljxBM8F1ZO0Wf5tpsNsZ6l7UOKLlun5p
 nbQM8DzIaHY7NJoUvIpssUwsTJ1gPFpXCEIlRPl1xgpxy+BNtBal9W54/5+mN2nLg5D2MSrfB
 hWJHJ+P1ZxU3/4SueWPHgsskFfl7KB2D5iu0PHeiJEnupHc70IM3Xtv4jpYbb+9Zv7mYrwRYB
 qKr2SGNQuAUg7DXMilrjm1lsBm3kxz+mHECQCJ18Cyog23clv9b0AO0bvdPl2SiW4Y1uhqQ9t
 H/kn3YTzpknIeZvOCB1a/8mou6eZFV/xw7al2nOesZtJ/A9vVdJnPnJiexP1Zt+vQVC2mbMrH
 H5VFjSu7ByTvxC5qe1L4J18ai2mW6QwObFnqg7ddGvAm9dZ772XCnjQdpGFHA1voC1LuY6ekQ
 SKpQnyvPW0LrKnnWv1Wmj0/dhss663NPZtQmwUeAI7kAAxtlElgkFdr4IwbBUkvRhitASyZ1J
 qIssNvoq7fGiB0rtU6JAeumKQv6vTdBdqfbYFJeBVQLprLfggpvre57wiSxOVA8hxTYtPcIfs
 9P6v+TEsQ8cCdMvgU/sQXlN9HyC8GIKWCAGSb6ZbibnegHexRCihhBLe9kbbXdIz8Bk11eh5Z
 C2QS3dwtP51uuPHyfDZLu0RK7BOJ/Nyq5bATCKngiUrLoeVzdpGtKct0O7bNKxxz6FeReuqk+
 8KQ3MMGENhG3feAgJI4V/1ch5nUBPXVxhwVg5SMzlMwNSXaM/0fZ9PjbExmqOQQ8EwniefwKa
 iPC4LDhkyUqMLS0Ao6jQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_092101_688273_ED19DF92 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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

T24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgNTo1MyBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBUaGUgYmFja2dyb3VuZCBvZiBteSBx
dWVzdGlvbiB3YXMgbWUgd29uZGVyaW5nIGlmIGJ1aWxkcwo+IGZvciBQTEFUX1MzQzI0WFg9eSAo
YmVmb3JlIHlvdXIgcGF0Y2ggc2VyaWVzKSBkb24ndCBuZWVkIHBsYXQtc2Ftc3VuZy4KCldoYXQg
SSBmb3VuZCBpcyB0aGF0IHRoZSBEVC1iYXNlZCBwbGF0Zm9ybXMgKGV4eW5vcyBhbmQgczVwKSBu
ZWVkIGFsbW9zdCBub3RoaW5nCmZyb20gcGxhdC1zYW1zdW5nLCB3aGlsZSB0aGUgYm9hcmQgZmls
ZXMgYW5kIHRoZSBzM2MyNHh4L3MzYzY0eHggcG93ZXIKbWFuYWdlbWVudApuZWVkcyBhbG1vc3Qg
YWxsIG9mIGl0LgoKICAgICAgQXJuZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
