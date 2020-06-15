Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18AB1F94BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxlDiQHYxF8kIrlrdBCeKNq/EDRKCqW2NiB+7arlbdA=; b=GS+74hHfzkkLUt
	o8th0Tjq+yhT26WyDrw2nuned3ccLexQTKDyWHKzcLhfJ6ZSb+PsMjzlN6mpJSoK56pTg8xr4PguY
	mRsFXDzYqeqOC4hq+Wg/LUtx/jRKtdDMgH5OFuuUIuYaCvXeERqAzSDaSp4x/IGn9AJFfNM+7x255
	SNnrxCxQWZHD4mx5s2UJ8y+N6lJLA1yoawfUL79GOfg63ucmoErh+0yWyKSkFF6ZO45k2qGu7MHus
	Kcqe7rJd2xCH0IpmCVkNe/VWuHa7O+AjxH0hJXXwGX60smJI0vy8AP/wA8+BDzeUUSeiX6RXzUOwh
	kbs94iWR+uCI+GkmAOVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmY8-0005hQ-Qo; Mon, 15 Jun 2020 10:41:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmXx-0005gg-0h; Mon, 15 Jun 2020 10:41:00 +0000
X-UUID: 4d2ba5969c4e4a67aaa92f7fc02d406c-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=szzr4WhooKH7Yevz5ZGF7BJ100rmB9QWmrQjunMiwAQ=; 
 b=CxBW9N7X3WOL8gUlqkS8AZuASeY4ZjciqvNly7K3cYlrAz6+PVwiDNsMolPnQTrCYbTj2gv6vesKrp0Y3g/u55tkv9tLoAxcHcmFd/0PnK0I5oeJ8oRLvvGw5fAAVWZZpmXPUdvZ059/ZwAsqd3zK8chaEyz/Zf7e9T1mFq7IiA=;
X-UUID: 4d2ba5969c4e4a67aaa92f7fc02d406c-20200615
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <qiangming.xia@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1275650038; Mon, 15 Jun 2020 02:40:47 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 03:40:47 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 18:40:43 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 18:40:44 +0800
Message-ID: <1592217629.22302.4.camel@mbjsdccf07>
Subject: Re: [PATCH] i2c: mediatek: Add i2c support for continuous mode
From: qiangming.xia <qiangming.xia@mediatek.com>
To: <wsa@the-dreams.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>
Date: Mon, 15 Jun 2020 18:40:29 +0800
In-Reply-To: <20200508071809.10187-1-qiangming.xia@mediatek.com>
References: <20200508071809.10187-1-qiangming.xia@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_034058_940998_1E7827E0 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Wolfram
	Do you have time to take a look at this? Thanks.

