Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61289182C7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:28:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9y8i8ihSVXozlE5n1Fvk2e0fpyJLKhas31qmg/wu8LA=; b=ryHrSvBr2a+mt6T5xbPG5yh8A
	MLRpEnoInZ8rHlj84HwAPRNwxbvMB1V7J7+pWqDh0NZhEOQBH5PMQkTvOaSj9Z1lRGRwD8Y5qeD/w
	m5EM51pjISwDNeSN9GCM9LkxE2AYV8QEEjo3/8RPuTCBGSk2mmvP9LMHCkfrIw5N7m7ZU8HvDB81L
	lw0U7MSovOw6wVSTsjq6gZ/5jZHeLRRvfxDYZBwKtM8oL6+0gqEvCFr4b12qGOmMe7kJGTfoVLyQ4
	UHC5NL6yMBBM4ZMJMKjJF+BZyyNR68htjd+NX/TmlbC0sU2ClcoV8YAVdz5ow3gu+8XZc5GlDOvS9
	96hTxEqkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCK93-00080q-QM; Thu, 12 Mar 2020 09:28:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCK8P-0007Xm-Md
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:28:11 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 573C02067C;
 Thu, 12 Mar 2020 09:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584005288;
 bh=xIGhcP4cmy8ksAfngF2mgtlMwAvRWwnp7zQoi+vTB4E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ol9RmPgG6uECdyzvoJTJo5SYZdG3qUpPKzQsdoTc8vSPi02q+vlQsNS79HFJvFY0P
 0Bt+3mFe1NYvQql0pNZYnoazTijrKPAIcTY1AT5Eu00rdYs4Ap8/DE67DiNqleKLci
 vvQIo661e24v88EVbUp5uC/4dVvXkB8QiCJNjk2E=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jCK8M-00CAj6-I0; Thu, 12 Mar 2020 09:28:06 +0000
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 09:28:06 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v5 01/23] irqchip/gic-v3: Use SGIs without active state if
 offered
In-Reply-To: <63f6530a-9369-31e6-88d0-5337173495b9@huawei.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-2-maz@kernel.org>
 <63f6530a-9369-31e6-88d0-5337173495b9@huawei.com>
Message-ID: <51b2c74fdbcca049cc01be6d78c7c693@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_022809_825010_349EF84F 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-03-12 06:30, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/3/5 4:33, Marc Zyngier wrote:
>> To allow the direct injection of SGIs into a guest, the GICv4.1
>> architecture has to sacrifice the Active state so that SGIs look
>> a lot like LPIs (they are injected by the same mechanism).
>> 
>> In order not to break existing software, the architecture gives
>> offers guests OSs the choice: SGIs with or without an active
>> state. It is the hypervisors duty to honor the guest's choice.
>> 
>> For this, the architecture offers a discovery bit indicating whether
>> the GIC supports GICv4.1 SGIs (GICD_TYPER2.nASSGIcap), and another
>> bit indicating whether the guest wants Active-less SGIs or not
>> (controlled by GICD_CTLR.nASSGIreq).
> 
> I still can't find the description of these two bits in IHI0069F.
> Are they actually architected and will be available in the future
> version of the spec?  I want to confirm it again since this has a
> great impact on the KVM code, any pointers?

Damn. The bits *are* in the engineering spec version 19 (unfortunately
not a public document, but I believe you should have access to it).

If the bits have effectively been removed from the spec, I'll drop the
GICv4.1 code from the 5.7 queue until we find a way to achieve the same
level of support.

I've emailed people inside ARM to find out.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
