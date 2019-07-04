Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EAC5F647
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLFtVYCwRUeFxDie2WUw36VHov1fJe3DvIYtOWGPJtE=; b=oJET75dQePy48B
	WoyQLqi6JTrdCG/d9mNvU0Por+qkL+wxSPK4QD39sO6tIUq03YkHkn8j5oY1ecOVXKORqFuUca1c4
	3jjx36Cp+AZcln9dkT8DhTWpdKM6rG2c3cv0PMSfjRCwFcKtkSvPHWKkKyexE+fmY2v9XR42Li1Ec
	1gYvRXlE2cq5Is1/TaeVmTh56AKU2KVvDFRwN3TBnorGGvBBcnBNbryDyuzhD9umd01053zGiZZY5
	5Kfv28RJotAW+WMvxo5XjkpLVPrg0B9nBDd9ITtzN0/YAAdoQ1keJuaVXIMSzCZSZDwrp7hIBKB27
	quKKnv+uPn8sbog/rh1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiybl-00031z-2H; Thu, 04 Jul 2019 10:04:53 +0000
Received: from mgwym02.jp.fujitsu.com ([211.128.242.41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiybX-00031V-CU
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:04:41 +0000
Received: from yt-mxauth.gw.nic.fujitsu.com (unknown [192.168.229.68]) by
 mgwym02.jp.fujitsu.com with smtp
 id 559c_571c_6c510d86_f44b_4ba8_ba35_dd111fa15d8e;
 Thu, 04 Jul 2019 19:04:33 +0900
Received: from g01jpfmpwkw01.exch.g01.fujitsu.local
 (g01jpfmpwkw01.exch.g01.fujitsu.local [10.0.193.38])
 by yt-mxauth.gw.nic.fujitsu.com (Postfix) with ESMTP id 4B8E7AC02D9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  4 Jul 2019 19:04:33 +0900 (JST)
Received: from G01JPEXCHKW16.g01.fujitsu.local
 (G01JPEXCHKW16.g01.fujitsu.local [10.0.194.55])
 by g01jpfmpwkw01.exch.g01.fujitsu.local (Postfix) with ESMTP id 30060692720;
 Thu,  4 Jul 2019 19:04:10 +0900 (JST)
Received: from G01JPEXMBKW03.g01.fujitsu.local ([10.0.194.67]) by
 g01jpexchkw16 ([10.0.194.55]) with mapi id 14.03.0439.000; Thu, 4 Jul 2019
 19:04:11 +0900
From: "Zhang, Lei" <zhang.lei@jp.fujitsu.com>
To: 'Dave Martin' <Dave.Martin@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH] KVM: arm64/sve: Fix vq_present() macro to yield a bool
Thread-Topic: [PATCH] KVM: arm64/sve: Fix vq_present() macro to yield a bool
Thread-Index: AQHVMcbm4thAjrk2VU+dkXrvfiHl5Ka5L4IAgABczYCAAK3FQA==
Date: Thu, 4 Jul 2019 10:04:08 +0000
Message-ID: <8898674D84E3B24BA3A2D289B872026A78BAAE43@G01JPEXMBKW03>
References: <1562175770-10952-1-git-send-email-Dave.Martin@arm.com>
 <20190704030252.4gzvoh4rxdmmddu5@vireshk-i7>
 <20190704083459.GY2790@e103592.cambridge.arm.com>
In-Reply-To: <20190704083459.GY2790@e103592.cambridge.arm.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.70.226]
MIME-Version: 1.0
X-SecurityPolicyCheck-GC: OK by FENCE-Mail
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_030439_673687_5844219A 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [211.128.242.41 listed in list.dnswl.org]
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
Cc: "Okamoto, Takayuki" <tokamoto@jp.fujitsu.com>,
 Christoffer Dall <cdall@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Julien Grall <julien.grall@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

I have started up KVM guest os successfully with SVE feature with Dave' patch.

Tested-by: Zhang Lei <zhang.lei@jp.fujitsu.com >

