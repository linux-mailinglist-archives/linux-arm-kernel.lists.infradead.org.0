Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6E811A7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0xs9cYihuU5dtTgHn2VHfTWB/9HufBPpoQrlmknyig=; b=KeFjByJW3wrPlo
	otadGkSfLf7tAJ+9biuUwijowikqqKhVnK4B8N+fpemxnbeaV5a5SPVnx/RC7TV/Zpuxm9eW5Is+u
	BcoK8IbZ5nErXXguuIxaHgR8jUX+AVjW675gvHbYMYomyrGCwsY9OIJYRnttRjWP2H/8t97rLis/v
	CbJo6kkUF9bo1wKzCLUUnENKMyTFzyRCopvTb39MLExNKWYKNynJ+6d8EGco5VCFslLTILXWs5z8x
	X83w4MMmwO/AzejPRKwuGBQzcKVxKI8VfboV/z8vcPEfRXwrWphIDg2X1rxfiC3FHzeY6t86rsZG0
	BlIHA8TnTG0llb46sWWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMC4k-0007kj-A8; Thu, 02 May 2019 13:48:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMC4c-0007kD-B1; Thu, 02 May 2019 13:48:33 +0000
X-UUID: 10469f34464642fda52201155f323e32-20190502
X-UUID: 10469f34464642fda52201155f323e32-20190502
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1374722148; Thu, 02 May 2019 05:48:25 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 06:48:23 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 21:48:21 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 2 May 2019 21:48:08 +0800
Message-ID: <1556804888.28808.6.camel@mtksdaap41>
Subject: Re: [PATCH 1/2] pinctrl: mediatek: Add mtk_eint_pm_ops to common-v2
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 2 May 2019 21:48:08 +0800
In-Reply-To: <20190429032551.65975-2-drinkcat@chromium.org>
References: <20190429032551.65975-1-drinkcat@chromium.org>
 <20190429032551.65975-2-drinkcat@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_064830_381409_EA18C44B 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean
 Wang <sean.wang@kernel.org>, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 swboyd@chromium.org, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-04-29 at 11:25 +0800, Nicolas Boichat wrote:
> pinctrl variants that include pinctrl-mtk-common-v2.h (and not
> pinctrl-mtk-common.h) also need to use mtk_eint_pm_ops to setup
> wake mask properly, so copy over the pm_ops to v2.
> 
> It is not easy to merge the 2 copies (or move
> mtk_eint_suspend/resume to mtk-eint.c), as we need to
> dereference pctrl->eint, and struct mtk_pinctrl *pctl has a
> different structure definition for v1 and v2.
> 
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> Reviewed-by: Chuanjia Liu <Chuanjia.Liu@mediatek.com>
> ---
>  .../pinctrl/mediatek/pinctrl-mtk-common-v2.c  | 19 +++++++++++++++++++
>  .../pinctrl/mediatek/pinctrl-mtk-common-v2.h  |  1 +
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> index 20e1c890e73b30c..7e19b5a4748eafe 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> @@ -723,3 +723,22 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
>  
>  	return 0;
>  }
> +
> +static int mtk_eint_suspend(struct device *device)
> +{
> +	struct mtk_pinctrl *pctl = dev_get_drvdata(device);
> +
> +	return mtk_eint_do_suspend(pctl->eint);
> +}
> +
> +static int mtk_eint_resume(struct device *device)
> +{
> +	struct mtk_pinctrl *pctl = dev_get_drvdata(device);
> +
> +	return mtk_eint_do_resume(pctl->eint);
> +}
> +
> +const struct dev_pm_ops mtk_eint_pm_ops = {
> +	.suspend_noirq = mtk_eint_suspend,
> +	.resume_noirq = mtk_eint_resume,
> +};

This is identical to the one in pinctrl-mtk-common.c and will have name
clash if both pinctrl-mtk-common.c and pinctrl-mtk-common-v2.c are
built.

It would be better if we try to merge both version into mtk-eint.c, this
way we could also remove some global functions.

Joe.C



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
