Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC6B183759
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:24:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tpMIaP/pScW1ev8yD54tHuYguQ9c7I3zjuDDZGT1DyU=; b=hcHnNapq9DASvIdLI++NpW5mO
	U2Q9EfKsVwT6lX3Uf0bYOOm4b1sNV3jStgYAb9d92BS5HlNPbIvF/XGnCb/R85xuDKifCCsBQ73pL
	mTkmGZntm3UnruUtBZF9u1ysHxq/oGDsNXTrL0/z18R5BB7P7Tb8xu5n4XFT+Q+78+weifpWxksYQ
	RBV5wO+zQk8zWNjrdZKfG1UNuPlELN2M4J0NSSvBSQRG3O4QpwbjzyGYgOr98zlbWXD2SZ1OhBBRC
	Z6YyQUApuPd6i0UDI15E2gzROtPnSitXNw7sLtiUX05TemVwtK7x7w7zc9Lcd67KIC4qb+Vl8vyYw
	FKAYSbVIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRYt-0004eB-Ci; Thu, 12 Mar 2020 17:23:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRYg-0004dP-DC
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 17:23:47 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C6342067C;
 Thu, 12 Mar 2020 17:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584033825;
 bh=iqV0woTK+1QbFs1jWfR/8C8FIBB4oluJrGxTmnqVE60=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gswYtdvMC1EGaa0AsecLAx8y70uxeabXgKreyJqKoprJOJYs1nQk7+t7R1FdYw25q
 Br7LSwcTwvVc7fbBtGBF35dvgBru7G5ce1cwtn5GTM94/11qSKcRsHljB0m6hqeCR2
 T75uS+dsBc59atUIi9qGDfFSezinHb2K8xUT7WRU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jCRYd-00CHKE-NI; Thu, 12 Mar 2020 17:23:43 +0000
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 17:23:43 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 01/23] irqchip/gic-v3: Use SGIs without active state if
 offered
In-Reply-To: <1fa8ab2f-6766-9dc1-53a6-9cead19a5a7b@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-2-maz@kernel.org>
 <1fa8ab2f-6766-9dc1-53a6-9cead19a5a7b@redhat.com>
Message-ID: <0f3c1c819a98deb77261e89eefa10e3f@kernel.org>
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
X-CRM114-CacheID: sfid-20200312_102346_465810_E11EFBDD 
X-CRM114-Status: UNSURE (   8.93  )
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
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020-03-12 17:16, Auger Eric wrote:
> Hi Marc,

[...]

>> diff --git a/include/linux/irqchip/arm-gic-v3.h 
>> b/include/linux/irqchip/arm-gic-v3.h
>> index 83439bfb6c5b..c29a02678a6f 100644
>> --- a/include/linux/irqchip/arm-gic-v3.h
>> +++ b/include/linux/irqchip/arm-gic-v3.h
>> @@ -57,6 +57,7 @@
>>  #define GICD_SPENDSGIR			0x0F20
>> 
>>  #define GICD_CTLR_RWP			(1U << 31)
>> +#define GICD_CTLR_nASSGIreq		(1U << 8)
> I am not able to find this bit in Arm IHI 0069F (ID022020)
> same for the bit in GICD_TYPER. Do we still miss part of the spec?

See my response to Zenghui (TL;DR: this addition to the spec missed the
cut-off for revision F and will be added in the next round).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