> -----Original Message-----
> From: Dave Martin <Dave.Martin@arm.com>
> Sent: Thursday, July 04, 2019 5:35 PM
> To: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: Okamoto, Takayuki/岡本 高幸 <tokamoto@jp.fujitsu.com>; Christoffer
> Dall <cdall@kernel.org>; Ard Biesheuvel <ard.biesheuvel@linaro.org>; Marc
> Zyngier <marc.zyngier@arm.com>; Catalin Marinas
> <catalin.marinas@arm.com>; Will Deacon <will.deacon@arm.com>; Zhang,
> Lei/張 雷 <zhang.lei@jp.fujitsu.com>; Julien Grall <julien.grall@arm.com>;
> kvmarm@lists.cs.columbia.edu; linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH] KVM: arm64/sve: Fix vq_present() macro to yield a bool
> 
> On Thu, Jul 04, 2019 at 08:32:52AM +0530, Viresh Kumar wrote:
> > On 03-07-19, 18:42, Dave Martin wrote:
> > > From: Zhang Lei <zhang.lei@jp.fujitsu.com>
> > >
> > > The original implementation of vq_present() relied on aggressive
> > > inlining in order for the compiler to know that the code is correct,
> > > due to some const-casting issues.  This was causing sparse and clang
> > > to complain, while GCC compiled cleanly.
> > >
> > > Commit 0c529ff789bc addressed this problem, but since vq_present()
> > > is no longer a function, there is now no implicit casting of the
> > > returned value to the return type (bool).
> > >
> > > In set_sve_vls(), this uncast bit value is compared against a bool,
> > > and so may spuriously compare as unequal when both are nonzero.  As
> > > a result, KVM may reject valid SVE vector length configurations as
> > > invalid, and vice versa.
> > >
> > > Fix it by forcing the returned value to a bool.
> > >
> > > Signed-off-by: Zhang Lei <zhang.lei@jp.fujitsu.com>
> > > Fixes: 0c529ff789bc ("KVM: arm64: Implement vq_present() as a
> > > macro")
> > > Signed-off-by: Dave Martin <Dave.Martin@arm.com> [commit message
> > > rewrite]
> > > Cc: Viresh Kumar <viresh.kumar@linaro.org>
> > >
> > > ---
> > >
> > > Posting this under Zhang Lei's authorship, due to the need to turn
> > > this fix around quickly.  The fix is as per the original suggestion [1].
> > >
> > > Originally observed with the QEMU KVM SVE support under review:
> > > https://lists.gnu.org/archive/html/qemu-devel/2019-06/msg04945.html
> > >
> > > Bug reproduced and fix tested on the Arm Fast Model, with
> > > http://linux-arm.org/git?p=kvmtool-dm.git;a=shortlog;h=refs/heads/sv
> > > e/v3/head (After rerunning util/update_headers.sh.)
> > >
> > > (the --sve-vls command line argument was removed in v4 of the
> > > kvmtool patches).
> > >
> > > [1]
> > > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-July/6646
> > > 33.html
> > > ---
> > >  arch/arm64/kvm/guest.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c index
> > > c2afa79..dfd6264 100644
> > > --- a/arch/arm64/kvm/guest.c
> > > +++ b/arch/arm64/kvm/guest.c
> > > @@ -208,7 +208,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu,
> > > const struct kvm_one_reg *reg)
> > >
> > >  #define vq_word(vq) (((vq) - SVE_VQ_MIN) / 64)  #define vq_mask(vq)
> > > ((u64)1 << ((vq) - SVE_VQ_MIN) % 64) -#define vq_present(vqs, vq)
> > > ((vqs)[vq_word(vq)] & vq_mask(vq))
> > > +#define vq_present(vqs, vq) (!!((vqs)[vq_word(vq)] & vq_mask(vq)))
> > >
> > >  static int get_sve_vls(struct kvm_vcpu *vcpu, const struct
> > > kvm_one_reg *reg)  {
> >
> > It was a really nice bug :)
> >
> > Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> Thanks for the quick review!
> 
> Maybe it makes sense to write equality comparisons on bools as !x == !y to be
> more defensive against this kind of thing.  Anyway, probably best to leave this
> as-is while the dust settles.
> 
> Cheers
> ---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
