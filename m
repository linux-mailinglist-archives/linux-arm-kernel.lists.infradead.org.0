Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2E81177A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHUKvXLqsJkNHd2APB7N+Pv3wQcz++wFRDFmxdZzGAY=; b=ePYxKceVzw4hsQ
	9PzvcMhF1lo0XZJuJGO1RqoFQWcFeynrMnAIzqJGLXeUSO7JjuWJqm93rA9ZeE1Q1Mum2zdNejqZa
	VWHPFhat3Jp7lZHquwO9ADhT9CjsqLmDtJjDfcWb086H0FLt4g4kJu7UePT2jWka7V+KdJgJYWjSM
	gNbF/v63+o8aWMaLZcaHKrK4vQh+yqBtAMqxDGyNUBXX1eM9IQxjmh/OlF97z9eGUCQopIz48dvXO
	NJlem72tMHhbmwG/MF6DuR2Y6L4uLCZHXt91CUVOzkMzSWa10XoiEk0gDCK5iniMd15BwwCEAIe9W
	2R8roI4jcyKoIHf8XRRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePsv-0005WH-Jb; Mon, 09 Dec 2019 20:44:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePsm-0005UV-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:43:54 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 69ADB68BE1; Mon,  9 Dec 2019 21:43:45 +0100 (CET)
Date: Mon, 9 Dec 2019 21:43:45 +0100
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 0/6] Allow setting caching mode in arch_add_memory()
 for P2PDMA
Message-ID: <20191209204345.GA29265@lst.de>
References: <20191209191346.5197-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209191346.5197-1-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_124352_467659_C215E56E 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Dan Williams <dan.j.williams@intel.com>,
 linuxppc-dev@lists.ozlabs.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 12:13:40PM -0700, Logan Gunthorpe wrote:
> This changes is pretty routine for most of the arches: x86_64, s390, arm64
> and powerpc simply need to thread the pgprot through to where the page tables
> are setup. x86_32 unfortunately sets up the page tables at boot so
> must use _set_memory_prot() to change their caching mode. ia64 and sh
> don't appear to have an easy way to change the page tables so, for now
> at least, we just return -EINVAL on such mappings and thus they will
> not support P2PDMA memory until the work for this is done.

ia64 and sh don't support ZONE_DEVICE mappings anyway as far as I know.

This generally looks fine to me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
