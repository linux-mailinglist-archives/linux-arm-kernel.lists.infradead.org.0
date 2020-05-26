Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627381E1AEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 08:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgqX5++XBM8qQNiDiACLOaWXCkVzDFY7vefj9s/FbJQ=; b=gYki/B81wT6bpS
	q58DV6WBOAxp+ZBFcHgqMgo4JCvSsKMoDrN5VTrQDT2SPwaGZMSlneUVNucKGgEv+W0L+fhFRDmbu
	jaBuJ6p3WmlxWClIqOO9MIaTjenOs3d3Q9jJ4O/Y7G7YY8ktwC1OnYmme3OA0zbdhVf2r9sklCYyb
	LbX7YIrX9A3zvYk5z0lMZ+iUA73wY4Xx43wwdy9072z534e6nRFtpBI0yFMN7KKkfloIEMhdj767O
	3ho22ihJ1Rn/BeQCTax6MyYIoilcZx9J7mAWImhUrM1j6N9U8T4ZXV/NiLRP83XjzLffCkB95VF/U
	dYifdZ+ZEiD/7gRUNE8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdSd4-0001C1-NK; Tue, 26 May 2020 05:59:58 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdScd-00011G-Sh
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 05:59:33 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 49WNZn11tSz9sRY; Tue, 26 May 2020 15:59:29 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1590472769; bh=UvsMjZEYjC+bU7cDuBcQ49xsO8s4tc7S4Vm5YquVl3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dr7/DCW1ueRx4rYAQYErFOviGddLWKlo5BpU5HFciy9CJet5sWJEf2BjRFaWIfdr8
 exnM7o9NB/Edk/VdBss9/EVVuN4f8bDfV11zfFBbmNSYetArbeqDrPhOe9n7g0jy2w
 jPlaaGtU/Bys9q0B1FhwBdGuQzbxpZlMef7Omzw1nQCaKfe0sUl0HzmqRRaLXCiNsq
 9mwubjD8MVwaThkdXmLYOSbANn8EQAl66FmLO02dquKK/12GEHaZ8qqqsY5MwEIHvQ
 CTVrP2oC3cIqV5tanqXHRykuANp24K+isJl9f5Ks+0pA8PSIeFjFgqi3fPTEglfkPk
 PJf2vvuHBAlag==
Date: Tue, 26 May 2020 15:49:50 +1000
From: Paul Mackerras <paulus@ozlabs.org>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v4 4/7] KVM: PPC: clean up redundant 'kvm_run' parameters
Message-ID: <20200526054950.GC282305@thinks.paulus.ozlabs.org>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-5-tianjia.zhang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427043514.16144-5-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_225932_081139_9264A492 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 benh@kernel.crashing.org, heiko.carstens@de.ibm.com, peterx@redhat.com,
 linux-mips@vger.kernel.org, hpa@zytor.com, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, frankja@linux.ibm.com, chenhuacai@gmail.com,
 maz@kernel.org, joro@8bytes.org, x86@kernel.org, borntraeger@de.ibm.com,
 mingo@redhat.com, julien.thierry.kdev@gmail.com, thuth@redhat.com,
 gor@linux.ibm.com, suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 jmattson@google.com, tsbogend@alpha.franken.de, cohuck@redhat.com,
 christoffer.dall@arm.com, sean.j.christopherson@intel.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, mpe@ellerman.id.au,
 pbonzini@redhat.com, vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 12:35:11PM +0800, Tianjia Zhang wrote:
> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
> structure. For historical reasons, many kvm-related function parameters
> retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time. This
> patch does a unified cleanup of these remaining redundant parameters.
> 
> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>

This looks OK, though possibly a little larger than it needs to be
because of variable name changes (kvm_run -> run) that aren't strictly
necessary.

Reviewed-by: Paul Mackerras <paulus@ozlabs.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
