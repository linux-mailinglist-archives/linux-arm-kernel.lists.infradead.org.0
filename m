Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC0B11367F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 21:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cdT02mgTVbJCxRi6vdvb5sAEG0gTbH/6F1PGOH+NloI=; b=jqp0wxUyt3eGbQ+W87IV1eijA
	vHGRAmUhAdVQ/eC2P1KQbR6jUFchV1SEWfDW/5/XB+zzVtPPc0xOqbE7khFlPmJS0emDLM9e5rRIz
	+VSqFBkxe8MWLnc1KeWNG61IB3G761Y6CRVuC0O18x1HasLw2EALqbcB/mlriprPLW2FTDuqMoDPa
	Xdl/4v86A61i+gx8C71apZCC39Djcb378bv5ce92vKv06+ode9ImjNJV4F09ToTkWUcNKiXEtXlN6
	+Z7+WUpa1+7O5PIZH61asB3e4jXUzaa8sr1OhciDncfxZmAaqUVbuLMVakLMmxHLYaySKwU17D0d1
	zccv5tApA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbLK-0006ED-O6; Wed, 04 Dec 2019 20:33:50 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbLC-00068u-K3
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 20:33:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575491620;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VqWpHduLSdryiBD/wNg+ALzMYenu5uhkg+/MeSPFPhI=;
 b=NA8jj/JIhtEDIP+7ORZjIyG5KjObcs0OB5cmxfLNRRbJdSOLHWMSBfhHCZWsfSRtz//aLi
 85TvWzpUjLvDrPVT+foVc0GRMvVSjppTGYR5ppM40Z2u1U48uc7QWWsJV0eenNJCZP68Bu
 dsIAoivdJ+2fy2xDLJ/0xqNNYi84HsM=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-8TGKfLOCM2y1C_Op5zqIqQ-1; Wed, 04 Dec 2019 15:33:38 -0500
Received: by mail-pf1-f200.google.com with SMTP id y127so330819pfg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 12:33:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VqWpHduLSdryiBD/wNg+ALzMYenu5uhkg+/MeSPFPhI=;
 b=pC70uA5BbYodQs0+Kv4L90f76g9lOuRFAz2dvqPp0eIAQP+EDq0XMwO58WFgtL5yaP
 Zp5ipuTl9uB6uaB/Nlxi0B6J25B+YuAwhsicP8ayg7cUiwkAZatZWh8sopkkBDdQYJHy
 LpqDhMKbTIC5IMqGn/UrXmq9DpQMuD5obVRx96Q3g2dhdO2RtoEQ7sFxlU9Zww/W1+/2
 WQ6WYFHbyIk7PpSLLdKvJXVIwfsWw6bIxceR2+p2XiZcBKe2Zfuiq4UmBENOya7MQNR5
 9pA9za9yIwxaRlzG/4t4R2WHqe8jiZEokWXHcgTrH811TRNUfyCcvlTVmPbIozOfTC5g
 Volw==
X-Gm-Message-State: APjAAAWSGkckD3XPVz452Txf4BagwgoCxpz7EfZ+GA6kp5dGNinECsMf
 obzBLoVTrs5uY3KmY60Q8lQCbk1a7GrDK7EuKUmS3WbZnYwHSxLeaNhf8xTdRK7petSHO65wjW/
 X91WCk9gKYOsJ8Dvb2sYiwyKSJ/KGLC3MUo8=
X-Received: by 2002:a63:a508:: with SMTP id n8mr5357178pgf.278.1575491613893; 
 Wed, 04 Dec 2019 12:33:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqwZ8ga+0nB8RcZ015GxrcjdELQpTQGHI2J3TBcNJcfd2TECtitej4fzrQmYOQ8647WmvK++NA==
X-Received: by 2002:a63:a508:: with SMTP id n8mr5357147pgf.278.1575491613580; 
 Wed, 04 Dec 2019 12:33:33 -0800 (PST)
Received: from localhost.localdomain ([122.177.160.143])
 by smtp.gmail.com with ESMTPSA id k4sm1789624pfk.11.2019.12.04.12.33.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 12:33:32 -0800 (PST)
Subject: Re: [PATCH v2 1/3] libfdt: define UINT32_MAX in libfdt_env.h
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, robh+dt@kernel.org, frowand.list@gmail.com
References: <20191114051510.17037-1-takahiro.akashi@linaro.org>
 <20191114051510.17037-2-takahiro.akashi@linaro.org>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <aa35893d-fadc-be2a-1295-a986ced017fe@redhat.com>
Date: Thu, 5 Dec 2019 02:03:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20191114051510.17037-2-takahiro.akashi@linaro.org>
Content-Language: en-US
X-MC-Unique: 8TGKfLOCM2y1C_Op5zqIqQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_123342_739761_10CF8820 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: james.morse@arm.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Akashi,

On 11/14/2019 10:45 AM, AKASHI Takahiro wrote:
> In the implementation of kexec_file_load-based kdump for arm64,
> fdt_appendprop_addrrange() will be used, but fdt_addresses.c
> will fail to compile due to missing UINT32_MAX.
> 
> So just define it in libfdt_env.h.
> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> ---
>   include/linux/libfdt_env.h | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
> index edb0f0c30904..9ca00f11d9b1 100644
> --- a/include/linux/libfdt_env.h
> +++ b/include/linux/libfdt_env.h
> @@ -3,6 +3,7 @@
>   #define LIBFDT_ENV_H
>   
>   #include <linux/kernel.h>	/* For INT_MAX */
> +#include <linux/limits.h>	/* For UINT32_MAX */
>   #include <linux/string.h>
>   
>   #include <asm/byteorder.h>
> @@ -11,6 +12,8 @@ typedef __be16 fdt16_t;
>   typedef __be32 fdt32_t;
>   typedef __be64 fdt64_t;
>   
> +#define UINT32_MAX U32_MAX
> +
>   #define fdt32_to_cpu(x) be32_to_cpu(x)
>   #define cpu_to_fdt32(x) cpu_to_be32(x)
>   #define fdt64_to_cpu(x) be64_to_cpu(x)
> 

With following upstream patches accepted already in Linus's tree (see 
[0] and [1]), so we can drop this patch from the v3:

[0] 26ed19adbab1 ("libfdt: reduce the number of headers included from 
libfdt_env.h")
[1] a8de1304b7df ("libfdt: define INT32_MAX and UINT32_MAX in libfdt_env.h")

Thanks,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
