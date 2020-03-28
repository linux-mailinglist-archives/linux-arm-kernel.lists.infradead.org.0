Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB921965B7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 12:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gW2kyNaiuG2MCczQIa9su4FbcA33UsXyL6MVzL+2Sqg=; b=UtY6pALF0y87Nd
	2MISKItt3nv3Bn9GuNnVVt/O9XQQF84BiN+whlRWK2oPuh6uvk7MjXTr2GarzVH+cfkNLgywav7mv
	1v4GsZTS+DgP7TTrGFel0XOU3/R91wFsIXjHkHMkEXDCVnB0LUvH1hGnUSZwT+MbJA2CZaRcaUtYt
	EzHKRMQZriOZ3o4JPPPpsZZE/sU7VOvTyZMBmMX5GL8mbK7QPUuK8D485hfzTJBdlwD1h6ogO+9kZ
	1ZCa9Fv3OPITMW8HuvMoNj730K9ThT0LPnWAuFXq3KyEauU9unwjSYe1gITDkFZP4E+0gujzlxxE4
	uWbk1PoXBkGIqrlMqYPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI9ZT-0004rs-RB; Sat, 28 Mar 2020 11:24:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI9ZI-0004rW-Rz
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 11:24:02 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65F30206E6;
 Sat, 28 Mar 2020 11:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585394637;
 bh=OPdTpCBji5gpmZux7SMOKK6UF14o+bG6hhufft+DOnA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OIs2wvm7CpDgWIeS78sUQUHjpKH7KyEIjTnG2RhMbv+jFVCKCAM3OIOLhGz06OErD
 PekeG6Vth9KOVA8E2tPajhv2Qdpu2dL84DL0Og+8aOds9kYDE/R7wrssUZDhdkrzcT
 IGUNhYYJJKhWgUSadlukSphGohjuuv9lTk7Mt8wQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jI9ZD-00GQel-Ht; Sat, 28 Mar 2020 11:23:55 +0000
Date: Sat, 28 Mar 2020 11:23:51 +0000
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200328112351.53f800ed@why>
In-Reply-To: <20200327180913.GA10454@willie-the-truck>
References: <20200327143941.195626-1-ascull@google.com>
 <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
 <20200327174838.GD178422@google.com>
 <e280f3f31bd5edc9db55757fcfa4ec62@kernel.org>
 <20200327180913.GA10454@willie-the-truck>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: will@kernel.org, ascull@google.com, steven.price@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 qperret@google.com, dbrazdil@google.com, qwandor@google.com, tabba@google.com,
 wedsonaf@google.com, kernel-team@android.com, James.Morse@arm.com,
 Suzuki.Poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_042400_928170_0E48B998 
X-CRM114-Status: GOOD (  16.36  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: qwandor@google.com, qperret@google.com,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, tabba@google.com,
 Steven Price <steven.price@arm.com>, wedsonaf@google.com,
 Andrew Scull <ascull@google.com>, James Morse <James.Morse@arm.com>,
 dbrazdil@google.com, kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 27 Mar 2020 18:09:14 +0000
Will Deacon <will@kernel.org> wrote:

> On Fri, Mar 27, 2020 at 05:52:59PM +0000, Marc Zyngier wrote:
> > On 2020-03-27 17:48, Andrew Scull wrote:  
> > > Thanks, Steven. Could we look into the EPD* caching microarch details
> > > Marc was referring to for these A55 and A76 cores?  
> > 
> > Only the folks that have access to the RTL can tell you, unfortunately.
> > 
> > Thankfully, there is a bunch of people on Cc that should be able to ping
> > the relevant teams and report back...  
> 
> Yup, otherwise I guess we can throw in the TLB invalidation after setting
> the EPDx bits until we have clarity from Arm. We wouldn't need to broadcast
> it, so it might not be too bad on performance. If it is, I suppose we could
> switch to a reserved VMID?

I'd like to avoid the reserved VMID if at all possible -- we already
have one for the host on nVHE, and I bet your patches are going to
create some interesting havoc^Wchanges in that area, as the host is now
a guest from the mm perspective. It isn't clear either whether a
reserved VMID really solves the problem either, as you could still
end-up with speculative PTWs. Can it be harmful to create conflicting
TLB entries if you never hit them?

But if we bring in TLB invalidation, I wonder whether the problem can
be mitigated solely with just that on the affected CPUs, and what the
impact would be.

/me eyes the D05 running its 32 guests...

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
