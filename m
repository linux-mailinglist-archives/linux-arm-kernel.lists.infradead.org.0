Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072011ED51D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 19:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M2uiAinG0C2DsOIBdVqvCGdA4KkpIGV6hHx1aKEVmIc=; b=skeSRmSksRSMi/5QNnZ1b9995W
	ZvDjQ10/rJtMjZC6hZRdTj8UIzfHTXzfszkECNh9gVGjl7bOw1DthujDvZpVQkUJaPO6Ivarr0fdh
	FPnj3imibfIhTmOSm5ADzXMld7D7HE6OMbM9QR2o6oL1NEUS6EcNbF4IjjsCNv3Z8PvfcJJCTmsoI
	2dlbKWIGZDrvIS5MDIXRAaUOsEqpbQ+fLutmAwmfRzOmY1cWhmDsPSGjKtQBrrikPXT02sTFYLOt5
	pOKtOFk7MlDNBUNdXxD6FIg9UBMMmTOMqcbgObcPHp9lrXTVwCnIP/168UUvJN6ZTFyrjtSJ65itd
	GNR+PGlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXMi-0000jm-9M; Wed, 03 Jun 2020 17:39:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXMa-0000jH-JI
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 17:39:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80FB331B;
 Wed,  3 Jun 2020 10:39:39 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 805C13F305;
 Wed,  3 Jun 2020 10:39:38 -0700 (PDT)
References: <20200424135657.32519-1-valentin.schneider@arm.com>
 <20200603170511.GA23722@bogus>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/2] firmware/psci: PSCI checker cleanup
In-reply-to: <20200603170511.GA23722@bogus>
Date: Wed, 03 Jun 2020 18:39:32 +0100
Message-ID: <jhjimg8hwvf.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_103940_675690_AF12B180 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 03/06/20 18:05, Sudeep Holla wrote:
> On Fri, Apr 24, 2020 at 02:56:55PM +0100, Valentin Schneider wrote:
>> Hi folks,
>>
>> This is a small cleanup of the PSCI checker following Peter's objections
>> to its homegrown do_idle() implementation. It is based on his
>> sched_setscheduler() unexport series at [1].
>>
>> I've never really used the thing before, but it still seems to behave
>> correctly on my Juno r0 & HiKey960.
>>
>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> Tested-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks!

AIUI the plan is to have the base in for the following version, so we
can wait until then - or I can rebase this on top of mainline, and
whoever will be on the receiving end of the merge conflict will be
slightly annoyed :-)

I'm in no particular rush, and this isn't very hot code, so up to you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
