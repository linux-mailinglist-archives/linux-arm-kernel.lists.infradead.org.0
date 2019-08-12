Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5C48A4B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 19:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CJo8Igd9LqtqE6QwVepYsDZ57iy4DOFObNvTEw7lUes=; b=DA9kfPgf//kWYrbHaSysA7xP4
	lX7gJKYybm3K3X4ZOwZQp67ol4GvOt2NXS86pZTc4b515hmq4ZuIzSjtRR+HwVgxna0NcyeTdJFYi
	2rBH9AyLfa/NwK+5c4p93RYAMQHOdamQ3AduMHym3nhXjM/mPXQ1dQaO/N1Dh+2vh5lfNdtQ/d2lu
	Qi8erh8991d11oXEC07F9bJSF0jnx9r4Ln/U5Yba2ITPZQtOQH8LPcmUinCY0r2fQpDzx6GB5Vdkw
	v4hMT3svantgDKWQ3UApXEA18TjNDwMnnrTO3vt2vxGI9moY7q+m5KWaa/eexoaAXCf7FT6bzT8Pw
	32IFo7YOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxED9-00013D-Eb; Mon, 12 Aug 2019 17:34:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxECh-0000pI-3k
 for linux-arm-kernel@bombadil.infradead.org; Mon, 12 Aug 2019 17:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cAgtYZHgV6xUR+yC/VEEeHLdtqd6juyZ2ABBZdUumQE=; b=j8vDBTBP4avXoVkrMkF6yA8SNf
 9/cpVOwWOFEJX8APhqFzMhbR4jjcifHswhOQbd6WiY9hGKpnGSr1tT6dTndyi/hR9Apa9y8d8po1+
 KoqzKqA09kniUZw9TlEQFLB+J5SF3ITM82WckMeQ51v1QdpmMyZ1NirCvfh2u2ic7sk+BosChXS4G
 v6ocLlzKeIr0jCdzz8hW0PMp/PhgPrgUbjg7fHz6XK9FJu0/F0dJu/e6ACV7tZ8BOTwbY3+JmeKqp
 EaqgGv5FPt/WjBXA2JbuH35FHWIOoIKUt7KrUoRtapMUUApoUwMclVEH7B4cyciogAj3ySBptxZRS
 FCO32Hrg==;
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxECe-0002rR-8Z
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 17:33:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id z23so310981wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 10:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cAgtYZHgV6xUR+yC/VEEeHLdtqd6juyZ2ABBZdUumQE=;
 b=FkOMMl3g4RPI0502AjI9JhmjFGhx8iEHR6MXlhd7QQb38nkD5pmT0wlZ6B3cwjdfkR
 a4w1WS5ORSm542pGKgVcQXmLXR4jP/kFGbW6sQYIOny5xVRPsj5D3HEidrrZ5iJVn8JP
 u+CpTzQoxr5Pe+QSU9KvI1UUpxSr9VhDPwGOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cAgtYZHgV6xUR+yC/VEEeHLdtqd6juyZ2ABBZdUumQE=;
 b=EfEPSf1BdhiQnoV78pSeXNCoKJBVGt/PkppYyNeo75GQWZ6Jz/shCRigRQ+r/WIeHf
 RBXIOjXV9aJvyacCJIxBzVs1JKxjQwLyC3nwuIh72D1DLdhshq1SEiCQVbetv7eMuYWm
 PadFAFRCvOGaiuRFu59VX20pBNfGDOCXMXSFlJWxfKMhUOcvnMacjYSd0lMol+eHfUTO
 h+3Bba3ifUYK8+WvpmXmF+q+dm7/FhPJqxaK4QwyX+g5ylHpBlQYpJsYLsJFNDjiFl/G
 kxXZmY/VVlcHPNwFexR0bVOB5TrO+/2nj/gDsr4TJ3Z4qZXSz+BEpjsMf8TqZd7LFk89
 0dXQ==
X-Gm-Message-State: APjAAAWkhPAwBV1QEVSBlz2tP2yuA8G2txQK0ysQqyUYGi8M5gmsTDP1
 /DiYCwUUa4gDKPaakk4KxqlWlg==
