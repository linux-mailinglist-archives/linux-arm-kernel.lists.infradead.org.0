Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF4418B325
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:18:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d/wwD8g721Zvx9lOywrvQq9ann/ny/5sCj6BoYJnEDs=; b=jJTUIDzRPxcBBDNyvq5TwBDxf
	UouLbhXStWuy2k4BLNJJj86qOuRpT39SO6shKAPibbPQyCoo08b+sR0LWvR/I4sU6xwn511likkBO
	5edJXm/A3vwNIJwVYLOF6mG0V/Ip3ut29SBVaZTPOzQUQyFjv94dzXLgPC/WupsCeQcGa0qtGOmBW
	6JsDD8uxVIfs5LXQBl3LViSgyltCXP0mGzUPDwTU+mBsyBBFDZclzTVyfkL+SbequCOopVIQYY+pK
	9txpi0qpqOWlYM/VVecfjKriPEeuKL53SOWLOdHWjNNC+k9syo/nvwvPRCB+BdLF7Ww19uFXrUaEX
	yhKMfUzLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEu8Q-0000uB-A1; Thu, 19 Mar 2020 12:18:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEu8G-0000tl-Sj
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 12:18:42 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6518E20663;
 Thu, 19 Mar 2020 12:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584620320;
 bh=9n5iSscoqYAjXl49/svHpLf5qsJKzfPfCazHWgnTthY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hMSyvzWudmn5PzqltwH9zVaoJflLaueZMoY7JuIBTmbwkmjCNT2hHrPKP5wQH72Yh
 QFw0yTyO2UEaw6WkBq6MKpEtt6gXN8nHKmL84bm4cma4fb8H2wB9x2hE3YrL1/HpSO
 TyT89wwVpUtFpxgCHtakHPiwm6ZKyuZAtda9p8uI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEu8E-00Dvom-M6; Thu, 19 Mar 2020 12:18:38 +0000
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 12:18:38 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v5 21/23] KVM: arm64: GICv4.1: Reload VLPI configuration
 on distributor enable/disable
In-Reply-To: <7f112d75-166b-24eb-538d-e100242d8e9a@huawei.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-22-maz@kernel.org>
 <7f112d75-166b-24eb-538d-e100242d8e9a@huawei.com>
Message-ID: <ed4b6d1f4a156e22c5c619e197fa4752@kernel.org>
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
X-CRM114-CacheID: sfid-20200319_051840_954460_A9A488CA 
X-CRM114-Status: UNSURE (   8.59  )
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
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-18 03:17, Zenghui Yu wrote:
> On 2020/3/5 4:33, Marc Zyngier wrote:
>> Each time a Group-enable bit gets flipped, the state of these bits
>> needs to be forwarded to the hardware. This is a pretty heavy
>> handed operation, requiring all vcpus to reload their GICv4
>> configuration. It is thus implemented as a new request type.
> 
> [note to myself]
> ... and the status are forwarded to HW by programming VGrp{0,1}En
> fields of GICR_VPENDBASER when vPEs are made resident next time.

I've added something based on this comment to the commit message.

Thanks!

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
