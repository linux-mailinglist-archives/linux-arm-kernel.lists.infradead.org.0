Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67C84828C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMyQTeDsVaSev5ov/rHhJlNk2lDUo0LgZzS0OseBJw0=; b=aM9dHiqKd8rDd5
	dWWEapMKe8/YFyW/HQu744JgPh2E9FvHbDRdgFXbwqm5o433ZSGGPcdJZTmjWwmxKBRUVqtK/2LQQ
	ONRoYf51MNe1357uVlcEZ+Kit6VGBSfSgxQN2b20/sf0+br6riks8i+gTNQoWQv8fBdmYS+46bkoG
	1yYnYiJJ1ntO7GNBfZ0J10jAJGVcHI5dt85cblC3OzIs0fajFGBJi9lFFG0FQuAfkCHDnhw3oDmWl
	RyYKdNCXbCqiW8GzYf4KwXx2c8tGw+vNnm0Nv5GSb6sCkgGvtCFwxUQlyrohVGcvg5V6uQkPZrw+r
	LamXNbAft0aVBkIu8I2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqqw-0004VJ-5c; Mon, 17 Jun 2019 12:35:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqqe-0004UK-G7
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:34:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 048E92B;
 Mon, 17 Jun 2019 05:34:54 -0700 (PDT)
Received: from [10.1.194.37] (e113632-lin.cambridge.arm.com [10.1.194.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D76BD3F246;
 Mon, 17 Jun 2019 05:34:52 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Jeremy Linton <jeremy.linton@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190614223158.49575-1-jeremy.linton@arm.com>
 <20190614223158.49575-2-jeremy.linton@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <667f95c0-5aa9-f460-a49a-e6dfefc027d8@arm.com>
Date: Mon, 17 Jun 2019 13:34:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190614223158.49575-2-jeremy.linton@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_053456_582232_605C5D95 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, sudeep.holla@arm.com,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jeremy,

Few nits below.

Also, I had a look at the other PPTT processor flags that were introduced
in 6.3, and the only other one being used is ACPI_LEAF_NODE in
acpi_pptt_leaf_node(). However that one already has a handle on the table
header, so the check_acpi_cpu_flag() isn't of much help there.

I don't believe the other existing flags will benefit from the helper since
they are more about describing the PPTT tree, but I think it doesn't hurt
to keep it around for potential future flags.

On 14/06/2019 23:31, Jeremy Linton wrote:
[...]
> @@ -517,6 +517,43 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>  	return retval;
>  }
>  
> +/**
> + * check_acpi_cpu_flag() - Determine if CPU node has a flag set
> + * @cpu: Kernel logical CPU number
> + * @rev: The PPTT revision defining the flag
> + * @flag: The flag itself
> + *
> + * Check the node representing a CPU for a given flag.
> + *
> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
> + *	   the table revision isn't new enough.
> + * Otherwise returns flag value
> + */

Nit: strictly speaking we're not returning the flag value but its mask
applied to the flags field. I don't think anyone will care about getting
the actual flag value, but it should be made obvious in the doc:

-ENOENT if ...
0 if the flag isn't set
> 0 if it is set.

[...]
> @@ -581,6 +618,21 @@ int cache_setup_acpi(unsigned int cpu)
>  	return status;
>  }
>  
> +/**
> + * acpi_pptt_cpu_is_thread() - Determine if CPU is a thread
> + * @cpu: Kernel logical CPU number
> + *
> + *

Nit: extra newline

> + * Return: 1, a thread
> + *         0, not a thread
> + *         -ENOENT ,if the PPTT doesn't exist, the CPU cannot be found or
> + *         the table revision isn't new enough.
> + */
> +int acpi_pptt_cpu_is_thread(unsigned int cpu)
> +{
> +	return check_acpi_cpu_flag(cpu, 2, ACPI_PPTT_ACPI_PROCESSOR_IS_THREAD);
> +}
> +
>  /**
>   * find_acpi_cpu_topology() - Determine a unique topology value for a given CPU
>   * @cpu: Kernel logical CPU number
> @@ -641,7 +693,6 @@ int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
