Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BB93134E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PASqLIo/VynZYPPcb/9G42eZXxE8IEiVcaRkz65d9Q=; b=Xw/4wV3rNWWNGS
	UWWR/widMWMAvUfjDer/4M5fL+THd7cFv0u1DwxIo6vcYn50z5/ZLUqBHC3ay9nPuCeL7vV+3Nrnq
	iw0sUuX13tmKd7R52nhbIj5JMxQrkzcU73u5xWy+LOeJgZSS6wTuhI2EroN15zAXsUnb5g+3EZpAd
	Ymkqm7sO5PRxeSXtWWDeETNiD7fkoZ8kzKlqt6x/GDtTNKsk9EsfveIwvHF0wojraJqSZ2vxWInKP
	qk0sgd7M1XSL6layzXyxG8R8gk+6SEsG2Kv9U26wX5fK2Et7tpmFhpBisZpVFkLYhYrU+ZqF3a2KI
	HgsHptT3l/B+NEgvoCQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkw8-0007vR-Da; Fri, 31 May 2019 17:03:24 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkw0-0007sT-0z
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:03:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17ACAA78;
 Fri, 31 May 2019 10:03:15 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3CB863F59C;
 Fri, 31 May 2019 10:03:13 -0700 (PDT)
Date: Fri, 31 May 2019 18:03:10 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH kvmtool v3 2/9] update_headers.sh: Cleanly report
 failure on error
Message-ID: <20190531180310.2305008c@donnerap.cambridge.arm.com>
In-Reply-To: <1559229194-3036-3-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-3-git-send-email-Dave.Martin@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_100316_132551_5B7325A9 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Alex =?UTF-8?B?QmVubsOpZQ==?= <alex.bennee@linaro.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 May 2019 16:13:07 +0100
Dave Martin <Dave.Martin@arm.com> wrote:

> If in intermediate step fails, update_headers.sh blindly continues
> and may return success status.
> 
> To avoid errors going unnoticed when driving this script, exit and
> report failure status as soon as something goes wrong.  For good
> measure, also fail on expansion of undefined shell variables to aid
> future maintainers.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Both "u" and "e" seem to be standard and work in dash and ash, so:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Thanks,
Andre.

> ---
>  util/update_headers.sh | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/util/update_headers.sh b/util/update_headers.sh
> index 4ba1b9f..a7e21b8 100755
> --- a/util/update_headers.sh
> +++ b/util/update_headers.sh
> @@ -7,6 +7,8 @@
>  # using the lib/modules/`uname -r`/source link.
>  ########################################################################
>  
> +set -ue
> +
>  if [ "$#" -ge 1 ]
>  then
>  	LINUX_ROOT="$1"


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
