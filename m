Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CAF19782E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 11:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51np76ET1Pv57XZCarCeVdCZVnB1mATkWQqRshbrD0o=; b=IzwxfIuiPFNqT9
	FMpsyjl7x8UD6zNkkHmUDcNSH5azTYuaMI30doB85fvIJqhXKeCmB0KmeSAeu9fdJYJukl+g/PKcD
	I0u8czE8k466sWz+f2ZgZ4iCDCjRWUKO20drVeBb0ndltP6cpmOPLDeFSPO8zp3321K1cRbeCmG3c
	pA6DQ1fbt0zzMhhJYiQuAzrSr0+++8uWwysnQjWBamOjYQAmow7PzGM1t34LVI24ipkgNCJrK5rxw
	9mi9j8Xv0YmzgNstTNxCon8XhqQcES+L6S8K8QONXE6O4LPVrG2SUkeKkexsGWHuAPz15DFP7yD3R
	TRrJAciQbSsFUyIJQ3OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIrC6-0006M8-OQ; Mon, 30 Mar 2020 09:58:58 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIrBw-0006Kw-AN
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 09:58:49 +0000
Received: by mail-wr1-f68.google.com with SMTP id a25so20860136wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 02:58:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RAW4dI5AqDOZg2OFBhTf/EVo0m3y8bG8p0ACgPsFWtE=;
 b=mT39Lz7a13FkeRe+ZF+zy7GShoKwjP3ScpZ9XkAPvBZ2telu4hEoa0BxJAUAJmUHKb
 Gs3e1se9p57VTMxPL8WNAfnPZaO71RNqqURru9Z95LTveBXVF4/riFEfpxFmCWDQelXo
 5JImdPa3keAwaybsuBbdcad4P0HgAzgLI/MTybanMKTKBFO9ThVeXuqjRJrj7IdH42jG
 IZdSt/1CJb9T/cbBM3jxgizs6sMnAG5dtDXA5nZS8i+bPo1kXhtPtQlk/1+JfwgEUgki
 2YjiO/IHPdR0Vspa0UfdBRnX8Zabh6VxyaExLfkBUgH5uYumkj4LlbDy+Ll/SDUZPWRs
 Eedw==
X-Gm-Message-State: ANhLgQ1WDbFwK1MfWWLv4uLruejYu7ha+xhJ+b8TIY+dxk68BAht39FG
 vES5oIomfDVAkDFXttgS1SA=
X-Google-Smtp-Source: ADFU+vs2ADx9iXcEtG7i4t0y2sXGzETHyH4fleW4u+faHVS+T4YFrF+aBgCdG9nD2ekBmdttmSU8rw==
X-Received: by 2002:a5d:460f:: with SMTP id t15mr14129460wrq.413.1585562325855; 
 Mon, 30 Mar 2020 02:58:45 -0700 (PDT)
Received: from localhost (ip-37-188-180-223.eurotel.cz. [37.188.180.223])
 by smtp.gmail.com with ESMTPSA id b199sm17339431wme.23.2020.03.30.02.58.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 02:58:44 -0700 (PDT)
Date: Mon, 30 Mar 2020 11:58:43 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20200330095843.GF14243@dhcp22.suse.cz>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330092127.GB30942@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330092127.GB30942@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_025848_359587_61F2703A 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: mmorana@amperecomputing.com, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 Ingo Molnar <mingo@redhat.com>, Hoan Tran <Hoan@os.amperecomputing.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Vlastimil Babka <vbabka@suse.cz>,
 Will Deacon <will.deacon@arm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 30-03-20 12:21:27, Mike Rapoport wrote:
> On Mon, Mar 30, 2020 at 09:42:46AM +0200, Michal Hocko wrote:
> > On Sat 28-03-20 11:31:17, Hoan Tran wrote:
> > > In NUMA layout which nodes have memory ranges that span across other nodes,
> > > the mm driver can detect the memory node id incorrectly.
> > > 
> > > For example, with layout below
> > > Node 0 address: 0000 xxxx 0000 xxxx
> > > Node 1 address: xxxx 1111 xxxx 1111
> > > 
> > > Note:
> > >  - Memory from low to high
> > >  - 0/1: Node id
> > >  - x: Invalid memory of a node
> > > 
> > > When mm probes the memory map, without CONFIG_NODES_SPAN_OTHER_NODES
> > > config, mm only checks the memory validity but not the node id.
> > > Because of that, Node 1 also detects the memory from node 0 as below
> > > when it scans from the start address to the end address of node 1.
> > > 
> > > Node 0 address: 0000 xxxx xxxx xxxx
> > > Node 1 address: xxxx 1111 1111 1111
> > > 
> > > This layout could occur on any architecture. Most of them enables
> > > this config by default with CONFIG_NUMA. This patch, by default, enables
> > > CONFIG_NODES_SPAN_OTHER_NODES or uses early_pfn_in_nid() for NUMA.
> > 
> > I am not opposed to this at all. It reduces the config space and that is
> > a good thing on its own. The history has shown that meory layout might
> > be really wild wrt NUMA. The config is only used for early_pfn_in_nid
> > which is clearly an overkill.
> > 
> > Your description doesn't really explain why this is safe though. The
> > history of this config is somehow messy, though. Mike has tried
> > to remove it a94b3ab7eab4 ("[PATCH] mm: remove arch independent
> > NODES_SPAN_OTHER_NODES") just to be reintroduced by 7516795739bd
> > ("[PATCH] Reintroduce NODES_SPAN_OTHER_NODES for powerpc") without any
> > reasoning what so ever. This doesn't make it really easy see whether
> > reasons for reintroduction are still there. Maybe there are some subtle
> > dependencies. I do not see any TBH but that might be burried deep in an
> > arch specific code.
> 
> Well, back then early_pfn_in_nid() was arch-dependant, today everyone
> except ia64 rely on HAVE_MEMBLOCK_NODE_MAP.

What would it take to make ia64 use HAVE_MEMBLOCK_NODE_MAP? I would
really love to see that thing go away. It is causing problems when
people try to use memblock api.

> So, if the memblock node map
> is correct, that using CONFIG_NUMA instead of CONFIG_NODES_SPAN_OTHER_NODES
> would only mean that early_pfn_in_nid() will cost several cycles more on
> architectures that didn't select CONFIG_NODES_SPAN_OTHER_NODES (i.e. arm64
> and sh).

Do we have any idea on how much of an overhead that is? Because this is
per each pfn so it can accumulate a lot! 

> Agian, ia64 is an exception here.

Thanks for the clarification!
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
