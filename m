Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84125190D21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 13:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0h8ZRZXISQC1nY4sx8zx40yVDXdzl6zAFec7ZvZmD4=; b=qlaRL5TzKajvnw
	ttkgPEHFexM7fZCHPZaq1XB0a1I7fX5VTv8wrwnnxsS1bsDQt0wFuEHdkAgIHrJ6PH3G7ZeuqujaH
	v0cMTElOP3biTJ/qJ2kcMwq+JgBhlZ30uTIVNZgEhD08KJ0/hn25+eZxZGmR0HuKePHz6uOvSWrDT
	fL6eZkb0VRzctinVhVeNgNVavIURvv5H/EDM632n/syVl4AQLNvlQ+XAfup93/rIAOxtnJ7ovLx2I
	F4MPRHdSH4ogK4B8+QQ6zfRiWMEdTRghU6JMJ66rodDE4oKlhH8PRsXiRdujpKXLbId/le/dEwF0I
	y9DlOpGTWjd4GqC3F1YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiRv-00058V-HR; Tue, 24 Mar 2020 12:14:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiRl-00057r-ID
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 12:14:19 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A54920658;
 Tue, 24 Mar 2020 12:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585052057;
 bh=dhtvbB+PPXUZoBcoMnaOLzrw631OzqnrbINwvvOINt4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BgAC6V2Az+2jFYEhLlmiHR3DebSQCeuePZdwonD5gjANLrYa9D+arvTk94T7GB+BZ
 +YV6s/yqUjiFPXUurWd/i7Nk6p/54EQx+aFWgjpj7OXiVAZUdZF+ehgehCHIaMuDJL
 IsReRW1A7GPCm69FfQjZKPUGQla2Wxpj9rbdq9Zc=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jGiRj-00FFea-4G; Tue, 24 Mar 2020 12:14:15 +0000
Date: Tue, 24 Mar 2020 12:14:13 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v6 08/23] irqchip/gic-v4.1: Plumb skeletal VSGI irqchip
Message-ID: <20200324121413.12839170@why>
In-Reply-To: <0ac3af1c-5160-a528-f2b4-aac4833ce32c@huawei.com>
References: <20200320182406.23465-1-maz@kernel.org>
 <20200320182406.23465-9-maz@kernel.org>
 <0ac3af1c-5160-a528-f2b4-aac4833ce32c@huawei.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 tglx@linutronix.de, eric.auger@redhat.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_051417_618202_F8D44CDA 
X-CRM114-Status: GOOD (  10.94  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 10:27:18 +0800
Zenghui Yu <yuzenghui@huawei.com> wrote:

> On 2020/3/21 2:23, Marc Zyngier wrote:
> > +static int its_sgi_set_affinity(struct irq_data *d,
> > +				const struct cpumask *mask_val,
> > +				bool force)
> > +{
> > +	/*
> > +	 * There is no notion of affinity for virtual SGIs, at least
> > +	 * not on the host (since they can only be targetting a vPE).
> > +	 * Tell the kernel we've done whetever it asked for.  
> 
> new typo?
> s/whetever/whatever/

Yeah, I'm that good... :-(.

Fixed now.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
