Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D8518B1DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NwekQbz56Cks2T44NhXVEPOfSP5/VsFcQ0I6fNmwK3s=; b=RRZAFnpA42z/SC5Ruag3o5Z0c
	3pesLgFTyazMx4Hf1DLAcovd9EwXNIRhKuzaltCHJXrEWCqZ9Bm+PAkEYIpd3CeNrShylKBuXx07P
	RTzpB1pa+LC2MK3hPhuxt3+SJhQyoOPgd5rc501FFJsMrxOB2P69pjORptjLVI/XDQco7iQcGvhkz
	L8bhagl1MVFTtY5XQM1BdbUEolBA5rrAewtgiGkZBtuwdcrxxTPqz9nled8P6FTfS640V40XOft37
	WDF8APKw22xSL780yj3DHQKgbca4w/dehAv6RPvtbWKxhqo6YrU5impcofzTgK8GdMKbNdwO7FNVr
	cgXmKq6pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsrv-0002Qr-2f; Thu, 19 Mar 2020 10:57:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsrl-0002Q2-JV
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:57:34 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 223D020752;
 Thu, 19 Mar 2020 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584615453;
 bh=uHx+Br1aMgWnaInx45PzVj4K7vit7la5TgFfqUwGJvA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LOf17CNugvPH2Y2uD9Tv74rrJWdl7xOpeMe/roOkwkNQdPLN1/2JREqsMj8iVjP2+
 5pSBYtrmJMarW0a6lyyXniuNlZcLfCB11qjEGpG2KA0NVKkCZaNPMw86Eo7Q+AacOT
 9+QuW7mDJe+HZ14RMb2B07KSMZX6oXoQVEOpnHh0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEsrj-00Duvj-FZ; Thu, 19 Mar 2020 10:57:31 +0000
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 10:57:31 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 15/23] irqchip/gic-v4.1: Add VSGI property setup
In-Reply-To: <edfc4aa0-3e96-4fb2-731e-76a284c8ce17@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-16-maz@kernel.org>
 <edfc4aa0-3e96-4fb2-731e-76a284c8ce17@redhat.com>
Message-ID: <fc6ae25a16ec8ad27e8853f137cc82a1@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, yuzenghui@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_035733_664767_D7FFF706 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020-03-17 10:30, Auger Eric wrote:
> Hi Marc,
> 
> On 3/4/20 9:33 PM, Marc Zyngier wrote:
>> Add the SGI configuration entry point for KVM to use.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  drivers/irqchip/irq-gic-v3-its.c   |  2 +-
>>  drivers/irqchip/irq-gic-v4.c       | 13 +++++++++++++
>>  include/linux/irqchip/arm-gic-v4.h |  3 ++-
>>  3 files changed, 16 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
>> b/drivers/irqchip/irq-gic-v3-its.c
>> index effb0e0b0c9d..b65fba67bd85 100644
>> --- a/drivers/irqchip/irq-gic-v3-its.c
>> +++ b/drivers/irqchip/irq-gic-v3-its.c
>> @@ -4039,7 +4039,7 @@ static int its_sgi_set_vcpu_affinity(struct 
>> irq_data *d, void *vcpu_info)
>>  	struct its_cmd_info *info = vcpu_info;
>> 
>>  	switch (info->cmd_type) {
>> -	case PROP_UPDATE_SGI:
>> +	case PROP_UPDATE_VSGI:
> This change rather belongs to
> [PATCH v5 12/23] irqchip/gic-v4.1: Plumb set_vcpu_affinity SGI 
> callbacks

Absolutely. I messed up a rebase, obviously.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
