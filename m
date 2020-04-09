Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4A01A3311
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 13:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuDYomzQim3DAx6mjO1gcYGj/abVQvDTPJW9O/tkKtI=; b=g3swe5dA/bt0Yi
	bsQ/MbfX6wvKFD9LmFIlpb5pdmp7D3tdD2uKGEW4L/9MbD9EZ/j3akg9PPtDKF//aV3LCgyDk0f0C
	USiyenj2m4Hy7Xx2FAw/pH70SVIGcsuevn0OEOI74ukcFp/jAJTd4M6WpDEJGYIx+bOCSyrvECFJt
	UgD5607xGK6z/m+x4l1n3ZXm0hBUX7w2p8Nff/ccA7lKfQx+1dLmYiZVLsPIVuLuoSUd4/JbSuo9N
	fgThJ22C1CypNZgCSoXaT+P9QUPylLs/MXfb6HyWZxDfuz+yZJ4fn8SPpVVe7NbPTsaK2EahkYdv/
	6gI4N7q5BBJRKRrvIUIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMVC0-0002bP-5I; Thu, 09 Apr 2020 11:17:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMVBr-0002b2-3K
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 11:17:48 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6398320B1F;
 Thu,  9 Apr 2020 11:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586431066;
 bh=8Ug6GC5kIzXNDcpmlUlWmetp+Yosb2nlpMdk9+yDKt4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ctufLEy1uCQSKe1nAzuhT+y5VHQOdlCiK99NoyJ0WIg40r+EiJDhsuimSQZ1zdOuQ
 FwZQWyS81yBA56/MOvtHKMLRuatS1bNYsNKhFzzydx4qETOvcMymWLzzrOLxpIdR8S
 VYZSWTFuc4bowJJVn9HqZr/mikD0qsEVfKW6TSDY=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jMVBo-001t7x-LJ; Thu, 09 Apr 2020 12:17:44 +0100
Date: Thu, 9 Apr 2020 12:17:43 +0100
From: Marc Zyngier <maz@kernel.org>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH] irqchip/ti-sci-inta: fix processing of masked irqs
Message-ID: <20200409121743.10bbcc9a@why>
In-Reply-To: <851d5063-475e-ea7b-6609-684b08283550@ti.com>
References: <20200408191532.31252-1-grygorii.strashko@ti.com>
 <20200409103144.3b2169bf@why>
 <851d5063-475e-ea7b-6609-684b08283550@ti.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: grygorii.strashko@ti.com, nm@ti.com, peter.ujfalusi@ti.com,
 jason@lakedaemon.net, lokeshvutla@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, ssantosh@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, vigneshr@ti.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_041747_164121_C593380A 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Jason Cooper <jason@lakedaemon.net>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 9 Apr 2020 14:11:12 +0300
Grygorii Strashko <grygorii.strashko@ti.com> wrote:

> On 09/04/2020 12:31, Marc Zyngier wrote:
> > On Wed, 8 Apr 2020 22:15:32 +0300
> > Grygorii Strashko <grygorii.strashko@ti.com> wrote:
> >   
> >> The ti_sci_inta_irq_handler() does not take into account INTA IRQs state
> >> (masked/unmasked) as it uses INTA_STATUS_CLEAR_j register to get INTA IRQs
> >> status, which provides raw status value.
> >> This causes hard IRQ handlers to be called or threaded handlers to be
> >> scheduled many times even if corresponding INTA IRQ is masked.
> >> Above, first of all, affects the LEVEL interrupts processing and causes
> >> unexpected behavior up the system stack or crash.
> >>
> >> Fix it by using the Interrupt Masked Status INTA_STATUSM_j register which
> >> provides masked INTA IRQs status.
> >>
> >> Fixes: 9f1463b86c13 ("irqchip/ti-sci-inta: Add support for Interrupt Aggregator driver")
> >> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>  
> > 
> > Given the failure mode, doesn't this deserve a Cc stable?  
> 
> Sorry, was not sure how it works here.
> "Fixes" tag now is usually enough to get included in stable.
> Any way, I'll track it and if not included will re-send for stable.

Last time I asked, Greg was adamant that a Cc: stable was needed to
guarantee a backport. In some cases, the patch is picked up anyway, but
it doesn't hurt to have the stable tag if you think it should be
backported.

Anyway, I've now added such tag.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
