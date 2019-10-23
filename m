Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7E2E19CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqOFn6Jwzip353cBp4rc5SXCC7szDJKoMbauccejyBQ=; b=JoMSE2BJmcGKjq
	+pP5DbnyVHVaNaNDJn6Lv57r6pawlCz8uBan/FiwXIlOwtTOnLXWPopGz3JkFIPxJ/8qUC5qQXfQU
	gKKqcek/+G7FKiubZoLb3UlcyBe3do4pgn4fOFh+0jJB2ClgTTLQJree7Rj/jLuk4L3ECQzkmyjhv
	scI8M1LjF960sB/uqjf5/xuqbFEZgGHww0wd0kRkigKsNImUXYN/BJwwZxSO0oFULExyogGAstQpK
	UQ4jU58uZKw8c/+E6/T/e929URdEbs+6n4NJuBOVoNrmooIaBso9l98QLttdiF0krYNGhiPICVDLU
	mxGU+9WMbvc8sA4rxXVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFa6-00067z-9R; Wed, 23 Oct 2019 12:17:38 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFZy-00067F-HQ
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:17:31 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MS4ab-1iZ3HB2wIt-00TQPN for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 14:17:26 +0200
Received: by mail-qk1-f181.google.com with SMTP id u22so19477923qkk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:17:26 -0700 (PDT)
X-Gm-Message-State: APjAAAVOIRHmx801785w0EGu0viF7F9ppg9NrkpiGIZTllAst8V6GHfs
 uQizQczlb3AMeeagfJC+nBo4SGrxQj+XkuAXyvg=
X-Google-Smtp-Source: APXvYqxlCRi94U4/07FvY9YopQfFLDcIB13QnbWMJwiRBOiqaePRpaNEEEoWQka/AGy7Trnj8CD2OnYa9IPlBMthAYQ=
X-Received: by 2002:a37:a50f:: with SMTP id o15mr6738929qke.3.1571833045564;
 Wed, 23 Oct 2019 05:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <2e3d8287d05ce2d642c0445fbef6f1960124c557.1571828539.git.baolin.wang@linaro.org>
In-Reply-To: <2e3d8287d05ce2d642c0445fbef6f1960124c557.1571828539.git.baolin.wang@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 14:17:09 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0i_xvSzeRxfT-5LLpaAfGx3USsuXX1dv1x6Bg87jeopg@mail.gmail.com>
Message-ID: <CAK8P3a0i_xvSzeRxfT-5LLpaAfGx3USsuXX1dv1x6Bg87jeopg@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update the Spreadtrum SoC maintainer
To: Baolin Wang <baolin.wang@linaro.org>
X-Provags-ID: V03:K1:zsostWCHeAuDwuDici4WcfiOqerg72mf7pmca/h16b8eUFzecKy
 NHmAKE4jsI4RMjSdRsG+c5purbKKdr87h/p1p1XMkhzMR5FTx/TrgkzmkSV2qfnq3ImKTyl
 0MzPw+WPKqhuixHkddAApRqz3oVFWM+dHgIS5T5kzJu43QNDgToDEC98zZBh1ROFn6lpKS5
 GFJl5uloH2xr3oYLIHX2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4eLJEAJlW6Q=:Iv73z8TtdJ4y8J1/Ayz7Sz
 m7H/oct5yiwY11os5U1Qw+Xx715wdyPDDu5wNPJrlGmaQeoa3kQ7syrS6jiqPYOQgdAdFLaU8
 oNxBeTuNr+RhCbb6lPo66dbiGBuuM322s/QClbSonRKLroHpHD1B83Sk+JTEZTALt1X6zdUZY
 tEKdYuGpcrheUbDC3bcq/bfT5gGIZKdb598UuYG9SUEm0guMPZ1+kfXERRDMO2XVM3vB7YtWm
 DiQD0k2VS+2w50rVpuhCbNNeCa9wsZTeClGLz7uxyorIBm1+Jm34Kv0aWfldxeP44UV9H/KTG
 dgcEtCLcCjxRpgfzjFkA1FHstGH5Do16BhwXuS15dGknl9BvcRy0AnLdSuy6QKALiwnDmp9yn
 I3kQ9nr2V5mbD2lqkFK1ss0G6FjFmI84rLXNvvbWJ5GiqQ38hlclzsDPsRmW6CMkHz+ja50yM
 wIr1sMBSmG7x5CzKjKfyMDvfKb9ypRZZhUwAqZKhzOgBcRVMxt94DRIpBEb0RoQ4l1DX3MREf
 71tZSUBmsYTz6DRyqJe3aDUX8Qa8Ov/tgGtw5t3hDgsLqfAIunRCN7xqq7HM3srKqgHZh//kO
 dkXqY2av7XI2s/iJCN75QNwf3lljB5ocKvz5W92ofAKSPiNoPn4ZSt5cfZxZavnSEHM0bIvrU
 heue+Rqxq+FZnTMZ1TbeicV+DlxF8T8T93uC4ACGorIkHHMKcbG6roa5PMhNR+GEubXOQi54B
 8wWYKNISqkmXkGXmHKidLtRBNIxhs5RIAVIDA0U8Rglfuvp4h1lMkNvEuHlIsFY2nbT8o62d3
 kZzRD+ReM7YF95JW+dI4R8imax1oHgQ+IZKmmOMfLlSihl+WFifRK75O7Hzr6zA0pPkUGW60A
 BETNd4v8/L+zGEt6/YQQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_051730_873540_96361C7B 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Cc: Lyra Zhang <zhang.lyra@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 baolin.wang7@gmail.com, arm-soc <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 1:06 PM Baolin Wang <baolin.wang@linaro.org> wrote:
> +F:     drivers/power/reset/sc27xx-poweroff.c
> +F:     drivers/leds/leds-sc27xx-bltc.c
> +F:     drivers/input/misc/sc27xx-vibra.c
> +F:     drivers/power/supply/sc27xx_fuel_gauge.c
> +F:     drivers/power/supply/sc2731_charger.c
> +F:     drivers/rtc/rtc-sc27xx.c
> +F:     drivers/regulator/sc2731-regulator.c
> +F:     drivers/nvmem/sc27xx-efuse.c
> +F:     drivers/iio/adc/sc27xx_adc.c
>  N:     sprd

Maybe add a regex pattern for "sc27xx" instead of listing each file
individually?
That would simplify it when files move around or you add more drivers that
follow the same naming.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
