Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5EB165FA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/xwxWVBSQACdeefa6XFLNfxb9qV1iarqsGf6vPIf4zI=; b=TAxgV/OkSDb0zakwM0l4shMEG
	BCyC9+gR+8BDnf+im1Rj1+5cKmrYSax6+PgfZcYhcU0inWmMA2s1IFnf+bt7fDJ1hIz4ieI8E63Hr
	C02BctMjGWnZCleviSwxDDxMcv4kQmw4QZec8GXPjwPBXN5VwmkylVy42hkRvJQ+4ZnbctHNFsA0p
	XQ5R6V88ugY/yqE+LHBqkNeZ9BRyiLtSmS0LBlWgixE4Ry1O6Wx3Ylf7sYjFXGjBlPUqfhwBqZLMk
	3ZMH72kOKOG6F3gwplwtNd/xiNxp8k2WCdXaaoO1fwPhdQRuFRlA5S9GLsC9p9x6F7ovtL8h1lLvv
	OkGazKufQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mi5-0005Fp-SL; Thu, 20 Feb 2020 14:21:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mhu-0005FW-Sr
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:21:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7137D207FD;
 Thu, 20 Feb 2020 14:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582208498;
 bh=lceTBKXrhIYb6VxrwOKtVPslg2/v6WjO9hyREWwD78k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZbXXsMBsRyyIBeBmreTW8DQoMBPi3cWz8+SDX7nxLdE+hS/KR2082sCu/jViS+roU
 Ns6+qz/61WTOexKFZoJKNOz7TkGffZo/4+ASyu2gbwfPo5VxOSPTF5+wgewh3DVkOZ
 pO/PtLbsZkbcFnq5TiyT5/oB2JKvMRaUrt4nV6jw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4mhs-006kHV-QE; Thu, 20 Feb 2020 14:21:36 +0000
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 14:21:36 +0000
From: Marc Zyngier <maz@kernel.org>
To: minyard@acm.org
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
In-Reply-To: <20200219152403.3495-1-minyard@acm.org>
References: <20200219152403.3495-1-minyard@acm.org>
Message-ID: <1416dca51b52dff349923184f41d48e8@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: minyard@acm.org, will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, cminyard@mvista.com,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_062138_954136_B3BC1E96 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corey Minyard <cminyard@mvista.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-19 15:24, minyard@acm.org wrote:
> From: Corey Minyard <cminyard@mvista.com>

[...]

> After studying the EL0 handling for this, I realized an issue with 
> using
> MDSCR to check if single step is enabled: it can be expensive on a VM.
> So check the task flag first to see if single step is enabled.  Then
> check MDSCR if the task flag is set.

Very tangential remark: I'd really like people *not* to try and optimize
Linux based on the behaviour of a hypervisor. In general, reading a
system register is fast, and the fact that it traps on a given 
hypervisor
at some point may not be true in the future, nor be a valid assumption
across hypervisors.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
