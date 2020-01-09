Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F01C1352C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 06:35:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7DueY3bfj2idVUpXMH3WeL89j5KCisb0l9iMi66H8Y=; b=VvYXeY4QjHjD1d
	Mz4Vd+DGqUr89ms+l4FBoN9cJUAaEimiekECeNiTpqTio4aViK7kZ7vG3ukN21MPM9Ak4c1Sha99/
	v+1bE9n/yjYi9qpvXwjFvS8bcpLQJSaI3HAbmgV/1234Sr4oqzH+Seh0E8xJA5SaMgt7wDCksiXqB
	2AffhM0CDYkTN2R29efFkb6o63wUr+3HgDBtWMSl6kiOWDBZz+4+ff89fMChjoVOVUlrIP0rkqOrn
	+Xs8mrrcP89WAm5jwgwTd/MTUp9XS7e8fgyWoet4rpDovjD8BfyZlaFXzTQONskE3HtNvPWCfyV9q
	p8tZdV1roQ1gQGg5KTOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipQTS-0003Sk-A2; Thu, 09 Jan 2020 05:35:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipQTG-0003AT-HJ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 05:35:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B03F831B;
 Wed,  8 Jan 2020 21:35:01 -0800 (PST)
Received: from [10.162.40.138] (p8cg001049571a15.blr.arm.com [10.162.40.138])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DD48A3F534; Wed,  8 Jan 2020 21:34:57 -0800 (PST)
Subject: Re: [PATCH 03/17] arm64: entry: move arm64_preempt_schedule_irq to
 entry-common.c
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-4-mark.rutland@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <49b239a4-d061-9133-a86f-b113e0747c8a@arm.com>
Date: Thu, 9 Jan 2020 11:06:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200108185634.1163-4-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_213502_649340_305E6C12 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, broonie@kernel.org,
 labbott@redhat.com, robin.murphy@arm.com, julien.thierry.kdev@gmail.com,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/09/2020 12:26 AM, Mark Rutland wrote:
> Subsequent patches will pull more of the IRQ entry handling into C. To
> keep this in one place, let's move arm64_preempt_schedule_irq() into
> entry-common.c along with the other entry management functions.
> 
> We no longer need to include <linux/lockdep.h> in process.c, so the
> include directive is removed.
> 
> There should be no functional change as a result of this patch.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
> Cc: Will Deacon <will@kernel.org>
> ---

Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
