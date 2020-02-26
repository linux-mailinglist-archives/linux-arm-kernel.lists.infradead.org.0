Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB291708E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 20:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyw46tB9Y03TQSD7nKFb56inuxuyaPGSjrfJioTly4w=; b=jyENSGiyBamuNT
	ZxT1iODI858g6f23Z7sUaEKfBEbN6Y9TaIVM9n50OlrlIWV4oaF2Bzh7/Kw4Enqv0MId2D+ScGunk
	+KqSQAJYYXu7SZ0cBTNWKTGBjxZZRRyrJDLbP9PRpFPoa9i/LnF7oFXy1cb0sxlMxYwCIjOCiaqfm
	qsP7WygyWaPYWRSsz3ylXnLEMJvBz0k+BOH7xxtoPTijEx8sKYSOjYozkXzN01BOKRzW4Lmsu6XE1
	P3Ucn934QcGNaOKh8Ad0Y3jwuxxCQH3M/+blX8SXOF2yydauDQxD5UlewH3iYi0R6FEpd7o9StzEm
	2eiwbdpAGSvNHRHvXRyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j72Kw-0004eP-8I; Wed, 26 Feb 2020 19:27:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j72Kn-0004da-Ic
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 19:27:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 522DD30E;
 Wed, 26 Feb 2020 11:27:03 -0800 (PST)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5A4A3F881;
 Wed, 26 Feb 2020 11:27:01 -0800 (PST)
Date: Wed, 26 Feb 2020 19:26:59 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2 09/19] arm64: mte: Add specific SIGSEGV codes
Message-ID: <20200226192658.GA4109@mbp>
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
 <20200226180526.3272848-10-catalin.marinas@arm.com>
 <874kvdxj73.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <874kvdxj73.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_112705_656373_45DADE77 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 01:05:52PM -0600, Eric W. Biederman wrote:
> Catalin Marinas <catalin.marinas@arm.com> writes:
> 
> > From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> >
> > Add MTE-specific SIGSEGV codes to siginfo.h.
> >
> > Note that the for MTE we are reusing the same SPARC ADI codes because
> > the two functionalities are similar and they cannot coexist on the same
> > system.
> 
> Any chance you can move the v2 notes up into the description or
> otherwise fix it.  The description talks about reusing the ADI codes
> which is no longer happening.

Oh, I forgot to check the patch description. I will fix it.

> Otherwise the patch looks good.
> 
> Acked-by: "Eric W. Biederman" <ebiederm@xmission.com>

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
