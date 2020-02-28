Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6603F173A64
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxaClPYJrM61APknXurZdNAfaHOYWctL+yhiIjHU/dI=; b=TIwvFJEPzgG5h7
	cr/gKYgTO8OMj+pRNu8Zwvun8flXbXMuwPn/d7XLkcI+QF48qewzy9NJxKjSBYulYqgsUPJNF0E/n
	2bl6HHBtKARRVoVD8qwJOGoG4O9xehyt0UyJE68IXOixTdTGC9EFJBgMutlZ/9dVNrzpGdAHpEW1n
	07gc93vwfaItb5Uuskv0d80YTn34zKT31FI4sNwoRABSwyIYcVcWIjvwj0uvzUltHsFxkqSzpjZMP
	aJc39mU0Lz7qu+mL/hudKeOrXClt7BTsuCyCT/Q+yfhiJx3SuRjvrVIoiJKcw9Ga4FsoVAPzYjQ1h
	36aF34T/NRIRUObwzdxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7h2J-0006F1-8h; Fri, 28 Feb 2020 14:54:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7h28-0006Dh-BT; Fri, 28 Feb 2020 14:54:33 +0000
X-UUID: 99999a077f9d46ad859b7197ac23fec3-20200228
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Oo9OqLwNu+IUBMtwmf3xp6IAkUZJKqSI+TGBkTXf0MU=; 
 b=aAX4P0WG+h0kTpklJlFpwG3QklzI4cZrnWC6ozlAq5cRoLnVD9olTH29US0gMR0/Ms8XFuBaLKdUUILegiP1vnERB3a6mB59Bh6AMQbGuevNMOqCwmKbvF34KoPnnENhnRejevaRN1Zo7KyXEIZsd8hcJrehvozcs+itZmgnbE4=;
X-UUID: 99999a077f9d46ad859b7197ac23fec3-20200228
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 680705216; Fri, 28 Feb 2020 06:54:23 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 06:45:04 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 22:45:52 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Feb 2020 22:44:05 +0800
Message-ID: <1582901053.14824.3.camel@mtksdaap41>
Subject: Re: [PATCH v3 06/13] soc: mediatek: cmdq: add assign function
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Fri, 28 Feb 2020 22:44:13 +0800
In-Reply-To: <1582897461-15105-8-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1582897461-15105-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1582897461-15105-8-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_065432_402090_05B3D900 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 wsd_upstream@mediatek.com, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dennis:

On Fri, 2020-02-28 at 21:44 +0800, Dennis YC Hsieh wrote:
> Add assign function in cmdq helper which assign constant value into
> internal register by index.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 24 +++++++++++++++++++++++-
>  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
>  include/linux/soc/mediatek/mtk-cmdq.h    | 14 ++++++++++++++
>  3 files changed, 38 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 0698612de5ad..8342a5c94bc7 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -12,6 +12,7 @@
>  #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
>  #define CMDQ_POLL_ENABLE_MASK	BIT(0)
>  #define CMDQ_EOC_IRQ_EN		BIT(0)
> +#define CMDQ_REG_TYPE		1
>  
>  struct cmdq_instruction {
>  	union {
> @@ -21,8 +22,17 @@ struct cmdq_instruction {
>  	union {
>  		u16 offset;
>  		u16 event;
> +		u16 reg_dst;
> +	};
> +	union {
> +		u8 subsys;
> +		struct {
> +			u8 sop:5;
> +			u8 arg_c_t:1;
> +			u8 arg_b_t:1;
> +			u8 dst_t:1;
> +		};
>  	};
> -	u8 subsys;
>  	u8 op;
>  };
>  
> @@ -277,6 +287,18 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
>  }
>  EXPORT_SYMBOL(cmdq_pkt_poll_mask);
>  
> +int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
> +{
> +	struct cmdq_instruction inst = { {0} };
> +
> +	inst.op = CMDQ_CODE_LOGIC;
> +	inst.dst_t = CMDQ_REG_TYPE;
> +	inst.reg_dst = reg_idx;
> +	inst.value = value;
> +	return cmdq_pkt_append_command(pkt, inst);
> +}
> +EXPORT_SYMBOL(cmdq_pkt_assign);
> +
>  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  {
>  	struct cmdq_instruction inst = { {0} };
> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> index dfe5b2eb85cc..121c3bb6d3de 100644
> --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> @@ -59,6 +59,7 @@ enum cmdq_code {
>  	CMDQ_CODE_JUMP = 0x10,
>  	CMDQ_CODE_WFE = 0x20,
>  	CMDQ_CODE_EOC = 0x40,
> +	CMDQ_CODE_LOGIC = 0xa0,
>  };
>  
>  enum cmdq_cb_status {
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index a74c1d5acdf3..83340211e1d3 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -152,6 +152,20 @@ int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
>   */
>  int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
>  		       u16 offset, u32 value, u32 mask);
> +
> +/**
> + * cmdq_pkt_assign() - Append logic assign command to the CMDQ packet, ask GCE
> + *		       to execute an instruction that set a constant value into
> + *		       internal register and use as value, mask or address in
> + *		       read/write instruction.
> + * @pkt:	the CMDQ packet
> + * @reg_idx:	the CMDQ internal register ID
> + * @value:	the specified value
> + *
> + * Return: 0 for success; else the error code is returned
> + */
> +int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
> +
>  /**
>   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
>   *                          packet and call back at the end of done packet

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
