Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E7B17D7F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 02:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xL2bl907c8kcYzHek33GjtG5IC+JgtxOrfdKdn+I/GE=; b=KOOAFAITlZudwX
	Ra323NfLESTEI1CEaXqk5GDmguQINezusKyHhYgP6ii3cHcqSG/bTMYD+VUZNfX/St6o8Wvx0Rr0+
	N7Txf4zXgpK7qX2hzz08/5T0ozj8FpAo7hWTH/EUy7ANWuMD/HtlkvACo7s2dCglcKV7R6cbuIqh5
	o0Ez/V2Pbz8EIUFtIxA6PIXdu0oGiq2I4RStk5oUuDUfOTCOntxZe3TiN11QmVP6WK8v4vAs1KUG/
	jd/BOrYNzS3eZdMQRv4s7nEY79hOyH0FlOy8GPVoGP26KEgJ74Ei4A6K7PCV2/V4EOLn0+sOz4pXb
	XD2Uk5FDcLJ13jM1SSag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB7Zf-00026y-2R; Mon, 09 Mar 2020 01:51:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB7ZQ-000252-RT; Mon, 09 Mar 2020 01:51:06 +0000
X-UUID: 10ba1951fe92422f82d47023fed2b0c9-20200308
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=lji2RDfjYiKO0JLX1yRMYaI2Rm6gbe1z5aG0az/wNdo=; 
 b=gjOLEitIurGZfl1wvPLfp7ggzS59GLiZHk8RZuNQKQ0b0GULsvKPS4CeSnIBsDS5m9nYxFfohwwNVy3C84Fmceo94BXePwla9bt6naF1eMNBKVJ9nZP1VSm7Afw4vRQA+UjzMtW9oOHda/LZkn1y+0/WuIMOUY5v7O9HwPWxxgo=;
X-UUID: 10ba1951fe92422f82d47023fed2b0c9-20200308
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 349382844; Sun, 08 Mar 2020 17:51:02 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 18:48:17 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Mar 2020 09:47:20 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Mar 2020 09:48:35 +0800
Message-ID: <1583718497.28331.0.camel@mtksdaap41>
Subject: Re: [PATCH v5 11/13] soc: mediatek: cmdq: add jump function
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Mon, 9 Mar 2020 09:48:17 +0800
In-Reply-To: <1583664775-19382-12-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1583664775-19382-12-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_185104_892987_EE25B5B8 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, wsd_upstream@mediatek.com, David
 Airlie <airlied@linux.ie>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 HS Liao <hs.liao@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dennis:

On Sun, 2020-03-08 at 18:52 +0800, Dennis YC Hsieh wrote:
> Add jump function so that client can jump to any address which
> contains instruction.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 13 +++++++++++++
>  include/linux/soc/mediatek/mtk-cmdq.h  | 11 +++++++++++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 59bc1164b411..bb5be20fc70a 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -13,6 +13,7 @@
>  #define CMDQ_POLL_ENABLE_MASK	BIT(0)
>  #define CMDQ_EOC_IRQ_EN		BIT(0)
>  #define CMDQ_REG_TYPE		1
> +#define CMDQ_JUMP_RELATIVE	1
>  
>  struct cmdq_instruction {
>  	union {
> @@ -372,6 +373,18 @@ int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
>  }
>  EXPORT_SYMBOL(cmdq_pkt_assign);
>  
> +int cmdq_pkt_jump(struct cmdq_pkt *pkt, dma_addr_t addr)
> +{
> +	struct cmdq_instruction inst = { {0} };
> +
> +	inst.op = CMDQ_CODE_JUMP;
> +	inst.offset = CMDQ_JUMP_RELATIVE;
> +	inst.value = addr >>
> +		cmdq_mbox_shift(((struct cmdq_client *)pkt->cl)->chan);
> +	return cmdq_pkt_append_command(pkt, inst);
> +}
> +EXPORT_SYMBOL(cmdq_pkt_jump);
> +
>  int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  {
>  	struct cmdq_instruction inst = { {0} };
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index 99e77155f967..1a6c56f3bec1 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -213,6 +213,17 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
>   */
>  int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
>  
> +/**
> + * cmdq_pkt_jump() - Append jump command to the CMDQ packet, ask GCE
> + *		     to execute an instruction that change current thread PC to
> + *		     a physical address which should contains more instruction.
> + * @pkt:        the CMDQ packet
> + * @addr:       physical address of target instruction buffer
> + *
> + * Return: 0 for success; else the error code is returned
> + */
> +int cmdq_pkt_jump(struct cmdq_pkt *pkt, dma_addr_t addr);
> +
>  /**
>   * cmdq_pkt_finalize() - Append EOC and jump command to pkt.
>   * @pkt:	the CMDQ packet

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
