Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 340E915F503
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:33:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VY0UbWeKiGWZ4BgUtiIgHKtAKKrFxkEz2bHUsY3P74=; b=rFDEElvy102zsu
	LohlK8gcL6VN2vYXm2P5FBrcxs45sV5EOl9wT3jpUZdIvx0uZzVPMDoSmBpOIKOZ+UYHA4xI1zshC
	ct4fhbthtf2Ge+pA8lSZYsJnY459/NFQo0v3Y/MW1rKmIXu7iKaSHBe8YtssBEn1/LFccCALmfuA9
	6aLwGPSzCyjjSf4goPWHrGe3XiJWGYhXl8W3X27CSpwnBjO/v5R5GVSiG82QQZ6x0IPa8inf1cvvS
	/hWG3lsySmtVeuPIK918WnTu2TpvyrpVO7SaLPBBaSB0CDya7omNEAunSAqqKHz9ChzrDI/GTU1qT
	fQ1IkSn3lPNv12Z+kB1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fm0-0002XY-1g; Fri, 14 Feb 2020 18:33:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2flp-0002Vo-4r
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:32:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 380E5328;
 Fri, 14 Feb 2020 10:32:56 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B6F033F68E;
 Fri, 14 Feb 2020 10:32:55 -0800 (PST)
From: James Morse <james.morse@arm.com>
Subject: Re: [V2 1/3] firmware: arm_sdei: fix possible deadlock
To: luanshi <zhangliguang@linux.alibaba.com>
References: <1579145331-78633-1-git-send-email-zhangliguang@linux.alibaba.com>
Message-ID: <2a86cb1b-f8e7-a106-68f2-42e7350a12d2@arm.com>
Date: Fri, 14 Feb 2020 18:32:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1579145331-78633-1-git-send-email-zhangliguang@linux.alibaba.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_103257_225859_9294BF7E 
X-CRM114-Status: GOOD (  13.23  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luanshi,

On 16/01/2020 03:28, luanshi wrote:
> We call sdei_reregister_event() with sdei_list_lock held but
> _sdei_event_register() and sdei_event_destroy() also acquires
> sdei_list_lock thus creating A-A deadlock.
> 
> Fixes: da351827240e ("firmware: arm_sdei: Add support for CPU and system
> power states")
> 

(Nit: stray whitespace in the fixes tag, the backport tools may choke on this)

(Please include 'PATCH' in the [] section of the subject when posting, its part of the
'canonical patch format', and my scripts for pulling a series of the list depend on it!)


> ---

Thanks for picking up my suggestion, ... it was what I think should have been done in the
first place to avoid this bug.
Looking at your patch, we'd need to take the per-event lock around the reads of reregister
and reenable in sdei_cpuhp_up() too, and sdei_reregister_shared(), ... and this quickly
becomes much noisier than a patch for stable should be. (Sorry, I should have tried it
before suggesting it!)


I've picked up your first version, but instead of duplicating the contents of the
function, I've added '_llocked' wrappers to account for that lock already being held. This
isn't great as we have _locked too, but lockdep should keep us honest.
Because I started with your patch, git has kept you as author.
This ended up as patch 2, because it was also necessary to move those reregister updates
into their callers to fix hibernate.

I'll posted what I have next week, sorry for the hiatus.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
