Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E989182FD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:05:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q4Wop6bpUfmJSjFkOdWykngJHC/icotDisVgKeby2zA=; b=b2sSVXDAD4bHqWV+www221bTb
	Za6w7ojRDBp3cmu2amu1H9AaC143mcjyWfZOGlpPqx7U0fUE8r4JmhQ9VzqENCC2O6yCG5NoIbIwc
	C3eWIlqJBj3zyRZN+/G3aQdXoaB3jczZbcTXfr4H7fnB6v2l8d21jg3EfF1Xa36D30fLen9gNpE2+
	EPLGRxP6Ud1D62InjBsb/E8tdW97XBE8cuIeFL4TUtaEzuLcp2aHf18T+T5H9YHhIpgOkK4nklVhE
	oEwlDHEtQ9azaHBqFHIokLdvoVCnAz7+efUO10T7g0O/ioXgjSVnD/kMn8R1pAsid2ZzI1wvAIMw8
	8S0R3FRuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMaU-0006O0-7V; Thu, 12 Mar 2020 12:05:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMaK-000663-BZ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:05:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 967DB206E7;
 Thu, 12 Mar 2020 12:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584014707;
 bh=kF1jN8Wxs2QJYXtiW/6/YPILqARijKLxcTLHrblKp4U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xMSz8X+0VXtjyVOmUmgY3wXSKQTgBmi1+2IsmfOShGZSY/RDKa1wL6/UIClcZYUK2
 mjK9DrRrxe8P8dn0eVzIOEyjY9i1E7TE0OqZwj/KTjVT/ulAIWr0rvFFpu/FJJiL5P
 M3Xdaxx4zwUu4eC4bcu9xVh8m113xDUJpkMkZiQw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jCMaH-00CCnj-Tk; Thu, 12 Mar 2020 12:05:06 +0000
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 12:05:05 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v5 01/23] irqchip/gic-v3: Use SGIs without active state if
 offered
In-Reply-To: <51b2c74fdbcca049cc01be6d78c7c693@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-2-maz@kernel.org>
 <63f6530a-9369-31e6-88d0-5337173495b9@huawei.com>
 <51b2c74fdbcca049cc01be6d78c7c693@kernel.org>
Message-ID: <1bff1835ba7d6e22edb836d38cf16a14@kernel.org>
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
X-CRM114-CacheID: sfid-20200312_050508_441014_AC5DD8AF 
X-CRM114-Status: GOOD (  15.94  )
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

On 2020-03-12 09:28, Marc Zyngier wrote:
> Hi Zenghui,
> 
> On 2020-03-12 06:30, Zenghui Yu wrote:
>> Hi Marc,
>> 
>> On 2020/3/5 4:33, Marc Zyngier wrote:
>>> To allow the direct injection of SGIs into a guest, the GICv4.1
>>> architecture has to sacrifice the Active state so that SGIs look
>>> a lot like LPIs (they are injected by the same mechanism).
>>> 
>>> In order not to break existing software, the architecture gives
>>> offers guests OSs the choice: SGIs with or without an active
>>> state. It is the hypervisors duty to honor the guest's choice.
>>> 
>>> For this, the architecture offers a discovery bit indicating whether
>>> the GIC supports GICv4.1 SGIs (GICD_TYPER2.nASSGIcap), and another
>>> bit indicating whether the guest wants Active-less SGIs or not
>>> (controlled by GICD_CTLR.nASSGIreq).
>> 
>> I still can't find the description of these two bits in IHI0069F.
>> Are they actually architected and will be available in the future
>> version of the spec?  I want to confirm it again since this has a
>> great impact on the KVM code, any pointers?
> 
> Damn. The bits *are* in the engineering spec version 19 (unfortunately
> not a public document, but I believe you should have access to it).
> 
> If the bits have effectively been removed from the spec, I'll drop the
> GICv4.1 code from the 5.7 queue until we find a way to achieve the same
> level of support.
> 
> I've emailed people inside ARM to find out.

I've now had written confirmation that the bits are still there.

It is just that the current revision of the documentation was cut 
*before*
they made it into the architecture (there seem to be a 6 month delay 
between
the architecture being sampled and the documentation being released).

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
