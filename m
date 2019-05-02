Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A89114EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVm3iwGPRxI6YbfIETa+EjusNiG2+nySJGF/ldBqxgo=; b=OyGek7/RcQ+OoB
	eXjmgE5dVcLDR06KVaOVxo+vSv9OVCmxjUVghckglisJJgdkawkXWcYZM8qBfSNc/5EnJiLnFYT/W
	hwY/9/c/jTXmqjw9nRuvFju7JWPjQ3178vq8cA+L62vKsud6/IOvzpQAGy6bXbqnXYQZ57kJKvpjY
	xVemxyH4d4uAcIT8jCUpKE9I5Jpb7PHCWZlAQj2kC55EuvK0A3lXqKYqR09tTuQoGaY0eqqPF18PS
	4uZC4LWE1gSSb47ZkenfTthBvcPnp4ctnO4Cox8S1kwe+KOr/A9ZomJWEaUU8mlyY03zW6R6Xh8uK
	LFWoOT+v83A08UaY8Vrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6nC-0000wb-Eo; Thu, 02 May 2019 08:10:10 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6lS-0007Pa-VI
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:09:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 01:08:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="169842708"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.157])
 by fmsmga001.fm.intel.com with SMTP; 02 May 2019 01:08:19 -0700
Received: by lahna (sSMTP sendmail emulation); Thu, 02 May 2019 11:08:18 +0300
Date: Thu, 2 May 2019 11:08:18 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 1/5] i2c: acpi: permit bus speed to be discovered after
 enumeration
Message-ID: <20190502080818.GT26516@lahna.fi.intel.com>
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
 <20190430162910.16771-2-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430162910.16771-2-ard.biesheuvel@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010823_499486_9107B3E6 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: Jarkko Nikula <jarkko.nikula@linux.intel.com>, linus.walleij@linaro.org,
 joakim.bech@linaro.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 06:29:05PM +0200, Ard Biesheuvel wrote:
> Currently, the I2C ACPI enumeration code only permits the max bus rate
> to be discovered before enumerating the slaves on the bus. In some
> cases, drivers for slave devices may require this information, e.g.,
> some ATmel crypto drivers need to generate a so-called wake token
> of a fixed duration, regardless of the bus rate.
> 
> So tweak the code so i2c_acpi_lookup_speed() is able to obtain this
> information after enumeration as well.
> 
> Cc: Mika Westerberg <mika.westerberg@linux.intel.com>

Looks fine by me,

Acked-by: Mika Westerberg <mika.westerberg@linux.intel.com>

Adding Jarkko just in case I missed something.

> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/i2c/i2c-core-acpi.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/i2c-core-acpi.c b/drivers/i2c/i2c-core-acpi.c
> index 272800692088..7240cc07abb4 100644
> --- a/drivers/i2c/i2c-core-acpi.c
> +++ b/drivers/i2c/i2c-core-acpi.c
> @@ -115,8 +115,7 @@ static int i2c_acpi_do_lookup(struct acpi_device *adev,
>  	struct list_head resource_list;
>  	int ret;
>  
> -	if (acpi_bus_get_status(adev) || !adev->status.present ||
> -	    acpi_device_enumerated(adev))
> +	if (acpi_bus_get_status(adev) || !adev->status.present)
>  		return -EINVAL;
>  
>  	if (acpi_match_device_ids(adev, i2c_acpi_ignored_device_ids) == 0)
> @@ -151,6 +150,9 @@ static int i2c_acpi_get_info(struct acpi_device *adev,
>  	lookup.info = info;
>  	lookup.index = -1;
>  
> +	if (acpi_device_enumerated(adev))
> +		return -EINVAL;
> +
>  	ret = i2c_acpi_do_lookup(adev, &lookup);
>  	if (ret)
>  		return ret;
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
