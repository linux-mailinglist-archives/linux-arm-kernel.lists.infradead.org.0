Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3408A44C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 19:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Za2zjDY565qmKGODkbGvKyLreRMX2PPmKWTdAHoaRE=; b=oFM16ueg+TtXKMJFyj3QP3C67
	O8KZxmJJJRwMm/Nxzwy9RbbPR4QF5VYRlrCpG250WbslWR/3L3wxnOLu0ivPFcZTBA111vyYmFeHc
	9YB7yNUZNAPIb7pWMPCLGOeYJN84LBxYcUI/e4QU3GykJoX/+atKg7wqez7i3qrBDyhIqSL6gD+qN
	ryrYxf2cpPAGq3U/7pANDFlIQMiD0pGJ9JtaimwKnctk4+4+zgwQC9LiJks/0kfmymHy2TCOYys61
	pR3g7CDOijzzyd/dciESrZmULSwHFr49tLCIwgk+a4gIOYnTzsaCCsehgy3vRp6tgQv4UH9FGICBp
	SKIU3cKlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxE8Q-0004mL-Kd; Mon, 12 Aug 2019 17:29:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE8G-0004m1-VP
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 17:29:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id z1so105283880wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 10:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gLmU/oA3BCk2uiOw0NCotyQaVZi//v3NX7oeTBpbzPI=;
 b=HRqI7gpgVlreUi1D++HQHECQSCm+7bHRVkxlJA31xjKyAOIIwHmSF0LjBvN65ZEOzo
 xj0MNruGBDagLsis6PIDdhDXNL56WaiUmZalJAk7WI+Eu4argckKozpmRBWBGvGat+Ps
 jB1DJLIHnq73jpePKgYdnjSfprtsMhRY1uvCY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gLmU/oA3BCk2uiOw0NCotyQaVZi//v3NX7oeTBpbzPI=;
 b=LJNxTMCfgR8gQKs/FU8CfsSuLUxjAOQJnJDRNuDAL3kL7SOIX5+KPKaHI68/VLWIwG
 zhkI/CfKuNJV2LijGB0uGrcNMVcY1ZlxAz7/GWQ6AsH+m2bvC4xS9uej/PUbT5pi6MoC
 FZ/aShfQAJjYUzgbjrFxvKyurFgtrHxSGL+lkIIVfEoocONMAmpvRuwH4GnlNJr5ZUy2
 mnTbpRGw9yDIKuIvVUSx4XO2cQhksij5PLI02QxfBV0Oe0ffG4J8X8x7V2NK07+QKasJ
 MHFEm7cFSdEp+4LL7E9LLRU/pyq+Utzq/1mrs9CrIWdNJkeX/8hJOMN1BUSOFfvIkdgQ
 +Reg==
X-Gm-Message-State: APjAAAUsodm1VABUomvXQOnxb7WVyCZs/MGOD3xpd4wEPKp5xOZyfm3P
 mKIvKFIxRq4lqxc6RbiysXWsKQ==
X-Google-Smtp-Source: APXvYqxHJNwUpwVM9tbfVDO/o2ELdYI+GRRNwxKxz0h2W8TZ4S/n1eM8b2GMn7in/kY22iY0PrtG+w==
X-Received: by 2002:a5d:4f8e:: with SMTP id d14mr10405833wru.207.1565630958564; 
 Mon, 12 Aug 2019 10:29:18 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id a64sm606796wmf.1.2019.08.12.10.29.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 10:29:18 -0700 (PDT)
Subject: Re: [PATCH v1 1/2] i2c: iproc: Stop advertising support of SMBUS
 quick cmd
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <1565235473-28461-2-git-send-email-rayagonda.kokatanur@broadcom.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <201903a5-c517-f436-0337-4110165d18a0@broadcom.com>
Date: Mon, 12 Aug 2019 10:29:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565235473-28461-2-git-send-email-rayagonda.kokatanur@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_102921_019888_DC14089F 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/7/19 8:37 PM, Rayagonda Kokatanur wrote:
> From: Lori Hikichi <lori.hikichi@broadcom.com>
> 
> The driver does not support the SMBUS Quick command so remove the
> flag that indicates that level of support.
> By default the i2c_detect tool uses the quick command to try and
> detect devices at some bus addresses.  If the quick command is used
> then we will not detect the device, even though it is present.
> 
> Fixes: e6e5dd3566e0 (i2c: iproc: Add Broadcom iProc I2C Driver)
> 
> Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---
>   drivers/i2c/busses/i2c-bcm-iproc.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> index d7fd76b..19ef2b0 100644
> --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> @@ -790,7 +790,10 @@ static int bcm_iproc_i2c_xfer(struct i2c_adapter *adapter,
>   
>   static uint32_t bcm_iproc_i2c_functionality(struct i2c_adapter *adap)
>   {
> -	u32 val = I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
> +	u32 val;
> +
> +	/* We do not support the SMBUS Quick command */
> +	val = I2C_FUNC_I2C | (I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
>   
>   	if (adap->algo->reg_slave)
>   		val |= I2C_FUNC_SLAVE;
> 

Change looks good to me. Thanks.

Reviewed-by: Ray Jui <ray.jui@broadcom.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
