Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D27338B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 21:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7YDg3Dz1lYitgc2xgb+PSDH/9ssdlu2l9EyKJAsGAw=; b=qGqePi2QemxyRG
	29t9UEQs8NrbHxWMSKcLGEDm02YhtHPDsqr0V5NARNwBgixHmwP8qJpt3Gy2Qp+H3mEHqEagP348Q
	LyhCWJgl88MeExmpaOKJ499fiqbTRaGuFIciCcE8nbUWCkr63p4SJQ0FbdlXjWNx7qJfFYwVBkRo4
	rsN/YEJ+ka8YUEKUJMnjCTrZWg1Tssdczd8aNxgNxJHH7Jfe2/Ai2QPRsTPOO4mOzw45lKBbNZhMz
	iOBhJBvvNB5CjqgLGC2DQw+jkJ0XLzkmR3IWqciggX+IaKtLoWhjl2gCq5cCiBsTij8+yuW7gVOPt
	afW+um5gLjOe0tCagesQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXsDK-0002eT-BK; Mon, 03 Jun 2019 19:01:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsDD-0002dp-Qu
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 19:01:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id i2so2991617plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 12:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uOj8qS4yMWJcPzBr8jU/oW2KYVngTdjQDL1LJv/Tl0k=;
 b=mu8+YrUWQdYC2yPvI31aJeWbUy+/m/JdlBnvxPwbPgA4aR3Dko6HDsZHyi2HsBRRA8
 5ZlaLTjxNM68Al1YETdnGXAFwRlrElG6NZZ1j8Hx4UVHJ3hcuZD5Y/7VqGQRirguL3N7
 ccmPcVkphF2ROPyPYGWb6oqTC7KpewSiRiDXKJGxCopyHEAW0lSbHXCTbSbo40S30gSm
 UrgWiQJ9MzEPZG4NWjrakLfjBSt+eTyVA+31+Grrka+qDfU5BzOXXSXNlVKnOEoumMGs
 c9QGJJG4EXRd5w2FiwIHepI++jpU4ZPuUEBJf4WhgSmpKyN4NxdhbypbTGeXH38oeMkA
 5P+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uOj8qS4yMWJcPzBr8jU/oW2KYVngTdjQDL1LJv/Tl0k=;
 b=IMxKmFG5mZMjrxLHi+R8rBvlAhBbwDjO7ZQMjv3C87vAsIXq2JPUx/W3DiaLmFDMrX
 pNoSCnDN2hxh8turemUNmSfcfO24cIrH/R80XWtXWaQeUcAqBMWbpqEwTs11QLOXqIQU
 akzpUn219+NMSxIFEK7ccTaefls+6xZQxI2l8VrwE42rDRwT+rxJVVFfDGk/DF6YNyL/
 3KhYbbjrsfuVYZL1BNrUr6u8RGn7lhWMo0BwlZld8NzS6mnDYhb4sYYT+gl2xB52CZiX
 oF0spkc8aj7dWHUJyKcsy5bOuKKtGd0a60cwjHJukboKXeL4JKzmE/DF5jQzmT3p9xQi
 6KPQ==
X-Gm-Message-State: APjAAAUNCf0THZ12OkEuGzADKl7vc455jEgy4BZpWBnFiHA09dQhnUFL
 ED9WV1A2fxmwPhg0zodZMGsU5w==
X-Google-Smtp-Source: APXvYqykPgkSoXQZvF7692GpCMJ2OMiNKz9Vibqh/vST8wLXn0EjIfLgD7N96K2Ny86xOMvDMWXBGw==
X-Received: by 2002:a17:902:bc83:: with SMTP id
 bb3mr9026727plb.56.1559588495811; 
 Mon, 03 Jun 2019 12:01:35 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 24sm17259787pgn.32.2019.06.03.12.01.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 12:01:35 -0700 (PDT)
