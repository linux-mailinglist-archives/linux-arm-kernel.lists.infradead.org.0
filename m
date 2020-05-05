Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D8E1C547D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZ/JYYasAfS/WShZ98LcpgZvEmWtP+lmlK+NIGyW8QI=; b=Cz6+1ehAT57lQC
	BBOKfc+f904euhd0S5nDCOhEy2l6FB1zO0uGupDZrQQzJIsaFb7nYux2nfosR2+6NB8XkDp9CkMh/
	ZsnfXPrjWy+rKGZNAFxt/cE9uSeTg/WgtQzguYhsv8RFXRfkDE5tQZZsd0sQtpnI0NkbjMlxBvEDi
	MtEJ5zCoMSaG19GHH442LHNqmHEZHGggE66BsQJJFPLWIHm+SzIPral6nM+9p6lyZUdDVWy/y305x
	gxpazTpApYpkyIQk45LAD5Po9qLFFVZNbv548XPR6XfdmN0erYtn0ThNagO5pXf2lgKdkB/Fu6Igl
	5DbAESMpMQg+I6N2B1eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvpo-0003HZ-L6; Tue, 05 May 2020 11:34:00 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvpX-00039C-6y
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:33:44 +0000
Received: by mail-vs1-xe41.google.com with SMTP id z1so988720vsn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 04:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=osnN+k7TRx1CxNSurAK8vOShk1LyMQb2x8AnE6QzWks=;
 b=oZ94coJsUHPB+yZjtmsoTEBVsGcjaStmgTIKwayDc+QAfqUHeJ1sTaV/T3k6EeMTZ4
 HV7Mpkil3Si743wW129jyYptj8WEJ+CJj6iv5sMvm4iwAcnVkWKrXIeis11TASfWj6Lf
 DeZ93pzzR6dXI+LGbkFgK33doL4KxxaKuhiZi/1SBZ16/iCt32twy9oZPIbr77JK56ww
 i6mL6VNikqgPVJgJ1xOUQ00ZCjnkPOLiALYZI96YuKWxnLYAhmFOeRu3MPn4Cypxs/EW
 KlzDQ4T3zF/WsiFcTuJBPMyWbktb2FM19Zt1bL+6W7i4PlqIzTiiAlN05kFi9IpW682z
 A2yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=osnN+k7TRx1CxNSurAK8vOShk1LyMQb2x8AnE6QzWks=;
 b=DcNeLYKrZT0qWdwXUdPQG+oEq/LF3GN5Q+HskBtEGOeSzWkfyj1oTniAHIAQBt6udM
 lD8Tr4mEetqw78MrRp8KUPLh2APgnrY5B3lSkUlKurPe0tFZ/abh76dBStRSnSMlckSF
 /3E6GPT3lewVZcjIOJ7R7QH6njx3zvrbGXosr2ZdLwUNALWDUXs6/DxPClwXr7e3VHQD
 caoTVFw0CC9ud8DQTgXeuxjPvecchFv0ONdzwpBfPo/1dZaDYfU8RUgcrGD1ACVViHaz
 4WkxjQAGVcT/oPWvAOvIOdCtjQmV+KE6rlDWRzR51znrT6FycsulMRBxCaXRvbsRuszB
 3Cxw==
X-Gm-Message-State: AGi0PuagH7+UAQgmZZI2zpulQWBhvEMAdItP9uUf+EDpS4oS4KurFhz5
 aX6WFzp/UwR0hTeWHoU0ZTDNApgJzupWB18cjlb6aA==
X-Google-Smtp-Source: APiQypLY8nKD4DfZcnCRiLiUDvntUoeR/uDMv3OvvZWGA22jovAi64KJ1DFoGEwu2WgpKh3ipBPvYkzCgsaD0NcKFKg=
X-Received: by 2002:a67:302:: with SMTP id 2mr2119733vsd.165.1588678422073;
 Tue, 05 May 2020 04:33:42 -0700 (PDT)
MIME-Version: 1.0
References: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
In-Reply-To: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 5 May 2020 13:33:05 +0200
Message-ID: <CAPDyKFrE_0Cm3PzmZ9qAzKHmhWobYovNRjrs5zk2YL5CQac=XA@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] mmc: mediatek: add mmc cqhci support
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_043343_296842_C816DDA1 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Yong Mao <yong.mao@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stanley Chu <stanley.chu@mediatek.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- trimmed cc-list (Please do so also for you next submission)

On Tue, 28 Apr 2020 at 01:57, Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
>
> This series provides MediaTek cqhci implementations as below:
>   - Extend mmc_of_parse() to parse CQE bindings
>   - Remove redundant host CQE bindings
>   - Refine msdc timeout api to reduce redundant code
>   - MediaTek command queue support
>   - dt-bindings for mt6779
>
> v1 -> v2:
>   - Add more patch details in commit message
>   - Separate msdc timeout api refine to individual patch
>
> v2 -> v3:
>   - Remove CR-Id, Change-Id and Feature in patches
>   - Add Signed-off-by in patches
>
> v3 -> v4:
>   - Refine CQE bindings in mmc_of_parse (Ulf Hansson)
>   - Remove redundant host CQE bindings (Linux Walleij)
>
> v4 -> v5:
>   - Add Acked-by and more maintainers
>
> Chun-Hung Wu (5):
>   [1/5] mmc: core: Extend mmc_of_parse() to parse CQE bindings
>   [2/5] mmc: host: Remove redundant CQE bindings
>   [3/5] mmc: mediatek: refine msdc timeout api
>   [4/5] mmc: mediatek: command queue support
>   [5/5] dt-bindings: mmc: mediatek: Add document for mt6779
>
>  Documentation/devicetree/bindings/mmc/mtk-sd.txt |   1 +
>  drivers/mmc/core/host.c                          |   5 +
>  drivers/mmc/host/mtk-sd.c                        | 151 +++++++++++++++++++++--
>  drivers/mmc/host/sdhci-brcmstb.c                 |  11 +-
>  drivers/mmc/host/sdhci-msm.c                     |   3 +-
>  drivers/mmc/host/sdhci-of-arasan.c               |   3 -
>  drivers/mmc/host/sdhci-tegra.c                   |   2 +-
>  7 files changed, 155 insertions(+), 21 deletions(-)
>
> --
> 2.6.4

While awaiting a respin of patch4, due to comments from Yong, I
decided to apply the other patches on my next branch. Thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
