Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16C810682E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 09:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2FTzpG9m/Pb8rAmXhEYTUby7Pnnmd4BQpTGksdQm8k=; b=KyzNvzJh1s+9ga
	8fbnGLnSjZEB1MH7J0QalTC+p//ehQ8D3Nghnaz0SND9Vz7/4kkSYMIYtxuMuNXkV3+tfKaDkpmQ9
	5idmfqZlEIW4H0OPw1LAjF7Y6RdGzRP4/EkgtbapMYMUdq359et/jYHpRfmvsqxAKbcbirrsNE5sj
	bYWuf/DyHO/uovGPafTBUTsiq8qzFt7fNKA84BgaZHQU7Y4L0moC3KoeyDCtRwd5Y/qjWzGKXe+ID
	CTrxnFxZgacpvbkXAHQrFi8uvjmUG5PRikL5rpjToGvhFlXWgC9vNN3x6+YwJfQQQtl+WtrTdfnCJ
	y9n2o589oG3NgFaT5QXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY4Uf-0000zA-PZ; Fri, 22 Nov 2019 08:40:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY4UX-0000yB-SV; Fri, 22 Nov 2019 08:40:39 +0000
X-UUID: 4bfffca15dc8480f86fdb883e3c17f35-20191122
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=5mcuvR7GVuvvJAZoBk6XztMBMMQ0zvdSu1TFanJSLNk=; 
 b=nmy+/pn8l4Kcfhd8RYp6JthjhdETMQcgQNCJIZVwMPGQu/NafVeKF0vsPK6ItQ7B4HBA7Z3Opeiw+bXmnj3CSYIzMpf+kgbOCeQbkHTIbVt3C/guCAQfZK6AR8CTUYXnBRE4SmOFHHSb+MDhoHOh38e4nk7Z1XsER3iHaI06m1M=;
X-UUID: 4bfffca15dc8480f86fdb883e3c17f35-20191122
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1396767287; Fri, 22 Nov 2019 00:40:33 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 00:36:33 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 16:36:04 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 22 Nov 2019 16:35:42 +0800
Message-ID: <1574411769.19450.7.camel@mtksdaap41>
Subject: Re: [PATCH v17 4/6] soc: mediatek: cmdq: add polling function
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 22 Nov 2019 16:36:09 +0800
In-Reply-To: <20191121015410.18852-5-bibby.hsieh@mediatek.com>
References: <20191121015410.18852-1-bibby.hsieh@mediatek.com>
 <20191121015410.18852-5-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_004037_930632_3BF5F8DD 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Nicolas
 Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Thu, 2019-11-21 at 09:54 +0800, Bibby Hsieh wrote:
> add polling function in cmdq helper functions
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 36 ++++++++++++++++++++++++
>  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
>  include/linux/soc/mediatek/mtk-cmdq.h    | 32 +++++++++++++++++++++
>  3 files changed, 69 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 11bfcc150ebd..9094fda5a8fe 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -10,6 +10,7 @@
>  #include <linux/soc/mediatek/mtk-cmdq.h>
>  
>  #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
> +#define CMDQ_POLL_ENABLE_MASK	BIT(0)
>  #define CMDQ_EOC_IRQ_EN		BIT(0)
>  #define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
>  				<< 32 | CMDQ_EOC_IRQ_EN)
> @@ -214,6 +215,41 @@ int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
>  }
>  EXPORT_SYMBOL(cmdq_pkt_clear_event);
>  
> +int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> +		  u16 offset, u32 value)
> +{
> +	struct cmdq_instruction inst = { {0} };
> +	int err;
> +
> +	inst.op = CMDQ_CODE_POLL;
> +	inst.value = value;
> +	inst.offset = offset;
> +	inst.subsys = subsys;
> +	err = cmdq_pkt_append_command(pkt, inst);
> +
> +	return err;
> +}
> +EXPORT_SYMBOL(cmdq_pkt_poll);
> +
> +int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
> +		       u16 offset, u32 value, u32 mask)
> +{
> +	struct cmdq_instruction inst = { {0} };
> +	int err;
> +
> +	inst.op = CMDQ_CODE_MASK;
> +	inst.mask = ~mask;
> +	err = cmdq_pkt_append_command(pkt, inst);
> +	if (err < 0)
> +		return err;
> +
> +	offset = offset | CMDQ_POLL_ENABLE_MASK;
> +	err = cmdq_pkt_poll(pkt, subsys, offset, value);
> +
> +	return err;
> +}
> +EXPORT_SYMBOL(cmdq_pkt_poll_mask);
> +
>  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  {
>  	struct cmdq_instruction inst = { {0} };
> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> index 678760548791..a4dc45fbec0a 100644
> --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> @@ -55,6 +55,7 @@
>  enum cmdq_code {
>  	CMDQ_CODE_MASK = 0x02,
>  	CMDQ_CODE_WRITE = 0x04,
> +	CMDQ_CODE_POLL = 0x08,
>  	CMDQ_CODE_JUMP = 0x10,
>  	CMDQ_CODE_WFE = 0x20,
>  	CMDQ_CODE_EOC = 0x40,
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index 9618debb9ceb..92bd5b5c6341 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -99,6 +99,38 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
>   */
>  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event);
>  
> +/**
> + * cmdq_pkt_poll() - Append polling command to the CMDQ packet, ask GCE to
> + *		     execute an instruction that wait for a specified
> + *		     hardware register to check for the value w/o mask.
> + *		     All GCE hardware threads will be blocked by this
> + *		     instruction.
> + * @pkt:	the CMDQ packet
> + * @subsys:	the CMDQ sub system code
> + * @offset:	register offset from CMDQ sub system
> + * @value:	the specified target register value
> + *
> + * Return: 0 for success; else the error code is returned
> + */
> +int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> +		  u16 offset, u32 value);
> +
> +/**
> + * cmdq_pkt_poll_mask() - Append polling command to the CMDQ packet, ask GCE to
> + *		          execute an instruction that wait for a specified
> + *		          hardware register to check for the value w/ mask.
> + *		          All GCE hardware threads will be blocked by this
> + *		          instruction.
> + * @pkt:	the CMDQ packet
> + * @subsys:	the CMDQ sub system code
> + * @offset:	register offset from CMDQ sub system
> + * @value:	the specified target register value
> + * @mask:	the specified target register mask
> + *
> + * Return: 0 for success; else the error code is returned
> + */
> +int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
> +		       u16 offset, u32 value, u32 mask);
>  /**
>   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
>   *                          packet and call back at the end of done packet

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
