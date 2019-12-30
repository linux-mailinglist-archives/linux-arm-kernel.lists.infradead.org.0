Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D4E12CBD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 03:08:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRlVXdjip5cRbB3yeLjGPD4+cBp97sa8Ln/0oZk1BMo=; b=Y0JXD377g+NRe6
	/EqwdS94ApIbRExGjdeISvxjax5nYHsmy0L9XuSzC9Ssc/Vvj4vq/zsrELCIYd4f9ZDZ72JA21vDt
	edgVWCxBnlLYprbU6LF0IQpwv2IRbNax/AJt0cyK+XvTecMTFyA5P+jtqKBg8809AExWk4JPICnUb
	zZCli5KavzDMEKOARmva5ccthVJcfdH+EDx3PTPKwaYGoZFtBg+SYS3wt0FE/uT3rKNORsW1AN3MU
	OdNJcm2Hc6XuCjJFDVqyUF3qT3vKvotQDOu5pAsqySIfgx7Za2DcDlcR1G260M/VXiP4WSYgiKTWN
	Rs2Pyj+MbdhFUlJrHTAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilkU4-0006wP-0d; Mon, 30 Dec 2019 02:08:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilkTs-0006vE-K2; Mon, 30 Dec 2019 02:08:29 +0000
X-UUID: 37616466035142df9ef656893048e389-20191229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=/lpQkAv3iCwWOkWgJJE5MaCHaqTpfO0sf9t+VBFhKO0=; 
 b=GTjlAmp0bUzhzZ0gAq4CejELM4MMdAWNVRWicb93uz0IRUHzH073haBzaUpl//g5fxEa2dj1cjoWyuI5HBsDgCqp26l/bZNJ75FBrDDOTBbo3qPy3NnkMs1Y7JAWjeW0pCKN1FiiFXdPhWq1oxG9zVWIXCoTiFK7kpeAHjtlTQc=;
X-UUID: 37616466035142df9ef656893048e389-20191229
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 642653931; Sun, 29 Dec 2019 18:08:23 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Dec 2019 17:58:37 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 09:57:57 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Dec 2019 09:58:42 +0800
Message-ID: <1577671100.8160.0.camel@mtksdaap41>
Subject: Re: [PATCH 04/13] mailbox: mediatek: cmdq: convert to
 devm_platform_ioremap_resource
From: CK Hu <ck.hu@mediatek.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Date: Mon, 30 Dec 2019 09:58:20 +0800
In-Reply-To: <20191228183538.26189-4-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
 <20191228183538.26189-4-tiny.windzz@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_180828_669391_4152EA2C 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: bjorn.andersson@linaro.org, matthias.bgg@gmail.com,
 thierry.reding@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 f.fainelli@gmail.com, jassisinghbrar@gmail.com, jonathanh@nvidia.com,
 agross@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-msm@vger.kernel.org, alexandre.torgue@st.com, rjui@broadcom.com,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 lftan@altera.com, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 nios2-dev@lists.rocketboards.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yangtao:

On Sat, 2019-12-28 at 18:35 +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index 9a6ce9f5a7db..7f9e34b021c8 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -458,7 +458,6 @@ static struct mbox_chan *cmdq_xlate(struct mbox_controller *mbox,
>  static int cmdq_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> -	struct resource *res;
>  	struct cmdq *cmdq;
>  	int err, i;
>  
> @@ -466,8 +465,7 @@ static int cmdq_probe(struct platform_device *pdev)
>  	if (!cmdq)
>  		return -ENOMEM;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	cmdq->base = devm_ioremap_resource(dev, res);
> +	cmdq->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(cmdq->base)) {
>  		dev_err(dev, "failed to ioremap gce\n");
>  		return PTR_ERR(cmdq->base);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
