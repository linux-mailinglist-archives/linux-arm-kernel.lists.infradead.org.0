Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD10BBBFB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 03:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydwCvFwr7tBmHRqK4XVUJGD+3BE385OrqwcVUKQ9ZF4=; b=Q4Pd3LhGDlu6be
	cZ7R7Nlyl6ro8VfVqrHtx8Kt9L3jlbesoGdVpn/UOz3C7hVGVCpSIGplzQZZXi7FnWPuW3zf6QgaD
	39jIqbS0k61SG1uqg+mngnlUFXS4e56P4AXDsUI75MJWTm0jh5Z/K1ajYlC9eb0yQS3vj1rmdBP/G
	R0wvItd7z5TJh5rOC4v2Gxcyp83CNAcwm825REG5Yhl8xa7kAN0Ed1mvpDxCAyf2FRulAmZWBxv1A
	knEAvnvJb7YA+Own/04QffppAvhiMkFo09+KvuKw8vQ7GZQnmu/+Q+z0/lXSJIkDyVlxFS/3/7Tdz
	cn6lVIA1onOMn8Eew97g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCZdJ-0007gb-TZ; Tue, 24 Sep 2019 01:28:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCZd9-0007gD-8e
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 01:28:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so121183pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 18:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dAEzx7fT/0S8T6OwYYfD593mWT+cjAFFU5hLQ2lomU0=;
 b=XdVTQLgkx65yGyZWW1UNLpT1ol9jqft5ELDACaQFZAMQZpDGySxY59Nwkl4n3vLvtA
 b6xYv3DHnS7ihrCzDsxdpj4xhEmPZds7qJnssR/COxSPfrK2N/gT5jv6ZWHCn7rCJ2mD
 JgaxEPEvIwWVhlUiwL0cWB4gwEGRt2T8cuFtziqUcOtCppi7vC6LXsfnNaDi/pNGFuqS
 CO0x8lsMHzGNsaWM+k3mCShf7OGWgoBf1a2rMRGrDGyc5pj4N9SMovAYICmOUEsdOsiS
 TDyDaXGSSkMIGft2lXhWF0y2ON1YS5AMyLykrx4pyDM+lgrikCGsgeLLu+SVFLHcSB7M
 epNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dAEzx7fT/0S8T6OwYYfD593mWT+cjAFFU5hLQ2lomU0=;
 b=fMdDdeN8CHDOmjAhUYf0M02/LbK+ai5n2dR8D72IyHtM7tCAZuhKvty+jtQ/eNeNSP
 y5KpOFiq0iyH5mEbKf0lXYpdGiQunqTnvy42Iz79FD+f3I425KpypAxwGlgMW3wHBQST
 IfsbprajQMzYDQ+cd8VkEDrwrfUy88NoO6pfU/Pysm5uDOWHt5SieZCgSpgGFpGxQtGR
 GDWTt1ozytJXVptWYsnE2vVI+9WDim6aMrrjxYKgKclP3Kmli1FdWvbohHYPbZ4e1jcd
 HDBNVSHzgOqliOOpagQlFzXRlyinR88+YC6NQVZRniDNs75GLOM6SSEVFtfemRiR+t5P
 9FCQ==
X-Gm-Message-State: APjAAAXiK4CUhvj6bqdAF2CDE5kBn60WH+Veu0ejZngs46owpyA8He+M
 7/hc0tAb52LWZoL69Qg/wag=
X-Google-Smtp-Source: APXvYqwhEWYZe65h6MvxMjQ45DCNMriaqT2Rx0Bc9L8bicYBJ0gNLFDXBbmJbGa+Xzo4GOFJ/4mZXw==
X-Received: by 2002:a63:1f23:: with SMTP id f35mr462440pgf.298.1569288518651; 
 Mon, 23 Sep 2019 18:28:38 -0700 (PDT)
Received: from localhost ([110.70.15.91])
 by smtp.gmail.com with ESMTPSA id f188sm26664pfa.170.2019.09.23.18.28.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 18:28:37 -0700 (PDT)
Date: Tue, 24 Sep 2019 10:28:34 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: printk() + memory offline deadlock (WAS Re: page_alloc.shuffle=1
 + CONFIG_PROVE_LOCKING=y = arm64 hang)
Message-ID: <20190924012834.GC3864@jagdpanzerIV>
References: <1567717680.5576.104.camel@lca.pw>
 <1568128954.5576.129.camel@lca.pw>
 <20190911011008.GA4420@jagdpanzerIV>
 <1568289941.5576.140.camel@lca.pw>
 <20190916104239.124fc2e5@gandalf.local.home>
 <1568817579.5576.172.camel@lca.pw>
 <20190918155059.GA158834@tigerII.localdomain>
 <1568823006.5576.178.camel@lca.pw>
 <20190923102100.GA1171@jagdpanzerIV>
 <20190923125851.cykw55jpqwlerjrz@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923125851.cykw55jpqwlerjrz@pathway.suse.cz>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_182839_356883_897A2DC5 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Qian Cai <cai@lca.pw>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Waiman Long <longman@redhat.com>, Dan Williams <dan.j.williams@intel.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (09/23/19 14:58), Petr Mladek wrote:
> 
> If I understand it correctly then this is the re-appearing problem.
> The only systematic solution with the current approach is to
> take port->lock in printk_safe/printk_deferred context.

It probably is.
We have a number of reverse paths. TTY invokes MM under port->lock,
UART invokes TTY under port->lock, MM invokes UART under zone->lock,
UART invokes sched under port->lock, shced invokes UART, UART invokes
UART under port->lock (!), and so on.

> But this is a massive change that almost nobody wants. Instead,
> we want the changes that were discussed on Plumbers.
>
> Now, the question is what to do with existing kernels. There were
> several lockdep reports. And I am a bit lost. Did anyone seen
> real deadlocks or just the lockdep reports?

I think so. Qian Cai mentioned "a hang" in one of his reports
(was it unseeded random()?). I'll send a formal patch maybe,
since there were no objections.

> To be clear. I would feel more comfortable when there are no
> deadlocks. But I also do not want to invest too much time
> into old kernels. All these problems were there for ages.
> We could finally see them because lockdep was enabled in printk()
> thanks to printk_safe.

True.
Everyone was so much happier when printk() used to do

       lockdep_off();
       call_console_drivers();
       lockdep_on();

Now we can have lockdep and RCU checks enabled, yet somehow
printk_safe is still "a terrible thing" :)

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
