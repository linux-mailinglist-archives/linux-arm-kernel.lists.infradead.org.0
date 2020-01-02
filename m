Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F4B12E9A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 19:01:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=262OYwHS9sF7aDP7U0bdKBpIPDZCCdvYqEhhGhgT8Zo=; b=ubJ9SIdmZNFVsp
	ZvVECRFHuwjjhFWpy2xCNkRo1xX2ngCmr8HBueEUhwDLzfVlwpXIVWajd8mqAk1YqvOX0Ps7s4hcs
	pLMOQIt3rW2dLb80r/K83pDh9q5R9B2sQ5GVpmy0OMC3HfO6UOjn8IvjMocTKoXVeNHeh9VR0hbQt
	XGbeOlKZzHw/gkWF3VghIV6PDKvW4pK9bv2k5Jpo50DgmIDkUDUiDFn7sTE69ju50qhjF6GtrHZhu
	kb8VUfouLjB74WHn/SRa6dK0XsF0TlRM0oPuAstNykVze9Oki7p5abcYwDFNm+jQmE4VF3zummnM5
	51whlPhizUNzHw2E5TuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4n6-0007V5-EA; Thu, 02 Jan 2020 18:01:48 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4mz-0007Tw-9Q
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 18:01:42 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
 [104.133.0.111] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 002I0Y6w020811
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 2 Jan 2020 13:00:35 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 3EE664200AF; Thu,  2 Jan 2020 13:00:34 -0500 (EST)
Date: Thu, 2 Jan 2020 13:00:34 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] char/random: silence a lockdep splat with printk()
Message-ID: <20200102180034.GA197330@mit.edu>
References: <20191205010055.GO93017@google.com>
 <4F9E9335-334B-4600-8BC3-4AF91510D113@lca.pw>
 <1CA39814-DE67-4112-8F97-D62B9F47FF9D@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1CA39814-DE67-4112-8F97-D62B9F47FF9D@lca.pw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_100141_499797_02F78080 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: pmladek@suse.com, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 gregkh@linuxfoundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
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

On Thu, Jan 02, 2020 at 10:42:51AM -0500, Qian Cai wrote:
> 
> Not sure if Ted is still interested in maintaining this file as he had no feedback for more
> than a month. The problem is that this will render the lockdep useless for a general
> debugging tool as it will disable the lockdep early in the process.
> 
> Could Andrew (since the free page shuffle will call get_random) or Linus pick this up
> directly with the approval from one of the printk() maintainers above?

Sorry, things have been busy with the Chistmas holidays and getting
the ext4 tree ready for the merge window.  I'll take a look at this in the next day or two.

    	      	    	    	  - Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
