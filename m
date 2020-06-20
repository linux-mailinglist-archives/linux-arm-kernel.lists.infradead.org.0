Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27FC20226E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 09:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIU3/gTi6oXK1FCL1w8HWuQaDTBAuylNw/7WfSGUZyw=; b=TASGOvqZUhgrT1
	g5Grly3ZNiGplJR+8Bc7bjJH42OiHb85/kgMcoE14NRyd8VUdB69qTb0woNo5Sk2C+EbubrjiiWVO
	VlKYAJZc2+l2IAOSmWjClII5l1hCG5Q1hQngwqCH0mMPKZIMk2Fn1wgG9mNviYb3YSWSFfnFWeU9/
	0QKIZX+rr5jB2nxJd7XTLoggGrYhfGsZiXXprv9bG7LFEjECf2Y1XuHD9Eyil9rab4N5NyfUIe2TQ
	EUI6+8q5RLAV3cBN7ZxLuxDKWlPFzLCA00/4fve+1OTxilBr3Dx4VNA/EE43rz4qTCzwbQhhTkWtg
	wA2LWXD+s4JUt12eEcoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmYCf-0003OA-FQ; Sat, 20 Jun 2020 07:46:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmYCT-0003N5-Hy; Sat, 20 Jun 2020 07:46:07 +0000
X-UUID: a9c4a940a0ef41b48113af9f306c3421-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=W396ifFNhTXMU6Ao6v2NVBlA5nufvq++IW1xtDsWqvQ=; 
 b=NcR1VWYdt4U4MAXZYbeRRoWiLb4MntYhpBpLtk4Yg6n6wzwMy2mwK0Au/1dKZ3E8FwpTipD4NKbGJLFP9msIeQK8ensWbybephjRq3XUhlrT6EEQXrwfRFx41nrjBSqPl0MyXaTjRXcpBuZGujVzH3sm+cGsEFN1PPvtAQ6MB4Y=;
X-UUID: a9c4a940a0ef41b48113af9f306c3421-20200619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1522428262; Fri, 19 Jun 2020 23:45:47 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 20 Jun 2020 00:45:53 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 20 Jun 2020 15:45:53 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 20 Jun 2020 15:45:52 +0800
Message-ID: <1592639154.5529.3.camel@mtksdaap41>
Subject: Re: [PATCH v2 2/2] i2c: mediatek: Add i2c ac-timing adjust support
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Qii Wang <qii.wang@mediatek.com>
Date: Sat, 20 Jun 2020 15:45:54 +0800
In-Reply-To: <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
References: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
 <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_004605_596465_8ABA667D 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com, wsa@the-dreams.de,
 leilk.liu@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Sorry for late review.


On Thu, 2020-05-14 at 21:09 +0800, Qii Wang wrote:
> This patch adds a algorithm to calculate some ac-timing parameters
> which can fully meet I2C Spec.
> 
> Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> ---
>  drivers/i2c/busses/i2c-mt65xx.c | 328 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 277 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> index 0ca6c38a..7020618 100644
> --- a/drivers/i2c/busses/i2c-mt65xx.c
> +++ b/drivers/i2c/busses/i2c-mt65xx.c

<...>

> @@ -948,9 +1177,6 @@ static int mtk_i2c_probe(struct platform_device *pdev)
>  	if (ret)
>  		return -EINVAL;
>  
> -	if (i2c->dev_comp->timing_adjust)
> -		i2c->clk_src_div *= I2C_DEFAULT_CLK_DIV;
> -

After this patch, the 'clock-div' property in device tree is no longer
used for platform with timing_adjust ability.
Please change the binding, so we don't need to provide 'clock-div' for
these platform.

Joe.C

>  	if (i2c->have_pmic && !i2c->dev_comp->pmic_i2c)
>  		return -EINVAL;
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
