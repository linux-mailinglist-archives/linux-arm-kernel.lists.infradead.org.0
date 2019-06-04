Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D57534386
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9t+7E8kcUb1UVEuP4bSi2iOOJz9M20qLdYFFFb4ZiJg=; b=K/cA0QjEYGSvOn
	UytqTxdx70yVpvQSyThSUf+tLddlzSPGuIZVUp1z2yudh0wx3c0E8FZeocKgNEamaSK5rqUJeLAEF
	cSF9F5akYIdOZYUOgUmXP9VI6EZmuRlrM6nvHDGbePJbrJHqBG8xeS98WsOnz2cPRhvMHDZbOxniG
	YYn4WyL+QrJlnrR93GnxvFPqfqdxEXRDsN3w+uBYhJMBbjGr3v0nBupFseotc6LrNt9YCl3Cx32Gf
	StpfwodQCR514eRK/HKaX+wOFqy5t+ZzocCht2f+XFlsqf68M8uwxlYUkMf9eFTavq7AU0aDjrrJ5
	F689aDQB9V0Oz+8px1+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY679-0006MF-2m; Tue, 04 Jun 2019 09:52:19 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY672-0006Lv-HO
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:52:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8720180D;
 Tue,  4 Jun 2019 02:52:11 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 745003F246;
 Tue,  4 Jun 2019 02:52:10 -0700 (PDT)
Date: Tue, 4 Jun 2019 10:52:08 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] arm64: Silence gcc warnings about arch ABI drift
Message-ID: <20190604095207.GU28398@e103592.cambridge.arm.com>
References: <1559575830-11941-1-git-send-email-Dave.Martin@arm.com>
 <20190604094452.GA29927@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604094452.GA29927@infradead.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_025212_582004_90D5F8DF 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 02:44:52AM -0700, Christoph Hellwig wrote:
> I'd be curious where we expose structs containing bitfields as
> pass by value arguments in the kernel.  That generally doesn't seem
> like a great idea.

This was firing on struct printf_spec for example, which is local to
lib/vsnprintf.c.

I haven't dug into the background of why that struct is encoded this way,
or whether pass-by-value semantics are really important for it.  Maybe
it could be changed.

Bitfields in ABI would be the worse problem, but this particular
warning is only related to pass-by-value cases.  I haven't exhaustively
gone through everything, but I've not seen a case of bitfields passed
by value in the ABI.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
