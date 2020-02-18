Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551971623CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 10:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AUoSKcP/z42e9vRgNvLrbDrXSWXlbmG6bNGF88EzYt8=; b=Xk1ovZXRu0dQGJdlCsn6Cmb93
	TnBg7ZgrnZAT/a2or/zI5i4RqdVJNohEJhh5n2cB3gOh1VRXwfy2ECaavOUaEY6xyMA/Lhm78vbVi
	Jn2nfG+h2wsbxY6DxgP+LnISGKcg8lbyED9gaYEmdhZGZWwt/2xAbUVgFcSpsQS6+qgzUZn/QLd7A
	rEbE+geQ+New2eRLub0sqt9+a03aoSTaPZD5N/QIxbwTtua/Bu+krBm30MawCk5BVs/c9u/P3+cxp
	SGaedNNfuyezOb4ePj5JRhfTeAcN8SveuqP0J6g0nwBuhcQmt9J+nw380424OC0z3s+ejg2mGFlfh
	nMF+/mUcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zSR-00023W-8Z; Tue, 18 Feb 2020 09:46:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zSH-00022d-0Z
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 09:46:16 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 417AD206E2;
 Tue, 18 Feb 2020 09:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582019172;
 bh=IMHp2n/+7oTwD0UMPuIj8WNmYZDuF7jfPDPHTkTYfds=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VyGbrUNyvk2JJyr92klamHD9Lto3mF5e88GAPxsdBirRnVEK+iEZjLdPSfdI9GqLk
 3PdCSBYhoXLTi4LssEL5OsP7PB7OMmGExG/uRxgVBGspua2E3Kj4GQbt5N9MO/+Wij
 oOk4IwquRePoKh6l9ZL8TbQ5Vs0Bwet7Q+K/CNyw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j3zSE-006Bbs-Ih; Tue, 18 Feb 2020 09:46:10 +0000
MIME-Version: 1.0
Date: Tue, 18 Feb 2020 09:46:10 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v4 06/20] irqchip/gic-v4.1: Add initial SGI configuration
In-Reply-To: <e47baffb-83a5-57d7-1721-eaee28aaaabf@huawei.com>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-7-maz@kernel.org>
 <e47baffb-83a5-57d7-1721-eaee28aaaabf@huawei.com>
Message-ID: <4a64bf17c015cb10e62d9c1a1ff64db5@kernel.org>
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
X-CRM114-CacheID: sfid-20200218_014615_297375_23983344 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

On 2020-02-18 07:25, Zenghui Yu wrote:
> Hi Marc,

[...]

>>     static void its_sgi_irq_domain_deactivate(struct irq_domain 
>> *domain,
>>   					  struct irq_data *d)
>>   {
>> -	/* Nothing to do */
>> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
>> +
>> +	vpe->sgi_config[d->hwirq].enabled = false;
>> +	its_configure_sgi(d, true);
> 
> The spec says, when C==1, VSGI clears the pending state of the vSGI,
> leaving the configuration unchanged.  So should we first clear the
> pending state and then disable vSGI (let E==0)?

Right you are again. We need two commands, not just one (the pseudocode 
is
pretty explicit).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
