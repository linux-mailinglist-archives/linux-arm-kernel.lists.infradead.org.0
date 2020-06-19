Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E229A201D00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 23:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ESe8ClavKivBzOQZPOBhmXY3kU2Wuaxm1WqOOFYqQE=; b=Is2rQ/HRUE/IEM
	OkzzZNyRrbTDh/7XgblLd7buFLoTpUJpm89DOuVSR8v+eFxj9H7S6VBXmnT/4bBq1zC+8IWdqBf0Q
	RF6Z+3LzgFzGlWkZM/8kK8Bj49vlVaunpEVcdPx3mznoSfjenpN3TD1JP1lwkvfKhkqmXVxdJRDhD
	i1DJeoBPfq3i+TBdJp5iEbX8Zh40RFNunhm+zdSmHrt4XKpabGQs1K2yjZ/hqnC3JvPDCUzJMMNwy
	FiNFCYb+WnK0Byc4NEEoNlNMwNu2J/4yDC1ThH5oC9lHY7SUoZP3TsWP7iBEZDCe1EfCi0hOme7WW
	JhBJtAF4z2aGq8maAZAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmONt-0001VE-8H; Fri, 19 Jun 2020 21:17:13 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmONk-0001Ut-JZ
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 21:17:06 +0000
Received: by mail-pl1-f193.google.com with SMTP id x11so4415804plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 14:17:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7hNihcV3mvm2VbgzMCb3VuZiHFSALZHgtjxranVJTmE=;
 b=BeBGhyOPUhd4Lm1wWWy/1D/J+YWhhlM9AzuSl2AU6GHyoTbrwNJlqkTqhyG42HIKJL
 qjFMMxpJHaANyZvKfZLppELeHG93bwhh6RhbEjWjMHQFux3BHLQ/1GfGIoD8VZpu+m5B
 oCpG8ktI/voGsUD8EVpXpsJBAuFaHoUfVfMFuXCUg716tPh7uKKc8lgXFqmvPNr7uELm
 q3gA2Wulg15kOZfDYk4U/yih6p/0HlbgB58rivM/0VpIuYXLU56qCdm8Hb10Ab4TxwRV
 4mPRFPAABRa+slKFcpHWS88EOgPoLUluEA2498GpqSi1lyPJvv1fuZxHVaIcgZMzuZRM
 x4KA==
X-Gm-Message-State: AOAM533QRcQN5uZrDnK8I3wJiQPEdckmQ2bW9gt/KECUOPOl03JvGfRz
 4ongeKkWAWg3sdUkokdMMeR5/rn6WUo=
X-Google-Smtp-Source: ABdhPJzVFn2+ANNt35xVqck48K2jzOLKssbmFAqliq16/KCjcWBHQm/+K7WAIhdQVl6WxrZdgzhwhg==
X-Received: by 2002:a17:90a:7a8f:: with SMTP id
 q15mr4751132pjf.116.1592601423167; 
 Fri, 19 Jun 2020 14:17:03 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id s188sm6551320pfb.118.2020.06.19.14.17.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 14:17:01 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 0E5884063E; Fri, 19 Jun 2020 21:17:00 +0000 (UTC)
Date: Fri, 19 Jun 2020 21:17:00 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christoph Hellwig <hch@lst.de>, Andrew Morton <akpm@linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 6/6] kernel: add a kernel_wait helper
Message-ID: <20200619211700.GS11244@42.do-not-panic.com>
References: <20200618144627.114057-1-hch@lst.de>
 <20200618144627.114057-7-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618144627.114057-7-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_141704_644512_BA834DE1 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-parisc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Brian Gerst <brgerst@gmail.com>, x86@kernel.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, sparclinux@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 04:46:27PM +0200, Christoph Hellwig wrote:
> --- a/kernel/exit.c
> +++ b/kernel/exit.c
> @@ -1626,6 +1626,22 @@ long kernel_wait4(pid_t upid, int __user *stat_addr, int options,
>  	return ret;
>  }
>  
> +int kernel_wait(pid_t pid, int *stat)
> +{
> +	struct wait_opts wo = {
> +		.wo_type	= PIDTYPE_PID,
> +		.wo_pid		= find_get_pid(pid),
> +		.wo_flags	= WEXITED,
> +	};
> +	int ret;
> +
> +	ret = do_wait(&wo);
> +	if (ret > 0 && wo.wo_stat)
> +		*stat = wo.wo_stat;

Since all we care about is WEXITED, that could be simplified
to something like this:

if (ret > 0 && KWIFEXITED(wo.wo_stat)
 	*stat = KWEXITSTATUS(wo.wo_stat)

Otherwise callers have to use W*() wrappers.

> +	put_pid(wo.wo_pid);
> +	return ret;
> +}

Then we don't get *any* in-kernel code dealing with the W*() crap.
I just unwrapped this for the umh [0], given that otherwise we'd
have to use KW*() callers elsewhere. Doing it upshot one level
further would be even better.

[0] https://lkml.kernel.org/r/20200610154923.27510-1-mcgrof@kernel.org              

  Luis

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
