Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B161BC1E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S20B0gvxXQbcb536BNf00sQeaOsoDT5hcDr2MdCuj4E=; b=avwBKI+O98s15B
	L2FJUfEt3E6MLHoBk0IfU3sJo2b15ChnH4q6piACPfsTYat3+qIP8lUkbppH3vuJ8s5KJJQ5i4bnx
	HCaKPkd65TJPDD4gAPMMxF1XBdu5I/B63cxKCHMt822TccLNbNQmbQbq8qCWLWsUvqXVATPSBQvJu
	4Z/WfGXSjAYfO3Rq+XSTKp7siKXRT+EMJr4QIcz6PgwHxYXyrgwuxBkY62Gk485C1YToNeaFFMLqk
	JrNkExOrMXrxG7lkImwhBlnqNJveAAQyYN+8wVPX7nhqq6+xYStPTlTEf3uEdD7zptxviGcprmJqo
	GmfSBuHba3t+0NqBd3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRaL-0003MN-Ab; Tue, 28 Apr 2020 14:51:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYT-0008LS-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:49:51 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 288662070B;
 Tue, 28 Apr 2020 14:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085389;
 bh=oWzYwzNETQmIK5ca4U0qt2X2f3JNsnHpLzoNH8vrwsk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YJYCD3CwtlNbSnl0X/Vx1vjlyeHsSQjuqnu0w96et17G8QKOve9v1ndlG8zHBfh+M
 qW+jGtGia2Pm08luJU9qFC8w7chusY6ZT0ce3B+CdUEz9kuy+UuBv6ZtOby3XWIZFx
 V04+Ver7xyIK9ZutMPVaNzAdvgoEHvevd61jCPUs=
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64/kernel: vmlinux.lds: drop redundant discard/keep
 macros
Date: Tue, 28 Apr 2020 15:49:33 +0100
Message-Id: <158807922572.209889.15696813332429912625.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200416132730.25290-1-ardb@kernel.org>
References: <20200416132730.25290-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074949_917233_DD990FB1 
X-CRM114-Status: UNSURE (   7.37  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>, james.morse@arm.com, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 15:27:30 +0200, Ard Biesheuvel wrote:
> ARM_EXIT_KEEP and ARM_EXIT_DISCARD are always defined in the same way,
> so we don't really need them in the first place.

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64/kernel: vmlinux.lds: drop redundant discard/keep macros
      https://git.kernel.org/arm64/c/1eae811da6f4

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
