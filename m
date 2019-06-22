Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8AD4F434
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 09:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MX1Lz18CF4tpbMgan66jLaJUCmU2ovLEaKiPZk3uwtE=; b=LtrXwhyW31JVPgdXZJ2p8+gP07
	9TNE99LI0iYdqgN1SyQedFcV/WL/irU3HTzn19BCF2x1Y/RSuPd+Rjeqalw6qRL/n0GiGIA0Zi3c2
	Dsb5kfjmqFBKs0j1c0qTUdGrpwni0/j9akvTxJfA+kf4CCL9Z1l5gv3mbdtMpVuoOKeJnMH/JC+Q1
	hfSKBDLqjGvxY2kX8ebT0Lxehb0aNgs1Pms61uL2FaO6dSf/hO+FXoivxvH7Q5OeT2vhDl5IU8qgM
	rPya6KltdYjpM93MQpuL48l8MhAagVx0CsNAzGKp/iGXNlOeAMGnSsTX/s+//hNeIbIW7ecxl9lQA
	oFXdnoqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heahO-0006PB-Qs; Sat, 22 Jun 2019 07:44:34 +0000
Received: from lb3-smtp-cloud8.xs4all.net ([194.109.24.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heahD-0006O5-UQ
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 07:44:26 +0000
Received: from [IPv6:2001:983:e9a7:1:c087:883d:6305:97f]
 ([IPv6:2001:983:e9a7:1:c087:883d:6305:97f])
 by smtp-cloud8.xs4all.net with ESMTPA
 id eaguhVBDg7KeZeagwhQqlg; Sat, 22 Jun 2019 09:44:10 +0200
Subject: Re: [PATCH] media: atmel: atmel-isc: fix i386 build error
To: Eugen.Hristev@microchip.com, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 sakari.ailus@iki.fi
References: <1560928828-31471-1-git-send-email-eugen.hristev@microchip.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <26c3aae1-c385-fa13-8baa-82a011f7b243@xs4all.nl>
Date: Sat, 22 Jun 2019 09:44:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1560928828-31471-1-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfG4wOSwZ9jtKh3iwxbJ24OF7fIMGc6xRcRI+oeh9cz8bAIix89ngRNyoLd9xOqxH+Ssq9npO5Sudu/x+mEBeAhkapSZRGOitLBe234aMh1/+poMUDVCD
 qQkshVWi+mun8Y1a1vD3m300wWjuNSonvcfa8E86PGgN5JHHU6HGf2zHilz+gRAGt353BAjN2zY0Aw00snhe/NieWILEB1oD39kmTAL2v93Ow2P/p3axXSs1
 DNsj1B8K1RHvfjbVLJ/O2OfKJ4TO2CqxjPYvbamHzyommFHA7xtoWrgzgJd0GoadYf5dtCfLrQNTeTj8YSM0Qmp+6JZdrkWWZzZVlSFY0KR236z4MCqLMM6Z
 BSJmrz34jk3MX1MfOiu1wWvvIgFxB9G+jwOXL/Fnlfl/R4lLsH+zjsLvrAAihNpY15BYrd660sW31NHSPJjcpnW5iuB3zA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_004424_149301_21188A43 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/19/19 9:24 AM, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> ld: drivers/media/platform/atmel/atmel-isc-base.o:(.bss+0x0): multiple definition of `debug'; arch/x86/entry/entry_32.o:(.entry.text+0x21ac): first defined here
> 
> Changed module parameters to static.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
> 
> Hello Hans,
> 
> Sorry for this, it looks like i386 has a stray weird 'debug' symbol which
> causes an error.
> I changed the module parameters of the atmel-isc to 'static' but now they
> cannot be accessed in the other module files.
> Will have to create a get function to be used in the other files if needed
> later. Any other way to make a symbol static to current module and not
> current file ? It would be useful for other config variables as well.
> I was not sure if you want to squash this over the faulty patch or add it
> as a separate patch.
> If you want me to squash it let me know and I will come up with a squashed
> new version.
> 
> Thanks,
> Eugen
> 
>  drivers/media/platform/atmel/atmel-isc-base.c | 4 ++--
>  drivers/media/platform/atmel/atmel-isc.h      | 4 ----
>  2 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/atmel/atmel-isc-base.c b/drivers/media/platform/atmel/atmel-isc-base.c
> index eb1f5d4..c1c776b 100644
> --- a/drivers/media/platform/atmel/atmel-isc-base.c
> +++ b/drivers/media/platform/atmel/atmel-isc-base.c
> @@ -35,11 +35,11 @@
>  #include "atmel-isc-regs.h"
>  #include "atmel-isc.h"
>  
> -unsigned int debug;
> +static unsigned int debug;
>  module_param(debug, int, 0644);

You can also use module_param_named, or use dev_dbg as Sakari suggested.

In any case, I've added this patch to my pull request since it's urgent to
fix this issue.

Regards,

	Hans

>  MODULE_PARM_DESC(debug, "debug level (0-2)");
>  
> -unsigned int sensor_preferred = 1;
> +static unsigned int sensor_preferred = 1;
>  module_param(sensor_preferred, uint, 0644);
>  MODULE_PARM_DESC(sensor_preferred,
>  		 "Sensor is preferred to output the specified format (1-on 0-off), default 1");
> diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
> index f5f5932..bfaed2f 100644
> --- a/drivers/media/platform/atmel/atmel-isc.h
> +++ b/drivers/media/platform/atmel/atmel-isc.h
> @@ -230,10 +230,6 @@ struct isc_device {
>  
>  #define ATMEL_ISC_NAME "atmel-isc"
>  
> -/* module parameters */
> -extern unsigned int debug;
> -extern unsigned int sensor_preferred;
> -
>  extern struct isc_format formats_list[];
>  extern const struct isc_format controller_formats[];
>  extern const u32 isc_gamma_table[GAMMA_MAX + 1][GAMMA_ENTRIES];
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
