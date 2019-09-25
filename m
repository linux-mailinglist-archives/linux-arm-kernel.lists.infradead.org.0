Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CDABD814
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vAS+6e9TiljMw0+fT7xHq1VlbXOR0VuqYEhWscjON0=; b=UCJaHca5PmRGrl
	o6fV3NE8nedm52H5T9c8T1Fdxs3Kg2YTjkKES9wXMW6wT+8yLWeNM7JV+8pateq8Gtcx5dRdPYmY8
	dGHwgN31UwNnoah+WwxSCx7zwGvM8gRGkvoHiHxpJeG04Qj5ELaOpp+8/Ayo+6RvPS3Ex+gXgQ4CK
	ucg2EuDc6zcs8HbIJYH4+NzLeacaKVCg4bahcz+WnBP9C6o+/u4QyNtxDNEmatdlN4RMvQHRHPC41
	aGawF85iAfL1iFscCyyeXEcMqpS4XxFVzo3gQUnKnXJvEopr6Zbgf18f/S1DZL9XTEGHvzziBJU/i
	5HjwiAzAnR+od7EDuxJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD0Qg-0006eW-H4; Wed, 25 Sep 2019 06:05:34 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD0Q5-0005Zz-NU; Wed, 25 Sep 2019 06:04:59 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 482378980F9;
 Wed, 25 Sep 2019 06:04:56 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-181.pek2.redhat.com
 [10.72.12.181])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E0A7608C0;
 Wed, 25 Sep 2019 06:04:49 +0000 (UTC)
Date: Wed, 25 Sep 2019 14:04:45 +0800
From: Dave Young <dyoung@redhat.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v5 01/17] kexec: quiet down kexec reboot
Message-ID: <20190925060445.GA30921@dhcp-128-65.nay.redhat.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
 <20190923203427.294286-2-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923203427.294286-2-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Wed, 25 Sep 2019 06:04:56 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_230457_789253_38570DEF 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, james.morse@arm.com,
 ebiederm@xmission.com, matthias.bgg@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/23/19 at 04:34pm, Pavel Tatashin wrote:
> Here is a regular kexec command sequence and output:
> =====
> $ kexec --reuse-cmdline -i --load Image
> $ kexec -e
> [  161.342002] kexec_core: Starting new kernel
> 
> Welcome to Buildroot
> buildroot login:
> =====
> 
> Even when "quiet" kernel parameter is specified, "kexec_core: Starting
> new kernel" is printed.
> 
> This message has  KERN_EMERG level, but there is no emergency, it is a
> normal kexec operation, so quiet it down to appropriate KERN_NOTICE.
> 
> Machines that have slow console baud rate benefit from less output.
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> Reviewed-by: Simon Horman <horms@verge.net.au>
> ---
>  kernel/kexec_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index d5870723b8ad..2c5b72863b7b 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -1169,7 +1169,7 @@ int kernel_kexec(void)
>  		 * CPU hotplug again; so re-enable it here.
>  		 */
>  		cpu_hotplug_enable();
> -		pr_emerg("Starting new kernel\n");
> +		pr_notice("Starting new kernel\n");
>  		machine_shutdown();
>  	}
>  

Acked-by: Dave Young <dyoung@redhat.com>

Thanks
Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
