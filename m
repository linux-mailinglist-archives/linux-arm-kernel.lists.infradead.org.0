Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3B1B1094
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 16:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0r7JEoscD6BhWe30IlGDXMrpV0NeOnaZ2Xd8IHLArDI=; b=Go2ry7I27zsZCIsTAS9EotDYZ
	ykfdAkwYdgDsFPNhrI3xkX6pyohpAARn/Oe1ZXjVaVbNEZ1lql4ar1lbhSJ6KvWk6cbTN/JlRO9pI
	pVVCAABTH4Hx7sehxdEbol5sh/U94pumLHw1cECNaMUQc6g4oJfLmWLYOOiSHQTEMmLsUwdatvxcq
	J8z1sm8C7TyGZehqJMok8L5b4Naz1nIgruVB6OxXFNYR4yk21uicZAvuPNPZLD0aGLWw3d9Q4DT8f
	p+cmmGcr6u+qbDz6bNHigT0U/ssXix9hHQdJ6xkxXSJeoljme0lh1bwmtvKqpDsYtMSFIuIzRy0d3
	l2vrFruPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Pgc-0008TV-58; Thu, 12 Sep 2019 14:03:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PgN-0008TB-Cj
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 14:02:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B05D828;
 Thu, 12 Sep 2019 07:02:46 -0700 (PDT)
Received: from [10.249.163.245] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B8E8A3F71F;
 Thu, 12 Sep 2019 07:02:44 -0700 (PDT)
Subject: Re: [PATCH v5 2/3] dt-bindings: arm: coresight: Add support for
 coresight-loses-context-with-cpu
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190816154615.39854-1-andrew.murray@arm.com>
 <20190816154615.39854-3-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <34570d2f-b9b7-a45e-8a52-86808198755b@arm.com>
Date: Thu, 12 Sep 2019 15:06:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20190816154615.39854-3-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_070247_478335_20CF6DD5 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Al.Grant@arm.com, coresight@lists.linaro.org, leo.yan@linaro.org,
 sudeep.holla@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/16/2019 04:46 PM, Andrew Murray wrote:
> Some coresight components, because of choices made during hardware
> integration, require their state to be saved and restored across CPU low
> power states.
> 
> The software has no reliable method of detecting when save/restore is
> required thus let's add a binding to inform the kernel.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   Documentation/devicetree/bindings/arm/coresight.txt | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index fcc3bacfd8bc..d02c42d21f2f 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -87,6 +87,15 @@ its hardware characteristcs.
>   
>   	* port or ports: see "Graph bindings for Coresight" below.
>   
> +* Optional properties for all components:
> +
> +	* arm,coresight-loses-context-with-cpu : boolean. Indicates that the
> +	  hardware will lose register context on CPU power down (e.g. CPUIdle).
> +	  An example of where this may be needed are systems which contain a
> +	  coresight component and CPU in the same power domain. When the CPU
> +	  powers down the coresight component also powers down and loses its
> +	  context. This property is currently only used for the ETM 4.x driver.
> +
>   * Optional properties for ETM/PTMs:
>   
>   	* arm,cp14: must be present if the system accesses ETM/PTM management
> 


Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
