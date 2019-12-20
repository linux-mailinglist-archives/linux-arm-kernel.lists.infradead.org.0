Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F4186127FC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:44:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRNVqG654EzkKpCc0YN4gaqQWyglN9a1mj/7fccpW14=; b=k5mz8dsQ4l/bkO
	Pzf7i5cOowZDaV6zBzl5W0SO1T6ggbQPTVDCmmlpfmDsgINF9vypx/I2RGw9uN4JZRmIoOPTZ4UNu
	SO+m3xsQJDP4K0oLnGYqiPM09Esh0LVSW39bWHjBekRu8VCJc/iCwuCwDnF4Msz2QaIJlzlZE5Zmi
	0f2G3d65eES948Go/MgNwR6I+hWKhT/crftVsmWMYo2t4MbJe7Z+NVK+nr4v1wWH5fEhDdNq1Frg6
	+kcqRyTUV+yUfz0NjtG2geKcsFzD9ZiTFHMZfYBFkmNxvrmFUvsMOzPHwogb0/iPmNbfgNauAhheH
	aFP5EoveAw2CkDlxFQ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKSO-0003zX-A5; Fri, 20 Dec 2019 15:44:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKSF-0003zD-Fp
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 15:44:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1306F30E;
 Fri, 20 Dec 2019 07:44:39 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B9943F6CF;
 Fri, 20 Dec 2019 07:44:37 -0800 (PST)
Date: Fri, 20 Dec 2019 15:44:35 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 3/3] KVM: arm/arm64: correct AArch32 SPSR on exception
 entry
Message-ID: <20191220154434.GB25258@lakrids.cambridge.arm.com>
References: <20191220150549.31948-1-mark.rutland@arm.com>
 <20191220150549.31948-4-mark.rutland@arm.com>
 <8e3719bf81f135508eac2378bfee60f2@www.loen.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e3719bf81f135508eac2378bfee60f2@www.loen.fr>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_074439_571255_3C5D8D03 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Maydell <peter.maydell@linaro.org>, Drew Jones <drjones@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will@kernel.org>,
 stable@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 03:36:47PM +0000, Marc Zyngier wrote:
> On 2019-12-20 15:05, Mark Rutland wrote:
> > +static inline unsigned long host_spsr_to_spsr32(unsigned long spsr)
> > +{
> > +	const unsigned long overlap = BIT(24) | BIT(21);
> > +	unsigned long dit = !!(spsr & PSR_AA32_DIT_BIT);
> > +
> > +	spsr &= overlap;
> 
> Are you sure this is what you want to do? This doesn't leave
> that many bits set in SPSR... :-/

Oh, whoops. :(

> Apart from what I believe is a missing ~ above, this looks good.

I've added the missing '~' and pushed out the updated branch.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
