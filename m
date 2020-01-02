Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1DA12E92E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:16:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jx2GQ5l/wj+PQ48vZKmUWlUcZxDcbXHQd8iUdlM+oqM=; b=EC0GmJDsdXITXq
	Q23hQS8HCrO+mPQ6HAee4Ufvcy9TFbxGSvDcYV9AHqDDW495KEcmchxlhRKKjzTerv3cAyvJYvA1j
	Snrpa3iR+15vsSYDkeHE4j0+aJrAteRhTKf1NLDFRzamFmpACcUK4zLU7woneXEs13GKBEcMmGGJL
	PX1vWJ1ZExrMFSbd0WIJGBbA6FgYVReQOwT67xxCiBLxvWjthvVdIiipJX7Fx+ea9zoraB+Sabu6u
	2i7v2DYxpw76Slbdj7grQr0yxuluA3Ttw8j5qryUVjwmQiWBQEvWmRJ1xVe7BLhz750vgwRtuNzEf
	//yreuX+N/seWeH9ZY9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in45O-0004mG-8v; Thu, 02 Jan 2020 17:16:38 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in45I-0004lX-0f
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:16:33 +0000
Received: by mail-qt1-x841.google.com with SMTP id 5so35120513qtz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 09:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=kAQJ38i09v+amShK5qBU7ZxzERB9iZK7X0VJJQXO1pg=;
 b=Q15Fp3sZh1kg8N0IVHw9ikL56635h8bswHZ2x6XjfR/BSZnwsOzAgLtXnm2d7Dg7dZ
 bMeW/7mkX53lSUV/K1ss+mCX+VOaMu2ECxzXppX5Ms+99ZYEYLAJWSxNuIB0Ri8K6hfX
 sKyySuuY4n/KjuL8AbnYomGeKvf6T0kG/Sri042sL7f456qFWyvmDo0aPZbzyr0wkUTm
 Pfj4pDVpM1lpQUmzIucs1dVdc2LCtncu4V6/1h6GPFDid/oJmDab4VyY1vJ98FrRRzOJ
 2T5gnqKsHfg18X5kRdxWRIZmxjn1u5voiXAAT8UURcECLMFjsneP9spdTBvaYjFPnQwA
 vjjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=kAQJ38i09v+amShK5qBU7ZxzERB9iZK7X0VJJQXO1pg=;
 b=m7vzh88926lhyamyWaHqcI6yRqEIhi1GZpzSlAFD2FknynLMSQEWv4HTOtdPBgwSry
 Wl+D0KwQUOzoKQqkRrRgDk2VDYzcfgkZx+DFmWBl/f9AjVyZWEMQ/dZ0YicEN3Zp0em9
 Ilv1x1RYAIZCEWOTp7Qq79DjE/i43/IwrXi3kZ8yeTfCiFzxzT99uF+XwfMmTeyYecQU
 JE7CPnBWsqAw56ksFdhv/lb7w77Dq0DAuh2ty0+WGNhWJaPLjs7BxmhJx5LXUNQquobw
 RFqa21LNe9DPEum0D7R0qOH7t7/xn/H3uErHSuXMrZYfNw2+LZ596Tkpzec9v5ovKDn/
 Lkug==
X-Gm-Message-State: APjAAAWCrDWpv7oOevxkIYgBLRjKsNYOhigYNp209uqGdN9KBDZ8hv82
 aoo7o3XyIkuoNbGrniyVFKf0Lg==
X-Google-Smtp-Source: APXvYqx2n+XHSH8XLpr4h7ciLtNAaJg762Gum669jBlOte1uvG5D9FGqgFfW3TyrJUpxF28qlAc4dg==
X-Received: by 2002:aed:3e83:: with SMTP id n3mr59731182qtf.322.1577985390236; 
 Thu, 02 Jan 2020 09:16:30 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id v7sm17304099qtk.89.2020.01.02.09.16.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2020 09:16:29 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] char/random: silence a lockdep splat with printk()
Date: Thu, 2 Jan 2020 12:16:28 -0500
Message-Id: <00116950-7DFB-4F93-959A-06D63E8FF51E@lca.pw>
References: <20200102120752.7b893b1e@gandalf.local.home>
In-Reply-To: <20200102120752.7b893b1e@gandalf.local.home>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_091632_082738_515EB266 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: pmladek@suse.com, tytso@mit.edu,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 gregkh@linuxfoundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, longman@redhat.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Jan 2, 2020, at 12:07 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> 
> How would this disable lockdep early in the process? The patch is just
> changing pr_notice() to printk_deferred() correct?

Yes, I meant without this patch. Lockdep will easily generate this potential deadlock warning early after boot and then disable itself.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
