Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA87C135858
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtl9YVyIacinv1kcBCk+GlwhQ6D6sCSWaNnPSboyv9s=; b=jPGAXMSyyQJRSv
	zEHelMRxRC9qlMnXxHO2fdq8NON0sKJG1OyYDyf0rJN7fSDQIIYPlW3X+DAZjHKpT86tUdDQWGs8h
	lTNoGIWWKipSV7X6A2ScDbP8Woi0piO9FjwbiNXLgRhmSGWV4xXjGaPG9+hKeOz7ZKkv/M7+uLexJ
	KbehcmMHuOTbDyUA/w8ccaedb2KF6gY79ScNi7z/f8sMjFYt1Ajhd27XbzWmZSqywh+yv6M91cHys
	e2q6fpT29RwbZ37M6a29hG6AuS3IdW3SY6l7aiqLxD0xjAcjoq0iFDAASVd31dz2JFWffKcfIKH41
	CesJnmEljvZcgM3lV7fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWGk-0006Ep-7a; Thu, 09 Jan 2020 11:46:30 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWGZ-0006DY-As
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:46:21 +0000
Received: from zn.tnic (p200300EC2F0C5700288952748FF21F24.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0c:5700:2889:5274:8ff2:1f24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 2E5701EC0AED;
 Thu,  9 Jan 2020 12:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1578570370;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=TvfFRMR6ycdcrY1OKKxWXR/kNAvBaZFOPHrkYJ3yApE=;
 b=rnJQRQJLqKbuhnx62nJcYoFHz/TlvwipjK30beLzv5OeZSmT6oSF4/vCSPKoLOMjy+FHUg
 q/E21eg1FLO81zgK0b7XX+hKb0ZIysUfYx0NYGq1P+vAqAbaHw62DKizMRBC4Nu4K5gwEn
 KH3IOM9z38XYIuGKX6H2UuvQGprhzHM=
Date: Thu, 9 Jan 2020 12:46:03 +0100
From: Borislav Petkov <bp@alien8.de>
To: Xie XiuQi <xiexiuqi@huawei.com>, James Morse <james.morse@arm.com>
Subject: Re: [PATCH] trace: ras: print the raw data of arm processor error info
Message-ID: <20200109114603.GC5603@zn.tnic>
References: <20191214121109.8349-1-xiexiuqi@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191214121109.8349-1-xiexiuqi@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_034619_522219_0B09EF28 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tony.luck@intel.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 14, 2019 at 08:11:09PM +0800, Xie XiuQi wrote:
> User space tools such as rasdaemon need the complete error
> information from trace event. So, we print the raw data of
> error information in arm_event.
> 
> In the past, I try to parse them in trace event, but it's
> hard to deal the dynamic error item. And in commit 301f55b1a917
> ("efi: Parse ARM error information value"), the error information
> already been parsed to syslog.
> 
> So, just print the raw data in trace event for simpler.
> 
> Cc: Borislav Petkov <bp@suse.de>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Cc: Tyler Baicar <tbaicar@codeaurora.org>
> Signed-off-by: Xie XiuQi <xiexiuqi@huawei.com>
> ---
>  include/ras/ras_event.h | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/include/ras/ras_event.h b/include/ras/ras_event.h
> index 36c5c5e38c1d..2023ba9206b3 100644
> --- a/include/ras/ras_event.h
> +++ b/include/ras/ras_event.h
> @@ -180,6 +180,9 @@ TRACE_EVENT(arm_event,
>  		__field(u32, running_state)
>  		__field(u32, psci_state)
>  		__field(u8, affinity)
> +		__field(u32, count)
> +		__field(u32, len)
> +		__dynamic_array(u8, err_info, proc->err_info_num * sizeof(struct cper_arm_err_info))
>  	),
>  
>  	TP_fast_assign(
> @@ -199,12 +202,18 @@ TRACE_EVENT(arm_event,
>  			__entry->running_state = ~0;
>  			__entry->psci_state = ~0;
>  		}
> +
> +		__entry->count = proc->err_info_num;
> +		__entry->len = __entry->count * sizeof(struct cper_arm_err_info);
> +		memcpy(__get_dynamic_array(err_info), proc + 1, __entry->len);
>  	),
>  
>  	TP_printk("affinity level: %d; MPIDR: %016llx; MIDR: %016llx; "
> -		  "running state: %d; PSCI state: %d",
> +		  "running state: %d; PSCI state: %d; error count: %d; "
> +		  "raw data: %s",
>  		  __entry->affinity, __entry->mpidr, __entry->midr,
> -		  __entry->running_state, __entry->psci_state)
> +		  __entry->running_state, __entry->psci_state, __entry->count,
> +		  __print_hex(__get_dynamic_array(err_info), __entry->len))
>  );
>  
>  /*
> -- 

That's for ARM folks to decide whether they wanna shuffle raw error
records into userspace like that. CCed.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
