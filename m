Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27750DEC39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GNFqWij2LnNGtspdN0BZdQaYcxyQTNzUzx6hYho/F8=; b=gmUrx0NhetBFY9
	UhRoQl83sWgzFFw48ytgNP4c0RXFenCseJP+6YaF9DA5jzgdgUMVtVQKASvnJAxWyrO8wt2NjqxJm
	dB6f6EgAt/9TerXkC+KZaxPrw/sl3hMluF1oz2X5VDRQhRDuloTywHaIaFE0j306Wm/OqzuM4aTON
	qAAnNgx7Lvh1FuFsb4/uVGzEa4YFOw7K0dVRMLjhqZmizbOJbAtN4uOCU6yJPp1iBoYpZH7PcBBuf
	u2BMeHWsWSWMsKALHzHbldpR+v5s8LKCc3VSQXDZ7+2c7PQhSMDxGAsN3aHJ87hbLQdlzHxvEhoE1
	R99efZEz6JDWfiOuElmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWoz-0003eZ-Eu; Mon, 21 Oct 2019 12:30:01 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWon-0003dW-9h
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:29:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id e11so5052008wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=V2I2I4mzsYfhdqHPLyU8RHWhZq7LnFLBgUtko9EGZhA=;
 b=vtKTocvVbwjA2WgUF5tke/FjPEG9ytdNFFRdjtq7cQ98tEv5Hp5HkixofdPHJe7BFt
 1fjei8Rjqb2LnCrUuAXLskT/zmYHB0bFr6cqUa9L66j/6PS+CLkCcwZmnXgWfrQpTXIj
 YXBRn9ebR1AYTXubk4N1MrGBhSwu3ZNLgxGl6zKnS9Vsm6BNQR1hI/NJ/MYEQofXHk9+
 Ie83J0kaPMYbDpnOT+g5XXq5n41RwzbzHa+KXVt31ByjW4Ugrv2yrpv890sKwQ7SqxD+
 55os6UMGFeQcgqrEfyaYtsnA0AYA4HsiEzBbvBN9JA+cxTeAqknJTUJdb/MHsh9VXuPK
 xy5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V2I2I4mzsYfhdqHPLyU8RHWhZq7LnFLBgUtko9EGZhA=;
 b=el1OyZnWpaQmqoiCze8Go6EfL43Mw1IaQOn/kNSovHajqKj0G+8JdQdEQq7hoRfqE9
 eQNA5LslaIUaEucr3N7uhdCi1Ov3g4hdhClvLLClNLUEQ06ckRW4FKgufXmEcRuKY+mT
 ChjKntYEOYw60al2RxwwSN/ywpb9gzFIhoGedl2sodj/u8ejQUqrb/pAmIZnOigYMdr/
 vyBEORFubd1a4wMLPJbJFS8EUWFwpbHSCpzSGhlVaf0XWQyeO0hs/xGgfzXwXs5ZizrJ
 vKjwvgXqyNIRlqHcmnBsl9q7sQfEajrud4zFhY3IO/jngXd3tYcsm95hhRwLde/dytmz
 2org==
X-Gm-Message-State: APjAAAWk7QNEcEvdx5K4HbW84cMKhn9dwLhymeLLCH5VycHXeivHBD0s
 kFT2sOsosurvPxJo6gkswfWVkQ==
X-Google-Smtp-Source: APXvYqwb1nujp9zdlC01AqAtWYRUY8PVAzUilrBt/2OEunlktk2NxBiPIElwt6MKo6MY/gJIu39hoQ==
X-Received: by 2002:a5d:49cf:: with SMTP id t15mr18759829wrs.63.1571660987651; 
 Mon, 21 Oct 2019 05:29:47 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id n1sm17157278wrg.67.2019.10.21.05.29.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:29:47 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:29:45 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 5/9] mfd: mfd-core: Remove mfd_clone_cell()
Message-ID: <20191021122945.ys7zn4igstid7yko@holly.lan>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-6-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021105822.20271-6-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_052949_335285_A30064A8 
X-CRM114-Status: GOOD (  20.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 11:58:18AM +0100, Lee Jones wrote:
> Providing a subsystem-level API helper seems over-kill just to save a
> few lines of C-code.  Previous commits saw us convert mfd_clone_cell()'s
> only user over to use a more traditional style of MFD child-device
> registration.  Now we can remove the superfluous helper from the MFD API.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

> ---
>  drivers/mfd/mfd-core.c   | 33 ---------------------------------
>  include/linux/mfd/core.h | 18 ------------------
>  2 files changed, 51 deletions(-)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index 23276a80e3b4..8126665bb2d8 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -382,38 +382,5 @@ int devm_mfd_add_devices(struct device *dev, int id,
>  }
>  EXPORT_SYMBOL(devm_mfd_add_devices);
>  
> -int mfd_clone_cell(const char *cell, const char **clones, size_t n_clones)
> -{
> -	struct mfd_cell cell_entry;
> -	struct device *dev;
> -	struct platform_device *pdev;
> -	int i;
> -
> -	/* fetch the parent cell's device (should already be registered!) */
> -	dev = bus_find_device_by_name(&platform_bus_type, NULL, cell);
> -	if (!dev) {
> -		printk(KERN_ERR "failed to find device for cell %s\n", cell);
> -		return -ENODEV;
> -	}
> -	pdev = to_platform_device(dev);
> -	memcpy(&cell_entry, mfd_get_cell(pdev), sizeof(cell_entry));
> -
> -	WARN_ON(!cell_entry.enable);
> -
> -	for (i = 0; i < n_clones; i++) {
> -		cell_entry.name = clones[i];
> -		/* don't give up if a single call fails; just report error */
> -		if (mfd_add_device(pdev->dev.parent, -1, &cell_entry,
> -				   cell_entry.usage_count, NULL, 0, NULL))
> -			dev_err(dev, "failed to create platform device '%s'\n",
> -					clones[i]);
> -	}
> -
> -	put_device(dev);
> -
> -	return 0;
> -}
> -EXPORT_SYMBOL(mfd_clone_cell);
> -
>  MODULE_LICENSE("GPL");
>  MODULE_AUTHOR("Ian Molton, Dmitry Baryshkov");
> diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
> index b43fc5773ad7..bd8c0e089164 100644
> --- a/include/linux/mfd/core.h
> +++ b/include/linux/mfd/core.h
> @@ -86,24 +86,6 @@ struct mfd_cell {
>  extern int mfd_cell_enable(struct platform_device *pdev);
>  extern int mfd_cell_disable(struct platform_device *pdev);
>  
> -/*
> - * "Clone" multiple platform devices for a single cell. This is to be used
> - * for devices that have multiple users of a cell.  For example, if an mfd
> - * driver wants the cell "foo" to be used by a GPIO driver, an MTD driver,
> - * and a platform driver, the following bit of code would be use after first
> - * calling mfd_add_devices():
> - *
> - * const char *fclones[] = { "foo-gpio", "foo-mtd" };
> - * err = mfd_clone_cells("foo", fclones, ARRAY_SIZE(fclones));
> - *
> - * Each driver (MTD, GPIO, and platform driver) would then register
> - * platform_drivers for "foo-mtd", "foo-gpio", and "foo", respectively.
> - * The cell's .enable/.disable hooks should be used to deal with hardware
> - * resource contention.
> - */
> -extern int mfd_clone_cell(const char *cell, const char **clones,
> -		size_t n_clones);
> -
>  /*
>   * Given a platform device that's been created by mfd_add_devices(), fetch
>   * the mfd_cell that created it.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
