Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733F211C52A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 06:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyjsRR5gKHQmliCW+kskWdzBnbNPwmY7y0R26NzZT8o=; b=sPSZc5TF19/G3y
	/kIv1SZDzRjnBB+jnr/dfBxniswVGkktKBfkjm4YSCAaiJyTEFy79goKp/yxiatEwbYc81tX7lW7R
	WzxCd/rrFzINS4gN6t0NPoqsmsaCjxGxxCwhBnXZaQvZFuaf2vme7p36NUT0FQ7F6ujIdj8ccnDHj
	Fs1iY8vGskpMC20lZ4yAh6oJjNCwI4jWfn8sAJIUd3RsKvhS8MgqVKD6KRITx+B6Q771PDrqqX4dT
	4MTopdCpq22AAEroZGbW/FdI004dskYlNK3pE8sQSD9drCnMcBQP4s2LdEaPg+qE68C9dRiXhIDYs
	tXGUc0QOJzmgE274H80w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifGlP-0003QN-M0; Thu, 12 Dec 2019 05:11:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifGlE-0003PI-SL; Thu, 12 Dec 2019 05:11:38 +0000
X-UUID: 464234d66e5a467f97f95650bd20f437-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=hYgDknyu2r/mt3htTKSKYIbRrUMLsVNx5WmsGimi8Vw=; 
 b=jpNCkJf+xNMF6UdoYNiecf4S+ImFj9CPi9Uvo2aE/E0Hmiy+YQtuFZBjDeqgzCTBe7APze4L24Q5/aDN3nEf+WuVudJlrOTYK7ITtTZZsjIDkksEbDN3p7Umm3z4FTv1QHVwfvIwuXVoUY7+m0F1sbjzoT31V0kVmU6/nM1oXPM=;
X-UUID: 464234d66e5a467f97f95650bd20f437-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1535154093; Wed, 11 Dec 2019 21:11:35 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 21:12:41 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 13:11:09 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 13:10:56 +0800
Message-ID: <1576127492.8315.1.camel@mtksdaap41>
Subject: Re: [PATCH] soc: mediatek: cmdq: delete not used define
From: CK Hu <ck.hu@mediatek.com>
To: <matthias.bgg@kernel.org>
Date: Thu, 12 Dec 2019 13:11:32 +0800
In-Reply-To: <20191211185950.31358-1-matthias.bgg@kernel.org>
References: <20191211185950.31358-1-matthias.bgg@kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_211136_924377_CD4CFC49 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <mbrugger@suse.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Matthias:

On Wed, 2019-12-11 at 19:59 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> Define CMDQ_EOC_CMD was actually never used. Delete it.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> 
> ---
> 
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 3c82de5f9417..1127c19c4e91 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -12,8 +12,6 @@
>  #define CMDQ_ARG_A_WRITE_MASK	0xffff
>  #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
>  #define CMDQ_EOC_IRQ_EN		BIT(0)
> -#define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
> -				<< 32 | CMDQ_EOC_IRQ_EN)
>  
>  static void cmdq_client_timeout(struct timer_list *t)
>  {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
