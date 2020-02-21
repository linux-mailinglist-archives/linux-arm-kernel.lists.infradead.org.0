Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD681684E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dxa0SLUd3fFdkF9UTbq7gGsf/YsRSJw0nl7xfH1urvc=; b=JfS1uoFanRu39l
	X/regmOh/Y9useQrvUR8vKZAMwyBqLFWaY2rukhubmpmaE/2BxxPfUaohSdFbTawZeAgpntTVPOFU
	A3XvZh6MQ75W98ppvusisumLaKFWb8OkYXkgo0dTOZgVjge5S4QK4pKbekrEv6C1dqlaEpPqmRSqY
	Kq/cg74RGHdyWRymSgS2/jSR1IOBKXsnOpO2oMbkRn6V09cOqDAp08cEOrzxzj5PSyNZZ7Kd0uYZ4
	5+dnQuVx+TV55HoWsTszP0HVvHvrYOCLqB3VHEdzo9AIRJWQDWKG00/1zhpo8V0sA3e20m1cm1MVK
	LD5LtE2uJsNsSYf6kfaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5C4a-0007fh-Ao; Fri, 21 Feb 2020 17:26:44 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5C4S-0007en-1Y
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:26:37 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 90018807E;
 Fri, 21 Feb 2020 17:27:19 +0000 (UTC)
Date: Fri, 21 Feb 2020 09:26:31 -0800
From: Tony Lindgren <tony@atomide.com>
To: "Andrew F. Davis" <afd@ti.com>
Subject: Re: omap-secure.c:undefined reference to `__arm_smccc_smc'
Message-ID: <20200221172631.GY37466@atomide.com>
References: <20200220155429.GH37466@atomide.com>
 <55ddcd29-ed8b-529e-dd54-cbac5cf74e42@ti.com>
 <20200220162012.GI37466@atomide.com>
 <d7b685b6-16a2-3743-1786-a5240726ed9c@ti.com>
 <20200220163703.GK37466@atomide.com>
 <20200220171305.GL37466@atomide.com>
 <281e895b-720d-5bab-63cf-8b3e389dc767@ti.com>
 <20200220175744.GQ37466@atomide.com>
 <20200220181141.GR37466@atomide.com>
 <333dd36f-e760-64b3-9e0f-3a316df9ad10@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <333dd36f-e760-64b3-9e0f-3a316df9ad10@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_092636_123716_E6A56882 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Andrew F. Davis <afd@ti.com> [200220 10:23]:
> On 2/20/20 1:11 PM, Tony Lindgren wrote:
> > * Tony Lindgren <tony@atomide.com> [200220 17:58]:
> >> * Andrew F. Davis <afd@ti.com> [200220 17:39]:
> >>> If the machine has SMCCC then it will also have the
> >>> CONFIG_HAVE_ARM_SMCCC set and so nothing would change.
> >>
> >> Hmm yeah good point.
> > 
> > So the patch below seems like the way to go then. Anybody have issues
> > with the patch below?
> > 
> > Regards,
> > 
> > Tony
> > 
> > 8< -------------------------
> > diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> > --- a/include/linux/arm-smccc.h
> > +++ b/include/linux/arm-smccc.h
> > @@ -121,6 +121,7 @@ struct arm_smccc_quirk {
> >  	} state;
> >  };
> >  
> > +#ifdef CONFIG_HAVE_ARM_SMCCC
> >  /**
> >   * __arm_smccc_smc() - make SMC calls
> >   * @a0-a7: arguments passed in registers 0 to 7
> > @@ -137,6 +138,14 @@ asmlinkage void __arm_smccc_smc(unsigned long a0, unsigned long a1,
> >  			unsigned long a2, unsigned long a3, unsigned long a4,
> >  			unsigned long a5, unsigned long a6, unsigned long a7,
> >  			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk);
> > +#else
> > +static inline void __arm_smccc_smc(unsigned long a0, unsigned long a1,
> > +			unsigned long a2, unsigned long a3, unsigned long a4,
> > +			unsigned long a5, unsigned long a6, unsigned long a7,
> > +			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk)
> > +{
> 
> 
> Maybe a warning? If you do not have SMC on your platform but are still
> making SMC calls then something is broken and it looks like it would
> fail silently here.

OK I'll add that and send out a  proper patch.

Thanks,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
