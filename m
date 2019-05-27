Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091342B912
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 18:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgD4qUeliLwJRsPnZW3RwWvRCu4IOxlBoNs+8RRPXvI=; b=ft0NNpCKtYx6Sj
	HG/w0C2HHdlBzRUBAU3fYmIWwf51ByTUrGuYf5e2VDrjGs9n3qGkMnepidjpuHClAi/roHyCuiVrU
	9wKbpoL3xXqzpPFV4+ko4MRijiWE0qVj4TrN+4Z+Q/AfBd96wIKs7PdXye8feVjF3mIE5frw3mHi+
	So5CAP2R+NvWfJT1Ibphj4Nfn8CyEfbn6HtPrrgB3KcIt+FvX68tU8NwGa4rGYd9Pc4U4Uua/6wOQ
	mCuHqF/mzU+u5IrCg77M0akkZtRyPlIYhKHi86EO4gfbAjTj+v01IOM73b8YW3FZ6MNfZQGmUxOab
	i8lT9EmA4R1T75TyMfcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVISZ-0005eT-2k; Mon, 27 May 2019 16:26:51 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVISR-0005e8-MR
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 16:26:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id n2so9337837pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 09:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GCuK3p21FWh8C1jBpeKRVhZCNmJ3Duy5wpqV3XNIhVs=;
 b=U2YsqyHk2DfBKBpH9uI2gnxYK3Gs1/2299Hnfr7zbQcDMHv/AREw5ncX/9pCt6v6uP
 8Inkaplt43pYazSA4lq28wo9pjZK7yyTsJdg+fhjEe9l8f57qDm0PLAbe8q+JWpj//IE
 WESawLPI3p5Ge0awjWek1a3u9u+WfZkEd8IaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GCuK3p21FWh8C1jBpeKRVhZCNmJ3Duy5wpqV3XNIhVs=;
 b=ZI9bGRAjvXdNW6jbi9GizJsbNQ6b4kg7ln5/uMrCkWzSvz1fInkBF8qSSF54uc2DaN
 XlFGlY9DIqovF6QZpJcIddfUFH9T3NMEnO2sLLC0A4BzpegznkD8rorjrLKTAEWUsfXT
 QKr2OiYMkN5PZVqeaYxErsc5gDSXbxn9EdUHmPYHIb0KoUpRI+T1VJJGpeb7drcNauKJ
 6fXyUnNSZixzLt137Exl3j/TqbvY7WaIEJpD18srwmPw81qvZflhaN4HIngqwfU+JsoD
 OFIA9sVo2ydikIEqeNOx2vJH0bRI/IsxKJVQ+xjlDEisSSj6A357ySh9mpFhXKrIGdlx
 yUCw==
X-Gm-Message-State: APjAAAUgG8YndwUduqtHua0ck+26mM1LsaGvqh2ZTAo2e+6Sb8JmHc3x
 LIlAqnbl7uJpfjkPVzwPFq/rug==
X-Google-Smtp-Source: APXvYqwwfVCYWGhx+DD80Zs0gpD98qN9kd89HRShl17IHi2nfdS1mx1UrunJ69FFyvDwConZzQ91Pw==
X-Received: by 2002:aa7:8f16:: with SMTP id x22mr67499207pfr.202.1558974402435; 
 Mon, 27 May 2019 09:26:42 -0700 (PDT)
