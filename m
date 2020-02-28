Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20821174028
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 20:17:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0XbUzSYAxE59b9zT05coRbY0eygYaqLq77C3FwkoVjQ=; b=pTypqe1O/BI5kiqpNOBTcULRp
	kmtVHUCyh6u5Yed9HMBSiBwoWLzq3UPu99o+CaW0F0ns2rDih2/zOscj7gcQP/iPuNvlgDHnKVUrn
	iSLL+GQwhuckBA9QSGojMC2lX9fdfvfU5M+eIAy01zeIvSvv0nfzqUoJRsaIeG+/aQuQDTbLNrL5k
	0kb3V7diVRqPRGu5U0ocwhp5d8Gj6PpCRrher/9u7cxkzEneZHzpgTy3kOQFoywewpCpw9nP9efe3
	EOEsKCHS0KMcmBn4WhjcpTcj34DfqwtVdJNo/VydtB6rH6oHhEh+JHMZ6Ye5NkvcdVLsNNVweKd80
	2EXP/6gjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7l81-0005W2-A6; Fri, 28 Feb 2020 19:16:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7l7s-0005Vh-TQ
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 19:16:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C70A222C2;
 Fri, 28 Feb 2020 19:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582917404;
 bh=BXqh6cgD9aYcDmgFUDG8alw4aMlNGdIq216e0sMu2gM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=azovb8xMoPOm9v0m36JKUAew5EbZKIOZskp+O30F2ob5dQBTXCBqaC5WreLropVNE
 GoAajw3AT0SgCfMFadO6XqzXVgsMYURzBXNc+O3uc1HgMkdK1zBUWAkFZh4lONfI8g
 /wHZmAzy0v2oOUnxfCBGczDdZQULv5EcILGuyIZk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j7l7q-008pqH-Kw; Fri, 28 Feb 2020 19:16:42 +0000
MIME-Version: 1.0
Date: Fri, 28 Feb 2020 19:16:42 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v4 16/20] KVM: arm64: GICv4.1: Allow SGIs to switch
 between HW and SW interrupts
In-Reply-To: <6798eb13-a7e9-2a92-91b2-9b657962ea79@huawei.com>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-17-maz@kernel.org>
 <6798eb13-a7e9-2a92-91b2-9b657962ea79@huawei.com>
Message-ID: <7aa668a5920b8deb8c2ee2fec3ef69b3@kernel.org>
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
X-CRM114-CacheID: sfid-20200228_111644_991824_99AC8076 
X-CRM114-Status: GOOD (  15.15  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 2020-02-20 03:55, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/2/14 22:57, Marc Zyngier wrote:
>> In order to let a guest buy in the new, active-less SGIs, we
>> need to be able to switch between the two modes.
>> 
>> Handle this by stopping all guest activity, transfer the state
>> from one mode to the other, and resume the guest.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
> 
> [...]
> 
>> diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
>> index 1bc09b523486..2c9fc13e2c59 100644
>> --- a/virt/kvm/arm/vgic/vgic-v3.c
>> +++ b/virt/kvm/arm/vgic/vgic-v3.c
>> @@ -540,6 +540,8 @@ int vgic_v3_map_resources(struct kvm *kvm)
>>   		goto out;
>>   	}
>>   +	if (kvm_vgic_global_state.has_gicv4_1)
>> +		vgic_v4_configure_vsgis(kvm);
>>   	dist->ready = true;
>>     out:
> 
> Is there any reason to invoke vgic_v4_configure_vsgis() here?
> This is called on the first VCPU run, through kvm_vgic_map_resources().
> Shouldn't the vSGI configuration only driven by a GICD_CTLR.nASSGIreq
> writing (from guest, or from userspace maybe)?

What I'm trying to catch here is the guest that has been restored with
nASSGIreq set. At the moment, we don't do anything on the userspace
side, because the vmm could decide to write that particular bit
multiple times, and switching between the two modes is expensive (not
to mention that all the vcpus may not have been created yet).

Moving it to the first run makes all these pitfalls go away (we have the
final nASSSGIreq value, and all the vcpus are accounted for).

Does this make sense to you?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
