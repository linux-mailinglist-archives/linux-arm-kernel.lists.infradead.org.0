Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C391A3467
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 14:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aTy2hLoeWAq/uvEP9RLT7XjRqIvUdxzoXL2h3Iss0k=; b=tm50FMgZgqUyFU
	XYWp9ItZm4ttx8CF0zM/EC+DD2v48AgW1AHcpLSCfNnnspNGk944CZBcwLm6wryjvrLKcafqXh6ls
	ZFRfPHOg9nLnNXZRZ2LKRWpN7Gnm3Os7ZkFlXrAjZO32ooE7/ThW+tDguXuX3WKNtFZc1pNgGiCD9
	D9UFdeZUMc/8PRuGxH4+OK1j30IrYMqtUOAGy5olmcFdVJkw6nrvb5L5m+FDQCmmE9gKMGu8/VBEE
	3sZC6JIh4rhZAugChtja2gZThdWkbgRepz7uGMuUHz22JTzgiDsgoX33QNlwYBRjvbUB6NT8MTLmd
	Wqt6u6a4lDG6VauW3TPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMWgD-0002PX-9C; Thu, 09 Apr 2020 12:53:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMWg7-0002Ol-0p
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 12:53:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2DCA2078E;
 Thu,  9 Apr 2020 12:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586436785;
 bh=Kk1SW3weqdz4tmBHA5UhYBHVxFwphct/t4b5tGbPZms=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=plUHnHQ3DZTmwFicvlj+/ZUHcc/JJKaTER7h0q1lrZfzH8M8hXI4jqM2gx+UHAFwE
 4sTt1RMsjYezWLsw3Ozs992kSNzE1YN/3BJ1lZTQ/3D6NURIdvH+diuQ9oaQ5a2p2M
 N4YiLbY+T15eZQfyFnwwLedPk9yyGN6IKUS9N+YQ=
Date: Thu, 9 Apr 2020 13:53:00 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 5/6] arm64/cpufeature: Drop TraceFilt feature exposure
 from ID_DFR0 register
Message-ID: <20200409125255.GA13078@willie-the-truck>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-6-git-send-email-anshuman.khandual@arm.com>
 <bb4d5175-1c72-a1a6-1e79-116991717fdf@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb4d5175-1c72-a1a6-1e79-116991717fdf@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_055307_081908_120F4543 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, anshuman.khandual@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 06:19:21PM +0000, Suzuki K Poulose wrote:
> On 01/28/2020 12:39 PM, Anshuman Khandual wrote:
> > ID_DFR0 based TraceFilt feature should not be exposed.
> 
> ... to guests.
> 
>  Hence lets drop it.
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Hmm, doesn't dropping cause it to become NONSTRICT? In general, I'd prefer
that we list all fields in these tables, rather than have implicit behaviour
in their absence.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
