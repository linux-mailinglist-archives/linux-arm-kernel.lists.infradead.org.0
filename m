Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F787CB4CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 09:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQ/2p2Btrnq1zc3TtoqZsuMRfG8pIaOEY82/jTc1yNo=; b=YCQLIKdBMmWkLZ
	CjIiImShJt4/+kzpcJGrIU+IOCDoeRsKeTPmkldSvITxVrwrYFDodPh1OVnoz9g1zZtmEO/4K92is
	LI5ICbhyrfvR+AIXzxc6NazzPATMS4HYO7yLs31k1NiobV9AjFJ3n/EuydMdgAFv1wwO9l+PF//zF
	DFJqjk19FIY4psRGch0X9wFc0FU6BSc1Rl008B3IVcPoA6D1y2bF4atk/DhfCbMlEni7xZfAgavYH
	i9q9/PdxgIgNgkkc0g9ADM8hEaPtZyJf4fsdb+bel9f0ecmoPZBIewzfMHt6RxWCb6gXCMXU3snGQ
	Lyfc9n4C84GTz/HoBMww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGHcS-0001sV-Hg; Fri, 04 Oct 2019 07:03:16 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGHcM-0001ra-Ju
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 07:03:12 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 781B920F0;
 Fri,  4 Oct 2019 07:03:09 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F32B5D9DC;
 Fri,  4 Oct 2019 07:03:03 +0000 (UTC)
Date: Fri, 4 Oct 2019 09:03:01 +0200
From: Andrew Jones <drjones@redhat.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v5 05/10] KVM: arm64: Support stolen time reporting via
 shared structure
Message-ID: <20191004070301.d7ari5rjlu3uuara@kamzik.brq.redhat.com>
References: <20191002145037.51630-1-steven.price@arm.com>
 <20191002145037.51630-6-steven.price@arm.com>
 <20191003132235.ruanyfmdim5s6npj@kamzik.brq.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003132235.ruanyfmdim5s6npj@kamzik.brq.redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Fri, 04 Oct 2019 07:03:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_000310_672322_BF6BD81F 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 linux-doc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 03:22:35PM +0200, Andrew Jones wrote:
> On Wed, Oct 02, 2019 at 03:50:32PM +0100, Steven Price wrote:
> > +int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init)
> > +{
> > +	struct kvm *kvm = vcpu->kvm;
> > +	u64 steal;
> > +	u64 steal_le;
> > +	u64 offset;
> > +	int idx;
> > +	u64 base = vcpu->arch.steal.base;
> > +
> > +	if (base == GPA_INVALID)
> > +		return -ENOTSUPP;
> > +
> > +	/* Let's do the local bookkeeping */
> > +	steal = vcpu->arch.steal.steal;
> > +	steal += current->sched_info.run_delay - vcpu->arch.steal.last_steal;
> > +	vcpu->arch.steal.last_steal = current->sched_info.run_delay;
> > +	vcpu->arch.steal.steal = steal;
> > +
> > +	steal_le = cpu_to_le64(steal);
> 
> Agreeing on a byte order for this interface makes sense, but I don't see
> it documented anywhere. Is this an SMCCC thing? Because I skimmed some
> of those specs and other users too but didn't see anything obvious. Anyway
> even if everybody but me knows that all data returned from SMCCC calls
> should be LE, it might be nice to document that in the pvtime doc.
>

I have another [potentially dumb] SMCCC byte order question. If we need
to worry about using LE for the members of this structure, then why don't
we need to worry about the actual return values of the SMCCC calls? Like
the IPA of the structure?

Thanks,
drew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
