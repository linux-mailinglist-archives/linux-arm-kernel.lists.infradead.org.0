Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E81A140B9F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyyuYGY2T/nd9yCIJABzo0IGg/LqscL/0fBIc8q8T64=; b=E5ePiiINCpPrKe
	CfhOYsN2E5AfgSGHspxqX5WBRJwh+noNHdaTRRz7zYPyuPLrVnoRIwAuu+uI5wD+Z066XeuUeXPRs
	Xp3zgIQ+VV5mUnpzG1fNIzqFpHZNynlW3YWYpYO1SsVrFPyhq3hTPhzsAE8iUHc/r9ds4KGMSidzJ
	ZYJWqoa6p/l4fuVDNMl4E7Quyf3SihJiGAiSeYuix0guti0gH4ZZI0/lrsrUJ1tHlyfu/tEzyzlRa
	6VUWo63yqs9eGgBwpr0EPJOQR9i6u8PqH0ZFgDdSaLSDGYQmBCoJRr9xAg63lXaD2p+gHwLjimXxt
	VYsB+umDNX/iQF+tj7Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isS2R-0003Dz-3j; Fri, 17 Jan 2020 13:51:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isS2C-0003CY-Ob
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 13:51:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 145A2206E6;
 Fri, 17 Jan 2020 13:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579269096;
 bh=A2cgkI2P2fv0CyyPfcgJ4TISHrCJTDpmEytL1DEg9WU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B7aKtwwXhZmovTBDNYRhnssowpsX3nalFH3NSjI8ejun1nlbuCdvoeaKZBo7hji0Q
 Sn9uTewcCnla8fOZhihDc6fnFpoxT5eDOPfuJyCZsl4IgzLCRJA2iYBpB8fUcwPqB1
 R/yaPIRipKfBZzDmzdOwNRCdJmqfGEBr3dvQjKQw=
Date: Fri, 17 Jan 2020 13:51:31 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/5] arm64: entry: preparatory cleanup
Message-ID: <20200117135130.GA9713@willie-the-truck>
References: <20200116183548.39411-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116183548.39411-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_055136_823879_46B825DA 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, anshuman.khandual@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 06:35:43PM +0000, Mark Rutland wrote:
> While reworking my entry deasmification patches [1], I realised that
> there are few bits I'm not quite comfortable with and will require a
> little bit more time to make robust. Mostly that has to do with
> manipulation of DAIF, irq flags, and the GIC PMR. I'm hoping that I can
> have the reworked patches ready around v5.6-rc1.
> 
> In the mean time, I've split out these preparatory patches in the hope
> that they can be queued now. These are based on v5.5-rc3, and I've
> pushed them to my arm64/entry-deasm-prep branch [2,3].

Cheers, applied.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
