Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA62161949
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 19:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5tl9lreqyLDXnbR4t62LpHDT971wyCqXbwgtE1RXmCY=; b=qA6F+pNAiSBXSJobj5FFptkEl
	xaa+LlpWZmN6J9FYZIM8HxWMEeGYynyqUjzMbD6KZvOB2gHC7m2VnKP4J4k1qje7oTVgYal2Uf1bB
	ns3nkxLDdsZkaE9cnSx66QgehNMKJVPtl9IFwUuOyZoEAtcQGWcB/bzdzhxrP+UD8IjOpKLxsqa4p
	KE/4IJvQimspT1RjNNAjO30W7x/86G5PBq2HbjAjv1amln7zIGkfp0J8+XPOVl4HcsHpuwBGsENlL
	/OnzKrO+bvoWMeoxhqRG8iWXdhGDpNB8fChszhbCq5QrdVR5uIop3KTewy9D7jNKpg+GCUDX+6W9Q
	03d1zxErg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3kgt-0002T4-Ik; Mon, 17 Feb 2020 18:00:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3kgm-0002Sl-Od
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 18:00:13 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBAA3207FD;
 Mon, 17 Feb 2020 18:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581962412;
 bh=N4IaW7dJRmwJgdZkZ+ORETnJlyDW9qtyXif08JJnFaE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=A9vcyWM1I1hyR8h+F9be43m2NDJdYDzfr3Jk4E16UwflHq2bKAnqUpqKSYDCrKPVt
 ZY3sUGVq+MJmJdKQ00JDoYLChTZjbH2TSbRsZWR7X23+jjZkbtDvkoSl1/pdmgw4Mm
 67Dhpm+aIyl38XH+/zeiiGveb6jsacMbcxINtsCI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j3kgk-005z8z-1d; Mon, 17 Feb 2020 18:00:10 +0000
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 18:00:10 +0000
From: Marc Zyngier <maz@kernel.org>
To: Tomasz Nowicki <tnowicki@marvell.com>
Subject: Re: [PATCH 0/2] KVM: arm/arm64: Fixes for scheudling htimer of
 emulated timers
In-Reply-To: <20200217145438.23289-1-tnowicki@marvell.com>
References: <20200217145438.23289-1-tnowicki@marvell.com>
Message-ID: <f70d41fd006319e3d62224c410d62e20@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: tnowicki@marvell.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 christoffer.dall@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 gkulkarni@marvell.com, rrichter@marvell.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_100012_822968_67A55BC6 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gkulkarni@marvell.com, kvm@vger.kernel.org, christoffer.dall@arm.com,
 rrichter@marvell.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-17 14:54, Tomasz Nowicki wrote:
> This small series contains two fixes which were found while testing
> Marc's ARM NV patch set, where we are going to have at most 4 timers
> and the two are purely emulated.

What are these patches fixing? the NV series? or mainline?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
