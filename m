Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084F411FEBC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 08:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mik7utyj9ZwvoOUHNCkMd3EC34dsPQRzd+pnAZ9OJy4=; b=D98sNYsZm5yDfj
	TW1+h2CEXXK8/ptk+H34jZg92tYI4dHKwyc8jrGu+8Q5IE7k70NByBhO51Z8/cau7zlEsxyVafwYB
	RPRTUJZGHdmyZVc1BQHm/ciMUY1ZAPcOaXxAauiEIubJ2SsKKMl4e8JBDeOFvUsJOwUH7PZBP4kZ1
	7+K0A0jtC0CGe/rIgpBe7DI8N7S1Qf7dJ659ync0QEA0qYq+Krovh2FW8HCNlsjOdoF6IBSjDFEzf
	0n3Ryp3ZDFqeG6ptwm8qDiEOOYsC3UWbu4AWRG3SGNLS6ziigP2jlrRvCmHs4q49kC+rvuxOydPpJ
	B3W+kKl7WejPHxDIGqYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igkOO-00059i-Ut; Mon, 16 Dec 2019 07:02:08 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igkO0-00051V-8V
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 07:01:45 +0000
Received: by mail-qk1-x744.google.com with SMTP id r14so3965866qke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 23:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mNxq9QEx/Y0AFfmFBHfjO9qh1l6j5wyPEAuFcOtgvko=;
 b=k8Jz8WhY1cxn9bFKXeAi5vzaTBfRitVt26Dv8N8sNlYJP+LrdDlQqaBI0DhBwVSp3j
 jqUvtkluKNvckqYdwX0zAwgdTSijpgtwIQkpJR0wV31kbIiO6lN/sqeFNJxRolylHi9z
 mkNpLYAbfL38r2dXtuppefORp2tXgISUEAbu4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mNxq9QEx/Y0AFfmFBHfjO9qh1l6j5wyPEAuFcOtgvko=;
 b=ISIdHbHiJu/QiS/cMChHjwnhFHGM40Pf7X6rhM2bSQslcWjwVxxGxv0lKH6x8PAKHn
 FBF/L5BQeXbybVLTjsOn9n1n11M8Fhr9NnnDP4bPt+AgOUsfA4h4eWZclHSukNV0a7fH
 98MtL0CJauT+/Zl8xe+jlk/iMNwsTipUMrYnLNsbLmrsq2HX71vTHToNobrZjJafqwJ8
 2AZEpf0kJH793+8yCz2SUSolkH08R6rRvdqI4cQihxVITbTNLxkKFlD6l3jtMquD/FIk
 P/BTCCJgg6d0haIhYq9qP7s1hQzyGzarKbho/i/kC4yHxomo8G0O5Jup5Lq+bSudPVdf
 Y16w==
X-Gm-Message-State: APjAAAU8L8qoAgqpGl4lQhUFmNMsucHwaaTYsLljb6bD7rlAc3o0oDPG
 BpXz57HWTIkvn48EEPEts3D5D+feyD0Ylw/uQ/3Z+g==
X-Google-Smtp-Source: APXvYqzVdceLqcG+3fAzc6E6Q5G9XbMKp+zuFLQXrq1VY+BvVu+NpyPVVDbAVBh4Vyd+Tbmbw9ZSQBEix3ZXm6HqNCo=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr25598095qkg.457.1576479702489; 
 Sun, 15 Dec 2019 23:01:42 -0800 (PST)
MIME-Version: 1.0
References: <1575960413-6900-1-git-send-email-weiyi.lu@mediatek.com>
 <1575960413-6900-4-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1575960413-6900-4-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 16 Dec 2019 15:01:31 +0800
Message-ID: <CANMq1KC4Qz8yKNTqfjYb335RCY8t5pdRa09Bvroo_BNXv19hWQ@mail.gmail.com>
Subject: Re: [PATCH v9 3/9] soc: mediatek: Add basic_clk_id to scp_power_data
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_230144_323561_F213DA7C 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 2:47 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> Try to stop extending the clk_id or clk_names if there are
> more and more new BASIC clocks. To get its own clocks by the
> basic_clk_id of each power domain.

Looking at this a bit more, I'm not sure why we make this an option...

The easiest way to make this consistent with non-MT8183 scpsys drivers
is to add your missing clocks to "enum clk_id" and clk_names, but I
understand it's not desired (number of clocks would blow up).

Can we, instead, convert all existing scpsys drivers to use "char *"
clock names instead?
I made an attempt here and it seems simple enough:
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1969103

>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 29 +++++++++++++++++++++--------
>  1 file changed, 21 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index f669d37..915d635 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -117,6 +117,8 @@ enum clk_id {
>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
>   * @bus_prot_mask: The mask for single step bus protection.
>   * @clk_id: The basic clocks required by this power domain.
> + * @basic_clk_id: provide the same purpose with field "clk_id"
> + *                by declaring basic clock prefix name rather than clk_id.

Actually, I prefer the name clk_name, not sure why I pushed you in
that direction...

>   * @caps: The flag for active wake-up action.
>   */
>  struct scp_domain_data {
> @@ -127,6 +129,7 @@ struct scp_domain_data {
>         u32 sram_pdn_ack_bits;
>         u32 bus_prot_mask;
>         enum clk_id clk_id[MAX_CLKS];
> +       const char *basic_clk_id[MAX_CLKS];
>         u8 caps;
>  };
>
> @@ -493,16 +496,26 @@ static struct scp *init_scp(struct platform_device *pdev,
>
>                 scpd->data = data;
>
> -               for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
> -                       struct clk *c = clk[data->clk_id[j]];
> +               if (data->clk_id[0]) {
> +                       WARN_ON(data->basic_clk_id[0]);
>
> -                       if (IS_ERR(c)) {
> -                               dev_err(&pdev->dev, "%s: clk unavailable\n",
> -                                       data->name);
> -                               return ERR_CAST(c);
> -                       }
> +                       for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
> +                               struct clk *c = clk[data->clk_id[j]];
> +
> +                               if (IS_ERR(c)) {
> +                                       dev_err(&pdev->dev,
> +                                               "%s: clk unavailable\n",
> +                                               data->name);
> +                                       return ERR_CAST(c);
> +                               }
>
> -                       scpd->clk[j] = c;
> +                               scpd->clk[j] = c;
> +                       }
> +               } else if (data->basic_clk_id[0]) {
> +                       for (j = 0; j < MAX_CLKS &&
> +                                       data->basic_clk_id[j]; j++)
> +                               scpd->clk[j] = devm_clk_get(&pdev->dev,
> +                                               data->basic_clk_id[j]);
>                 }
>
>                 genpd->name = data->name;
> --
> 1.8.1.1.dirty

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
