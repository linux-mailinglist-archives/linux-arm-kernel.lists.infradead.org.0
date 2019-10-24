Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8C2E3A2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 19:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTCiZxblLHqm19PuR2MtdcRKT2UjIaAvDsWT/vzgYJ8=; b=eAkgAbxIqvKzl6
	FRFgXPQlc4u0i9y0rsXBEG4f5iYx+sie+nPIW92lNsHxJj4DIYtqOYyRXIKaIpvh009E9e526tAjs
	PCXwreI63aln1ZWwlph67VygRyfUrC2+y0Uuken0aKk3rbkW6tqu7vfhhigjSnZrbZlAZ76/3Vnfl
	9pMw3IZ8KTGO2w9VIuPFstbK+60X7gubINwzB9Jxux9e0SXaZg5s1T/t9rGT343REm0EWYmmlqLgk
	KqUX0RhnP3pKYZ8TwAz2/j3wz+Coc88VqUCQn//gAxER3LzfX6HgdP1XSuCIEC+6jP/Hem4s37C7g
	SlX5UpJgKv8yUUdM+Eig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNh3d-0001hs-96; Thu, 24 Oct 2019 17:37:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNh3U-0001hI-2j
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 17:37:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id q21so15558351pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 10:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oWJwEZORcy7FBt2IUc7em6LVpkI2tLY2GpHJHHdfCSg=;
 b=WWnFjGmAA6bb+YhQKyV8ab1mwBWj5MqJBr9Zc/F5o8vS/k5z4BnJsFmbdZ8IbMikos
 T7I9nS3dzDP6VxPaCjlKpLulV2+UmboFBhYGk2tymBji4sPyh8reX8EA3WgZCfWBUHun
 0nxAFYO+8AvFX9LMv/E515xrcuxgPUPxqQor+Qj8wQewNe79AVfHRi306Xz1czL8CA8J
 WFSBaoYrz6ljV/j15FyQAUjG5h8ppQzWG8xj4cym89x21J9VxUluDiq4sbHHR7oMY3xB
 dJezFNwk3Xspg1kKsMsj9ISymM4/dbXSOGaQowhP7hx8csJDj0ihmd9moVPRQ6YvdYM+
 4fVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oWJwEZORcy7FBt2IUc7em6LVpkI2tLY2GpHJHHdfCSg=;
 b=RPjeETWxmhLJNFrLpqE8GO+opBnGeuT4izATny1bzOWf2XhvJWrgnUipxikXB3S8TG
 eN7ctFbloN3MEBs7BtF0JICHWdb4D2rY9UWLbvqfxeS5At6hn75xSrUHyCJ8RD9aPY55
 DtrfyA76+e+S2dPOSVMHH6uO/A+yXStBz9+sRV5w/IiJrBmAyNYqehAkijkYmkQpMPNj
 LQFqHIFx0aQ4UHIq1/09Xp01/WTJ+pNxYivm5OAEqWAjKFRkWbuoUCvrRigBW4Di7E3W
 0+L54SYp2n/LGLpOvnOAmfvp//Gm7d+lO4icI0zffBYnHwl1QjRmgIN53IimcewC9pCr
 wemA==
X-Gm-Message-State: APjAAAWdudQNJibt2eGZuluOt0BQaNSFOyl80qmFNggfjWyp1mpgybR3
 eaABkRRdXRLqRMHDrxhRDfDV7w==
X-Google-Smtp-Source: APXvYqxMH0M0n7l8Hbbw2O4+EFLC9Ck/wupqqnYQ/kOfZNWRSot4a3CjDilobkKDoPV/kROv4l8D8A==
X-Received: by 2002:a17:90a:bd01:: with SMTP id
 y1mr8644671pjr.108.1571938666721; 
 Thu, 24 Oct 2019 10:37:46 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i1sm28162618pfg.2.2019.10.24.10.37.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 24 Oct 2019 10:37:46 -0700 (PDT)
Date: Thu, 24 Oct 2019 11:37:44 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] coresight: Add explicit architecture dependency
Message-ID: <20191024173744.GA5806@xps15>
References: <20191024120420.48893-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024120420.48893-1-broonie@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_103748_131230_D12C8587 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 01:04:20PM +0100, Mark Brown wrote:
> Coresight hardware is only likely to appear on Arm systems and currently
> the core code has Arm-specific barrier operations in it so can't be
> built anywhere else so add an explicit dependency saying so.  This will
> make no practical difference currently due to the way subsystems are
> referenced, the subsystem is only pulled in on arm and arm64, so mainly
> serves as documentation in case someone wants to increase build
> coverage.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  drivers/hwtracing/coresight/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
> index 7a9f5fb08330..6ff30e25af55 100644
> --- a/drivers/hwtracing/coresight/Kconfig
> +++ b/drivers/hwtracing/coresight/Kconfig
> @@ -4,6 +4,7 @@
>  #
>  menuconfig CORESIGHT
>  	bool "CoreSight Tracing Support"
> +	depends on ARM || ARM64

Very true - applied.

Thanks,
Mathieu

>  	depends on OF || ACPI
>  	select ARM_AMBA
>  	select PERF_EVENTS
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