X-Google-Smtp-Source: APXvYqzl9ysVhJW+R47AyXAx8TEcPlPa5dLrHEwezvxULcJifU7LOO2WC9NW3PQshBaROW+6GP8lMw==
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr402521wml.175.1565631227782; 
 Mon, 12 Aug 2019 10:33:47 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id j10sm183930432wrd.26.2019.08.12.10.33.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 10:33:47 -0700 (PDT)
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <a2b0ccc1-63d5-177d-2b54-d79c65057907@broadcom.com>
Date: Mon, 12 Aug 2019 10:33:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>, linux-kernel@vger.kernel.org,
 Icarus Chau <icarus.chau@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram,

On 8/6/19 9:09 PM, Rayagonda Kokatanur wrote:
> From: Lori Hikichi <lori.hikichi@broadcom.com>
> 
> Enable handling of i2c repeated start. The current code
> handles a multi msg i2c transfer as separate i2c bus
> transactions. This change will now handle this case
> using the i2c repeated start protocol. The number of msgs
> in a transfer is limited to two, and must be a write
> followed by a read.
> 
> Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> Signed-off-by: Icarus Chau <icarus.chau@broadcom.com>
> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> Signed-off-by: Shivaraj Shetty <sshetty1@broadcom.com>
> ---

Note this patch has gone through internal review and testing on various 
I2C slave devices. It is introduced to work around limitation of our I2C 
controller and allows it to work on certain I2C slave devices that are 
sensitive and requires repeated start between transactions instead of a 
stop.

Given that my name is also on the Signed-off-by since I helped to 
rewrite part of the patch, I'm not going to add my Reviewed-by tag here.

Please help to review.

Thanks,

Ray

