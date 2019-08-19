Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE56E94F13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 22:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFejyRxcW54n46qBMKX2ttAvVcsbOnzp+TVrdhxag2M=; b=avECrMT48F4yD9
	ixqjfAIJr1sNoVlCV04ypupCPovmTpYG0VR2f9zt2odZusoRcPuaByKp82Omzf8Cg2/ttxVFhcWsy
	dLR8rqNBOrVKBLGBCJ6JswQz7uHgX3NqbudRTZdlamF/dng9+k7KPmFrTpPT+lu+UF0HLGIDCuuRI
	xJM9ZXCNKrxSKTiKUydddiCeboE9H64pC2tB2iVuwqPrYEJ3LDAnO9BKoSwixb3HxebKtG1jJv2+4
	DIn5ojtHs5wweMIwLMjeBAvZtBWOMacPnVucFxN9evkQj6LxLAsiXN9OqTvgox8MaoHXZ1N1iytvj
	wWJpB2SDOb87PICqOcKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzoLV-0005rG-Q0; Mon, 19 Aug 2019 20:33:41 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzoLK-0005qp-17
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 20:33:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id f19so1106609plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=C0YdE7WLdR5eShoGfGzaTJbbzQCql5KdO1zzWvfao/I=;
 b=uKxM19xm2s7/cFwYcRITgshuU5SM6FPO78IQuoXe3YJJ2FoPRFyK+9UwydxmEwTzz0
 aMjktkxdi6yTQR2//FZBqty3r88nNwi039t9rDaAtBq7l3Wm24dAqe29F+xcwY1fG1D3
 34F/z9GimHbQTFjF/W/A1hA6dXjCyb++iaeYtBpabSwyBjcBmGN+VX2HollYI3DooMyU
 MG4d6fP2IIy0KsSYDcnEtDduKWOk9J1vu0v88ithmAacP6Gbqk2L7X4xZ7+/ZWnBx4OQ
 NC6+OtAyYV2WJV3xgtmNTPM468RDTHDTUkCaKCvrAY5cbYt2SH/Hra4ek62jbmL6uMsm
 iWCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C0YdE7WLdR5eShoGfGzaTJbbzQCql5KdO1zzWvfao/I=;
 b=GA7fLEcvS1/YgQbOu8lsJRjih3iF9Ynz5JVrbCO0WhZJ/cRb+4oYAQdJMbMATay2g4
 s8+Gn56HE7Xl6Ttok0MOM4I8A3113+/d2oAWFs5GawODypSrjxzCavHJ4LYU9YT03UPd
 mubLoCbWketma0fxSnYJhOV05LXY8UOm5DMftDaktsJQCVaYEFTwFCqCx0BIcwpsNVYe
 Yh3XrtQ93o40jdJwoKYRP7MomocJBSK2qjLbiEAJmunP0R7MSnWN/m1QAWPe537F3Pm9
 0zVDv1MbhIA58B0zkBUY4nPdUiMtgCO6qbKinxWQALQuszEXCNz+pCj01nRs+k0Ed63E
 HDNw==
X-Gm-Message-State: APjAAAWAFiULoaSEshEdQiTkc9e1tEflTMak6vSJ+vUl2BS8c2v4oeQ4
 8gJUGVVuSX1jfaxwHTj01dHkAQ==
X-Google-Smtp-Source: APXvYqzm51FMfY0i8xpqcKW5PlL/Gu2LoqQLJ+6mU4zb/yf7lXfYTguv7N7bV/JNozv1azQ7wUodJg==
X-Received: by 2002:a17:902:684f:: with SMTP id
 f15mr24810884pln.332.1566246807635; 
 Mon, 19 Aug 2019 13:33:27 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h11sm16844370pfn.120.2019.08.19.13.33.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 19 Aug 2019 13:33:27 -0700 (PDT)
Date: Mon, 19 Aug 2019 14:33:25 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
Subject: Re: coresight: Add ETM4.1 support for ThunderX2
Message-ID: <20190819203325.GB8268@xps15>
References: <1565877215-1331-1-git-send-email-tanmay@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565877215-1331-1-git-send-email-tanmay@marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_133330_213743_71B94466 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tomasz Nowicki <tnowicki@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Same comment as the previous patch along with the following...

On Thu, Aug 15, 2019 at 01:53:46PM +0000, Tanmay Vilas Kumar Jagdale wrote:
> Add ETM4.1 periperhal ID for Marvell's ThunderX2 chip.
> 
> Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
> ---
>  drivers/hwtracing/coresight/coresight-etm4x.c | 2 ++
>  drivers/hwtracing/coresight/coresight-etm4x.h | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 7bcac8896fc1..ac3bd617907b 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -58,6 +58,7 @@ static bool etm4_arch_supported(u8 arch)
>  	/* Mask out the minor version number */
>  	switch (arch & 0xf0) {
>  	case ETM_ARCH_V4:
> +	case ETM_ARCH_V4_1:

Why add ETM_ARCH_V4_1 when the switch statement strips off the first byte?

Look at[1], someone already added support for 4.2.

[1]. 5666dfd1d8a4 coresight: etm4x: Add support to enable ETMv4.2


>  		break;
>  	default:
>  		return false;
> @@ -1196,6 +1197,7 @@ static const struct amba_id etm4_ids[] = {
>  	CS_AMBA_ID(0x000bb95e),		/* Cortex-A57 */
>  	CS_AMBA_ID(0x000bb95a),		/* Cortex-A72 */
>  	CS_AMBA_ID(0x000bb959),		/* Cortex-A73 */
> +	CS_AMBA_ID(0x000cc0af),		/* Marvell ThunderX2 */

I suspect this processor also has "coresight-cpu-debug" IPs.  If that is the
case it is very possible they both have the same CID and a UCI (see next line)
is required.

>  	CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),	/* Cortex-A35 */
>  	{},
>  };

Thanks,
Mathieu

> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
> index 4523f10ddd0f..03369e56b2eb 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.h
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.h
> @@ -137,6 +137,7 @@
>  #define ETM_MAX_SS_CMP			8
>  
>  #define ETM_ARCH_V4			0x40
> +#define ETM_ARCH_V4_1			0x41
>  #define ETMv4_SYNC_MASK			0x1F
>  #define ETM_CYC_THRESHOLD_MASK		0xFFF
>  #define ETM_CYC_THRESHOLD_DEFAULT       0x100
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
