Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4239AF352C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 17:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0USYxfGLF45FXjpvWRfMBLHsgYj1TvyoJFsiPHH8Ds=; b=myduHG3jdn6Kgr
	eut3R3dKaTJqFqCbzrotFwjDbHmGPPUjbioaIK1FCUaS0lniGySjmsOV8AWX4VJYcS2eL9YKS0IPf
	RfeUN4mbmek8Gq2R7IIUje3OITcIocSbcCggp5yeGTPueI0aiFARSdhQtX7es9P5QTaFXB8vrZ3Yj
	3OtNE0scoQ1oVVm32wFr51kTz0tryAuQAOnDncM3oZ/ymgF47eOzGaJvnj2EHKYFVWX3MFkoxI5n+
	9lVzWhcXt/hhzXNkN+AuFUSiNIMlCL8Y9jqobi0Bj6t2ymwz43ZR0TynEcs93dGDJLnr1r4VOyw2y
	DBvGw6ka3tfYM64805nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSl5Y-0002ek-AU; Thu, 07 Nov 2019 16:56:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSl5P-0002dO-Gu
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 16:56:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B97CB31B;
 Thu,  7 Nov 2019 08:56:37 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C3873F719;
 Thu,  7 Nov 2019 08:56:37 -0800 (PST)
Date: Thu, 7 Nov 2019 17:56:36 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 0/2] KVM: arm64: Reduce occurence of GICv4 doorbells on
 non-oversubscribed systems
Message-ID: <20191107165636.GB17608@e113682-lin.lund.arm.com>
References: <20191107160412.30301-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107160412.30301-1-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_085643_607798_08A9AB27 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 04:04:10PM +0000, Marc Zyngier wrote:
> As I was cleaning up some of the GICv4 code to make way for GICv4.1 it
> occured to me that we could drastically reduce the impact of the GICv4
> doorbells on systems that are not oversubscribed (each vcpu "owns" a
> physical CPU).
> 
> The technique borrows its logic from the way we disable WFE trapping
> when a vcpu is the only process on the CPU run-queue. If this vcpu is
> the target of VLPIs, it is then beneficial not to trap blocking WFIs
> and to leave the vcpu waiting for interrupts in guest state.
> 
> All we need to do here is to track whether VLPIs are associated to a
> vcpu (which is easily done by using a counter that we update on MAPI,
> DISCARD and MOVI).
> 
> It has been *very lightly* tested on a D05, and behaved pretty well in
> my limited test cases (I get almost no doorbell at all in the non
> oversubscribed case, and the usual hailstorm as soon as there is
> oversubscription). I'd welcome some testing on more current HW.
> 
Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
