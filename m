Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66AF7F543
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EYOeAnqyYphQdQreZK+eX0nn0fWC2gC35PQip1Wa0FM=; b=lha5cs2vWnVksfDWOq8Pzs0n+
	hSE/wMYGCYICzdk8GoZIOVixOiZZwCm2idU8v/1u/6XAAvCcH95YLoL5H+gUOv3lxcLfX5jDlBgVT
	MXrhUkC3gJqx2zophDegyAgTevjZkdCV+TIvYZsoGZqwFgbTfHg9XpHE/LUYkcS/rr9C4mfmX2Ul8
	cLkOS3/UD/5NVmAaU/6qCnDAjo7BkE7ZnDkjlvkQ+dSSwJKsIkE5QXUUNDRZdiYiURzQyoUWy7aTT
	5sCh0X6eYHXdamX7dNuxzGY9v4CI5HaXRDlOHkD4iyBpWhOUlcuX2sX3or2adWaTpjcXJ4qW/W1c4
	M01enyhjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htUzi-0006Eg-1v; Fri, 02 Aug 2019 10:41:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htUzZ-0006E7-Oo
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:41:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9AA7344;
 Fri,  2 Aug 2019 03:40:56 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 957C33F71F;
 Fri,  2 Aug 2019 03:40:55 -0700 (PDT)
Subject: Re: [PATCH v4 6/6] dt-bindings: arm: coresight: Add support for
 coresight-needs-save-restore
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-7-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <9df0eea2-a9bd-3a93-ca51-9c3d2391a1cf@arm.com>
Date: Fri, 2 Aug 2019 11:40:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730125157.884-7-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_034058_347154_9BA10FE8 
X-CRM114-Status: GOOD (  19.21  )
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
 Sudeep.Holla@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 30/07/2019 13:51, Andrew Murray wrote:
> Some coresight components, because of choices made during hardware
> integration, require their state to be saved and restored across CPU low
> power states.
> 
> The software has no reliable method of detecting when save/restore is
> required thus let's add a binding to inform the kernel.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   Documentation/devicetree/bindings/arm/coresight.txt | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index fcc3bacfd8bc..7cbdb7893af8 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -92,6 +92,9 @@ its hardware characteristcs.
>   	* arm,cp14: must be present if the system accesses ETM/PTM management
>   	  registers via co-processor 14.
>   
> +	* arm,coresight-needs-save-restore: boolean. Indicates that software
> +	  should save/restore state across power down.
> +

Do you think we could be a bit more descriptive here about when people could add
it to the DT ? Here we don't mention when someone should use this property and
it may be added to platforms where it may be absolutely unnecessary. How about :

"Indicates that the hardware implementation may not honor the Powerup request
from the software and thus might loose the register context on CPU power down 
(e.g, during CPUIdle). Software must save/restore the context during a CPU power 
transition cycle."

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
