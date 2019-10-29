Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A75E8956
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUctkG23uIQIB6cdlOV8O+q9DUqHv68SRmrnNc5O7oU=; b=nI//5yzslL0pOq
	pJnTjEi9Ajp50QBsBvjOtT3efuWkD4yM1+XMMVTEQaXRkKnF1YhA9PFmIVBFZAS6jJRYaSreEDTly
	z5lhhrEns1UXsYhPN8IZxk1EmBpEiMDKFxgLHyqMFQ0BkHwgK8evVig+PtE6Z+VgzEGz96Ml+ycFH
	FeMZxMvL+OyiIdA5rLRuczpuN8XLBCeshTwossygYGerMIx02cm3Cs8jqlWSO/x98DBijpPEXWWM8
	t4Q4iC8snnZpciadP3+Az2No4X7ulJiUJnCB/LBk1byevemRZ97cWxJNeORNKOaCiZ87bc46N6K2y
	JH+sP4E6zA8Qrk1/xq1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRSV-0007NG-Ir; Tue, 29 Oct 2019 13:22:51 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRSK-0007Ma-1z
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:22:41 +0000
Received: from [91.217.168.176] (helo=big-swifty.misterjones.org)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iPRSC-0000w6-GP; Tue, 29 Oct 2019 14:22:32 +0100
Date: Tue, 29 Oct 2019 13:22:30 +0000
Message-ID: <86k18ny9d5.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH 2/3] KVM: arm/arm64: vgic: Fix some comments typo
In-Reply-To: <7055e836-cdad-1cfa-66f3-fba88dad5f5b@huawei.com>
References: <20191029071919.177-1-yuzenghui@huawei.com>
 <20191029071919.177-3-yuzenghui@huawei.com>
 <86o8xzylb1.wl-maz@kernel.org>
 <7055e836-cdad-1cfa-66f3-fba88dad5f5b@huawei.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-SA-Exim-Connect-IP: 91.217.168.176
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_062240_246359_56F5C6CA 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: 4.5 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019 12:45:15 +0000,
Zenghui Yu <yuzenghui@huawei.com> wrote:
> 
> On 2019/10/29 17:04, Marc Zyngier wrote:
> > Hi Zenghui,
> > 
> > On Tue, 29 Oct 2019 07:19:18 +0000,
> > Zenghui Yu <yuzenghui@huawei.com> wrote:
> >> 
> >> s/vgic_its_save_pending_tables/vgic_v3_save_pending_tables/
> >> s/then/the/
> >> 
> >> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> >> ---
> >>   include/kvm/arm_vgic.h      | 2 +-
> >>   virt/kvm/arm/vgic/vgic-v3.c | 2 +-
> >>   virt/kvm/arm/vgic/vgic-v4.c | 2 +-
> >>   3 files changed, 3 insertions(+), 3 deletions(-)
> >> 
> >> diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
> >> index 0fb240ec0a2a..01f8b3739a09 100644
> >> --- a/include/kvm/arm_vgic.h
> >> +++ b/include/kvm/arm_vgic.h
> >> @@ -240,7 +240,7 @@ struct vgic_dist {
> >>   	 * Contains the attributes and gpa of the LPI configuration table.
> >>   	 * Since we report GICR_TYPER.CommonLPIAff as 0b00, we can share
> >>   	 * one address across all redistributors.
> >> -	 * GICv3 spec: 6.1.2 "LPI Configuration tables"
> >> +	 * GICv3 spec "LPI Configuration tables"
> 
> Ah, this part shouldn't have been in this patch, as the description in
> the commit message.
> (And I remember the reason is just that, it it "6.1.1" in IHI 0069E but
> "6.1.2" in some older versions.)
> 
> > 
> > Why the change here? Pointing to the chapter in the spec is pretty
> > helpful, given that it is 800 pages long (although it should mention
> > what revision of the spec this refers to). For example, it should say
> > something like "IHI 0069E 6.1.1 ...".
> 
> Yes, I agreed with you.  Marc, please feel free to drop this part,
> or I can resend it with your suggestion.

No need, I'll fix it up locally.

Thanks,

	M.

-- 
Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
