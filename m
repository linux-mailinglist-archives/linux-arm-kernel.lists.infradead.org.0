Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E671B1F7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwR1VpNZcu9nX6VV0Rqephlkvn8fA2KzmJYAr4LaEUE=; b=F4B5qglULUut9B
	o6w0jfdi584kc/IEQqu0eKOZBjOxJVNZkP5l6RWieWJZKaycgg4VAN2AsPioYxouirsnAACZJAuQj
	M823c/uMweS0CslsS/8OomKM74MgXV4vMShNbPt30aOrsJtD52FQlt+w557hepnW34mowHXcDhMIW
	068PbAyI8DfQsbCUg+IsHUj813RR0/Q+DWDq/VIBd7EMBAoNrpqjfZg3Zd2X1KnGoqLFMSqtP/n94
	YLZ9O0XVqfWrGx8hz9OZ2CVMFS2gvlr6SWZ8F8E0x8MfWPqoBJpYgNrk/3MDtGzHk01oqnllms91V
	D3qVcoZrB0EvoKyYvi3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQn05-0000xC-BE; Tue, 21 Apr 2020 07:07:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmzw-0000wS-IH; Tue, 21 Apr 2020 07:07:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E98DB206A5;
 Tue, 21 Apr 2020 07:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587452832;
 bh=nSyfKCbkaVtKHCZaeQ7c7Ek5l6MXuMmFCJQlpVuLZfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NUGOg1mXOuq/6HjHGlurmlbGhycqsLCFz0LK/ZaeGdY21oV5cjw12MYLtLeAPVFbw
 VfFOlg1Z5rWrrgro1MaB35twX1Nt57OaWBkyZtWSW5gWCA7FSq6FKpOboLcPfpRpUG
 9JxWfHvdPYP99brmwfjsmetxSMPBroBpO5dVQfOY=
Date: Tue, 21 Apr 2020 08:07:05 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 2/2] mm/thp: Rename pmd_mknotpresent() as pmd_mknotvalid()
Message-ID: <20200421070703.GC14448@willie-the-truck>
References: <1584680057-13753-1-git-send-email-anshuman.khandual@arm.com>
 <1584680057-13753-3-git-send-email-anshuman.khandual@arm.com>
 <20200420210354.GD29998@willie-the-truck>
 <78fee884-78fc-6102-1a37-12106dc21336@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78fee884-78fc-6102-1a37-12106dc21336@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_000712_622264_03E4FBC3 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: x86@kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Russell King <linux@armlinux.org.uk>, Steven Rostedt <rostedt@goodmis.org>,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
 nouveau@lists.freedesktop.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-snps-arc@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 04:57:26AM +0530, Anshuman Khandual wrote:
> 
> 
> On 04/21/2020 02:33 AM, Will Deacon wrote:
> > On Fri, Mar 20, 2020 at 10:24:17AM +0530, Anshuman Khandual wrote:
> >> pmd_present() is expected to test positive after pmdp_mknotpresent() as the
> >> PMD entry still points to a valid huge page in memory. pmdp_mknotpresent()
> >> implies that given PMD entry is just invalidated from MMU perspective while
> >> still holding on to pmd_page() referred valid huge page thus also clearing
> >> pmd_present() test. This creates the following situation which is counter
> >> intuitive.
> >>
> >> [pmd_present(pmd_mknotpresent(pmd)) = true]
> >>
> >> This renames pmd_mknotpresent() as pmd_mknotvalid() reflecting the helper's
> >> functionality more accurately while changing the above mentioned situation
> >> as follows. This does not create any functional change.
> >>
> >> [pmd_present(pmd_mknotvalid(pmd)) = true]
> >>
> >> This is not applicable for platforms that define own pmdp_invalidate() via
> >> __HAVE_ARCH_PMDP_INVALIDATE. Suggestion for renaming came during a previous
> >> discussion here.
> > 
> > Bikeshed alert: maybe pmd_mkinvalid() would be better, given that this is
> > a one-trick pony for pmdp_invalidate()?
> 
> I had thought about making it pmd_mkinvalid() earlier. But as we were replacing
> pmd_mknotpresent(), hence went with similar pattern pmd_mknotvalid() which was
> originally suggested by Catalin. There is an existing pte_mknotpresent() in arc
> platform as well. I dont have a very strong opinion either way, will be happy
> to rename. But then still wondering if we really need to.

I just think that having pmdp_invalidate() call pmd_mkinvalid() makes a lot
of sense and, since this is a pure renaming patch, then that's worth taking
into consideration.

If you go with pmd_mkinvalid(), then:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
