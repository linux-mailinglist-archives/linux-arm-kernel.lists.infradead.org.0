Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 238A21916C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoMe4Ea+NxAdohh3t9tWsN4BEw+MqlfN8pfFHWPn8gg=; b=IWK3DkF0HfPmIW
	eXY8MMsK7Pqr5BkY64OGoqNAWqD9cPUBh3GKJbbszqeHYAmIqUzv//HHkVnNa4W+PSyFjoUFCSWAW
	VKlA2UrJcTan2e/EYqlp6JddSD3WjI6S+H+iS4UArkVEhRyBXyuKLHwAWDmYuEA5S57To657Fo44r
	PMZciEdXddRunNJbXUs1mTKDmm9OPGhafXWZ8DfUvdfv8CGS73KXIAgfrOKKdUrxLGm4rvMA8CsUh
	uutgzNcefAwlG1WVoxKXsIF8RiO+FCOb36hBRQHqfW44DwmFvET4w75gg/DpO9kHFS9dXaWcSpjZo
	nSvWaNdjCMgTqLu8vp7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmgw-0006B3-CG; Tue, 24 Mar 2020 16:46:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmgm-00069b-9v
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 16:46:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F20201FB;
 Tue, 24 Mar 2020 09:46:01 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F1A33F71F;
 Tue, 24 Mar 2020 09:46:01 -0700 (PDT)
Date: Tue, 24 Mar 2020 16:45:58 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/2] arm64: crypto: Use .arch_extension
Message-ID: <20200324164557.GC3901@mbp>
References: <20200323191807.3864-1-broonie@kernel.org>
 <20200323191807.3864-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323191807.3864-2-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_094604_384159_F1EB72F0 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 07:18:07PM +0000, Mark Brown wrote:
> Currently when implementing optimised assembler routines using
> architecture extensions we override the base architecture along with
> enabling the new extensions, causing problems for in kernel BTI support
> which needs to raise the base architecture level for assembler files in
> order to generate BTI landing pads.  We did this due to a lack of
> support for the .arch_extension gas feature in older versions of the
> clang built in assembler but since current versions of clang now have
> support for .arch_extension we can use that.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

It make sense (I got burnt by this with the MTE patches).

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
