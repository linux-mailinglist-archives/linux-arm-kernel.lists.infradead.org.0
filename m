Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4329D4E5A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ru2bWLGhkU/FrzlVZUxTobf/abZO0HFuAVcykmK5ETs=; b=XVP5ttZ0q3MbvtVR5hwslPy8w
	3yB8RbDLtp3mpz8SYEl+fMqicAah+2rrgogJwiawdzfGU64YT8qyuXOPXvLVxAnpzQ/lkkvnKu6L5
	8pSYpghqRthndY9ejq+C4KEqqyJvqiYRbshH2337SVNPAV36Qoeq6tNRKrTQ5LWN8As3KLvm47qIr
	ARLXFCEYEjloK8iO3zl8KWkiSs9qApG28luHpyYtTmaf0jGLHt30Lhq/oBUXyzbqm9sF30KEp2SX6
	Et4fFEfs0BEVYwCybYvdfhxvHuywIKpY2xT9Pk0Yh+kLjSw73F2HP/IYZGlOJR1GCU5kKD+RGfvTm
	6QysFioIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGZP-0001NG-R0; Fri, 21 Jun 2019 10:14:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG6e-0005Fe-Se
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:45:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D939142F;
 Fri, 21 Jun 2019 02:45:16 -0700 (PDT)
Received: from [10.37.13.79] (unknown [10.37.13.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A6DC3F246;
 Fri, 21 Jun 2019 02:45:14 -0700 (PDT)
Subject: Re: [PATCHv2 1/2] coresight: Do not default to CPU0 for missing CPU
 phandle
To: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 alexander.shishkin@linux.intel.com, david.brown@linaro.org,
 mark.rutland@arm.com
References: <cover.1561054498.git.saiprakash.ranjan@codeaurora.org>
 <92a33fa58c77206b338220427e92dabbd1d197f7.1561054498.git.saiprakash.ranjan@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <4176442c-feb8-5245-2b27-afcdb9a6247c@arm.com>
Date: Fri, 21 Jun 2019 10:48:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <92a33fa58c77206b338220427e92dabbd1d197f7.1561054498.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024517_397559_33A42F61 
X-CRM114-Status: GOOD (  21.85  )
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
Cc: rnayak@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,


On 06/20/2019 07:31 PM, Sai Prakash Ranjan wrote:
> Coresight platform support assumes that a missing "cpu" phandle
> defaults to CPU0. This could be problematic and unnecessarily binds
> components to CPU0, where they may not be. Let us make the DT binding
> rules a bit stricter by not defaulting to CPU0 for missing "cpu"
> affinity information.
> 
> Also in coresight etm and cpu-debug drivers, abort the probe
> for such cases.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Please drop this tag for now.

> ---
>   Documentation/devicetree/bindings/arm/coresight.txt |  2 +-
>   drivers/hwtracing/coresight/coresight-cpu-debug.c   |  3 +++
>   drivers/hwtracing/coresight/coresight-etm3x.c       |  3 +++
>   drivers/hwtracing/coresight/coresight-etm4x.c       |  3 +++
>   drivers/hwtracing/coresight/coresight-platform.c    | 10 +++++-----
>   5 files changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 8a88ddebc1a2..c4659ba9457d 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -88,7 +88,7 @@ its hardware characteristcs.
>   	  registers via co-processor 14.
>   
>   	* cpu: the cpu phandle this ETM/PTM is affined to. When omitted the
> -	  source is considered to belong to CPU0.
> +	  affinity is set to invalid.
>   

Please move this from the "Optional properties". It is not "Optional"
anymore with this change. Please make sure it is evident that this
is mandatory. Also please fix the bindings document for cpu-debug.txt.


>   * Optional property for TMC:
>   

> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 3c5ceda8db24..8b03fa573684 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -159,16 +159,16 @@ static int of_coresight_get_cpu(struct device *dev)
>   	struct device_node *dn;
>   
>   	if (!dev->of_node)
> -		return 0;
> +		return -ENODEV;
> +
>   	dn = of_parse_phandle(dev->of_node, "cpu", 0);
> -	/* Affinity defaults to CPU0 */
>   	if (!dn)
> -		return 0;
> +		return -ENODEV;
> +
>   	cpu = of_cpu_node_to_id(dn);
>   	of_node_put(dn);
>   

Please fix the acpi_coresight_get_cpu() for ACPI.

Rest looks fine to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
