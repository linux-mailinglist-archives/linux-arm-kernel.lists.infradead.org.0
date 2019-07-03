Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE4E5EB70
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 20:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWB0VZbBMjT02CeSM1ocIsRvCTZaU8nUQHI5LUfD9Yg=; b=Ykg4LAumsBHzkj
	VFNVue2koD752N9UuYGurw6PoC0SucjCkRthmEpwktcOYyNknQLkH9bBB53XDmEOqN95PgXF5vYek
	mpGOQwPRV3/rnSNSsT9WpEobdQgkZ+NPJPfUlSNdrA43g0JQgBgfTgKxbLM3hNMVPzqeBO+GP9O+J
	EYgYq8diZqGbvSVI/K/3chJ3KKn7eXSio8e1GywHF1noKyC4GB7V1UD9H7cg+XCPMxa3aHE5vuA0U
	+9C4wGSW94gdCriVDOux8tYEcLVjz8FZnQYnWZwFulSMhcMxm5HBn4oWpYIIUUn4KUu9h/JRLEUFq
	4H3jFJRRGVqzvLYjN9EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijqO-0006Yo-Mz; Wed, 03 Jul 2019 18:19:00 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hijqE-0006YX-9i
 for linux-arm-kernel@bombadil.infradead.org; Wed, 03 Jul 2019 18:18:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DCpM7nms5B5RUVgOYjG5X7MCBjiWqWHo1JgqvBcjmHM=; b=dhKGk9kkUlTV/wCSZEiNLkuel
 iZTrtRELGJh/0jy6hfJsXF5QpUTphgNSMTV8+uMGdDh1S6ro/1NDNfqTI0xh+Uc2CmEVRRjrIi+gA
 tWYRaJ6+9WhFZ/CVGV2IIc1no1ZXWFI3pjc51YJUQ8O5sNxXm3PoloLctMXe6FTJ5Qsal6G16x5AC
 rDP+F6jlAdW4XlfLjwWv/a4vnslujFxl3v5nGBvcWcKB3sygrrjib0TeTlLfD7bDFkSXR3Qw8a3sy
 wLU89SRllIl2kTRjOsFnI36PImiFWXXr0QtnqMoWmcsMFaUz9htGTayqL/PEOsD6FDZP/R8IpoAMr
 WUWE9FKTQ==;
Received: from [177.195.209.182] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hijqC-0000R1-61; Wed, 03 Jul 2019 18:18:48 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id BF8DF41153; Wed,  3 Jul 2019 15:18:41 -0300 (-03)
Date: Wed, 3 Jul 2019 15:18:41 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 02/11] perf stat: Smatch: Fix use-after-freed pointer
Message-ID: <20190703181841.GC10740@kernel.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-3-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702103420.27540-3-leo.yan@linaro.org>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Jul 02, 2019 at 06:34:11PM +0800, Leo Yan escreveu:
> Based on the following report from Smatch, fix the use-after-freed
> pointer.
> 
>   tools/perf/builtin-stat.c:1353
>   add_default_attributes() warn: passing freed memory 'str'.
> 
> The pointer 'str' has been freed but later it is still passed into the
> function parse_events_print_error().  This patch fixes this
> use-after-freed issue.

thanks, applied.
 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/builtin-stat.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tools/perf/builtin-stat.c b/tools/perf/builtin-stat.c
> index 8a35fc5a7281..de0f6d0e96a2 100644
> --- a/tools/perf/builtin-stat.c
> +++ b/tools/perf/builtin-stat.c
> @@ -1349,8 +1349,8 @@ static int add_default_attributes(void)
>  				fprintf(stderr,
>  					"Cannot set up top down events %s: %d\n",
>  					str, err);
> -				free(str);
>  				parse_events_print_error(&errinfo, str);
> +				free(str);
>  				return -1;
>  			}
>  		} else {
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
