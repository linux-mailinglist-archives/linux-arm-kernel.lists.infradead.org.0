Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B509919A993
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 12:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dezkT9u4wX0goIqYdFSJ8hOk6b+l/gAjrxTSi1ASgKc=; b=PHusfdVdcTJf+A
	iNDB/jEc0tQ4f/Q/RVI2/5hJoPmbb2ZEggGOAkECyds+krFQtNBKUUvIujnFNLJEVcp4pIPbhevw1
	PxrdBcwWc8fZrz8r2LtrQDrhCalljsGb74bG9I39f7dT446o33H0dxUAkO847Va0AFVskOehD5P03
	r5fwPxa+tD4JO3aqNUMOzEq+wVaP0W87NUvEnC9QF0ZUklRR69g6t85r6Pk+zmZtjepHVGHYPTUyS
	R69Qzj19eXrcmv3nOLt2sHYSaOklTwFOdjMwwRGo7NpeDsNsIa0RM8Mm6HeB64hDZxQPETpepm3Dp
	dWj+LBez6lUCMJtV1lhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJabW-0004Fq-8s; Wed, 01 Apr 2020 10:28:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJabO-0004FC-7T
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 10:28:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AACD20678;
 Wed,  1 Apr 2020 10:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585736885;
 bh=ZGIFCj7egJvoPFEFYXQPBwun/lzoQ4tkiFuG/7SntGo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fnoHwQbV/Vrntb3eTwRTe1ELFyq1lZ0qBZBP5bKg8eVlicaVTKIGXwbAjsx8lRuu+
 sOtHc9u6WqP7rgTmSMlnHfIvg3h/WbQJgQYOFz/QmIsRhzOrngo9fDYFaTmpQJuoSz
 hI+E2NpYeLGgUxSuSCqMue/ercrKBbSVRoRX6cXo=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jJabL-00HTVP-97; Wed, 01 Apr 2020 11:28:03 +0100
Date: Wed, 1 Apr 2020 11:27:57 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] KVM: arm64: vgic-v3: Clear pending bit in guest memory
 after synchronization
Message-ID: <20200401112757.6716cbf3@why>
In-Reply-To: <fe30a834-fdb0-e1ca-5e4a-0c7863236c5f@huawei.com>
References: <20200331031245.1562-1-yuzenghui@huawei.com>
 <20200331090709.17d2087d@why>
 <fe30a834-fdb0-e1ca-5e4a-0c7863236c5f@huawei.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, kvmarm@lists.cs.columbia.edu,
 eric.auger@redhat.com, andre.przywara@arm.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_032806_304800_00E2840E 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: suzuki.poulose@arm.com, andre.przywara@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 31 Mar 2020 17:11:37 +0800
Zenghui Yu <yuzenghui@huawei.com> wrote:

Hi Zenghui,

> Hi Marc,
> 
> On 2020/3/31 16:07, Marc Zyngier wrote:
> > Hi Zenghui,

[...]

> >>   > > I've been thinking about this, and I wonder why we don't simply clear  
> > the whole pending table instead of carefully wiping it one bit at a
> > time. My reasoning is that if a LPI isn't mapped, then it cannot be made
> > pending the first place.  
> 
> A writing to GICR_CTLR.EnableLPIs can happen in parallel with MAPTI/INT
> command sequence, where the new LPI is mapped to *this* vcpu and made
> pending, wrong? I think commit 7d8b44c54e0c had described it in detail.

I'm not sure this commit is relevant here. It describes how the
configuration is picked up by MAPTI, not how the pending bit got there
the first place.

> But thinking that we cache the pending bit in pending_latch (instead of
> writing the corresponding bit in guest memory) when a LPI is made
> pending, it seems to be safe to clear the whole pending table here.

Yes, and this is my worry. The spec is pretty vague about what the
behaviour of the redistributor is when something is set in the pending
table. At the moment, we treat these bits as if they had been generated
by a translation, but we do so inconsistently: we only pick these bits
up and generate a LPI if there is a mapping at the ITS level. If these
bits are relevant, we should forward a LPI to the CPU.

It feels we're in UNPREDICTIBLE land...

> 
> > 
> > And I think there is a similar issue in vgic_v3_lpi_sync_pending_status().
> > Why sync something back from the pending table when the LPI wasn't
> > mapped yet?  
> 
> vgic_v3_lpi_sync_pending_status() can be called on the ITE restore path:
> vgic_its_restore_ite/vgic_add_lpi/vgic_v3_lpi_sync_pending_status.
> We should rely on it to sync the pending bit from guest memory (which
> was saved on the source side).

The fact that we have *two* paths to restore pending bits is pretty
annoying. There is certainly some scope for simplification here.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
