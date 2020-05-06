Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3C91C6E74
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSabshSUfx2+PHjmHeHOSwUm/pprltxI1ojpqg9dZpI=; b=PkBM5Ur4aRJE3N
	dkmYsMgMDknjcT4qhFG7Wl7kNXW3QKmHPH+hfxkbX/Olf7GqnOamqDhY63E0gZDMkIh2vJlLKinag
	8Pi3DIOegomYys8IWv/+oEfMtl5MiuRkakNBDYqqL5YVQ9Q0d6Ml7qDLh/F+uON91SPb8qtI0eQcl
	APYYLzAhrVTQEr4zJow1avDPWDvkzVscNjTig/rBYLC/yWEDJrhkD6d8JjDct2Kd64ZbWTT8GxYYQ
	t1cW0R+qb66DS7bGjOwJ4t1dxnILANdMYq3Qkd5TTqYmPjx6+vdX8ZzWiK/U1p4Udr6RIck3qMqEx
	hMiyuwIrs5m+Y5taf42g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHOY-0002QH-99; Wed, 06 May 2020 10:35:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHOE-0002PX-EL
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:34:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A2101FB;
 Wed,  6 May 2020 03:34:56 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 843823F71F;
 Wed,  6 May 2020 03:34:55 -0700 (PDT)
Date: Wed, 6 May 2020 11:34:53 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 1/2] syscall.2: arm: Use real register names for arm/OABI
Message-ID: <20200506103453.GS30377@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
 <9c75b89f-be1e-52a7-e98c-46b7dfe89d1d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c75b89f-be1e-52a7-e98c-46b7dfe89d1d@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033458_529362_BE2EC479 
X-CRM114-Status: GOOD (  14.07  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-man@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 12:05:00PM +0200, Michael Kerrisk (man-pages) wrote:
> On 5/5/20 5:24 PM, Dave Martin wrote:
> > The arm OABI syscall interface is currently documented in terms of
> > register name aliases defined by the ARM Procedure Call Standard
> > (APCS).  However, these don't make sense in the context of a binary
> > interface that doesn't comply (or need to comply) with APCS.
> > 
> > Use the real architectural register names instead.
> > 
> > The names a1-a4, v1... are just aliases for r0-r3, r4... anyway, so
> > the interface is just the same regardless of which set of names is
> > used.
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> 
> Thanks, Dave. Patch applied, with Russell's Acked-by added.
> 
> Cheers,
> 
> Michael

Thanks!
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
