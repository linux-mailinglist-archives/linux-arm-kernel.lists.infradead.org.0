Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A3110886B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 06:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYetequKPoXm2JeDa2Z6Q9tN/2itfO5aIF6xkh+l1V4=; b=mVhevnG9bNSej2
	P3FXzEv6qRaZvXvZPlOViJBecarfQ5KlzO+H6Ou3YTbXH8AIQ8+ujc90JuElc7M3rAewyeNrzGeE9
	I04n7kCmjfG9W9HmDlVdV6mRdnDec0NoJ3gR6qo1tgGx41UV4ZoSCaqds3is3g3TbIuVH00Hlk6Ds
	xeFmtoqtJCIGzhiZlOM8fMJezTl4ETeXE0lGb0wowct/vx2AEykmbHaVPT9hpqgc8SSghSF5LaRPl
	Tpmf4R8XW+dkOfZq4zj4y7/lofNsd/iYCIuLni3QzWrWsMdELF/Q/Eq2eY2nPN7wcny2P4fJDWNnD
	zfFIV/GrUNL4POe7PL+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ72C-0006th-SO; Mon, 25 Nov 2019 05:35:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ720-0006qZ-Hk; Mon, 25 Nov 2019 05:35:30 +0000
X-UUID: dc50abc1d1104712b4e0eb915f1fb94b-20191124
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=R/fHdMtlVUsGDVLO9pKCFuPa6QvJ5ONRYikmv2XpPww=; 
 b=XzUfiHpV04o09GdqLnmCJmT+yP5tPEeToOXYsAKgjgDNapu9L+5BebnaxQypXZ95CgGR4lLFn98Gm6ExXJJJ109V8HzJagvGpQWlMfeBDWj98QsVlFq9Mx7jLKyFYvMQsPp4G1RFBCzm3Ty6hEfdJyhd/zhrL2eviOE9fPF/+YE=;
X-UUID: dc50abc1d1104712b4e0eb915f1fb94b-20191124
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 265858118; Sun, 24 Nov 2019 21:35:24 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 24 Nov 2019 21:35:30 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 13:34:49 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 25 Nov 2019 13:34:40 +0800
Message-ID: <1574660121.26500.1.camel@mtksdaap41>
Subject: Re: [PATCH v1 06/12] soc: mediatek: cmdq: add assign function
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Mon, 25 Nov 2019 13:35:21 +0800
In-Reply-To: <1574327552-11806-7-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574327552-11806-7-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_213528_607701_D792767F 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dennis:

On Thu, 2019-11-21 at 17:12 +0800, Dennis YC Hsieh wrote:
> Add assign function in cmdq helper which assign constant value into
> internal register by index.
> 
> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c   |   24 +++++++++++++++++++++++-
>  include/linux/mailbox/mtk-cmdq-mailbox.h |    1 +
>  include/linux/soc/mediatek/mtk-cmdq.h    |   14 ++++++++++++++
>  3 files changed, 38 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 274f6f3..d419e99 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -14,6 +14,7 @@
>  #define CMDQ_EOC_IRQ_EN		BIT(0)
>  #define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
>  				<< 32 | CMDQ_EOC_IRQ_EN)
> +#define CMDQ_REG_TYPE		1
>  
>  struct cmdq_instruction {
>  	union {
> @@ -23,8 +24,17 @@ struct cmdq_instruction {
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
> +			u8 arg_a_t:1;
> +		};
>  	};
> -	u8 subsys;
>  	u8 op;
>  };
>  
> @@ -279,6 +289,18 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
>  }
>  EXPORT_SYMBOL(cmdq_pkt_poll_mask);
>  
> +int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
> +{
> +	struct cmdq_instruction inst = { {0} };
> +
> +	inst.op = CMDQ_CODE_LOGIC;
> +	inst.arg_a_t = CMDQ_REG_TYPE;

It looks like that arg_a_t could have a meaningful name.

Regards,
CK

> +	inst.reg_dst = reg_idx;
> +	inst.value = value;
> +	return cmdq_pkt_append_command(pkt, inst);
> +}
> +EXPORT_SYMBOL(cmdq_pkt_assign);
> +
>  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  {
>  	struct cmdq_client *cl = pkt->cl;
> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> index dfe5b2e..121c3bb 100644
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
> index a74c1d5..8334021 100644
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
