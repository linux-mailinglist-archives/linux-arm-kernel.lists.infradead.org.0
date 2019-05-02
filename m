Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C246114AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8v0PlpzdhS5L6VzaS7PKaWtmW8yi4jpeAQ7C1T5BL8=; b=kJWeFPEmzbXDqH
	HFWfp6vX67xUuhA2l/htuySrWYX4dYEFplgqy88TA75ROurDZGWENP9zH5sHaLVtz8nxfb4vyFEW2
	U7A4kpOgIQqSLea2CuPMie3MA8A+gCqeUPCsuvx4+4rKzab53JCsUk/uMOg3rPvYmvZBHF7uOGZu+
	L+ivz4ggWB2nv/zqDx6nlI2rWcGf7vjT6Tu7sEE8ob+RsL5MGFuYIzxkoE2d56QEnHly7FECnsGV2
	uBQ0laL9mh/N0/1nA+EkLijAKGhp0aMwejx4HVTj9vl4h5eme2/qXQRLy+nxQ6Y9ORTmH9OwxdEqs
	hg1fQSJNdYnKXPe5m/Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6gP-0003lp-Ch; Thu, 02 May 2019 08:03:09 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6gI-0003lK-PI
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:03:03 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 01:03:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="169840867"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.157])
 by fmsmga001.fm.intel.com with SMTP; 02 May 2019 01:02:55 -0700
Received: by lahna (sSMTP sendmail emulation); Thu, 02 May 2019 11:02:55 +0300
Date: Thu, 2 May 2019 11:02:55 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2 4/4] gpio: mb86s7x: enable ACPI support
Message-ID: <20190502080255.GS26516@lahna.fi.intel.com>
References: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
 <20190429131208.3620-5-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429131208.3620-5-ard.biesheuvel@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010302_872309_1BEA0133 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>, linux-acpi@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-gpio@vger.kernel.org,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 03:12:08PM +0200, Ard Biesheuvel wrote:
> @@ -160,13 +177,15 @@ static int mb86s70_gpio_probe(struct platform_device *pdev)
>  	if (IS_ERR(gchip->base))
>  		return PTR_ERR(gchip->base);
>  
> -	gchip->clk = devm_clk_get(&pdev->dev, NULL);
> -	if (IS_ERR(gchip->clk))
> -		return PTR_ERR(gchip->clk);
> +	if (!ACPI_COMPANION(&pdev->dev)) {

Since you don't use the returned ACPI object, you can also use
has_acpi_companion(&pdev->dev) here and other similar places.

Regardless of that,

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
