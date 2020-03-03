Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428621772D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 10:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDjvjb/VyKfD3SnEJtvClUdJqLvHQ8xeLwMX3kp2a7I=; b=qnLNwldP9/Eaky
	7YRbFoUAnV3QPNXoDv1pXIinks9540tj82mE4PD7O1dikLJq9JQfHD0tnzVlpvO+8EhtbhrqNrtYQ
	wnhzqNLh79rLlQn4gwsro1veh02u9r7dIaVzjLq34A0o1dqAwyNTcHN2ymCmHx1mcj3Zt6XArT7cn
	U3lEelCN78ZWpog5Em4h6068aydi/7yyBCmHjpwG6IUMMu6LOIXikweoJpokISem6gA2sBw0Fd1mx
	ffQMuTypS3FG1AlLRTLCM92eAqiWamp0F72UBi2yxifKHnlBHVSkP958kaTN11J34Q3WssN2fEyQt
	FlvQeCk8otVB1oM1cDKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j947k-0007w1-T5; Tue, 03 Mar 2020 09:46:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j947e-0007vO-Ag
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 09:45:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B40B2F;
 Tue,  3 Mar 2020 01:45:53 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 F37D93F6C4; Tue,  3 Mar 2020 01:45:52 -0800 (PST)
Date: Tue, 3 Mar 2020 09:45:50 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: FF <figure1802@126.com>
Subject: Re: A quick question about ASID on KPTI
Message-ID: <20200303094550.GA821972@arrakis.emea.arm.com>
References: <c427a03.eed.1709def7541.Coremail.figure1802@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c427a03.eed.1709def7541.Coremail.figure1802@126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_014554_414040_90325536 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 09:08:00AM +0800, FF wrote:
> i am look at some patches about the KPTI on ARM64, a quick question
> about the ASDI on KPTI:
> On KPIT, it will allocate a pairs ASID for a process, when the process
> running on kernel space, it will set the even ASID into TTBR1 register
> in tramp_map_kernel function, when the process running on User space,
> it will set the odd ASID into the TTBR1 register in tramp_unmap_kernel
> function.

Correct.

> my question is, when the process running in kernel space, if the
> process want to access the userspace address by copy_to/from_user(),
> the CPU will look-up the TLB with even ASID or odd ASID?

The even ASID as that's the current one.

> if it use even ASID to look-up=A0 TLB for userspace, it will always TLB
> miss, that will be performance impact. is it right?

As with any other TLB miss, a TLB entry will be allocated and may or may
not be removed, depending on what other activities happen on the CPU. In
theory, there is a small performance impact but I don't think it's
significant in practice (with real-world benchmarks).

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
