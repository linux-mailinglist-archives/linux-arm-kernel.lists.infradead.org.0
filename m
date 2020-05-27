Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614E01E3712
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 06:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wK3A0HWrjTCtgH4oS19i0xxVUG40Xg9qjn1ZXRhl7mo=; b=JfrRGCoOXas8tE
	GMnbbTrwdELqQSgyrofPNGFOMqB6Vj2QZWVAReHC9IUQwBhc11sQeF2cxL1vfJCoQVa+O3/afT3xF
	rJTU/pEjgr7GtPKRwApMt3XAXHKram4BX17hqOqMTM5DGo6yI/2m45YvrRVL4XMEhQmuseAmQbFDa
	WIn2uHPpvTfw4RA/KR56//4ULn0kHOmiLpP0Mwo7N6dFJRKBB0hqu/wY0/9Qb8g8XiHGB0h+SbKzl
	ILaz6LqWgzq7ZU2pZLEF7YO61BqpSCawDTbK1nT1MdCr+05XTaV8Ep2xyrqFFLRc4TJErnCt8AF6k
	Vq6FBDamZ6w6uLdvr1DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdnZB-0006xt-Pc; Wed, 27 May 2020 04:21:21 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdnZ2-0006vj-CY
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 04:21:14 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 49WyLj24ZLz9sSk; Wed, 27 May 2020 14:21:00 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1590553261; bh=G+QgS0qcNXOLEKAmCyU//vqicLF4pKGtu1284W9SPQ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HacLDlq4cEW9mRq5Epu7LBXDTYHh562uIVB4NcCHS72K7f+p0nPG30FusxcRsi/rP
 ZrpLNbsFpBUoa5fBK/q9q1Ph+3l+diJxt7YNSN9ZO5kEStK1cOex/aVl+63iIAnAV6
 81zfOTK5liGI/8ROoI1BoWkHGtFBDjekFaoiCBAiBA/TOT8TPmMStZdjmsocz8M+z1
 e7G3jn4kiPnysiktau650QdENmiy7zwC0Om0O6Uxzi7dWPY38pc1wIJDU0++O+x2xz
 jrq1yr6CfwonY8LwvuxPRV7SME6th0pqavPWBDnyBf57CggTButADyikorWWJ4GTDt
 HaCvipkquX5yw==
Date: Wed, 27 May 2020 14:20:55 +1000
From: Paul Mackerras <paulus@ozlabs.org>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Subject: Re: [PATCH v4 3/7] KVM: PPC: Remove redundant kvm_run from vcpu_arch
Message-ID: <20200527042055.GG293451@thinks.paulus.ozlabs.org>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-4-tianjia.zhang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427043514.16144-4-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_212112_584459_29F577D7 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Apr 27, 2020 at 12:35:10PM +0800, Tianjia Zhang wrote:
> The 'kvm_run' field already exists in the 'vcpu' structure, which
> is the same structure as the 'kvm_run' in the 'vcpu_arch' and
> should be deleted.
> 
> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>

Thanks, patches 3 and 4 of this series applied to my kvm-ppc-next branch.

Paul.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
