Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CD1BB17B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLtU4eLcN3VDev7qZxMWFZ0+EMb+j4YkpoJXOaMR7cI=; b=QB4VF4e0o09g7C
	iFzp0r90MtXULMGqAImluGCbc0rhUu2byw3RYKaOYfOMGNLX0AhoFD8q/hABp0Vp0AIAgirRj0UEd
	SeviA/cnchnK8pWiXUNw+ddxOIarTI/tW//v2OQzlUiiKBmG07q6hK6BIS77tLpVpFLJWaAnPC1es
	10AaV7oNza3QEwVR5+y2RxK9VyABIdCBjn4cVVpE3x0OX6UAmypnq/VvBY1BIxMntH1llkpcs4qM3
	BEJe/OVwq6GVNDR9B6YT8MX5IRqzv/d18dtuYMYuPByzadbb+KwC3XQ4F7XAwGUir1mI+WL3ESbxh
	/kexcYrB/oQS54/zQ/hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKhJ-0000nf-PC; Mon, 23 Sep 2019 09:31:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKh6-0000lI-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:31:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id a6so9018602wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 02:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=x3JttSp0N6ofBW5LzQ0aulDXvYerTBb+rX2QpQHK3GA=;
 b=wrdIO1PoBF2ps/wgVPQ7uZgIs5Zg0O6ec2Mr5yDnG+hTFoHtn0Gydw0y2TxLNoO7RS
 uzvON/ffkt8vQQwgbhQdf3Dm1NkL2eTxSaLF3pVN9rRInxT2rs8wVgjagDecCPN3VvRv
 IUuyLvPkD1/PlRKdlyhxvW335/fBDsuKetZwZszZNU8n3cBX4CkiA/4RzSb/AsJnPJAZ
 rxQ8xZt3QRrn63KbNcrr2D9xv5NvUpA878d8d37TxTIwnW9UOhO5a92vPuLtccS/mDxw
 3sgvVDUOXZTePA1JrDwk3o6qSml1QB5fvshCdgkifFi0U2UzrXbkKAI6UDibIxNwIiQX
 sq6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=x3JttSp0N6ofBW5LzQ0aulDXvYerTBb+rX2QpQHK3GA=;
 b=pVhcn0Gv81aGU19uLnhkE/QySCE6jrO6rEiLWtjO8/Gj/7CVYpKyoxd1uOs/UjjyYP
 GGsV2xsMnipEaYU6Z7z95Hv1m3+9aDzNTtteEdxJPlWM3FqslJe1EIgLOXFB3pYjIOYM
 JlJhi/Ek1o6p7K3oDYHDAjpLS6C8j4lFdT/cV/e+tHdBQVbsRrecjo7xqTbFkKJXQjEj
 qN8d86gFcDhQZ5VfgWefRh1+TN5wlKZefoISsAJ7k05bvwYZGZLxvzF7O0ujmlwPDTKd
 rja19DXpgP492DugFCIx7ZSRhwN8dngs3FkG1Yv8kajCsg9X/YN58U/xmorjyHJDSB7/
 WpxQ==
X-Gm-Message-State: APjAAAV9ICrUHlS8yquGydWV+1NKWUEWh9OURm4hZ5w+W8wysoMpY9OC
 +Ywt8f8EmJlzbRcoGHoJBOyHyA==
X-Google-Smtp-Source: APXvYqyjmPFntItpiTfyGO7Ke1GU6GekG2Zcx3JJvC7jGTA2yTviIKEUlhQB4iQRI8K745mhVLBAxw==
X-Received: by 2002:a7b:c758:: with SMTP id w24mr11891113wmk.148.1569231102351; 
 Mon, 23 Sep 2019 02:31:42 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v4sm15675554wrg.56.2019.09.23.02.31.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 02:31:41 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 khilman@baylibre.com
Subject: Re: [PATCH 4/5] clk: meson: meson8b: don't register the XTAL clock
 when provided via OF
In-Reply-To: <20190921151223.768842-5-martin.blumenstingl@googlemail.com>
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
 <20190921151223.768842-5-martin.blumenstingl@googlemail.com>
Date: Mon, 23 Sep 2019 11:31:40 +0200
Message-ID: <1jwodzs6ir.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_023144_074388_50B97DD7 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 21 Sep 2019 at 17:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The XTAL clock is an actual crystal on the PCB. Thus the meson8b clock
> driver should not register the XTAL clock - instead it should be
> provided via .dts and then passed to the clock controller.
>
> Skip the registration of the XTAL clock if a parent clock is provided
> via OF. Fall back to registering the XTAL clock if this is not the case
> to keep support for old .dtbs.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/clk/meson/meson8b.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
> index b785b67baf2b..15ec14fde2a0 100644
> --- a/drivers/clk/meson/meson8b.c
> +++ b/drivers/clk/meson/meson8b.c
> @@ -3682,10 +3682,16 @@ static void __init meson8b_clkc_init_common(struct device_node *np,
>  		meson8b_clk_regmaps[i]->map = map;
>  
>  	/*
> -	 * register all clks
> -	 * CLKID_UNUSED = 0, so skip it and start with CLKID_XTAL = 1
> +	 * always skip CLKID_UNUSED and also skip XTAL if the .dtb provides the
> +	 * XTAL clock as input.
>  	 */
> -	for (i = CLKID_XTAL; i < CLK_NR_CLKS; i++) {
> +	if (of_clk_get_parent_count(np))

If we are going for this, I'd prefer if could explicity check for the
clock named "xtal" instead of just checking if DT has clocks.

> +		i = CLKID_PLL_FIXED;
> +	else
> +		i = CLKID_XTAL;
> +
> +	/* register all clks */
> +	for (; i < CLK_NR_CLKS; i++) {
>  		/* array might be sparse */
>  		if (!clk_hw_onecell_data->hws[i])
>  			continue;
> -- 
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
