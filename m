Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116901D0670
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 07:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhxiZIzw/b/DZFkQJTWXJyxtGs6HuZgTo8CRNUwTcfo=; b=eHpljIDoUPr2Fc
	ezFCU+SiHMPXoydPbeTugOfA/atfq1wvwRjNODmKCWfzYP/sqVXrjSJL3njcMPbDYY3pby3SuKIqS
	0SdsuDPKU+//f9TKQoyadX6YikUlfAsLcdpDJiU1TXJD62NYp6P96mgjpoQMjmi6obb7D0aW1e4tL
	sOuivNOO4bpESUwoAWj7W/PwNt/KF/6+fJ/si/QtJWBIhK6PKmhXsOIv0ayjL62SnpJp5JILGe9IF
	JDh7SZb4eaBWOSEPNtSyeuzcYP4OfA4U2+k9t1CIPLW4qZe8uCr5LRbUF7lJKmSgGdmda3UwpIMFR
	GnIeikSiteMV4w0zfkmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYk3T-0006mt-7N; Wed, 13 May 2020 05:35:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYk3J-0006m4-U0
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 05:35:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id f4so281316pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 22:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=N6F6FfdsbXnl/SVK+3lEcJ6QSNPZpV7bb51snrOs/po=;
 b=txZr0XeHuO7k5BX0CUgXyG6VP+PiWZiHNGupxtphY/hX0tcBvm1GfmNP/og2vyHwOv
 00Jwu6eowQehKsMOEiAPV4i9Vi5NAE2moFkGfslHOj3x05Tdu9JQJDxth4vfV4mf/kn+
 KJvAsVzXd50wZPI1Gn3PtnYQhTMzDplkzXUja26WzfwUbj8IP0XbaXT7ZJzw/kbBqxPe
 Hm1tw3kNPsV9/iC/4vsOiL/mfbhn0I1ofsTUcua2lOGO1OgkRRSvWR6IYrl2qxVq3Opp
 6Qh5w/cHLZc1GgIQcizNm38dCKEq8WzKQVg0OUePgccFTt8XZyn+vCSYfnI44YihTSBb
 yWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=N6F6FfdsbXnl/SVK+3lEcJ6QSNPZpV7bb51snrOs/po=;
 b=sE4hITMbt+ALo6GR3vH/ehgKaw55SYBufhf72h6Ncs6aCM/B+91rXDsUz4+XHGz2LG
 bwEnGjiadCQRyfmdtpeHEKliDLVNuSgaQJG+6/8b55DI81SxZ3ttBNUuPFOnQwynFssn
 eqTt/HQDvpAgAjIrYkmY24XTqPRs19TzDiQZMta1G76jvrH/zGgTLpNDCtL351b6pZnt
 1da50yFoJrRWjLsHo9pihL7EbwmzH1A284l1wOQ5vWBZM5g0XdKynO1XiizY8hKreV04
 h3o4f5iAPSgNJp83A52hTeBy9ZqQd9eo9LyZ8V+0K6TEraPtjUassMMryOEPdPIFwWrb
 mZAw==
X-Gm-Message-State: AGi0Pua/I8pQ4JCnHyLU40j45e+FC7p/FPgrvSvc9zU+KvG0qFAeSIcp
 K9wkgjVnmDdntZ2Vuj+3Jog=
X-Google-Smtp-Source: APiQypKbmkqhqS7o4ermQSolZR+cfuqa+pjV4dqn2sJsZ4yPaDy9SgV2EtYA1EalVbPrFoB3VL2yMQ==
X-Received: by 2002:a62:2bcb:: with SMTP id r194mr24565356pfr.26.1589348131658; 
 Tue, 12 May 2020 22:35:31 -0700 (PDT)
Received: from localhost ([2409:10:2e40:5100:6e29:95ff:fe2d:8f34])
 by smtp.gmail.com with ESMTPSA id q16sm3263402pgm.91.2020.05.12.22.35.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 22:35:30 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Wed, 13 May 2020 14:35:29 +0900
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: [RFC PATCH v2 1/3] printk: Add function to set console to
 preferred console's driver
Message-ID: <20200513053529.GL413@jagdpanzerIV.localdomain>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200430161438.17640-2-alpernebiyasak@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430161438.17640-2-alpernebiyasak@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_223535_702257_03A3DCFF 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (20/04/30 19:14), Alper Nebi Yasak wrote:
[..]
> +int update_console_to_preferred(void)
> +{
> +	struct console_cmdline *c = NULL;
> +	struct console *con = NULL;
> +	struct console *tmp = NULL;
> +
> +	if (preferred_console >= 0)
> +		c = &console_cmdline[preferred_console];
> +
> +	if (!c || !c->name[0])
> +		return 0;
> +
> +	for_each_console(con) {
> +		if (!con->next || !(con->next->flags & CON_ENABLED))
> +			continue;
> +		if (strcmp(c->name, con->next->name) != 0)
> +			continue;

This matches the consoles by exact name. Consoles can have aliases,
but matching by alias is rather complex and it has some side effects.

Let me Cc more people on this. VT has a console takeover logic,
I wonder if we can extend the takeover code somehow.

Daniel, any thoughts?

https://lore.kernel.org/lkml/20200430161438.17640-1-alpernebiyasak@gmail.com

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
