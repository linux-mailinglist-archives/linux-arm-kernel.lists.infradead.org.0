Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9196BCE622
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGrie9vyM1GolKT96gYXRU9X/rEsc/HDcdRSVcKW6gI=; b=k7ZAGkljUwac5C
	29x9PQDvSN5O0fggxSq8g4byCUtTcyf1yFQegeag12PHrrrS+t8qG3Jw8JMihX2Z5gLa2ICVfxtVO
	mCM4HoBW3xZmxARYf3d99lJVniqsZX/Am/jGEqLpHErO0ti+JUf7UNaedW77iBGelSjsPCCky7FUG
	/H6QLJVX2jcDM3A3U6S2EQ7SsF/9ZwMT44CeCCdnAUGCKq6t2RjL4prztYTLV/G2Bp1VnkATgOmIe
	krPGwIPbSQWWu9jVWmtQbze9iRWL6J5m6R7ySdRy52FyAdBtUkTB33yAhpwoFJjxmEBV35enXGF2u
	MwTD8QrEJ6+UeysjexYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUPs-0008RN-K1; Mon, 07 Oct 2019 14:55:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUPl-000880-8F
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:55:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id h4so6966478wrv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 07:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zyoLjL42jHZiwxAXIV2/XDf7QRXhcD/Qv0lwPPBYTCw=;
 b=B3otWI4U0GSNrjqwP6usJ0QsQXw4reQk8JjX63gKbNmDqAXYg4VYGfTbWUjktkuzGX
 +xaCfb5w2mNmI+cZOUkZOU2oHYUZaeDacr7lOFz0b6bpbtHDBxwDlGimM2pweeUoUckb
 v71aW6da+G0WmrKWP7WjLNZbCZDKxBxv68vuIk2coAyjeKrN0uLlkMoQjeEjUizhgWhB
 81cL91Uw1tAqjPAg4Q1xObpfA9FCGncyUd+XXhjU/zpBiTAHru93glYwQ6hFXRh0jU+c
 o0lQx8rf0p+RmPNf5M6kyseZ00wCTEeZa7k7f3nPTm7LwKAffx8C99poDTbS0a5pit/4
 HeBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=zyoLjL42jHZiwxAXIV2/XDf7QRXhcD/Qv0lwPPBYTCw=;
 b=O7DeQYW/SV93Qe2wg9fNO++qaqV1akJZg2znshMRIlaW4om4HAN+fO4mvoOOCDgFGY
 6TpACiKJ8nrn9oIqmW/oD2oAf3WsPb0+hL4LezlTNP0W2XQb51xVMYzFW6cGQZKmj2P4
 Hix9T9CT38qVDv2NQaFG4rtNd255DwDtxTbHQyI6lE7MiXj/x0VQj53HYqiryji8UFNf
 pbzGUvfYmX9KYeJCnxbv+XB+TqTtdLvxlpFXhcoEvsDNriuN8+KdALVLXoJ56ODhTBfb
 hanuSjbIjJFZR9GA1d0TUu4xNiHUzGwjNTd9c61KoED6pKZVIcgsYbqFD4K3UFHvZPoY
 p/Hg==
X-Gm-Message-State: APjAAAUpG3NEQoiFZEqWHtjZRtT1ShTweNGdqWhA9i4SbOdmhsCUaXBV
 Jge5u0o1lzGP+opCJv6MNN0=
X-Google-Smtp-Source: APXvYqwE7b8tg9jRbFJHNexgtg4+8TZ17/nub3x5etgIlxbBApsOnGRJD+30XW12FT483Q+wyoX9kg==
X-Received: by 2002:a5d:4689:: with SMTP id u9mr22942357wrq.78.1570460108023; 
 Mon, 07 Oct 2019 07:55:08 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id s1sm26307592wrg.80.2019.10.07.07.55.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 07:55:07 -0700 (PDT)
Date: Mon, 7 Oct 2019 16:55:05 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH V5 3/4] x86: Support Generic Initiator only proximity
 domains
Message-ID: <20191007145505.GB88143@gmail.com>
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-4-Jonathan.Cameron@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004114330.104746-4-Jonathan.Cameron@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_075509_330457_0B52D1CC 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-acpi@vger.kernel.org, x86@kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, Keith Busch <keith.busch@intel.com>, linux-mm@kvack.org,
 jglisse@redhat.com, Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


* Jonathan Cameron <Jonathan.Cameron@huawei.com> wrote:

> Done in a somewhat different fashion to arm64.
> Here the infrastructure for memoryless domains was already
> in place.  That infrastruture applies just as well to
> domains that also don't have a CPU, hence it works for
> Generic Initiator Domains.
> 
> In common with memoryless domains we only register GI domains
> if the proximity node is not online. If a domain is already
> a memory containing domain, or a memoryless domain there is
> nothing to do just because it also contains a Generic Initiator.
> 
> Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> ---
>  arch/x86/include/asm/numa.h |  2 ++
>  arch/x86/kernel/setup.c     |  1 +
>  arch/x86/mm/numa.c          | 14 ++++++++++++++
>  3 files changed, 17 insertions(+)
> 
> diff --git a/arch/x86/include/asm/numa.h b/arch/x86/include/asm/numa.h
> index bbfde3d2662f..f631467272a3 100644
> --- a/arch/x86/include/asm/numa.h
> +++ b/arch/x86/include/asm/numa.h
> @@ -62,12 +62,14 @@ extern void numa_clear_node(int cpu);
>  extern void __init init_cpu_to_node(void);
>  extern void numa_add_cpu(int cpu);
>  extern void numa_remove_cpu(int cpu);
> +extern void init_gi_nodes(void);
>  #else	/* CONFIG_NUMA */
>  static inline void numa_set_node(int cpu, int node)	{ }
>  static inline void numa_clear_node(int cpu)		{ }
>  static inline void init_cpu_to_node(void)		{ }
>  static inline void numa_add_cpu(int cpu)		{ }
>  static inline void numa_remove_cpu(int cpu)		{ }
> +static inline void init_gi_nodes(void)			{ }
>  #endif	/* CONFIG_NUMA */
>  
>  #ifdef CONFIG_DEBUG_PER_CPU_MAPS
> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index cfb533d42371..b6c977907ea5 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -1264,6 +1264,7 @@ void __init setup_arch(char **cmdline_p)
>  	prefill_possible_map();
>  
>  	init_cpu_to_node();
> +	init_gi_nodes();
>  
>  	io_apic_init_mappings();
>  
> diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
> index 4123100e0eaf..50bf724a425e 100644
> --- a/arch/x86/mm/numa.c
> +++ b/arch/x86/mm/numa.c
> @@ -733,6 +733,20 @@ static void __init init_memory_less_node(int nid)
>  	 */
>  }
>  
> +/*
> + * Generic Initiator Nodes may have neither CPU nor Memory.
> + * At this stage if either of the others were present we would
> + * already be online.
> + */
> +void __init init_gi_nodes(void)
> +{
> +	int nid;
> +
> +	for_each_node_state(nid, N_GENERIC_INITIATOR)
> +		if (!node_online(nid))
> +			init_memory_less_node(nid);
> +}

Nit: missing curly braces.

How do these work in practice, will a system that only had nodes 0-1 
today grow a third node '2' that won't have any CPUs on memory on them?

Thanks,

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