Date: Mon, 3 Jun 2019 13:01:33 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] Documentation: coresight: Update the generic device names
Message-ID: <20190603190133.GA20462@xps15>
References: <1559229077-26436-1-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559229077-26436-1-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_120139_945017_F52DF152 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: coresight@lists.linaro.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 leo.yan@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Thu, May 30, 2019 at 04:11:17PM +0100, Suzuki K Poulose wrote:
> Update the documentation to reflect the new naming scheme with
> latest changes.
> 
> Reported-by: Leo Yan <leo.yan@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  Documentation/trace/coresight.txt | 34 +++++++++++++++++++---------------
>  1 file changed, 19 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight.txt
> index efbc832..7b427cf 100644
> --- a/Documentation/trace/coresight.txt
> +++ b/Documentation/trace/coresight.txt
> @@ -326,16 +326,20 @@ amount of processor cores), the "cs_etm" PMU will be listed only once.
>  A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
>  listed along with configuration options within forward slashes '/'.  Since a
>  Coresight system will typically have more than one sink, the name of the sink to
> -work with needs to be specified as an event option.  Names for sink to choose
> -from are listed in sysFS under ($SYSFS)/bus/coresight/devices:
> +work with needs to be specified as an event option.
> +On newer kernels the available sinks are listed in sysFS under:
> +($SYSFS)/bus/event_source/devices/cs_etm/sinks/
>  
> -	root@linaro-nano:~# ls /sys/bus/coresight/devices/
> -		20010000.etf   20040000.funnel  20100000.stm  22040000.etm
> -		22140000.etm  230c0000.funnel  23240000.etm 20030000.tpiu
> -		20070000.etr     20120000.replicator  220c0000.funnel
> -		23040000.etm  23140000.etm     23340000.etm
> +	root@localhost:/sys/bus/event_source/devices/cs_etm/sinks# ls
> +	tmc_etf0  tmc_etr0  tpiu0
>  
> -	root@linaro-nano:~# perf record -e cs_etm/@20070000.etr/u --per-thread program
> +On older kernels, this may need to be found from the list of coresight devices,
> +available under ($SYSFS)/bus/coresight/devices/:
> +
> +	root@localhost:/sys/bus/coresight/devices# ls
> +	etm0  etm1  etm2  etm3  etm4  etm5  funnel0  funnel1  funnel2  replicator0  stm0 tmc_etf0  tmc_etr0  tpiu0
> +
> +	root@linaro-nano:~# perf record -e cs_etm/@tmc_etr0/u --per-thread program

On the "older" kernels you are referring to one would find the original naming
convention.  Everything else looks good to me.

Mathieu

>  
>  The syntax within the forward slashes '/' is important.  The '@' character
>  tells the parser that a sink is about to be specified and that this is the sink
> @@ -352,7 +356,7 @@ perf can be used to record and analyze trace of programs.
>  Execution can be recorded using 'perf record' with the cs_etm event,
>  specifying the name of the sink to record to, e.g:
>  
> -    perf record -e cs_etm/@20070000.etr/u --per-thread
> +    perf record -e cs_etm/@tmc_etr0/u --per-thread
>  
>  The 'perf report' and 'perf script' commands can be used to analyze execution,
>  synthesizing instruction and branch events from the instruction trace.
> @@ -381,7 +385,7 @@ sort example is from the AutoFDO tutorial (https://gcc.gnu.org/wiki/AutoFDO/Tuto
>  	Bubble sorting array of 30000 elements
>  	5910 ms
>  
> -	$ perf record -e cs_etm/@20070000.etr/u --per-thread taskset -c 2 ./sort
> +	$ perf record -e cs_etm/@tmc_etr0/u --per-thread taskset -c 2 ./sort
>  	Bubble sorting array of 30000 elements
>  	12543 ms
>  	[ perf record: Woken up 35 times to write data ]
> @@ -405,7 +409,7 @@ than the program flow through the code.
>  As with any other CoreSight component, specifics about the STM tracer can be
>  found in sysfs with more information on each entry being found in [1]:
>  
> -root@genericarmv8:~# ls /sys/bus/coresight/devices/20100000.stm
> +root@genericarmv8:~# ls /sys/bus/coresight/devices/stm0
>  enable_source   hwevent_select  port_enable     subsystem       uevent
>  hwevent_enable  mgmt            port_select     traceid
>  root@genericarmv8:~#
> @@ -413,14 +417,14 @@ root@genericarmv8:~#
>  Like any other source a sink needs to be identified and the STM enabled before
>  being used:
>  
> -root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20010000.etf/enable_sink
> -root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20100000.stm/enable_source
> +root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/tmc_etf0/enable_sink
> +root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/stm0/enable_source
>  
>  From there user space applications can request and use channels using the devfs
>  interface provided for that purpose by the generic STM API:
>  
> -root@genericarmv8:~# ls -l /dev/20100000.stm
> -crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/20100000.stm
> +root@genericarmv8:~# ls -l /dev/stm0
> +crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/stm0
>  root@genericarmv8:~#
>  
>  Details on how to use the generic STM API can be found here [2].
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
