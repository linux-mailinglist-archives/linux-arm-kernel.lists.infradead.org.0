Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 967641C4F78
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RLT4c4pi+NJ3upusVXwS6W1LGNoZy9bIHiU07WhsUo=; b=thTr3WduQCslWf
	ST9d86AoVPcnxZAimNQZ8zn6CmjrAvggxDhQMllNIPh/8kfJgJKSTQ69FVFY5zOAxSIT4iALcpJLD
	UzXpk4/BVq/kqtvtYwhhmeu6xnxY1sxUjVKmT4IXUh0RTS6m/FsQGsc4fPp9WUtAAzbXMmufb6R++
	yIFCgwHaAfOPEjIQ/xbIBMLh9qpKWTKJmkwHufi4LPu81J7la+DWYiHkWnLJq/0ZDNYhNON3T76Mb
	GNioOQvSCGCrlm+43oXI1hVMpV+fwwpzMdCRLwdEJ4Rfklk8jkrzHR8VcNWepKPfqqGHI8C4DvKNg
	Ny0GmDZn9cm2hBF8WBoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVsHP-0006oN-Fu; Tue, 05 May 2020 07:46:15 +0000
Received: from mx01-sz.bfs.de ([194.94.69.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsGt-0006Ra-Rd
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:45:46 +0000
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
 by mx01-sz.bfs.de (Postfix) with ESMTPS id 952322031A;
 Tue,  5 May 2020 09:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901; 
 t=1588664732;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PRlYwnUotJRwG1fODwUXaPGeabpY24uzMQlWv3nM2r8=;
 b=S73C0KmoVleZlYJilU8Uqu2eiS6otaGYIo8y92wkWgGAgGxJwZLGmRMOWq4nGMlkCnb76/
 FasObeFVVZDYXUbQ1xKr9Ghr+aHX7PQYNbe0CjdChxtzusNTXoNeXUnz18B6kgpCg/rDcA
 jwkzzEm2pTA5avxCjtYMUc/0pa11BAf2Wp+XpCK61S3Cf13gQfB+5+ZgAFT+KcdM+mhOwd
 rRaXobP/vtfyCbvQBIZ1ukkwU4thmsIDpj/wCvJTXEu4yVlm4XesCZ4xt+ScbQgv5paHMZ
 zYiwuP2Qe/yQORzmCtPtMaPz/8kg/DGUTZSj4HvOAd/oDrw2ysg2xynk2DRqPg==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Tue, 5 May 2020
 09:45:32 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Tue, 5 May 2020 09:45:32 +0200
From: Walter Harms <wharms@bfs.de>
To: Dave Martin <Dave.Martin@arm.com>, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: AW: Adding arch-specific user ABI documentation in linux-man
Thread-Topic: Adding arch-specific user ABI documentation in linux-man
Thread-Index: AQHWIik/BJ/oVWzXakumst0NY4Xe3KiZGO3j
Date: Tue, 5 May 2020 07:45:32 +0000
Message-ID: <32259f3763344500a058a8ca8a3a33d8@bfs.de>
References: <20200504153214.GH30377@arm.com>
In-Reply-To: <20200504153214.GH30377@arm.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
MIME-Version: 1.0
X-Spam-Status: No, score=1.19
X-Spam-Level: *
Authentication-Results: mx01-sz.bfs.de;
	none
X-Spamd-Result: default: False [1.19 / 7.00]; ARC_NA(0.00)[];
 TO_DN_EQ_ADDR_SOME(0.00)[]; HAS_XOIP(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; BAYES_HAM(-0.31)[75.37%];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_SEVEN(0.00)[8];
 NEURAL_HAM(-0.00)[-0.898];
 FREEMAIL_TO(0.00)[arm.com,gmail.com]; RCVD_NO_TLS_LAST(0.10)[];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 RCVD_COUNT_TWO(0.00)[2]; MID_RHS_MATCH_FROM(0.00)[];
 SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_004544_225238_6587F8F2 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [194.94.69.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,
you are pointing to an (IMHO) interesting question.
How to document different CPUs ?
Given that an operating system should hide the different CPU's using
CPU specific features should be used sparsely at best.

the easy part are adds-on like flags for prctrl etc. simply add it to the page.

Other things should go to a cpu specific pages (can of worms). The problem will
be to keep that small but informative. I have no idea about the level of detail
(and i have worked with a range of CPUs) that could be interesting for a programmer.
An of cause every other CPU now needs also a page.

jm2c
 wh
________________________________________
Von: linux-man-owner@vger.kernel.org <linux-man-owner@vger.kernel.org> im Auftrag von Dave Martin <Dave.Martin@arm.com>
Gesendet: Montag, 4. Mai 2020 17:32:35
An: Michael Kerrisk
Cc: Catalin Marinas; Will Deacon; Vincenzo Frascino; linux-man@vger.kernel.org; linux-arch@vger.kernel.org; linux-arm-kernel@lists.infradead.org
Betreff: RFC: Adding arch-specific user ABI documentation in linux-man

Hi all,

I considering trying to plug some gaps in the arch-specific ABI
documentation in the linux man-pages, specifically for arm64 (and
possibly arm, where compat means we have some overlap).

For arm64, there are now significant new extensions (Pointer
authentication, SVE, MTE etc.)  Currently there is some user-facing
documentation mixed in with the kernel-facing documentation in the
kernel tree, but this situation isn't ideal.

Do you have an opinion on where in the man-pages documentation should be
added, and how to structure it?


Affected areas include:

 * exec interface
 * aux vector, hwcaps
 * arch-specific signals
 * signal frame
 * mmap/mprotect extensions
 * prctl calls
 * ptrace quirks and extensions
 * coredump contents


Not everything has an obvious home in an existing page, and adding
specifics for every architecture could make some existing manpages very
unwieldy.

I think for some arch features, we really need some "overview" pages
too: just documenting the low-level details is of limited value
without some guide as to how to use them together.


Does the following sketch look reasonable?

 * man7/arm64.7: new page: overview of arm64-specific ABI extensions

 * man7/sve.7 (or man7/arm64-sve.7 or man7/sve.7arm64): new page:
   overview of arm64 SVE ABI

 * man2/arm64-ptrace.2 (or man2/ptrace.2arm64): new page:
   arm64 ptrace extensions

 * man2/mmap.2: extend with arm64-specific flags (only two flags, so we
   add them to the existing man page rather than creating a new one).

etc.


Ideally, I'd like to adopt a pattern that other arches can follow.

Thoughts?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
