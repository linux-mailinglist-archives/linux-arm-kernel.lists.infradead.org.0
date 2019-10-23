Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBF4E1C9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/ddZw0Hem6XidB1gfdKubOa2J6F0ISzNr0Tj6nUd5Y=; b=nFHfwbST1jf3QD
	tO+VDZjbuBLHFFRpb2me4tReGy+MAEZJLrxkm7Vg6662Ug+RH+Rd2sPzdvTHKMw6Almys3N+GIeOx
	y59fCPixvJKcJmQaRfJKM1ZNUZ5pKcvURCUa/uJAFAK+ZKhvIqKD27lumxg6KEYDYzLMiEGHC4pIg
	JdbvSbArhK0TW3Aue5kbJOZ/011FANg1RJetKHITuUyTmhhsFMmEusw/3OnDjVArbith7IRnVXiz3
	zgB6yN+VBCC8XuhrX3ds1rakR9pc9ysysxBGgLT8YpGWocE0FQa9wGkAFvgdHT5+jW6U6Xyx5jAxY
	Ro0qN17ojLBHLA9NDfpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGiP-0003C2-5l; Wed, 23 Oct 2019 13:30:17 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGi7-00035D-6H
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:30:01 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MQdMG-1ic1rv13cU-00NjTH for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:29:57 +0200
Received: by mail-qk1-f176.google.com with SMTP id 4so19725868qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:29:57 -0700 (PDT)
X-Gm-Message-State: APjAAAVRiNux4AOqikvZ54OPXK7YFtYp3444cj4Xp2FlG+xI9Osqkky2
 738pmvNfJZClbpQ9PWy8pGRzdp5hJQAjXHlqd08=
X-Google-Smtp-Source: APXvYqzGCvORTP+HJikmS9n+sLPhWUfQgJCCEYKmJ03DZvSC0gT0L7hZhZ7lqgzmTpFpBJ2WhE68gjxgaObVawX07k4=
X-Received: by 2002:a37:a50f:: with SMTP id o15mr7091533qke.3.1571837396079;
 Wed, 23 Oct 2019 06:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-21-arnd@arndb.de> <20191023125053.GF11048@pi3>
In-Reply-To: <20191023125053.GF11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:29:40 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3x1_eB4GT7qvhgVnq-sU8a=wkSf4FP18p7pVHmtrfWFA@mail.gmail.com>
Message-ID: <CAK8P3a3x1_eB4GT7qvhgVnq-sU8a=wkSf4FP18p7pVHmtrfWFA@mail.gmail.com>
Subject: Re: [PATCH 21/36] ARM: s3c: move iis pinctrl config into boards
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:VYrBsVjcWn6Gom8CCi0Wg6TottJ8oAjsqZ1R8dyLOFKah/Rkaam
 dqpXl3F1Qv843da3Z1mhKzHthgMxENnyLMEW//JiMqxMdh4twbrsce7nDkF7xumbsH0oWNe
 a5FpdwfDxBpvyToucDa1++g/dwYHim4XBKRezUKATUPpec2gWbirLIN+3iGdrWaTjcXePBR
 N/KVcY4mfsH7WzzzEOBMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0jf+lwaf658=:wqGBX91sGfowXHqNENhRqB
 QYPhwkc497ACmqy2iXTxiZ5AVHnR2IdS3pFD9ImFWHd94DH+MN4DzT07UD0SzMWW1YBqMU3Ic
 rWRXeFkBGFePi2DUsoLPxH6hacCmt5xlH1n/vRPR/BnyRmrWVOrpDIy+YGE06W9sbmKVUxMf8
 RgCrM0Ne1zcwQt90RXf/cFoJBgjPSCb701bCUxXvCYD+UvACOQ3wJ3rPRea0i1wqWm5OdQyS9
 EkgXCZiYWAmoqvqdzlDsJ9cJsUFbDna9EGPC8zEjsCt01bly23sBgeUOyenQW86i7QG+0yFG2
 FUJ6aVLIU2v9ZQBkxxXrpIEB0KaXww89UG6aiaieoEEUbWtlqQpeU9t4ziGe11+PYdEmL015p
 uaodZyt/4dMdLjt5KSyHyxUbOQxrkMF1vO2Nd6z2TP1XPI0ltQ1RdxEaGfJDt8uCoFXrUQgKE
 RwSDCTVuZ+WuZbBmHuXYyAfrCZO6mElS7eVKkDVXXJV/XvlCgam4j+j8cAfkZWfZDW/E7WFSy
 tm3xsb+bfxIUmuG6cXWL6EKpQ9PPbcA/lQFWS7r3NnDhh95oj9qvPtys/ffJcVIzyy3kRzKAB
 FTvr5vaekrgGVQ0qyPivI0L9Qg51PVnTA9vgEFmPYCUVa5F3+cML3Sz7n0Ss6G4lnPWIiO3EY
 hSE6PT5JPphyz83b2jcZnk/u2CNyQpNmPCqa/jiyucgdVcMBbMOL5iN8BNeyLXBQFS2uzFCpx
 ReY8kvWjZL3pVUwB0++ZUWCfF7KXH79fAS5up4lYaKdCqZVlXxJ5nikbHfPD5jFkwpByHjxbq
 tDG3HoeESK7C5/g3JpE7Og//g5MYFErq+DFCPdYjnrgMHOYGD2GSdU59Ulz+2eh1trJ5iatZu
 cmO62/POFTpNMfR059Ng==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_062959_530257_4008C775 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Sangbeom Kim <sbkim73@samsung.com>, Linus Walleij <linus.walleij@linaro.org>,
 Takashi Iwai <tiwai@suse.com>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 2:51 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:30:05PM +0200, Arnd Bergmann wrote:
> > The s3c_gpio_cfgall_range() function is an internal interface of
> > the samsung gpio driver and should not be called directly by drivers,
> > so move the iis pin initialization into the boards.
> >
> > Note that the s3c2412-i2s driver has no boards using it in
> > mainline linux, the driver gets selected for the jive machine
> > but is never instantiated.

> This is not entirely equivalent move as before this was probe (so being
> executed also on rebinds) and now it is init. I guess it should not make
> any difference so let it be.

Right, I've added an explanation in the changelog text now:

 The s3c_gpio_cfgall_range() function is an internal interface of the
 samsung gpio driver and should not be called directly by drivers, so
 move the iis pin initialization into the boards.

+This means the pin configuration is only run once at early boot, rather
+than each time the driver binds, but the effect should be the same.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
