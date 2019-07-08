Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94B562A24
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 22:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYYurAn2LEbtjV56PDBC7BS7PG/Dl9OTXoLIB4ti75g=; b=Rk05L/Ac4OCGBx
	iLRlWDdTnt1eLh4rpiB4B/jFStlDB7JNd3/fTjWDg6+LMtGzvoSvef9nxCM4qIxlO8bt/2+f0/KwN
	sHP/Rq19kJkBDZ8weHM0pTPKcGOVBfwJ1sCxarO+ob14Os63JZXpLBU7uNhjDuqKo+dbePvGW1FMB
	6NK/psq1c1OS+CDc/su9KuRCN6SUcqKW2wcseWVgVsWCu8Uye21YEdt4Bl1YLVblzLZol6ULuixXP
	7gS6BvUIxSmtBSY91HqZNe+HYo0j2BPFz91BDXY1UBQ8uIXipES2sEhfXbyHWOX8uFzPZ2lYWaUev
	aKs+viNUgnlEi+N6pxfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkZxn-0005NO-JF; Mon, 08 Jul 2019 20:10:15 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkZxY-0005D4-6y
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 20:10:01 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 8CC8C2B8;
 Mon,  8 Jul 2019 20:09:55 +0000 (UTC)
Date: Mon, 8 Jul 2019 14:09:54 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Phong Tran <tranmanphong@gmail.com>
Subject: Re: [PATCH] Documentation: coresight: covert txt to rst
Message-ID: <20190708140954.35a38021@lwn.net>
In-Reply-To: <20190705204512.15444-1-tranmanphong@gmail.com>
References: <20190705204512.15444-1-tranmanphong@gmail.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_131000_262979_B2147B11 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
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
Cc: mathieu.poirier@linaro.org, linux-doc@vger.kernel.org,
 suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, mchehab@kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  6 Jul 2019 03:45:12 +0700
Phong Tran <tranmanphong@gmail.com> wrote:

> change the format file and adpate the text style
> 
> Signed-off-by: Phong Tran <tranmanphong@gmail.com>
> ---
>  .../trace/{coresight.txt => coresight.rst}         | 296 ++++++++++++---------
>  Documentation/trace/index.rst                      |   1 +
>  2 files changed, 167 insertions(+), 130 deletions(-)
>  rename Documentation/trace/{coresight.txt => coresight.rst} (59%)
> 
> diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight.rst
> similarity index 59%
> rename from Documentation/trace/coresight.txt
> rename to Documentation/trace/coresight.rst
> index efbc832146e7..bea24e70cfba 100644
> --- a/Documentation/trace/coresight.txt
> +++ b/Documentation/trace/coresight.rst
> @@ -1,5 +1,6 @@
> -		Coresight - HW Assisted Tracing on ARM
> -		======================================
> +======================================
> +Coresight - HW Assisted Tracing on ARM
> +======================================
>  
>     Author:   Mathieu Poirier <mathieu.poirier@linaro.org>
>     Date:     September 11th, 2014
> @@ -26,7 +27,7 @@ implementation, either storing the compressed stream in a memory buffer or
>  creating an interface to the outside world where data can be transferred to a
>  host without fear of filling up the onboard coresight memory buffer.
>  
> -At typical coresight system would look like this:
> +At typical coresight system would look like this::
>  
>    *****************************************************************
>   **************************** AMBA AXI  ****************************===||
> @@ -95,6 +96,7 @@ Acronyms and Classification
>  
>  Acronyms:
>  
> +======== =============================================================
>  PTM:     Program Trace Macrocell
>  ETM:     Embedded Trace Macrocell
>  STM:     System trace Macrocell
> @@ -104,6 +106,7 @@ TPIU:    Trace Port Interface Unit
>  TMC-ETR: Trace Memory Controller, configured as Embedded Trace Router
>  TMC-ETF: Trace Memory Controller, configured as Embedded Trace FIFO
>  CTI:     Cross Trigger Interface
> +======== =============================================================

A minor nit, but since you're making a table out of this, you don't need
the colons in the first column.

>  Classification:
>  
> @@ -118,7 +121,7 @@ Misc:
>  
>  
>  Device Tree Bindings
> -----------------------
> +--------------------
>  
>  See Documentation/devicetree/bindings/arm/coresight.txt for details.
>  
> @@ -133,57 +136,63 @@ The coresight framework provides a central point to represent, configure and
>  manage coresight devices on a platform.  Any coresight compliant device can
>  register with the framework for as long as they use the right APIs:
>  
> -struct coresight_device *coresight_register(struct coresight_desc *desc);
> -void coresight_unregister(struct coresight_device *csdev);
> +.. c:function:: struct coresight_device *coresight_register(struct coresight_desc *desc);
> +.. c:function:: void coresight_unregister(struct coresight_device *csdev);
>  
> -The registering function is taking a "struct coresight_device *csdev" and
> +The registering function is taking a :code:`struct coresight_device *csdev` and

As a general rule, we would rather see less markup in the text files than
you are applying here.  Just present the prototypes in a literal block
here.  (Even better would be a nice kerneldoc comment in the source that
could be pulled in, but that's more work).  I wouldn't use :code: anywhere,
really. 

As well as addressing Mathieu's comments, could you pass through and cut
the markup down to the bare minimum?

Thanks,

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
