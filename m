Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95930A1B96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 15:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIOVplI39J7rZYO/PT40r0DuHP7WvW84xP0smdLbbuE=; b=rL0CG+fQhPFuDT
	An3tigWuTJGe4OyVPX4sYmovundIPXyFQhlVgNEvastbCPgamxSenJ4tWbTCcPkh1Vd/91p1cj/hj
	I1raz4kbPZaHKehF96e7vawozuyOF8dQhG8bk77VSzLAhm/SFno9v/iyRabkw/eFL+9Ye8a2OgKeT
	xx30wxJldaTHpEMQFQAtaDdx7H61s0LoWE4eUCclRQnzCcCbAF8aQKi4nylM4x8bsAUrskiw6Jowl
	9n93/HLi4kwgovbQQ02EGXypodkzzC8UUSEYdASm9fE9DdmJj/VfIgb4qx91nVvmRnk/1GYPmvRbb
	MVQkdxSkc+RrY1QEaV4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Kc7-0003cZ-C4; Thu, 29 Aug 2019 13:37:23 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Kbp-0003ae-W9
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 13:37:07 +0000
Received: by mail-ua1-x944.google.com with SMTP id m8so1163527uap.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 06:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VoycuwM03PAMoYB7LC8b4YSa3oTRgt158KShkM1cXKQ=;
 b=zKgu0Jl4DlvWeQzglf9VPPVkVjkJuw4LSkmT+pELc19VL8JHSvF1cXxTazR+CrZKKr
 kCKva4b0mB1m11diTo57wSNo45Olb6PZAJ9MJQFkQ9yVFAuSd2k0u3LBqbauDprRPNQ/
 aJIlTmkMU61yn3ZDe4r1wBrDPkK9guE6hwr+NIl8Z8P1Ql0aZaijF0sATF21E99eR39v
 WrYTJUr3d3ot/wHi7f49JTlZhShwYMK1yvSVT9G3kmmwWgzaIUFbdbuq98bWRlS4/55u
 6C4AqN2+/uw0MAuG40eXp0w6XNwSJ1YHaW+xBYhE0f0VcARxF6IRgR4b2ubMxBBfGaOc
 sRUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VoycuwM03PAMoYB7LC8b4YSa3oTRgt158KShkM1cXKQ=;
 b=q67iQlPm3+6K18cqIbm5alTgVOdSv8iUL4y/dDpsh77HR4WCW6Vk4DbvLDKaIA+ZCo
 sKMLNLVHAYNNq0Q9omLxPjccXuUymUJlckz2R6bW5tEVV0ql92gne71vJbIw8QYxj83M
 r3DUah+T1ZLrihaL9BF+nb9cIuI/2adkjJgfdDG/bH3i5+jGtWvASB8H2Q2ni7Zy0u3d
 4w3AZrcaO7feQOiYBAwC0qsJpPJV4Zxs4X5kq2bwOOSILA0muS1PJb/ZxguTQD+Bl3zr
 /fz6DNGY2WpSYB3QdXS3SogYA70nOcfOvVT7cP2B/UTbcj5mZqtbR51HDH3OdlshCR1A
 v0SQ==
X-Gm-Message-State: APjAAAUrQsc2yyGUzc+yGyO/BuUjqUoPz9F4P3U7mSu1zliVIosTkVgt
 oAbKxLPY8NrrZmObuz17PgpiQvVdPgFHF+l1WkzTqA==
X-Google-Smtp-Source: APXvYqw5PMEM/AaXKseVFjiJDB4qE632N2Eh8ohpX17hqRNF3TeDatpY+W6xb/csgdhA+MJBYjRRNsuLKGcO5K48bSs=
X-Received: by 2002:ab0:6883:: with SMTP id t3mr4939055uar.104.1567085824135; 
 Thu, 29 Aug 2019 06:37:04 -0700 (PDT)
MIME-Version: 1.0
References: <1566985524-22749-1-git-send-email-yong.mao@mediatek.com>
 <1566985524-22749-2-git-send-email-yong.mao@mediatek.com>
In-Reply-To: <1566985524-22749-2-git-send-email-yong.mao@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 29 Aug 2019 15:36:28 +0200
Message-ID: <CAPDyKFqgO7fwybn1nYcf14jiHswM+T7fqY1BuSvx5AubYA6F=A@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: mediatek: enable SDIO IRQ low level trigger
 function
To: Yong Mao <yong.mao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_063706_063007_5BF792E2 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019 at 11:45, Yong Mao <yong.mao@mediatek.com> wrote:
>
> From: yong mao <yong.mao@mediatek.com>
>
> SDIO IRQ is not defaultly triggered by low level,
> but by falling edge. It needs to set related register
> to enable SDIO IRQ low level trigger function.
> Otherwise the SDIO IRQ may be lost in some specail condition.
>
> Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>

Applied for next, thanks!

Kind regards
Uffe

> ---
>  drivers/mmc/host/mtk-sd.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index 33f4b63..585f0c7 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -192,6 +192,7 @@
>  #define SDC_STS_CMDBUSY         (0x1 << 1)     /* RW */
>  #define SDC_STS_SWR_COMPL       (0x1 << 31)    /* RW */
>
> +#define SDC_DAT1_IRQ_TRIGGER   (0x1 << 19)     /* RW */
>  /* SDC_ADV_CFG0 mask */
>  #define SDC_RX_ENHANCE_EN      (0x1 << 20)     /* RW */
>
> @@ -1568,6 +1569,7 @@ static void msdc_init_hw(struct msdc_host *host)
>
>         /* Config SDIO device detect interrupt function */
>         sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> +       sdr_set_bits(host->base + SDC_ADV_CFG0, SDC_DAT1_IRQ_TRIGGER);
>
>         /* Configure to default data timeout */
>         sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, 3);
> --
> 1.9.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
