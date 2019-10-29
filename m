Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4114E83FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 10:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NuQ/bmXvdNOCyNrzML2DepTP/LILTJLtWsxuB8PZt4=; b=kF3yZPQCxItpff
	uASuBpz26sx1MQdjQB1CZcA/M2QgL8Ab7YXQytyo2Fv7RRDyeO7TZtgb58oTMYbIHT2g0XAcYkmDi
	wZ77+J7ySQYaAq1i9adYBSTd/+jtJfHPURLef3dsfqPeqt46FQ+alr7uHaAepmbKR5YdFy9mbrHz7
	DHuGJUvMFQdxREfwddfjBomI7kvdFZNguZy3Wx26EZi3SsLQbr3Q6hjDjXZny7ASOFVKztKPFvMJX
	pDEJ3D98M0rS0oVzcyDMAv5NhPqBxhgUONS3AOkwYgR96QNZFE8jqwaEw2wDADixrdUNhMh//jleC
	tiibjoOs0oYWejicqt/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNay-0002oW-Tn; Tue, 29 Oct 2019 09:15:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNan-0001RY-Mx; Tue, 29 Oct 2019 09:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iENbg+FdOJeAwjiRGinPqnU5SrOnnqln7JfFosCjnn4=; b=H3JkTkscyd9P7wDj27DHoHwRV
 ZRLlduecjL1PLM71TFPypN4uUjukvtpEwLe45Re5UyWtlmfQ55pC0oEwBwzNSBGA9mdpSKkar7DvS
 C8uZI25CEO34oBSLmWGrDtIOw8+XhRSUPcWrRS1VqFAnl6QiWXMCnSNRKG2I/w+l5yeK8Ve6ccaFd
 1kjTwJQC0uIRYBCqvwAKUUVFcjzl7zH1qSQfaUZ74Sd5xHV7727LW8I9aOM+ZO9u6CTKqyVE9H+5l
 yGLChwVob0lycs2Ve0oYi0oEp7pS8SKVsAdUf5ucOk+GdclZo0OQre6e+Gxy0LKFV0L1PNZImYAr5
 eJT2c0JBw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:48926)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iPNaK-0000fQ-HD; Tue, 29 Oct 2019 09:14:40 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iPNaD-0004Vk-Up; Tue, 29 Oct 2019 09:14:33 +0000
Date: Tue, 29 Oct 2019 09:14:33 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] mtd: devices: phram.c: Fix use true/false for bool type
Message-ID: <20191029091433.GG25745@shell.armlinux.org.uk>
References: <20191029032142.GA6758@saurav>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029032142.GA6758@saurav>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_021509_931773_1261A152 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: vigneshr@ti.com, gregkh@linuxfoundation.org, richard@nod.at,
 joern@lazybastard.org, linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 saurav.girepunje@hotmail.com, tglx@linutronix.de, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 08:51:42AM +0530, Saurav Girepunje wrote:
> Return type for security_extensions_enabled() is bool
> so use true/false.

This doesn't seem to bear any resemblence to the subject line.

> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> ---
>  arch/arm/mm/nommu.c         |  2 +-
>  drivers/mtd/devices/phram.c | 11 +++++------
>  2 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/mm/nommu.c b/arch/arm/mm/nommu.c
> index 24ecf8d30a1e..1fed74f93c66 100644
> --- a/arch/arm/mm/nommu.c
> +++ b/arch/arm/mm/nommu.c
> @@ -56,7 +56,7 @@ static inline bool security_extensions_enabled(void)
>  	if ((read_cpuid_id() & 0x000f0000) == 0x000f0000)
>  		return cpuid_feature_extract(CPUID_EXT_PFR1, 4) ||
>  			cpuid_feature_extract(CPUID_EXT_PFR1, 20);
> -	return 0;
> +	return true;

This isn't explained in the commit.  You explain why it should return
true or false, but you don't explain why converting this from returning
0, aka false, to returning true is necessary.

>  }
>  
>  unsigned long setup_vectors_base(void)
> diff --git a/drivers/mtd/devices/phram.c b/drivers/mtd/devices/phram.c
> index 86ae13b756b5..931e5c2481b5 100644
> --- a/drivers/mtd/devices/phram.c
> +++ b/drivers/mtd/devices/phram.c
> @@ -239,27 +239,26 @@ static int phram_setup(const char *val)
>  
>  	ret = parse_name(&name, token[0]);
>  	if (ret)
> -		goto exit;
> +		return ret;
>  
>  	ret = parse_num64(&start, token[1]);
>  	if (ret) {
> +		kfree(name);
>  		parse_err("illegal start address\n");
> -		goto parse_err;
>  	}
>  
>  	ret = parse_num64(&len, token[2]);
>  	if (ret) {
> +		kfree(name);
>  		parse_err("illegal device length\n");
> -		goto parse_err;
>  	}
>  
>  	ret = register_device(name, start, len);
>  	if (!ret)
>  		pr_info("%s device: %#llx at %#llx\n", name, len, start);
> +	else
> +		kfree(name);
>  
> -parse_err:
> -	kfree(name);
> -exit:
>  	return ret;
>  }

At least this partially matches the subject line but it looks unrelated
to the other changes.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
