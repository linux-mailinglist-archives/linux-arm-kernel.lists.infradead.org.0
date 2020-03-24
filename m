Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA16190345
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 02:19:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PfTxp5QAtOtpqWepBJXKHXjHGZDApUlxsj12SGxzO4=; b=P1BFm9mfA3p4xZ
	alH/gRofSekO6gWSvxVCaBPr7DR7NtkLBRrb46M4W9Am4NP1Pao1CklbAohXJogocLesXh2wQVUFI
	blTUndDLM4k7Nk0ki3YV9M8yv/HKZzTUWjoGqpzicxtzxfeKjuq7E7Cp4xFSNeroRv5ghYpNQYSpW
	6hwFQTwISTnPxxtARvFrzBLh18hVzkiHEWCYijbOdOYKo0PZ2wNkeBL8Cyug603weHPJADN6VQTiB
	DWaWQntIVyJoToqWx/eQT9Rd85VJMXA2UrqBdyKZDZ4DGfYFz1ya3twUkx+kM3DpfDxNnCBOJUE1y
	xvBKZ1QwL+l4gCrwJp0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGYDn-0003Ff-8W; Tue, 24 Mar 2020 01:19:11 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGYDf-00034f-0p
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 01:19:04 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 48mYL92hc1z9sSL; Tue, 24 Mar 2020 12:18:57 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1585012737; bh=fWyvQjgmoVE45UQb8yBNTXiPed69yDbrhs5hdq0egsU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mauSiS7oX6+4B1f4axm7Ayy0Hc0K4hbGipg06Vcls1bvNoep91a4i3dcGDcZKVpTJ
 xQC/JEjuilfLaSd1tD8NcDipXJjAbo7uhRcrYKD9LE8of4vea9QfKCKUAAkkdF/Uz7
 Dm7c/6XLcWYDVEm/PsidIOCTDafYwb4ENnFnDtX0zf2M52X8TbyUepK8RCjm3hj5Lu
 u8f6BSKtFagIKKzXfDcwdZegidVRR/Rw5iEGwGP+42XDZ08MSFz0spgTcZk9vvMJUq
 WBwqbuf0TPBzwB0coc1LPf1cCR+z4iTVCk1La6TvnzTrCQ1Bv8TD6+qUuXAoP37xGr
 j9GwIDroxtTsA==
Date: Tue, 24 Mar 2020 12:18:54 +1100
From: Paul Mackerras <paulus@ozlabs.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v3 1/9] KVM: Pass kvm_init()'s opaque param to additional
 arch funcs
Message-ID: <20200324011854.GC5604@blackberry>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-2-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200321202603.19355-2-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_181903_243936_78ECD497 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 21, 2020 at 01:25:55PM -0700, Sean Christopherson wrote:
> Pass @opaque to kvm_arch_hardware_setup() and
> kvm_arch_check_processor_compat() to allow architecture specific code to
> reference @opaque without having to stash it away in a temporary global
> variable.  This will enable x86 to separate its vendor specific callback
> ops, which are passed via @opaque, into "init" and "runtime" ops without
> having to stash away the "init" ops.
> 
> No functional change intended.
> 
> Reviewed-by: Cornelia Huck <cohuck@redhat.com>
> Tested-by: Cornelia Huck <cohuck@redhat.com> #s390
> Acked-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Acked-by: Paul Mackerras <paulus@ozlabs.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
