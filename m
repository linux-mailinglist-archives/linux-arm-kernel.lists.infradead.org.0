Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C2845CB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JfVpSz116I7RukDCcohgaKX7L3JAHgpA3z89WyT1xM=; b=f2VlIk+XNkLmTq
	kCJkCfOBztPiaYDIgDPfMOs6lmGPvlYTLYm6eb76YzaKonn5VWhz4M45WiIkZ8qwtw8+OLAhChj0g
	Cc/Hh/1H6SNqVDOWlta5Yh4JF2W4fIllRoLMXtPHhUDoFjeTR2YBRplydCBAQcM6/gjk9xTs9LLHT
	P1RBKa9DRy9X07nSRqINLKW922lOKP3aYfZVV6H6ZcoYE2eiTJ5vTx2WnoSUIFJYQhrI5Se08xYhO
	D8quohlF2aI+Mbb6RpT5PlJB2fWVztSOaveACJZyyH8BCuGSncChq7plO6oT8Jn49bxg4MCm668oJ
	CupV7lz/32AM0HNZIdWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblFF-00076F-AI; Fri, 14 Jun 2019 12:23:49 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hblEW-0006ak-2T
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:23:05 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hblEL-0002pf-BB; Fri, 14 Jun 2019 14:22:53 +0200
Date: Fri, 14 Jun 2019 14:22:52 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] mm/ioremap: Probe platform for p4d huge map support
In-Reply-To: <1560406781-14253-1-git-send-email-anshuman.khandual@arm.com>
Message-ID: <alpine.DEB.2.21.1906141422370.1722@nanos.tec.linutronix.de>
References: <1560406781-14253-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_052304_284815_AB0E88B4 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 akpm@linux-foundation.org,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019, Anshuman Khandual wrote:

> Finishing up what the commit c2febafc67734a ("mm: convert generic code to
> 5-level paging") started out while levelling up P4D huge mapping support
> at par with PUD and PMD. A new arch call back arch_ioremap_p4d_supported()
> is being added which just maintains status quo (P4D huge map not supported)
> on x86 and arm64.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Michal Hocko <mhocko@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: x86@kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Acked-by: Thomas Gleixner <tglx@linutronix.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
