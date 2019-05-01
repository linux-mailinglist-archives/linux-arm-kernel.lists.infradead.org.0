Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C191036E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 02:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C9OQJfFIPLOg/Nn0RDJxBAT3TzG0EVkNDbfCMyQFNwU=; b=ahx82yLW72ZznEssOFJevVvFC
	xXe+6Wvcz01uN3Qp2sli3Sl0rs0StuP8us0CVWpXztKrgufhPo262osvEj3vXUeQyotd6ih0m0IW2
	3gVHzhDhOtIEikt5iDr4nrb9TPHbUnmgQQAnRJ9hfeclRfSluSdMam+ubXWsw4/704018JvK2Zr/c
	+zlR/NHCbpYLKuGb8Jho7EQAEWxWykzoo9490KhoFZLn0N2SC6T38ukP8/TB4C1NfiHIdZBzWvRXX
	f/Z+k4nQF0USh1uYybt69qiOZLOh7fSePrYcACONBxpguFMLbLThCfa1Ezmv8Wr2e4Sxt6YMA6aZG
	4gfCFjYuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLcmj-0003yX-5Y; Wed, 01 May 2019 00:07:41 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLcmc-0003y9-Lv
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 00:07:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B8BED602F3; Wed,  1 May 2019 00:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556669251;
 bh=dAu7JXFbPaijmiIBB0IbVbY+HYF5UPs/C/cMlmqKdxA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fsgEQ4A3ntIzvdw5QeNiusiRKjkUrDsXdPVYEDCjnpX/ArGnw4ezRKDO1zES0tr1J
 OiW8wSq7yrxVBaGcu2qs3HvFPuZiEno+2AiMC2WP6jPoNkFhkRuybKgIYR95R4VJaX
 bZbH7NU4aeYXG0J3YvwX5ostS23R+b3oXQIxQpps=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 553E060735;
 Wed,  1 May 2019 00:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556669251;
 bh=dAu7JXFbPaijmiIBB0IbVbY+HYF5UPs/C/cMlmqKdxA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fsgEQ4A3ntIzvdw5QeNiusiRKjkUrDsXdPVYEDCjnpX/ArGnw4ezRKDO1zES0tr1J
 OiW8wSq7yrxVBaGcu2qs3HvFPuZiEno+2AiMC2WP6jPoNkFhkRuybKgIYR95R4VJaX
 bZbH7NU4aeYXG0J3YvwX5ostS23R+b3oXQIxQpps=
MIME-Version: 1.0
Date: Tue, 30 Apr 2019 17:07:31 -0700
From: Sodagudi Prasad <psodagud@codeaurora.org>
To: julien.thierry@arm.com, will.deacon@arm.com, catalin.marinas@arm.com,
 mark.rutland@arm.com, lorenzo.pieralisi@arm.com, sudeep.holla@arm.com
Subject: Re: PSCI version 1.1 and SYSTEM_RESET2
In-Reply-To: <24970f7101952f347bd4046c9a980473@codeaurora.org>
References: <24970f7101952f347bd4046c9a980473@codeaurora.org>
Message-ID: <efee74624f986a358b8986ae3085fba2@codeaurora.org>
X-Sender: psodagud@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_170734_740315_C2348641 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-04-30 14:44, Sodagudi Prasad wrote:
+Sudeep

> Hi Mark/Will,
> 
> I would like to understand whether ARM linux community have plans to
> support PSCI version 1.1 or not.
> PSCI_1_1 specification introduced support for SYSTEM_RESET2 command
> and this new command helps mobile devices to SYSTEM_WARM_RESET
> support. Rebooting devices with warm reboot helps to capture the
> snapshot of the ram contents for post-mortem analysis.

I think, there is a recent discussion from Sudeep for the SYSTEM_RESET2 
support.
https://patchwork.kernel.org/patch/10884345/


Hi Sudeep,

I was going through your discussion in the below list -
https://lore.kernel.org/lkml/d73d3580-4ec1-a281-4585-5c776fc08c79@xilinx.com/

There is no provision to set up reboot mode dynamically instead kernel 
command line parameter.
Looking for options to reboot device with warm reboot option when kernel 
crashed.

panic() --> emergency_restart() --> machine_emergency_restart() --> 
machine_restart(NULL);

It would nice if there is a config option to reboot the device either in 
warm or cold in the case of kernel panic.
Calling machine_restart with a NULL parameter for kernel crash is 
leading to devices cold reboot.

-Thanks, Prasad

> 
> -Thanks, Prasad

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
