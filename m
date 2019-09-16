Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699C1B3CC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 16:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8v9Z2VSHoPh2zF9apmPe+PdN/QfXB/lLmUDWJweYK8=; b=NNSFiRWG/wYrrv
	OwSFazutTbAk7AkfjF1FrrhQSdMXeHhETTPK75Ohb/flDUjNFUz36NOJoTOPGZtdNFGjliy5iUagn
	z4AyZnjJemBHtB/F+QQNy7wAd4B6yKowHIqy2E08tKMGnatvbzZMflCdnGhQDXvODeDsOjGnyBcnV
	37pca5AfnSsgKbnUq5jkRxcNOLG6fiZIt/MQ0z7eTPm/VDmSel+aWg9JwxArxG2SuhZo1Yip5gn6q
	TSr39X/b31nPbKygE6N57rE4D2iMIOXvXxW1751HmYbYId+P9hKn0F1IGNYO9X8w2j54BhVs9lp8n
	ce14KI+sSegIM/6Xq4HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9sDP-0000wq-2V; Mon, 16 Sep 2019 14:42:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9sDC-0000w8-K1
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 14:42:44 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC8F520830;
 Mon, 16 Sep 2019 14:42:40 +0000 (UTC)
Date: Mon, 16 Sep 2019 10:42:39 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: page_alloc.shuffle=1 + CONFIG_PROVE_LOCKING=y = arm64 hang
Message-ID: <20190916104239.124fc2e5@gandalf.local.home>
In-Reply-To: <1568289941.5576.140.camel@lca.pw>
References: <1566509603.5576.10.camel@lca.pw>
 <1567717680.5576.104.camel@lca.pw>
 <1568128954.5576.129.camel@lca.pw>
 <20190911011008.GA4420@jagdpanzerIV>
 <1568289941.5576.140.camel@lca.pw>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_074242_682186_3A11BDA8 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Petr Mladek <pmladek@suse.com>, Theodore Ts'o <tytso@mit.edu>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Waiman Long <longman@redhat.com>, Dan Williams <dan.j.williams@intel.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Sep 2019 08:05:41 -0400
Qian Cai <cai@lca.pw> wrote:

> >  drivers/char/random.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/char/random.c b/drivers/char/random.c
> > index 9b54cdb301d3..975015857200 100644
> > --- a/drivers/char/random.c
> > +++ b/drivers/char/random.c
> > @@ -1687,8 +1687,9 @@ static void _warn_unseeded_randomness(const char *func_name, void *caller,
> >  	print_once = true;
> >  #endif
> >  	if (__ratelimit(&unseeded_warning))
> > -		pr_notice("random: %s called from %pS with crng_init=%d\n",
> > -			  func_name, caller, crng_init);
> > +		printk_deferred(KERN_NOTICE "random: %s called from %pS "
> > +				"with crng_init=%d\n", func_name, caller,
> > +				crng_init);
> >  }
> >  
> >  /*
> > @@ -2462,4 +2463,4 @@ void add_bootloader_randomness(const void *buf, unsigned int size)
> >  	else
> >  		add_device_randomness(buf, size);
> >  }
> > -EXPORT_SYMBOL_GPL(add_bootloader_randomness);
> > \ No newline at end of file
> > +EXPORT_SYMBOL_GPL(add_bootloader_randomness);  
> 
> This will also fix the hang.
> 
> Sergey, do you plan to submit this Ted?

Perhaps for a quick fix (and a comment that says this needs to be fixed
properly). I think the changes to printk() that was discussed at
Plumbers may also solve this properly.

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