>   drivers/i2c/busses/i2c-bcm-iproc.c | 70 +++++++++++++++++++++++++++++++-------
>   1 file changed, 57 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> index d7fd76b..15fedcf 100644
> --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> @@ -81,6 +81,7 @@
>   #define M_CMD_PROTOCOL_MASK          0xf
>   #define M_CMD_PROTOCOL_BLK_WR        0x7
>   #define M_CMD_PROTOCOL_BLK_RD        0x8
> +#define M_CMD_PROTOCOL_PROCESS       0xa
>   #define M_CMD_PEC_SHIFT              8
>   #define M_CMD_RD_CNT_SHIFT           0
>   #define M_CMD_RD_CNT_MASK            0xff
> @@ -675,13 +676,20 @@ static int bcm_iproc_i2c_xfer_wait(struct bcm_iproc_i2c_dev *iproc_i2c,
>   	return 0;
>   }
>   
> -static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
> -					 struct i2c_msg *msg)
> +/*
> + * If 'process_call' is true, then this is a multi-msg transfer that requires
> + * a repeated start between the messages.
> + * More specifically, it must be a write (reg) followed by a read (data).
> + * The i2c quirks are set to enforce this rule.
> + */
> +static int bcm_iproc_i2c_xfer_internal(struct bcm_iproc_i2c_dev *iproc_i2c,
> +					struct i2c_msg *msgs, bool process_call)
>   {
>   	int i;
>   	u8 addr;
>   	u32 val, tmp, val_intr_en;
>   	unsigned int tx_bytes;
> +	struct i2c_msg *msg = &msgs[0];
>   
>   	/* check if bus is busy */
>   	if (!!(iproc_i2c_rd_reg(iproc_i2c,
> @@ -707,14 +715,29 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
>   			val = msg->buf[i];
>   
>   			/* mark the last byte */
> -			if (i == msg->len - 1)
> -				val |= BIT(M_TX_WR_STATUS_SHIFT);
> +			if (!process_call && (i == msg->len - 1))
> +				val |= 1 << M_TX_WR_STATUS_SHIFT;
>   
>   			iproc_i2c_wr_reg(iproc_i2c, M_TX_OFFSET, val);
>   		}
>   		iproc_i2c->tx_bytes = tx_bytes;
>   	}
>   
> +	/* Process the read message if this is process call */
> +	if (process_call) {
> +		msg++;
> +		iproc_i2c->msg = msg;  /* point to second msg */
> +
> +		/*
> +		 * The last byte to be sent out should be a slave
> +		 * address with read operation
> +		 */
> +		addr = msg->addr << 1 | 1;
> +		/* mark it the last byte out */
> +		val = addr | (1 << M_TX_WR_STATUS_SHIFT);
> +		iproc_i2c_wr_reg(iproc_i2c, M_TX_OFFSET, val);
> +	}
> +
>   	/* mark as incomplete before starting the transaction */
>   	if (iproc_i2c->irq)
>   		reinit_completion(&iproc_i2c->done);
> @@ -733,7 +756,7 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
>   	 * underrun interrupt, which will be triggerred when the TX FIFO is
>   	 * empty. When that happens we can then pump more data into the FIFO
>   	 */
> -	if (!(msg->flags & I2C_M_RD) &&
> +	if (!process_call && !(msg->flags & I2C_M_RD) &&
>   	    msg->len > iproc_i2c->tx_bytes)
>   		val_intr_en |= BIT(IE_M_TX_UNDERRUN_SHIFT);
>   
> @@ -743,6 +766,8 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
>   	 */
>   	val = BIT(M_CMD_START_BUSY_SHIFT);
>   	if (msg->flags & I2C_M_RD) {
> +		u32 protocol;
> +
>   		iproc_i2c->rx_bytes = 0;
>   		if (msg->len > M_RX_FIFO_MAX_THLD_VALUE)
>   			iproc_i2c->thld_bytes = M_RX_FIFO_THLD_VALUE;
> @@ -758,7 +783,10 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
>   		/* enable the RX threshold interrupt */
>   		val_intr_en |= BIT(IE_M_RX_THLD_SHIFT);
>   
> -		val |= (M_CMD_PROTOCOL_BLK_RD << M_CMD_PROTOCOL_SHIFT) |
> +		protocol = process_call ?
> +				M_CMD_PROTOCOL_PROCESS : M_CMD_PROTOCOL_BLK_RD;
> +
> +		val |= (protocol << M_CMD_PROTOCOL_SHIFT) |
>   		       (msg->len << M_CMD_RD_CNT_SHIFT);
>   	} else {
>   		val |= (M_CMD_PROTOCOL_BLK_WR << M_CMD_PROTOCOL_SHIFT);
> @@ -774,17 +802,31 @@ static int bcm_iproc_i2c_xfer(struct i2c_adapter *adapter,
>   			      struct i2c_msg msgs[], int num)
>   {
>   	struct bcm_iproc_i2c_dev *iproc_i2c = i2c_get_adapdata(adapter);
> -	int ret, i;
> +	bool process_call = false;
> +	int ret;
>   
> -	/* go through all messages */
> -	for (i = 0; i < num; i++) {
> -		ret = bcm_iproc_i2c_xfer_single_msg(iproc_i2c, &msgs[i]);
> -		if (ret) {
> -			dev_dbg(iproc_i2c->device, "xfer failed\n");
> -			return ret;
> +	if (num > 2) {
> +		dev_err(iproc_i2c->device,
> +			"Only support up to 2 messages. Current msg count %d\n",
> +			num);
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (num == 2) {
> +		/* Repeated start, use process call */
> +		process_call = true;
> +		if (msgs[1].flags & I2C_M_NOSTART) {
> +			dev_err(iproc_i2c->device, "Invalid repeated start\n");
> +			return -EOPNOTSUPP;
>   		}
>   	}
>   
> +	ret = bcm_iproc_i2c_xfer_internal(iproc_i2c, msgs, process_call);
> +	if (ret) {
> +		dev_dbg(iproc_i2c->device, "xfer failed\n");
> +		return ret;
> +	}
> +
>   	return num;
>   }
>   
> @@ -806,6 +848,8 @@ static uint32_t bcm_iproc_i2c_functionality(struct i2c_adapter *adap)
>   };
>   
>   static struct i2c_adapter_quirks bcm_iproc_i2c_quirks = {
> +	.flags = I2C_AQ_COMB_WRITE_THEN_READ,
> +	.max_comb_1st_msg_len = M_TX_RX_FIFO_SIZE,
>   	.max_read_len = M_RX_MAX_READ_LEN,
>   };
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
