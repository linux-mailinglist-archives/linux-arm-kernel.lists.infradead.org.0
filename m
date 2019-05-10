Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB7219956
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 10:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZLmT3XmXmg3KtUb1IxagbuAgicuPu0VTjERttVy6n4=; b=VdfPg06Wfy0su5
	mL9TFJSTCmTJeo6MN9GlI5bEwKP6hjJuFbvUfhoVv1MIWxx/hUUFVZBQGGGFTIPuZfZaoaM+5JXQn
	n0iIlvVxDW+YoBqXMdtelft9aWNk6hBCIbm0bEQtLzMbxoT1PdTVRivNyokym9JkV8HJMnAe6eQcC
	CRlq5rjzpbId9VcuCIhCsPsckHS7BebBQQMXzwy5ahITFXY2lXIW0gZ758UR1cdcTHm/y8jQvAP2x
	BMuRSgJjSwr3NpJuPSpVX9VN6giSib1AyTsHyv/rZrz9H0ptU+phioVcwWKpJjxbp5Icx1YyntCTG
	OVPsxUq7q4oUFHg2DCzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP0dx-0006kw-Si; Fri, 10 May 2019 08:12:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP0dq-0006jL-DP
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 08:12:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1A2D1AF41;
 Fri, 10 May 2019 08:12:26 +0000 (UTC)
Date: Fri, 10 May 2019 10:12:24 +0200
From: Jean Delvare <jdelvare@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] i2c: Allow selecting BCM2835 I2C controllers on
 ARCH_BRCMSTB
Message-ID: <20190510101224.3cd5d0f9@endymion>
In-Reply-To: <20190509210438.28223-1-f.fainelli@gmail.com>
References: <20190509210438.28223-1-f.fainelli@gmail.com>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.31; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_011230_597454_52036BB5 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Vignesh R <vigneshr@ti.com>, Ajay Gupta <ajayg@nvidia.com>,
 Wolfram Sang <wsa@the-dreams.de>, Eddie James <eajames@linux.vnet.ibm.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 Elie Morisse <syniurge@gmail.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Karthikeyan Ramasubramanian <kramasub@codeaurora.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Juergen Fitschen <jfi@ssv-embedded.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  9 May 2019 14:04:36 -0700, Florian Fainelli wrote:
> From: Kamal Dasu <kdasu.kdev@gmail.com>
> 
> ARCH_BRCMSTB platforms have the BCM2835 I2C controllers, allow
> selecting the i2c-bcm2835 driver on such platforms.
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/i2c/busses/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
> index 26186439db6b..7277c1051ca2 100644
> --- a/drivers/i2c/busses/Kconfig
> +++ b/drivers/i2c/busses/Kconfig
> @@ -435,7 +435,7 @@ config I2C_AXXIA
>  
>  config I2C_BCM2835
>  	tristate "Broadcom BCM2835 I2C controller"
> -	depends on ARCH_BCM2835
> +	depends on ARCH_BCM2835 || ARCH_BRCMSTB
>  	help
>  	  If you say yes to this option, support will be included for the
>  	  BCM2835 I2C controller.

Reviewed-by: Jean Delvare <jdelvare@suse.de>

Thanks,
-- 
Jean Delvare
SUSE L3 Support

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
