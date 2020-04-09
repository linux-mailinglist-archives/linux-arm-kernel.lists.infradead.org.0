Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9376E1A3537
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 15:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J23/fHVQqF5UHh9T5nmvb99mo/AEQ5l3G1WPl7WUF7A=; b=ntKfLDrCb7XwTo
	HmW4cMAB8BkaK/BIjx9TX4oZUcMP9T7YLYR5/0Hewr6AQzvjMJ30wCPJ3qP4W+EJBo16otR5jB346
	YiO5bhDuI6E4ykbzUJ7dt3w2pvaZL8ec1M78go7ru5VlAmgl5Q24DjkQddKP1pvXkQ8dqe6NDMedk
	uwBtULj6PvbCvErzsoD8cv25tAAWwvJ3tg/npoDJ3/PbhSkw0XlHsxsURLkDiBMyRqaydlnokf52K
	ZXDKu+SDD5+MNUqvRyA8UqLUAobAsqZ+CqmgOuMUQ8b82oS5vwwgiY7jpJgRdfZqNJlbBvRUwpesO
	ZJKS+FIHG8SwHzhqikQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXeI-0007O7-6T; Thu, 09 Apr 2020 13:55:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXe4-0006hq-GS
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 13:55:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54ECF2078E;
 Thu,  9 Apr 2020 13:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586440503;
 bh=u95OMMVK9eb6dy/F0/3kmGSdhzJH2nqJgLn1FqXaxQ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rf3pFoVhhdKX/hXOeijUgQVrWVz4G3hKTA3l5nXuRmQ9y+RgzAQK9k6qzp7fx4Ilm
 L2MJPZEKVshUGP0k4B9iJxlsjg9aGzAhUSNhdFI+b8fT5YxCbv1ulqu6fLkVps7q0U
 WclVAw4tK230taCd9rWndmoFPxmWctKbKHKwQrY0=
Date: Thu, 9 Apr 2020 14:54:58 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 0/6] Introduce ID_PFR2 and other CPU feature changes
Message-ID: <20200409135458.GE13078@willie-the-truck>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <20200406170911.GA7446@willie-the-truck>
 <05f6eb1e-a82c-bd02-1871-e44ea00683d8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05f6eb1e-a82c-bd02-1871-e44ea00683d8@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_065504_577404_93505B82 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 02:20:20PM +0530, Anshuman Khandual wrote:
> 
> 
> On 04/06/2020 10:39 PM, Will Deacon wrote:
> > On Tue, Jan 28, 2020 at 06:09:03PM +0530, Anshuman Khandual wrote:
> >> This series is primarily motivated from an adhoc list from Mark Rutland
> >> during our ID_ISAR6 discussion [1]. Besides, it also includes a patch
> >> which does macro replacement for various open bits shift encodings in
> >> various CPU ID registers. This series is based on linux-next 20200124.
> >>
> >> [1] https://patchwork.kernel.org/patch/11287805/
> >>
> >> Is there anything else apart from these changes which can be accommodated
> >> in this series, please do let me know. Thank you.
> > 
> > The latest Arm ARM also talks about DFR1 and MMFR5. Please can you include
> 
> Sure, will do.
> 
> > those too? Might also be worth checking to see if anything is missing on
> > the 64-bit side as well (I didn't look).
> 
> Yeah. Now there some missing ones, will add those as well.

Thanks. Just as a heads up that I've also got a handful of changes in
this area, but we can resolve the conflicts at -rc1.

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=sanity-checks

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