On Fri, 2020-05-08 at 15:18 +0800, Qiangming Xia wrote:
> From: "qiangming.xia" <qiangming.xia@mediatek.com>
> 
>     Mediatek i2c controller support for continuous mode, it allow to
> transfer multiple write messages once. It combined by
> 'S + addr(wr) + data + Sr + ... + Sr + S + addr(wr) + data + P'.
>     Some slave devices need write many offset ranges, and the offset range
> maybe not continuous. For example, need write 'offset_0', 'offset_3' and
> 'offset_5' 10 bytes, total 30 bytes. Slave device driver usually execute
> three times i2c transfer API,i.e,i2c_transfer() to complete it, however,
> it can use once transfer to finish it by continuous mode.
> 
> Signed-off-by: Qiangming Xia <qiangming.xia@mediatek.com>
> Feature: I2C
> ---
>  drivers/i2c/busses/i2c-mt65xx.c | 74 ++++++++++++++++++++++++++++++++-
>  1 file changed, 72 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> index 2152ec5f535c..9bab8c44ad58 100644
> --- a/drivers/i2c/busses/i2c-mt65xx.c
> +++ b/drivers/i2c/busses/i2c-mt65xx.c
> @@ -98,6 +98,7 @@ enum mtk_trans_op {
>  	I2C_MASTER_WR = 1,
>  	I2C_MASTER_RD,
>  	I2C_MASTER_WRRD,
> +	I2C_MASTER_CONTINUOUS_WR,
>  };
>  
>  enum I2C_REGS_OFFSET {
> @@ -619,6 +620,9 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
>  					    OFFSET_TRANSFER_LEN);
>  		}
>  		mtk_i2c_writew(i2c, I2C_WRRD_TRANAC_VALUE, OFFSET_TRANSAC_LEN);
> +	} else if (i2c->op == I2C_MASTER_CONTINUOUS_WR) {
> +		mtk_i2c_writew(i2c, msgs->len / num, OFFSET_TRANSFER_LEN);
> +		mtk_i2c_writew(i2c, num, OFFSET_TRANSAC_LEN);
>  	} else {
>  		mtk_i2c_writew(i2c, msgs->len, OFFSET_TRANSFER_LEN);
>  		mtk_i2c_writew(i2c, num, OFFSET_TRANSAC_LEN);
> @@ -671,7 +675,7 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
>  
>  		writel((u32)wpaddr, i2c->pdmabase + OFFSET_TX_MEM_ADDR);
>  		writel(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
> -	} else {
> +	} else if (i2c->op == I2C_MASTER_WRRD) {
>  		writel(I2C_DMA_CLR_FLAG, i2c->pdmabase + OFFSET_INT_FLAG);
>  		writel(I2C_DMA_CLR_FLAG, i2c->pdmabase + OFFSET_CON);
>  
> @@ -722,6 +726,24 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
>  		writel((u32)rpaddr, i2c->pdmabase + OFFSET_RX_MEM_ADDR);
>  		writel(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
>  		writel((msgs + 1)->len, i2c->pdmabase + OFFSET_RX_LEN);
> +	} else if (i2c->op == I2C_MASTER_CONTINUOUS_WR) {
> +		writel(I2C_DMA_INT_FLAG_NONE, i2c->pdmabase + OFFSET_INT_FLAG);
> +		writel(I2C_DMA_CON_TX, i2c->pdmabase + OFFSET_CON);
> +
> +		wpaddr = dma_map_single(i2c->dev, msgs->buf,
> +					msgs->len, DMA_TO_DEVICE);
> +		if (dma_mapping_error(i2c->dev, wpaddr)) {
> +			kfree(msgs->buf);
> +			return -ENOMEM;
> +		}
> +
> +		if (i2c->dev_comp->support_33bits) {
> +			reg_4g_mode = mtk_i2c_set_4g_mode(wpaddr);
> +			writel(reg_4g_mode, i2c->pdmabase + OFFSET_TX_4G_MODE);
> +		}
> +
> +		writel((u32)wpaddr, i2c->pdmabase + OFFSET_TX_MEM_ADDR);
> +		writel(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
>  	}
>  
>  	writel(I2C_DMA_START_EN, i2c->pdmabase + OFFSET_EN);
> @@ -752,7 +774,7 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
>  				 msgs->len, DMA_FROM_DEVICE);
>  
>  		i2c_put_dma_safe_msg_buf(dma_rd_buf, msgs, true);
> -	} else {
> +	} else if (i2c->op == I2C_MASTER_WRRD) {
>  		dma_unmap_single(i2c->dev, wpaddr, msgs->len,
>  				 DMA_TO_DEVICE);
>  		dma_unmap_single(i2c->dev, rpaddr, (msgs + 1)->len,
> @@ -760,6 +782,11 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
>  
>  		i2c_put_dma_safe_msg_buf(dma_wr_buf, msgs, true);
>  		i2c_put_dma_safe_msg_buf(dma_rd_buf, (msgs + 1), true);
> +	} else if (i2c->op == I2C_MASTER_CONTINUOUS_WR) {
> +		dma_unmap_single(i2c->dev, wpaddr,
> +				 msgs->len, DMA_TO_DEVICE);
> +
> +		kfree(msgs->buf);
>  	}
>  
>  	if (ret == 0) {
> @@ -783,6 +810,9 @@ static int mtk_i2c_transfer(struct i2c_adapter *adap,
>  	int ret;
>  	int left_num = num;
>  	struct mtk_i2c *i2c = i2c_get_adapdata(adap);
> +	struct i2c_msg multi_msg[1];
> +	u8 *dma_multi_wr_buf;
> +	int j;
>  
>  	ret = mtk_i2c_clock_enable(i2c);
>  	if (ret)
> @@ -798,6 +828,46 @@ static int mtk_i2c_transfer(struct i2c_adapter *adap,
>  		}
>  	}
>  
> +	if (num > 1) {
> +		for (int i = 0; i < num - 1; i++) {
> +			if (!(msgs[i].flags & I2C_M_RD) &&
> +				!(msgs[i+1].flags & I2C_M_RD) &&
> +					(msgs[i].addr == msgs[i+1].addr) &&
> +						(msgs[i].len ==
> +							msgs[i+1].len)) {
> +				continue;
> +			} else
> +				break;
> +		}
> +		if (i >= num - 1) {
> +			i2c->op = I2C_MASTER_CONTINUOUS_WR;
> +			j = 0;
> +			dma_multi_wr_buf = kzalloc(msgs->len * num, GFP_KERNEL);
> +			if (!dma_multi_wr_buf) {
> +				ret =  -ENOMEM;
> +				goto err_exit;
> +			}
> +			multi_msg->addr  = msgs->addr;
> +			multi_msg->len   = msgs->len * num;
> +			multi_msg->buf   = dma_multi_wr_buf;
> +			multi_msg->flags  = 0;
> +			while (j < num) {
> +				memcpy(dma_multi_wr_buf + msgs->len * j,
> +							msgs->buf, msgs->len);
> +				j++;
> +				msgs++;
> +			}
> +
> +			i2c->ignore_restart_irq = false;
> +			ret = mtk_i2c_do_transfer(i2c, multi_msg, num, 0);
> +			if (ret < 0)
> +				goto err_exit;
> +			ret = num;
> +				goto err_exit;
> +
> +		}
> +	}
> +
>  	if (i2c->auto_restart && num >= 2 && i2c->speed_hz > MAX_FS_MODE_SPEED)
>  		/* ignore the first restart irq after the master code,
>  		 * otherwise the first transfer will be discarded.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
