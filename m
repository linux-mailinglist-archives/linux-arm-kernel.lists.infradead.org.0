Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09DCE1C70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mx5lRnurBl1b0W/Nx9occz379Cvdn6Emz+sc5f7UVsA=; b=QHAoQKKk+zBC+C
	yn1AOU1kgHJceMPqyfPLXmT58PpW3e8hI6qqrEtA+M5RJ3GLZOsBDoDPc5KHIzYZAsTre2YQtkbvn
	jtG/UR0HxIDL5umdQkfpr/jeb20A2ghxCNNfKGn6EoPahrw/zJLrZVvHlNGpvlgK6BGm9hOSUQhfW
	6E03S51PW95IQEtiqEb8EMpIv/okzdPDAIkI1wjM3JLvBEQzFFYeruNsV8zlTI5RGKpUuiuADteQx
	duoT4STLX2oD2M+hpMWa7Ev1GPSOMoILh1exYa4tKydGaeAUZZZyGyd/jSJTOvwXZTMOOrF51RSwY
	OGPzzV3vPiIpml2h2EdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGcE-0000dt-GB; Wed, 23 Oct 2019 13:23:54 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGc3-0000dH-I8
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:23:45 +0000
Received: from mail-qt1-f176.google.com ([209.85.160.176]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MplPf-1hebb62Pl7-00qEqo for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:23:41 +0200
Received: by mail-qt1-f176.google.com with SMTP id z22so11704610qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:23:41 -0700 (PDT)
X-Gm-Message-State: APjAAAVwdxI6ibnYQwpO4dQ0V9mB/LHc9w43yNDFzgDpdWzhp/7Q9xTy
 vrmhWs88afEyhAHAn+YyWpKw8HZ6hB9Rzphpjog=
X-Google-Smtp-Source: APXvYqwU3y5YqkOIsK2y7eYvy0ctJhOflxSMk/EdUo4ryq/EKaRqLWAAN8gOEJgyL2Cd6mKUElnaT6RSKuR35fFlkXE=
X-Received: by 2002:a0c:c70a:: with SMTP id w10mr8851889qvi.222.1571837020471; 
 Wed, 23 Oct 2019 06:23:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-15-arnd@arndb.de> <20191023123722.GD11048@pi3>
In-Reply-To: <20191023123722.GD11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:23:24 +0200
X-Gmail-Original-Message-ID: <CAK8P3a13UWnsnTeDQPTDdAXjnwT+-UZchKqezqG+npEuFNK2vg@mail.gmail.com>
Message-ID: <CAK8P3a13UWnsnTeDQPTDdAXjnwT+-UZchKqezqG+npEuFNK2vg@mail.gmail.com>
Subject: Re: [PATCH 15/36] ARM: s3c: adc: move header to linux/soc/samsung
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:St/b0pcmt/hDPeLqzA9cEEI+PXeUyKJ6hUzROH5cWCPAwE+oUsX
 SXZLOBBS37TegxkJ/kQVXNAE+rh0vWztIxOdh1v/DaK5FtR0U5zfqfWB919gM6bMvLviVWr
 H5zRufDqENCWEq8df5cwZs31aknsIl/IgnkuXu6n3bctJdkvv8wxbhMpKbs5GquYFLx9Qsi
 gy3pYqYM1lWbv5WzNGPdw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:x8GkDL6yo2U=:xklXd+vOJ81BRUBM/HZQSO
 euBKt0RcpbyapjWcgapkyuGYTr+9Lx9bX7FDOITfiDpEc0uY4H/Orb65E2uIiOuaOMNk9Ge8V
 0dnpnLOsxmCUOc22053ZgAv3MCLawCpOJwGpYANT4t6AoSwDUJvZzpLzyBzoFhtrFUOt0tXoO
 pTgnyAT1Ah/ba8HCA5mbqJV0j5krgG1cDmqSs5EoXXrqKAzz80SmnwVjgH0qZL1DHw9nGxFN7
 jLJH4fC2LMP9kA6rScbmndEe54UpvHmrvyuMJmVP7iUB+hpWnsOxRYnlRWuiRtOXWdfBiMU94
 nEiucFDrlWYXzCU0frNh/w4+qrk5+wCX5w5XW/bLs7dolVQLIvJqRQb+e5loThElYOUxS3Rpz
 lzmYA43Gr2Zu5xRPzEedJRPDABIi0XWxFwEpVd2maBZeiM4SCklWKpYP1hiI6yeEr4m+IMrql
 BNWf+f0me8/1REf1t3UCD0OPI4RioS5vnPILOUGQ8yA6uaxKV967UrgSkegXeg3taNOF379zX
 rkMgwip9HSZGWa1U1dm2mjXhXVjtWjyrXGo8H1gc7CvbfM+X7kZbsr/omjqLJ/AiPU351JbCo
 olPyJI8QXEH+vHNPWsapQ9eAqYS5HmxjggFyqYgHpTyeG2Purm4AaRNGEVzqy2mtY0ySdP2ru
 30XwRr/X/oZ5gP5j5YGE13s87sBJmQQ01whSKzkXiNCteVVAGsFqHDVGfymBu0XO5GNBHtpMC
 SppLAIoxtKMAbrICVh84DW61U2y8u+lihuWAU3OK1uhsJB4ThQgEG2Sj4pWCv/K2QdHcL8J/3
 cvmm2NcTqV6ebKq0LgH9k6XBdPNCnesGwtrhloFcnQSLhRmFk05GFjOdvBVoApiHCd0jAY6Di
 2NX1Oa8ZwHb8JXiYL+gA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_062343_896116_66B8E590 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-hwmon@vger.kernel.org,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Sebastian Reichel <sre@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Kukjin Kim <kgene@kernel.org>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 2:41 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> > diff --git a/arch/arm/plat-samsung/include/plat/adc.h b/include/linux/soc/samsung/s3c-adc.h
> > similarity index 100%
> > rename from arch/arm/plat-samsung/include/plat/adc.h
> > rename to include/linux/soc/samsung/s3c-adc.h
>
> Can you update the name of header guard? __LINUX_SOC_SAMSUNG_S3C_ADC_H?

Ok, done.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
