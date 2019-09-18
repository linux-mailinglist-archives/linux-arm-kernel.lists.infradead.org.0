Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7342B6795
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzUuM8QxHlM0VDx2oqi71houSwH0yXXFCEx7Co3rYRc=; b=etD7rnIebYdX74
	87OnhHcCiCaP7eT7z3t0jf2BhD261O6qoAgEvr4Hv7cLFglGc6P7m7gbuq6d0Egku0vDGgxl6s16w
	38R/v5qs4BT/Bee41FodaHxUWnGx2mvSwzKthdV3Y/ULHNErAmUHwsvHJUu4xD3rUUNzLXuBYPrIN
	2QxyXy9SUAkf5dVY2wtr9pxgXskfyC9SG0wzzsgS9z48puHOtYcQ1mYWFGs9j/hB/KlCp/ijMiVdp
	bNXZJ9ueudCabdu/B3HvaPbIU9ahrHFw9eibwNKhlj1R5flhf2BblI1EuTWPtqzOsIvjW3lnEhbkB
	OWNcSLOLIPI9wmT+Eszg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcLt-0004jh-AE; Wed, 18 Sep 2019 15:58:45 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcLc-0004ik-Ia
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:58:29 +0000
Received: by mail-pg1-x52c.google.com with SMTP id a24so104651pgj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 08:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kuawgKYd1ZO4hmm7LLtvr0pa9no04t6i2+r3+Gwk4x4=;
 b=l0A2z1TLXgxmmedq5++QkoO8DwxSNyr+T1b6Mzqo0NATMUz3eiscRJLFqMoH5KhzsJ
 u9dyUkO3k2ighuZYzJxywBe/eWWl+32r/Y/l+o07U5SrYgIhkRDUpBWizrmYf44rKcfW
 frSb0JL/ygJ++bYP1sXMh+kpZRLdaeaqOrdI/M65JpZNmgd9wbmzHPmBIC0V679HJwXz
 zZL+y8vQ7/5QoUQ2EDFCOE62C2B+/gjgcUkTmQf3ZgRU5FPX+w/SU4hPNN6uVQoPWNaW
 gtI/dqGgHOiAXMdvt69Mabmhz8JVgNf/eLcM/b6HFkLdmo2+vmk9W/ZG8OCgkoLXgZhR
 n9XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kuawgKYd1ZO4hmm7LLtvr0pa9no04t6i2+r3+Gwk4x4=;
 b=Koj64GnSo3hgl6i6jHnEFDmy4mEhJjDSgnsod7D3Hhaj0cNQ56CQtItZjTvE0EsLVc
 XR7UkA5DDJV38Fp4BYsskBOq2lH75zqw2a5Hl84zIAy769h6T7LaS/ISGI0/hgggd8Qt
 T8a9q1CE6hO9SN4ZU5x2CIB+xpKVcXanUbayVGjTHshSFgZbMqk4a3YkSWTbMGZuGqyQ
 /Wwiv9qo+NrYVZxJmJbB3svVxdpFtzXIzcQQRrF4CtQ/PG5YWMYwAg8ISTe0yEIBCxnf
 ElseR+EADsgV+iZgoP4NoT2w5Bqsfej1uIVSuhz50I8icWgZ3Czkzh1bt3q5VjCgJuJE
 qP7g==
X-Gm-Message-State: APjAAAVA/6r8zsVZOWgsVuppZjQ5SGPIeTzPjsR4EVK5U1oQjP00tSc/
 MXi+k2/CWEKoxu9dSkv7deQ=
X-Google-Smtp-Source: APXvYqwl+D35M1mGQ5CVkx5D9cM30xhSLxrYJ8pZoQLGMu0DhVC153jK58vKQJWknJASA2CRgx/Sjw==
X-Received: by 2002:a17:90a:c24e:: with SMTP id
 d14mr4793076pjx.0.1568822306830; 
 Wed, 18 Sep 2019 08:58:26 -0700 (PDT)
Received: from localhost ([121.137.63.184])
 by smtp.gmail.com with ESMTPSA id m24sm5190036pgj.71.2019.09.18.08.58.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 08:58:25 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Thu, 19 Sep 2019 00:58:23 +0900
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: printk() + memory offline deadlock (WAS Re: page_alloc.shuffle=1
 + CONFIG_PROVE_LOCKING=y = arm64 hang)
Message-ID: <20190918155823.GB158834@tigerII.localdomain>
References: <1566509603.5576.10.camel@lca.pw>
 <1567717680.5576.104.camel@lca.pw>
 <1568128954.5576.129.camel@lca.pw>
 <20190911011008.GA4420@jagdpanzerIV>
 <1568289941.5576.140.camel@lca.pw>
 <20190916104239.124fc2e5@gandalf.local.home>
 <1568817579.5576.172.camel@lca.pw>
 <20190918155059.GA158834@tigerII.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918155059.GA158834@tigerII.localdomain>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_085828_640413_6319CE8E 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Petr Mladek <pmladek@suse.com>, Theodore Ts'o <tytso@mit.edu>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, linux-mm@kvack.org,
 Qian Cai <cai@lca.pw>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Waiman Long <longman@redhat.com>, Dan Williams <dan.j.williams@intel.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A correction:

On (09/19/19 00:51), Sergey Senozhatsky wrote:
[..]
>
> zone->lock --> console_sem->lock
> 
> So then we have
> 
> 	zone->lock --> console_sem->lock --> pi_lock --> rq->lock
> 
>   vs. the reverse chain
> 
> 	rq->lock --> console_sem->lock

                     ^^^ zone->lock

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
