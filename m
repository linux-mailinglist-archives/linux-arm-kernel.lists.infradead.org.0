Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF8F8A455
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 19:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BSCnG3NW4Lbkc/LTMgwq/HcHHVpvSa+VE+i+EADwUN0=; b=VUgmReUgQs7ROLS19DnFwDZvQ
	rOQ1m1mR6YmHltks9WLJ7gugzkwIuOOEjcrAVCjYZlsPcHhfwEOlZhpNAIvvmJ3T7OEe13+g66K1q
	sifMgadrgLplFGiVvsrwej/6w1xyjGbHqavnM3wN8KYsraf+01OAErsUxcd2BHKli2wlxxA/pVxk4
	ifWE9L84hB/NaOl0pDXZa0dX0ANWmrO8eBB94yVbR9lpHmPvnTLNhzknQFFP7y3WwqT4/ezaNFz3t
	9rWGl4BMvxJMxqTDzDV1NdoXB4dJvM8TVEpbveFycKQ0qzx0bbmPcosVmfc5sE2Ixfz7XxBy7GTSx
	ZKRYndQUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxE8y-00051j-Fn; Mon, 12 Aug 2019 17:30:04 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE8m-000510-Jw
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 17:29:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id p74so291324wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 10:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ByFUgdhbenoqEac047fOWBGeHpky4WQIPNsQ5F/8hHw=;
 b=OMiVvuQ6ojoYr2YaifiVWycNEMTTYrBGavkydOe6vRXCe5m9lxrGeQZD/i2qxrv3S6
 +dxN1eFQvkk00T5cXg2ceO/GOTDj+MNPm959qjfJFzbl4DrPw6VLexlrq9ZhmPKLSf79
 YyXON1FHSIP9zt2EHjOA+Ii8cCDWH1NA25tDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ByFUgdhbenoqEac047fOWBGeHpky4WQIPNsQ5F/8hHw=;
 b=dL9LGsN24uNOTcNbHZ79mlHPQ0mmeJkDADZcdaDo+QSWTfD9X0XmvaHBIk3mx01ZY4
 RLPFs6JrM5JJvQSvwzqfKzM4UZWHukxUK+/gacx9WcihVwXBsmu3xGJcZc+/ZIw8PdFN
 R3lwLo7MYdJAJgkaFZXid0R9KtoCkmuZ0TCxgHkj/AX368jMhhK/Vs9gz7zzyeXiu/1Z
 tMvpkk+43MTrgjGhMhibCzwdldvxOMDNc+nWUacGNnxl0iYtbhUgwYEoJerJfwIpKZEF
 Gr19qhRA6keCtLEqf4wlIukGJPgNT63QPqZnEmiXmRUYlddReEyDlIwOGVih4Ky1lqCc
 eeKQ==
X-Gm-Message-State: APjAAAUrJI6T8GO3fDZjhuBcooI+KStsxNg1BbUlF0MzxveJ5VbeQ5WO
 8aupq4K96huOl7oRtjZA2hoTRg==
X-Google-Smtp-Source: APXvYqwffxgDJUFgKjRnlRgtgc57iuw+e8GldResFtDU49A9XNzUc1EaUB1YKilvT4b09fNs8Ut0Fw==
X-Received: by 2002:a05:600c:24a:: with SMTP id 10mr422398wmj.7.1565630990279; 
 Mon, 12 Aug 2019 10:29:50 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id t14sm12277331wrv.12.2019.08.12.10.29.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 10:29:49 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] i2c: iproc: Add full name of devicetree node to
 adapter name
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <1565235473-28461-3-git-send-email-rayagonda.kokatanur@broadcom.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <76f6d006-a0af-85ba-f893-f60e60bfc20d@broadcom.com>
Date: Mon, 12 Aug 2019 10:29:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565235473-28461-3-git-send-email-rayagonda.kokatanur@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_102952_651529_AB37A4C6 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
> Add the full name of the devicetree node to the adapter name.
> Without this change, all adapters have the same name making it difficult
> to distinguish between multiple instances.
> The most obvious way to see this is to use the utility i2c_detect.
> e.g. "i2c-detect -l"
> 
> Before
> i2c-1 i2c Broadcom iProc I2C adapter I2C adapter
> i2c-0 i2c Broadcom iProc I2C adapter I2C adapter
> 
> After
> i2c-1 i2c Broadcom iProc (i2c@e0000) I2C adapter
> i2c-0 i2c Broadcom iProc (i2c@b0000) I2C adapter
> 
> Now it is easy to figure out which adapter maps to a which DT node.
> 
> Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---
>   drivers/i2c/busses/i2c-bcm-iproc.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> index 19ef2b0..183b220 100644
> --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> @@ -922,7 +922,9 @@ static int bcm_iproc_i2c_probe(struct platform_device *pdev)
>   
>   	adap = &iproc_i2c->adapter;
>   	i2c_set_adapdata(adap, iproc_i2c);
> -	strlcpy(adap->name, "Broadcom iProc I2C adapter", sizeof(adap->name));
> +	snprintf(adap->name, sizeof(adap->name),
> +		"Broadcom iProc (%s)",
> +		of_node_full_name(iproc_i2c->device->of_node));
>   	adap->algo = &bcm_iproc_algo;
>   	adap->quirks = &bcm_iproc_i2c_quirks;
>   	adap->dev.parent = &pdev->dev;
> 

Looks good, thanks!

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
