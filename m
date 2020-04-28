Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810961BC204
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3hgiJT+KqLp+pYcaZfs5/vzKPIGchTsiBjCOGZuAwI=; b=VTyDsMTGodERw9
	RaMMuZYgvDD74KX4gcxrJRGVjNBXVMsNNy/U2fTraEnRfzoYksoVPxDUcKzZUFooiSNI10xDfAC5x
	7/navDuMIBiwFxqor6SZoB7p+bktoiRbrEASFFdoKAV9gnd4wsu4J3xWcBKsigVl2AY6gxKPDga8G
	onLy/jyHxw6WvqftlnVLQuMo+oXbFZiX+JS9pw7AOf8QG8MkIvwcstvmm2n0Fwi8BVt1zFYQ0PAYN
	FJOXY8eQPuh9H0b1t0zClI3ffOGk/KY0J76uCvgdx54Lcr4Tb7bwdyA2nWRe7gZAyHYGYKE/CNnGB
	dY7TO6I2dl75eOOjpzRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRdS-0005vR-Ud; Tue, 28 Apr 2020 14:54:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYi-0008W0-Io
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:50:07 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30B38206E2;
 Tue, 28 Apr 2020 14:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085401;
 bh=e/u/y83r4b6dQYbm2bYsUESEcgF7p+NJaD1GBfOZ/bg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pDNopLfuEC2n3bNquAlGpjAebJnR8gu5JGBLmMoZzP//GEQpJ/RRnfz/HHUn1QWvd
 JXhFAaSxZdTkre+InrRaWUcfN5TLln7R/dAHgenSsXICUnElZdWdc9NmWvyhj9YWvm
 l421DurWARY+50SlgdrMq7j3isfB4q4RZV1vHPzE=
From: Will Deacon <will@kernel.org>
To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 mark.rutland@arm.com, Jason Yan <yanaijie@huawei.com>,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: entry: remove unneeded semicolon in
 el1_sync_handler()
Date: Tue, 28 Apr 2020 15:49:40 +0100
Message-Id: <158807933790.210168.13352385084206867237.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418081909.41471-1-yanaijie@huawei.com>
References: <20200418081909.41471-1-yanaijie@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_075004_841614_EFD23A58 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Hulk Robot <hulkci@huawei.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 18 Apr 2020 16:19:09 +0800, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> arch/arm64/kernel/entry-common.c:97:2-3: Unneeded semicolon

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: entry: remove unneeded semicolon in el1_sync_handler()
      https://git.kernel.org/arm64/c/0dd2334fd5b9

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
