Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C68C2E092
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 17:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbaECMaTnZ9hucYFsUKneGOoEf15/+Wr5KS0DeXiFwk=; b=rtXjKuZn4yepcB
	K4NZIkUZirHbzHR+ZHxqejz4eR62nxKUxCgtiTJyf2K4176L8/4It7I98mStbylC4YzboXdfLOeOZ
	uCgaq7fDklV3JXrv9aWhpjO+Ib50qxbeim+qH3QLSkz5e7Vsp7OVL/zIbQmL6z4ZgrKeJnUUOt6md
	QxVpt5jAPfmXMZ6JODBgRRAxlxS4lpzNICUxQa1g+oMJvD4tyzobFXRnxk4Dh3/wLWk8epyDTt202
	JUQ0miQJUg6RGh7Q2ceFTMXdLxqD7rW7tUo6FBZLYId2Ryko4KVJPgfi6BRm+7cI9VUuJ0zTM6vCG
	8mZlJOi8GIJmVgeRPYUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0Cg-0000Yj-4V; Wed, 29 May 2019 15:09:22 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0CY-0000Xn-RA
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 15:09:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C65A341;
 Wed, 29 May 2019 08:09:13 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 342A03F5AF;
 Wed, 29 May 2019 08:09:12 -0700 (PDT)
Date: Wed, 29 May 2019 16:09:09 +0100
From: Will Deacon <will.deacon@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 0/3] fix function type mismatches in syscall wrappers
Message-ID: <20190529150909.GE11154@fuggles.cambridge.arm.com>
References: <20190524221118.177548-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524221118.177548-1-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_080914_888168_ACA5B8FB 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 03:11:15PM -0700, Sami Tolvanen wrote:
> These patches fix type mismatches in arm64 syscall wrapper
> definitions, which trip indirect call checks with Control-Flow
> Integrity.
> 
> Changes in v3:
> - instead of SYSCALL_DEFINE0, just define __arm64_sys_ni_syscall
>   with the correct type to avoid unnecessary error injection

Thanks, I've picked this up for -rc3.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
