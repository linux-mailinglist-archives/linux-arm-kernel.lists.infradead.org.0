Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D962F4E5D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oAhsrB9iGr0dSfMjTcETajM6wnb2UlOtkmE0BMSup8U=; b=IdN1CFNPjWbyjooMWfT2WCn8q
	6fG1Kmd54QJYj3st6vnZ6yKZfjAoxViC4+t5SS/gHQxKal+J2zXIr3Trvset5TPJ1OR15NuFaRAOj
	HN/KS4prz8NKSCdbJlUO4pDkjZsSDv8PshlFm0m8jvktuV7LJKQmHWXwxEtvziMpQtpW7C7STdeDA
	g4r+HtFNeM87HL8AgGl1gamfNtgTxNH3+qMSsbkp2V2B0bfmmAuJyVdZEqHRRSpsqwoKzpSiqcr0d
	9r0OzElXZFN8Q8XDPB1NxvdNuC0NGuVhMwlHnRheCee3wOAJhA+kU+OAKuAYI1u9VYZeNUeP29li1
	cGS8qg5bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGiE-0003fK-6G; Fri, 21 Jun 2019 10:24:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGVI-0006Xv-Rs
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:10:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B7B6142F;
 Fri, 21 Jun 2019 03:10:44 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 29C863F718;
 Fri, 21 Jun 2019 03:10:43 -0700 (PDT)
Subject: Re: [PATCH V2 2/4] csky: Add new asid lib code from arm
To: guoren@kernel.org, arnd@arndb.de, linux-kernel@vger.kernel.org
References: <1561109999-4322-1-git-send-email-guoren@kernel.org>
 <1561109999-4322-3-git-send-email-guoren@kernel.org>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <2c6acec4-07b7-b214-9eeb-964dc3a0d632@arm.com>
Date: Fri, 21 Jun 2019 11:10:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1561109999-4322-3-git-send-email-guoren@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_031044_996647_CA2720BD 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arnd.de>, Catalin Marinas <Catalin.Marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-csky@vger.kernel.org,
 Guo Ren <ren_guo@c-sky.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 21/06/2019 10:39, guoren@kernel.org wrote:
> Signed-off-by: Guo Ren <ren_guo@c-sky.com>
> Cc: Arnd Bergmann <arnd@arnd.de>
> Cc: Julien Grall <julien.grall@arm.com>
> ---
>   arch/arm64/lib/asid.c        |   9 ++-

This change should be in a separate e-mail with the Arm64 maintainers in CC.

But you seem to have a copy of the allocator in csky now. So why do you need to 
modify arm64/lib/asid.c here?

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
