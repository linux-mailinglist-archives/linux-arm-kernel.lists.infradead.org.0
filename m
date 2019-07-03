Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 561EB5E0D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 11:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCMRkubKI88zclme4Ai1DDll5JRlFQdFMydUdxlGcPA=; b=PObVgcpQKAUAfu
	yWxnhEEhZlMdaJFI8gsM+cIHobj+NYvUoOccYEdzFClVgmZnGgw0pVTFilMuQG66J6NCXYtBhFdvI
	nuhrNEvJqIL1KSJgqTeuX9uRTpeasAfJEaO0ZWphPb80jeYK02sMAiULd0mX8ceh1xL6JzsCRbcpJ
	Q1QYz9Q4kyycXkMBCRMrXdaACh42+B2j3BA2OlxBOwPBGJ9P3ohnE5D++Tq/QgorDwMGfnEOAvq7V
	cg3LWVqUqe8W1l70AgevgrJx6/c7+xLid6culVRDKJdk4pvLTatlZWrRjbmCjRPrNo/oHwoQAdR+T
	gXPUI5PyWXz4I0NRDl4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibPN-0005Ea-Ho; Wed, 03 Jul 2019 09:18:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibOA-0004Rw-0R
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 09:17:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E6622189E;
 Wed,  3 Jul 2019 09:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562145437;
 bh=Hg5W6VICCo9BzbpQFSwcqmSxDvvrpRJduyurYjvoOVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TfPa+hxXf06h9Xj4zZdAlr5/jj8yCzIiwNgYP9YLngnSKp7sU/Jx0YpS/FrgeV3Pe
 biCdpMGidC7UJF9ifDZcVprwG9+LqhV3djhFOQ4V/AMKIXJJISCVYSK0PIbT6QApU2
 QDrUnI6YPMpepSQrZx4zlTImxdFHzqxxrueayOeA=
Date: Wed, 3 Jul 2019 10:17:13 +0100
From: Will Deacon <will@kernel.org>
To: Nathan Huckleberry <nhuck@google.com>
Subject: Re: [PATCH v2] arm64: mm: Fix dead assignment of old_pte
Message-ID: <20190703091712.h6l6yba7ciuv4tin@willie-the-truck>
References: <CAJkfWY4yvVVmJoQ0WwyoFBkWYsUJnnQPNU+-g23-m-L3ETe_hQ@mail.gmail.com>
 <20190702234135.78780-1-nhuck@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702234135.78780-1-nhuck@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_021718_424793_4A902135 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 04:41:35PM -0700, Nathan Huckleberry wrote:
> When analyzed with the clang static analyzer the
> following warning occurs
> 
> line 251, column 2
> Value stored to 'old_pte' is never read
> 
> This warning is repeated every time pgtable.h is
> included by another file and produces ~3500
> extra warnings.

Does this warning actually trigger with linux-next?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
