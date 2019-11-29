Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EEE10D796
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 16:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xh5Ay/2AUGabNazKOzJcCIKHtZGSpjTiFeboAXbe7UY=; b=ptPMxdGy2zeikuRFtLzuhHpPk
	cY3sC0cKAVcQM0L6gMlLCUgTkgSCd2ecSGYZfRtBqp3Yu2pfOpqUMuIVDm8iSJ11X9GfIKc6m+3y3
	QzeXHc7+ZnE0u3VwYiSL7Iqfr+2SVoLu9ppYjlm+8pKDRoqywGim5+RKGBIu91JmCmMneBC/fxQt7
	qvDPgSaiTu9H6ftjDEZ+1S3VvR4L2RkkE7QuAuLAQW5XxHck+92uW78s5iQKcPX9bVkVs8NuEtHq3
	85YVOaFJf+/3zX6cipCiL1HaZ9KQ1xNja8cilejbnN8igtMq6pJPftVUrxvNCPT4/yP2ZO9Bf+38k
	RrLUFrpWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iahpl-0003se-HU; Fri, 29 Nov 2019 15:05:25 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahpc-0003s0-4P
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 15:05:17 +0000
Received: by mail-wm1-f66.google.com with SMTP id p17so2574963wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 07:05:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pZkLmZsrqg1ZnWrCcircX/cCYDfgls/suzoB3wFMSt8=;
 b=aRqb7UsqC8T9JFcRyEJcvB+1byxJMeWmLoYckCjW1WfZY40+swGMyjKGFTbNLJ68+8
 qe5qaW18Bn9tuYrw4w7MKZS1NdSDrmWbO4bOZD7anUJF5ZUHS5vkyYZiDMWxqk0ubIpr
 1BI+AcWbmha83rwvHSrs/7QNFYn/eaUHvOsdYZ1PslmytLqzlFEq15jphatMaAX8l2wD
 2VLho9p5sTZSEidsaDKF+gbYAFzj1X005WHLwC6bAcY2FQm9g5hWxnCp6+PtAWdcvptC
 MAm+f5HvJez376prQQ9p9/jE7TvbA+xWfs6VsKiCJU8F8a8yrv1lyg2v1zeQaCBr+Ras
 Me7g==
X-Gm-Message-State: APjAAAXk6nOvIY2s9c7xd9xj9O7w3LMLDJtnyg2s1H9dJiD3DCeCmA7q
 0bnTfaGYBGCVUGL2ahL1LRw=
X-Google-Smtp-Source: APXvYqwT6VfzJAERtpYV8+32n7D+mlAnpiG8/vdvqUfElCD9W0Nhlic8udiNMZcbdIiCFN37E1HUpA==
X-Received: by 2002:a7b:c19a:: with SMTP id y26mr14066014wmi.152.1575039913718; 
 Fri, 29 Nov 2019 07:05:13 -0800 (PST)
Received: from a483e7b01a66.ant.amazon.com (54-240-197-236.amazon.com.
 [54.240.197.236])
 by smtp.gmail.com with ESMTPSA id a15sm29699212wrx.81.2019.11.29.07.05.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 Nov 2019 07:05:13 -0800 (PST)
Subject: Re: [PATCH 1/3] arm/arm64/xen: use C inlines for privcmd_call
To: Pavel Tatashin <pasha.tatashin@soleen.com>, jmorris@namei.org,
 sashal@kernel.org, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 will@kernel.org, steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com,
 sstabellini@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 stefan@agner.ch, yamada.masahiro@socionext.com,
 xen-devel@lists.xenproject.org, linux@armlinux.org.uk
References: <20191127184453.229321-1-pasha.tatashin@soleen.com>
 <20191127184453.229321-2-pasha.tatashin@soleen.com>
From: Julien Grall <julien@xen.org>
Message-ID: <957930d0-8317-9086-c7a1-8de857f358c2@xen.org>
Date: Fri, 29 Nov 2019 15:05:11 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191127184453.229321-2-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_070516_173391_6E2CB426 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.grall.oss[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 27/11/2019 18:44, Pavel Tatashin wrote:
> diff --git a/arch/arm64/include/asm/xen/hypercall.h b/arch/arm64/include/asm/xen/hypercall.h
> index 3522cbaed316..1a74fb28607f 100644
> --- a/arch/arm64/include/asm/xen/hypercall.h
> +++ b/arch/arm64/include/asm/xen/hypercall.h
> @@ -1 +1,29 @@
> +#ifndef _ASM_ARM64_XEN_HYPERCALL_H
> +#define _ASM_ARM64_XEN_HYPERCALL_H
>   #include <xen/arm/hypercall.h>
> +#include <linux/uaccess.h>
> +
> +static inline long privcmd_call(unsigned int call, unsigned long a1,
> +				unsigned long a2, unsigned long a3,
> +				unsigned long a4, unsigned long a5)

I realize that privcmd_call is the only hypercall using Software PAN at 
the moment. However, dm_op needs the same as hypercall will be issued 
from userspace as well.

So I was wondering whether we should create a generic function (e.g. 
do_xen_hypercall() or do_xen_user_hypercall()) to cover the two hypercalls?

> diff --git a/include/xen/arm/hypercall.h b/include/xen/arm/hypercall.h
> index b40485e54d80..624c8ad7e42a 100644
> --- a/include/xen/arm/hypercall.h
> +++ b/include/xen/arm/hypercall.h
> @@ -30,8 +30,8 @@
>    * IN THE SOFTWARE.
>    */
>   
> -#ifndef _ASM_ARM_XEN_HYPERCALL_H
> -#define _ASM_ARM_XEN_HYPERCALL_H
> +#ifndef _ARM_XEN_HYPERCALL_H
> +#define _ARM_XEN_HYPERCALL_H

This change feels a bit out of context. Could you split it in a separate 
patch?

>   
>   #include <linux/bug.h>
>   
> @@ -41,9 +41,9 @@
>   
>   struct xen_dm_op_buf;
>   
> -long privcmd_call(unsigned call, unsigned long a1,
> -		unsigned long a2, unsigned long a3,
> -		unsigned long a4, unsigned long a5);
> +long arch_privcmd_call(unsigned int call, unsigned long a1,
> +		       unsigned long a2, unsigned long a3,
> +		       unsigned long a4, unsigned long a5);
>   int HYPERVISOR_xen_version(int cmd, void *arg);
>   int HYPERVISOR_console_io(int cmd, int count, char *str);
>   int HYPERVISOR_grant_table_op(unsigned int cmd, void *uop, unsigned int count);
> @@ -88,4 +88,4 @@ MULTI_mmu_update(struct multicall_entry *mcl, struct mmu_update *req,
>   	BUG();
>   }
>   
> -#endif /* _ASM_ARM_XEN_HYPERCALL_H */
> +#endif /* _ARM_XEN_HYPERCALL_H */
> 

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
