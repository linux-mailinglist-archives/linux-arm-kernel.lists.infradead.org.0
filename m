Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E99D97DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/f4cfC6giMQYDMHN4DR7Garh6UHdCxZsYrQfdGbr4o=; b=tWs3h4H6yyj0uj
	JHwPokqeX70JC+P5ra2i5ZU05RiQa6vDtMNBhQBhrlmnOiWhCdl/UB3LvzTl2JrvIj7N19mnbIBui
	O5rgn6hn85izRLAQZv6fvPfaexkMLZWL+Uc8xBOc8PXDqNtlzTKZOJgN90qhTLuoj5ByqJLfakZgm
	8Q6+yxMPfzchH+odNr8xTIKMb0o+DKkvWQVv+7R/SY/tI39xEktDw+rdOm5rr9hcgKvgObsIIgNr1
	H10BYP1MpLjuL33o0Yg66OjYBn6zAAuH5xPNb6daVJiYuctYYZVtpiUMt7kgGd8VPl+K1miS7XGq1
	qQIn7KhHP9JccUzRvlGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmUO-0003JS-BH; Wed, 16 Oct 2019 16:49:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmUC-0003J9-Sb
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:49:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4ABCE2168B;
 Wed, 16 Oct 2019 16:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571244560;
 bh=2x/NnaemEJDTFOQeOH2k2VJdr8B9xLPTV/CiEPVIrZM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uKTPrAldje+kF2k0fTmrYrvAbWU0s9jFFy20JHxNBugg1pnfLt2ycm8hVVS0FAlLD
 it4mLvGLrVd/IiBikCYU/U/FlrgB/7Nc2ExQNH7coQSlaG7DIGTbToOIssItceQzHp
 06gOrGTsedfJCJwGFKFs2EaywZDG8pFPB4Q5xNBI=
Date: Wed, 16 Oct 2019 17:49:16 +0100
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm64: mm: fix inverted PAR_EL1.F check
Message-ID: <20191016164916.pcyjmmdnnup7wg44@willie-the-truck>
References: <20191016110304.44932-1-mark.rutland@arm.com>
 <99261f9e-98ab-ca79-9514-b900306f49df@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99261f9e-98ab-ca79-9514-b900306f49df@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_094920_944667_C2EEE698 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 05:29:27PM +0100, James Morse wrote:
> On 16/10/2019 12:03, Mark Rutland wrote:
> > When detecting a spurious EL1 translation fault, we have the CPU retry
> > the translation using an AT S1E1R instruction, and inspect PAR_EL1 to
> > determine if the fault was spurious.
> > 
> > When PAR_EL1.F == 0, the AT instruction successfully translated the
> > address without a fault, which implies the original fault was spurious.
> > However, in this case we return false and treat the original fault as if
> > it was not spurious.
> > 
> > Invert the return value so that we treat such a case as spurious.
> 
> With d0b7a302d58a reverted I can use A57's #1387217[1] to hit this spurious case.
> (it needs planetary alignment too).

Haha, I like your choice of words here! "Using" an erratum for testing is an
interesting concept.

> With this this patch the 'spurious' message is printed, and the kernel keeps running [0].
> 
> If its useful:
> Tested-by: James Morse <james.morse@arm.com>

Thanks, I'll pick this up along with the other patch to the field definition
(did you have that one too?)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
