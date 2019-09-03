Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B171A6ADB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gp7NdL4T4F37oXf5buUkHsCnTOSkHAEYLO79McmjHaA=; b=XkOJ7DqeZCZlmE
	YvOeoralndpYReKf4jgxGrmECELAsJi4DM6nhlLdG/qyq+TwQds4LA383MZYqr0krW1ncEL+YuDRK
	SbDWDBIzjbIbIJWEimBWEL+9ylyXChsVo90zioCWM95zOlycDYUFYtJKo3t2wh6B9sXoaHTaGS/4X
	AxI//WkXTtLfe7N6MfnMHAIxpt3TAvsjfhs8JVy+0iZWZHkNydN12PIfxvWaWkYGshGjWrhc0xMbL
	dJTL3bz3+fMdxCEKnNLCxF8uS6erx/I+p/apFs1VPsoSw87ZlWQAIF4EsGNjyzVpRQjF/vBRpL0XH
	hrZEsHmy0EgSO1wpWi+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59WL-0005jI-Jg; Tue, 03 Sep 2019 14:10:57 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59W9-0005it-Rw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:10:47 +0000
Received: by mail-qt1-f196.google.com with SMTP id a13so20104405qtj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:10:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hoVf11RseAATlWZwT4E4nIKkiO8nAhmlYw9PSwRzho8=;
 b=PatIRm4gK7LArNt4bvfOXdCrxyHtXd2DlQc+zyoaevGm1j+pyybLcCnoSvTSdiZY2Y
 JfSdqiEW+UvIT2ncxraPuT80qNaGr2EvA3kwTxDBhwnHJNLk3zOpgY8zbSXTJ7cljaHg
 CcSm6oHlku2CEDQl3xFLWU5FYvQrp58rB6XaukaCJRsmtH/j2lKw/ClHNLYjSdaD/nmJ
 LdJiXiDo0q5dmmWvGXNIFKW3m20F8DQhQOgDWWW13+UsneAJ3MAswIO0TmduZRY/8CEl
 E+t2TRPzp1fgnwtHi1nK3t2Z1mOFN+cp1+2pgwC44PWhdfIsBrRAohncYBGxES9d8E9N
 3AXw==
X-Gm-Message-State: APjAAAVbNXrSWIatCrtaUpKOfQFdyanacOfadAUjSstaL/OfowEYg4xS
 zEDEGN47uwym/UdkgDKIoQMMra3zV4fiFUohWIs=
X-Google-Smtp-Source: APXvYqwrbDl5QrPoYMxgwKGuNkKtb1Alko2IEv7v10IsEML2bO1c8uO2/+OhR88btu5Dc0yTb1kk0iYLKI9ntU2CNyc=
X-Received: by 2002:a0c:d084:: with SMTP id z4mr13193693qvg.63.1567519844969; 
 Tue, 03 Sep 2019 07:10:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190825153237.28829-1-shawnguo@kernel.org>
 <20190825153237.28829-5-shawnguo@kernel.org>
In-Reply-To: <20190825153237.28829-5-shawnguo@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:10:28 +0200
Message-ID: <CAK8P3a0UT714npM1jb5vSvak8jdx30OKyLVp0J=KqhnvA8RgTg@mail.gmail.com>
Subject: Re: [GIT PULL 5/7] i.MX arm32 device tree changes for 5.4
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_071045_904061_54BA30B9 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 5:33 PM Shawn Guo <shawnguo@kernel.org> wrote:
>

> ----------------------------------------------------------------
> i.MX arm32 device tree changes for 5.4:
>  - New board support: ZII i.MX7 RMU2, Kontron i.MX6UL N6310, and
>    PHYTEC phyBOARD-Segin based on i.MX6ULL.
>  - A series from Andrey Smirnov to update vf610-zii boards on I2C
>    pinmux, switch watchdog, GPIO expander IRQ.
>  - Move GIC node into soc node for i.MX6 SoCs.
>  - Add OV5645 camera support for imx6qdl-wandboard board.
>  - Drop unneeded snvs_pwrkey node for imx7d-zii-rpu2 and imx7-colibri.
>  - Use simple-mfd instead of simple-bus for i.MX6 ANATOP.
>  - Move the native-mode property inside the display-timings node for
>    various i.MX25 and i.MX27 boards.
>  - Add EDMA devices for i.MX7ULP SoC.
>  - A series from Stefan Riedmueller to update imx6ul-phytec-segin board
>    on various devices.
>  - Use OF graph to describe the display for opos6uldev board.
>  - Misc random updates on i.MX7/6 boards.

Pulled into arm/dt, thanks!

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
