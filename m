Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0407B493
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 22:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChwV/csIKHe2WcqBZxCKlybA1hXqpIsSiydAaY8t3J0=; b=bicJFqjo3HOIwm
	GVvMaWmJ9xbyLpZuXIQAMAP8KO4YGO7JEyffO7H7GkDaw0BpHKooW19srH4eyCxbvbr9AnYsH7Zn8
	QeP7DUyNNMvjzn9kEWJpQ6FnA2e9CEAJnYzWvUOEfj+Ai+Nro0o+w7xYqg4jRhmN5HVd5iRzv7P80
	ZUvkJ6AhIzIwsCTIulBsJL8ZUMGfntr8h+DhOEjhjbtV7AAdYFpaThhLpRWj9zMoHLGLM2Lp56f25
	+fqCnwr2gGD54DdFxsHLgZGcncIq3/vrYK9Va9GjQd+s0bXcIgjaJIPv14kujuvb99SCnxS38y6OY
	P4i0m++wzOCgdmim2AMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZ80-0008Kz-Im; Tue, 30 Jul 2019 20:53:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZ7h-0008A8-0S
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 20:53:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so20326498pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 13:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RGi8YSyqfGHFxZ4qxqzTrqnfCbtBm7VBWTegRdqBqJA=;
 b=M54UzvXvvuwPcYffLeUbPfMGWrV7EgGeFXXZay6Jp7eWsxe24wEwnNq3h0IqfHEPtt
 j97FjJBplbL+HW2M+qoa/c/X8iqJ15uDqlq7DKkAkn23eP257BlqCsKNGjDp2oFfYRYG
 FeERJlxkUNpwBIJarL248E21HoCUXOTs58nds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RGi8YSyqfGHFxZ4qxqzTrqnfCbtBm7VBWTegRdqBqJA=;
 b=rJSKfDFz523PAyUPFtNSjE8CM0duxhB3Nzh7WhJR6OSGXSDFYG0oy8md1z2UQT/+Ry
 0c9BMVpetnis6uiSWtk7QWMyKH59nZ4DKgd2bDduusxKoZXk4dNegwlFtQHk29rDEyIc
 cgPUw9Jnc0gV/mevsf4sOVP3CKCvgdDCEWtWNLWpoJQgDh5CnQb3QvO/MEsnfOiVZnRW
 usVsOspKF5aZ9g7SWqpSJG2K9DpSka5ao+NraczAYrxNzAQqzxLTdQViag/Sf0YlGF8r
 hQf0DXLHo8Z53e5Mu9xAE/gX+TTA8Qh5OamlUYycX3USXxCHmhyNht92Jfta7COtQax4
 HSHw==
X-Gm-Message-State: APjAAAX0s/gztEFcsiWDokD3IJicB6vTcETirVxvfo9S2wnseM06PnjL
 4YR8Jz/mXq3UnxATrpfG9h62VQ==
X-Google-Smtp-Source: APXvYqzh+qauyPlzUnXvJLah95lGU4CLhUnpH5T201YFRASrlH3tCF34TwBU9lCOYSYPr9aw5WG+fg==
X-Received: by 2002:a17:90a:d998:: with SMTP id
 d24mr91210113pjv.89.1564520007294; 
 Tue, 30 Jul 2019 13:53:27 -0700 (PDT)
Received: from [10.136.8.239] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id z4sm55247034pgp.80.2019.07.30.13.53.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 13:53:26 -0700 (PDT)
Subject: Re: [PATCH v1 1/1] i2c: iproc: Fix i2c master read more than 63 bytes
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <1563956907-21255-1-git-send-email-rayagonda.kokatanur@broadcom.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <8b8d83ce-70ba-eacd-7ea3-6f8425f1e0fc@broadcom.com>
Date: Tue, 30 Jul 2019 13:53:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563956907-21255-1-git-send-email-rayagonda.kokatanur@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_135329_098688_EFE8633F 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rayagonda,

On 7/24/2019 1:28 AM, Rayagonda Kokatanur wrote:
> Use SMBUS_MASTER_DATA_READ.MASTER_RD_STATUS bit to check for RX
> FIFO empty condition because SMBUS_MASTER_FIFO_CONTROL.MASTER_RX_PKT_COUNT
> is not updated for read >= 64 bytes. This fixes the issue when trying to
> read from the I2C slave more than 63 bytes.
> 
> Fixes: c24b8d574b7c ("i2c: iproc: Extend I2C read up to 255 bytes")
> 
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---
>  drivers/i2c/busses/i2c-bcm-iproc.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> index 2c7f145..d7fd76b 100644
> --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> @@ -392,16 +392,18 @@ static bool bcm_iproc_i2c_slave_isr(struct bcm_iproc_i2c_dev *iproc_i2c,
>  static void bcm_iproc_i2c_read_valid_bytes(struct bcm_iproc_i2c_dev *iproc_i2c)
>  {
>  	struct i2c_msg *msg = iproc_i2c->msg;
> +	uint32_t val;
>  
>  	/* Read valid data from RX FIFO */
>  	while (iproc_i2c->rx_bytes < msg->len) {
> -		if (!((iproc_i2c_rd_reg(iproc_i2c, M_FIFO_CTRL_OFFSET) >> M_FIFO_RX_CNT_SHIFT)
> -		      & M_FIFO_RX_CNT_MASK))
> +		val = iproc_i2c_rd_reg(iproc_i2c, M_RX_OFFSET);
> +
> +		/* rx fifo empty */
> +		if (!((val >> M_RX_STATUS_SHIFT) & M_RX_STATUS_MASK))
>  			break;
>  
>  		msg->buf[iproc_i2c->rx_bytes] =
> -			(iproc_i2c_rd_reg(iproc_i2c, M_RX_OFFSET) >>
> -			M_RX_DATA_SHIFT) & M_RX_DATA_MASK;
> +			(val >> M_RX_DATA_SHIFT) & M_RX_DATA_MASK;
>  		iproc_i2c->rx_bytes++;
>  	}
>  }
> 

Thanks for the fix. This fix looks good to me!

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
