Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5C11992A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 11:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krmPs5hO0TLlJp3Tjic4Ca9G1uFjktPbRXAFLM7iR68=; b=FhRc0s8P/9OFo0
	T1ntUPeSw6kotrbia21Th7OGB+oR3e6T5c8G2vWPztC4W3DVMwyXmKYofKNLiXlxSdD3hu2yk/jur
	yGSybgt2v+WAOSOA5QgjmQ/zMtnddRNIIGHbiT9R03S2vmDttuqhbLjmDCG22y8kz1SdKO1e80s+P
	tImxiB4AMMcqKu+i2qdIwupO3C2tOSq54BymXFDpQAwzYFA26Hzls4M/POEa6H3UsguYYFZtNn/SS
	xBuyS/AZceQQctWa7+NwaMo7CEwpaJ9MKyIjJ82oc/hmNKGAh+z1HeZkmmIpEUDrnTrFGobk1RCm5
	N91Zb5Fyrgli1d81wgeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDSi-0001xJ-Qe; Tue, 31 Mar 2020 09:45:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDSY-0001wp-Qi
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 09:45:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6081430E;
 Tue, 31 Mar 2020 02:45:25 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DDBD43F52E;
 Tue, 31 Mar 2020 02:45:22 -0700 (PDT)
Date: Tue, 31 Mar 2020 10:45:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 3/3] arm64: tlb: skip tlbi broadcast
Message-ID: <20200331094034.GA1131@C02TD0UTHF1T.local>
References: <20200223192520.20808-1-aarcange@redhat.com>
 <20200223192520.20808-4-aarcange@redhat.com>
 <20200309112242.GB2487@mbp> <20200314031609.GB2250@redhat.com>
 <20200316140906.GA6220@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316140906.GA6220@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_024526_910174_19DBAA8F 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Rafael Aquini <aquini@redhat.com>,
 Jon Masters <jcm@jonmasters.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Mark Salter <msalter@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrea,

On Mon, Mar 16, 2020 at 02:09:07PM +0000, Mark Rutland wrote:
> AFAICT, this series relies on:
> 
> * An ISB completing prior page table walks when updating TTBR. I don't
>   believe this is necessarily the case, given how things work for an
>   EL1->EL2 transition where there can be ongoing EL1 walks.

I've had confirmation that a DSB is necessary (after the MSR and ISB) to
complete any ongoing translation table walks for the stale context.

Without a DSB, those walks can observe subsequent stores and encounter
the usual set of CONSTRAINED UNPREDICTABLE behaviours (e.g. walking into
MMIO with side-effects, continuing from amalgamted entries, etc). Those
issues are purely to do with the walk, and apply regardless of whether
the resulting translations are architecturally consumed.

> * Walks never being initiated for `inactive` contexts within the current
>   translation regime. e.g. while ASID x is installed, never starting a
>   walk for ASID y. I can imagine that the architecture may permit a form
>   of this starting with intermediate walk entries in the TLBs.

I'm still chasing this point.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
