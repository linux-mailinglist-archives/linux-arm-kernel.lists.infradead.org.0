Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10C580770
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 19:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jyEWhC8ntADhVSYBVkxOTMmvtfyC+xtfGFyE5btspA=; b=Gu5jrL7+wYryjQ
	nDl1QnYXqrKki30aE0/C7fpIcDGKdcNfMVobIoMuLd6xlqrKQ73c5ZfJR+7IkJ6qKhKTvAXXB2HDO
	IKY5HrchF3mC4kn2oWqc6XqQufq3yCA3ofTl4GQkm+kpe+G4xoM0Ic2zMUP07w69+HHLfFthF2zWH
	sduOB/jNnxl16mMZrYW2+dVJ2r/VNQmA2rJ17n3NP42PKS0SVuaUiTihGLewFme41swvDqJx4JWmV
	o+H8HZaCJflqX+xpSbbULLhjUUxezP3PQ0uwOVfp2vW9u1H2pfCMiROYNRw0FOqaps5OHyBtWm8JU
	bmTGZh6U8FZVjKVNNE5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htxvV-000408-Rr; Sat, 03 Aug 2019 17:34:41 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htxvL-0003zN-Ny
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 17:34:33 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1htxvC-0001u7-Ep; Sat, 03 Aug 2019 19:34:22 +0200
Date: Sat, 3 Aug 2019 18:34:20 +0100
From: Marc Zyngier <maz@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 6/9] KVM: arm64: Provide a PV_TIME device to user space
Message-ID: <20190803183335.149e0113@why>
In-Reply-To: <20190803135113.6cdf500c@why>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-7-steven.price@arm.com>
 <20190803135113.6cdf500c@why>
Organization: Approximate
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: steven.price@arm.com, kvm@vger.kernel.org,
 catalin.marinas@arm.com, linux-doc@vger.kernel.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 pbonzini@redhat.com, will@kernel.org, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_103431_925889_9D1BDED4 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 3 Aug 2019 13:51:13 +0100
Marc Zyngier <maz@kernel.org> wrote:

[forgot that one]

> On Fri,  2 Aug 2019 15:50:14 +0100
> Steven Price <steven.price@arm.com> wrote:

[...]

> > +static int __init kvm_pvtime_init(void)
> > +{
> > +	kvm_register_device_ops(&pvtime_ops, KVM_DEV_TYPE_ARM_PV_TIME);
> > +
> > +	return 0;
> > +}
> > +
> > +late_initcall(kvm_pvtime_init);

Why is it an initcall? So far, the only initcall we've used is the one
that initializes KVM itself. Can't we just the device_ops just like we
do for the vgic?

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