Received: from [10.136.8.252] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id h14sm9859513pgj.8.2019.05.27.09.26.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 09:26:41 -0700 (PDT)
Subject: Re: [PATCH 1/1] i2c: iproc: Add multi byte read-write support for
 slave mode
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <1557375708-14830-1-git-send-email-rayagonda.kokatanur@broadcom.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <7e073311-fff6-736a-5ae2-a29ceac25f3b@broadcom.com>
Date: Mon, 27 May 2019 09:26:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1557375708-14830-1-git-send-email-rayagonda.kokatanur@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_092643_744908_21704066 
X-CRM114-Status: GOOD (  25.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-i2c@vger.kernel.org, Michael Cheng <ccheng@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rayagonda,

On 5/8/2019 9:21 PM, Rayagonda Kokatanur wrote:
> Add multiple byte read-write support for slave mode.
> 
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> ---
>  drivers/i2c/busses/i2c-bcm-iproc.c | 117 +++++++++++++++++--------------------
>  1 file changed, 53 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> index a845b8d..2c7f145 100644
> --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> @@ -165,12 +165,6 @@ enum i2c_slave_read_status {
>  	I2C_SLAVE_RX_END,
>  };
>  
> -enum i2c_slave_xfer_dir {
> -	I2C_SLAVE_DIR_READ = 0,
> -	I2C_SLAVE_DIR_WRITE,
> -	I2C_SLAVE_DIR_NONE,
> -};
> -
>  enum bus_speed_index {
>  	I2C_SPD_100K = 0,
>  	I2C_SPD_400K,
> @@ -203,7 +197,6 @@ struct bcm_iproc_i2c_dev {
>  	struct i2c_msg *msg;
>  
>  	struct i2c_client *slave;
> -	enum i2c_slave_xfer_dir xfer_dir;
>  
>  	/* bytes that have been transferred */
>  	unsigned int tx_bytes;
> @@ -219,7 +212,8 @@ struct bcm_iproc_i2c_dev {
>  		| BIT(IS_M_RX_THLD_SHIFT))
>  
>  #define ISR_MASK_SLAVE (BIT(IS_S_START_BUSY_SHIFT)\
> -		| BIT(IS_S_RX_EVENT_SHIFT) | BIT(IS_S_RD_EVENT_SHIFT))
> +		| BIT(IS_S_RX_EVENT_SHIFT) | BIT(IS_S_RD_EVENT_SHIFT)\
> +		| BIT(IS_S_TX_UNDERRUN_SHIFT))
>  
>  static int bcm_iproc_i2c_reg_slave(struct i2c_client *slave);
>  static int bcm_iproc_i2c_unreg_slave(struct i2c_client *slave);
> @@ -297,15 +291,11 @@ static void bcm_iproc_i2c_slave_init(
>  	/* clear all pending slave interrupts */
>  	iproc_i2c_wr_reg(iproc_i2c, IS_OFFSET, ISR_MASK_SLAVE);
>  
> -	/* Enable interrupt register for any READ event */
> -	val = BIT(IE_S_RD_EVENT_SHIFT);
>  	/* Enable interrupt register to indicate a valid byte in receive fifo */
> -	val |= BIT(IE_S_RX_EVENT_SHIFT);
> +	val = BIT(IE_S_RX_EVENT_SHIFT);
>  	/* Enable interrupt register for the Slave BUSY command */
>  	val |= BIT(IE_S_START_BUSY_SHIFT);
>  	iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
> -
> -	iproc_i2c->xfer_dir = I2C_SLAVE_DIR_NONE;
>  }
>  
>  static void bcm_iproc_i2c_check_slave_status(
> @@ -314,8 +304,11 @@ static void bcm_iproc_i2c_check_slave_status(
>  	u32 val;
>  
>  	val = iproc_i2c_rd_reg(iproc_i2c, S_CMD_OFFSET);
> -	val = (val >> S_CMD_STATUS_SHIFT) & S_CMD_STATUS_MASK;
> +	/* status is valid only when START_BUSY is cleared after it was set */
> +	if (val & BIT(S_CMD_START_BUSY_SHIFT))
> +		return;
>  
> +	val = (val >> S_CMD_STATUS_SHIFT) & S_CMD_STATUS_MASK;
>  	if (val == S_CMD_STATUS_TIMEOUT) {
>  		dev_err(iproc_i2c->device, "slave random stretch time timeout\n");
>  
> @@ -327,70 +320,66 @@ static void bcm_iproc_i2c_check_slave_status(
>  }
>  
>  static bool bcm_iproc_i2c_slave_isr(struct bcm_iproc_i2c_dev *iproc_i2c,
> -				u32 status)
> +				    u32 status)
>  {
> -	u8 value;
>  	u32 val;
> -	u32 rd_status;
> -	u32 tmp;
> +	u8 value, rx_status;
>  
> -	/* Start of transaction. check address and populate the direction */
> -	if (iproc_i2c->xfer_dir == I2C_SLAVE_DIR_NONE) {
> -		tmp = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
> -		rd_status = (tmp >> S_RX_STATUS_SHIFT) & S_RX_STATUS_MASK;
> -		/* This condition checks whether the request is a new request */
> -		if (((rd_status == I2C_SLAVE_RX_START) &&
> -			(status & BIT(IS_S_RX_EVENT_SHIFT))) ||
> -			((rd_status == I2C_SLAVE_RX_END) &&
> -			(status & BIT(IS_S_RD_EVENT_SHIFT)))) {
> -
> -			/* Last bit is W/R bit.
> -			 * If 1 then its a read request(by master).
> -			 */
> -			iproc_i2c->xfer_dir = tmp & SLAVE_READ_WRITE_BIT_MASK;
> -			if (iproc_i2c->xfer_dir == I2C_SLAVE_DIR_WRITE)
> -				i2c_slave_event(iproc_i2c->slave,
> -					I2C_SLAVE_READ_REQUESTED, &value);
> -			else
> -				i2c_slave_event(iproc_i2c->slave,
> +	/* Slave RX byte receive */
> +	if (status & BIT(IS_S_RX_EVENT_SHIFT)) {
> +		val = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
> +		rx_status = (val >> S_RX_STATUS_SHIFT) & S_RX_STATUS_MASK;
> +		if (rx_status == I2C_SLAVE_RX_START) {
> +			/* Start of SMBUS for Master write */
> +			i2c_slave_event(iproc_i2c->slave,
>  					I2C_SLAVE_WRITE_REQUESTED, &value);
> -		}
> -	}
>  
> -	/* read request from master */
> -	if ((status & BIT(IS_S_RD_EVENT_SHIFT)) &&
> -		(iproc_i2c->xfer_dir == I2C_SLAVE_DIR_WRITE)) {
> -		i2c_slave_event(iproc_i2c->slave,
> -			I2C_SLAVE_READ_PROCESSED, &value);
> -		iproc_i2c_wr_reg(iproc_i2c, S_TX_OFFSET, value);
> +			val = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
> +			value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
> +			i2c_slave_event(iproc_i2c->slave,
> +					I2C_SLAVE_WRITE_RECEIVED, &value);
> +		} else if (status & BIT(IS_S_RD_EVENT_SHIFT)) {
> +			/* Start of SMBUS for Master Read */
> +			i2c_slave_event(iproc_i2c->slave,
> +					I2C_SLAVE_READ_REQUESTED, &value);
> +			iproc_i2c_wr_reg(iproc_i2c, S_TX_OFFSET, value);
>  
> -		val = BIT(S_CMD_START_BUSY_SHIFT);
> -		iproc_i2c_wr_reg(iproc_i2c, S_CMD_OFFSET, val);
> -	}
> +			val = BIT(S_CMD_START_BUSY_SHIFT);
> +			iproc_i2c_wr_reg(iproc_i2c, S_CMD_OFFSET, val);
>  
> -	/* write request from master */
> -	if ((status & BIT(IS_S_RX_EVENT_SHIFT)) &&
> -		(iproc_i2c->xfer_dir == I2C_SLAVE_DIR_READ)) {
> -		val = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
> -		/* Its a write request by Master to Slave.
> -		 * We read data present in receive FIFO
> -		 */
> -		value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
> +			/*
> +			 * Enable interrupt for TX FIFO becomes empty and
> +			 * less than PKT_LENGTH bytes were output on the SMBUS
> +			 */
> +			val = iproc_i2c_rd_reg(iproc_i2c, IE_OFFSET);
> +			val |= BIT(IE_S_TX_UNDERRUN_SHIFT);
> +			iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
> +		} else {
> +			/* Master write other than start */
> +			value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
> +			i2c_slave_event(iproc_i2c->slave,
> +					I2C_SLAVE_WRITE_RECEIVED, &value);
> +		}
> +	} else if (status & BIT(IS_S_TX_UNDERRUN_SHIFT)) {
> +		/* Master read other than start */
>  		i2c_slave_event(iproc_i2c->slave,
> -			I2C_SLAVE_WRITE_RECEIVED, &value);
> -
> -		/* check the status for the last byte of the transaction */
> -		rd_status = (val >> S_RX_STATUS_SHIFT) & S_RX_STATUS_MASK;
> -		if (rd_status == I2C_SLAVE_RX_END)
> -			iproc_i2c->xfer_dir = I2C_SLAVE_DIR_NONE;
> +				I2C_SLAVE_READ_PROCESSED, &value);
>  
> -		dev_dbg(iproc_i2c->device, "\nread value = 0x%x\n", value);
> +		iproc_i2c_wr_reg(iproc_i2c, S_TX_OFFSET, value);
> +		val = BIT(S_CMD_START_BUSY_SHIFT);
> +		iproc_i2c_wr_reg(iproc_i2c, S_CMD_OFFSET, val);
>  	}
>  
>  	/* Stop */
>  	if (status & BIT(IS_S_START_BUSY_SHIFT)) {
>  		i2c_slave_event(iproc_i2c->slave, I2C_SLAVE_STOP, &value);
> -		iproc_i2c->xfer_dir = I2C_SLAVE_DIR_NONE;
> +		/*
> +		 * Enable interrupt for TX FIFO becomes empty and
> +		 * less than PKT_LENGTH bytes were output on the SMBUS
> +		 */
> +		val = iproc_i2c_rd_reg(iproc_i2c, IE_OFFSET);
> +		val &= ~BIT(IE_S_TX_UNDERRUN_SHIFT);
> +		iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
>  	}
>  
>  	/* clear interrupt status */
> 

This was already reviewed internally. I just reviewed it again and it
looks fine to me. Thanks.

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
