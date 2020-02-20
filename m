Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A5B166623
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ysaaUXWLPImJ63+nUd5vvWz3NREhE6cH5hxQmvHNbY=; b=Z/dNalG6P84GFI
	dl1KBieLYVFaU+hB8PRlGGM62+9az7aZXIT6i+mf+O6RV1yL4DhZdpHL4nqntcjoPmElY1lGcPHZy
	JkeiVK5md6ljnGFqWRhbECElgib27agtci1FWNwt0Go62DsXyJrxUGpChmrLD2oiw3QTMScARwDM7
	w3tlyJ5ElUXfBghHEy+CtfCCP5OAJOY93VtURkDzxPUhfo+r66ZBQ3hf3vKwma6j390i9VS6hAl5l
	AxJq7rtNqTNQGyfKxKMzJXqvjk1RWPoCibqYbdh5D7XEpwZvYzCb4JdrzWtGiPifTJvpFpZsnF6aR
	U1tTIyx2MoSUie/lWQeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qTU-0005tF-4O; Thu, 20 Feb 2020 18:23:00 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4qTL-0005sk-Mo
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:22:53 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01KIMSYg068103;
 Thu, 20 Feb 2020 12:22:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582222948;
 bh=K5dPu3+Wa7CxKbU5shKv6WcPAdBvfaqlk76SVCdHdLA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=l0M0ZVSv3fmfMS9j84mE8lFOURm3UA0yk69gHqQocp+dURS2y8WzJ7wefa+JZ3r6h
 Zm1UAWCanpIgV89obYfddTMQ1IV1OVIPpzf0e1wfh4cD4NN2mZBsj+NLmFgA//Rgo4
 ikfFFtZjBcSv/8X0vbpbrdV8Hk+XNV6a/8s7ZMUg=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01KIMSfh002895
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Feb 2020 12:22:28 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 20
 Feb 2020 12:22:28 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 20 Feb 2020 12:22:28 -0600
Received: from [10.250.77.18] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01KIMRVw100737;
 Thu, 20 Feb 2020 12:22:27 -0600
Subject: Re: omap-secure.c:undefined reference to `__arm_smccc_smc'
To: Tony Lindgren <tony@atomide.com>
References: <202002131856.VeW4PhBJ%lkp@intel.com>
 <20200220155429.GH37466@atomide.com>
 <55ddcd29-ed8b-529e-dd54-cbac5cf74e42@ti.com>
 <20200220162012.GI37466@atomide.com>
 <d7b685b6-16a2-3743-1786-a5240726ed9c@ti.com>
 <20200220163703.GK37466@atomide.com> <20200220171305.GL37466@atomide.com>
 <281e895b-720d-5bab-63cf-8b3e389dc767@ti.com>
 <20200220175744.GQ37466@atomide.com> <20200220181141.GR37466@atomide.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <333dd36f-e760-64b3-9e0f-3a316df9ad10@ti.com>
Date: Thu, 20 Feb 2020 13:22:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200220181141.GR37466@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_102251_829471_A34157A5 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On 2/20/20 1:11 PM, Tony Lindgren wrote:
> * Tony Lindgren <tony@atomide.com> [200220 17:58]:
>> * Andrew F. Davis <afd@ti.com> [200220 17:39]:
>>> On 2/20/20 12:13 PM, Tony Lindgren wrote:
>>>> * Tony Lindgren <tony@atomide.com> [200220 16:37]:
>>>>> * Andrew F. Davis <afd@ti.com> [200220 16:24]:
>>>>>> On 2/20/20 11:20 AM, Tony Lindgren wrote:
>>>>>>> * Andrew F. Davis <afd@ti.com> [200220 16:04]:
>>>>>>>> On 2/20/20 10:54 AM, Tony Lindgren wrote:
>>>>>>>>> Andrew,
>>>>>>>>>
>>>>>>>>> * kbuild test robot <lkp@intel.com> [200213 10:27]:
>>>>>>>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>>>>>>>>>> head:   0bf999f9c5e74c7ecf9dafb527146601e5c848b9
>>>>>>>>>> commit: c37baa06f8a970e4a533d41f7d33e5e57de5ad25 ARM: OMAP2+: Fix undefined reference to omap_secure_init
>>>>>>>>>> date:   3 weeks ago
>>>>>>>>>> config: arm-randconfig-a001-20200213 (attached as .config)
>>>>>>>>>> compiler: arm-linux-gnueabi-gcc (GCC) 7.5.0
>>>>>>>>>> reproduce:
>>>>>>>>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>>>>>>>         chmod +x ~/bin/make.cross
>>>>>>>>>>         git checkout c37baa06f8a970e4a533d41f7d33e5e57de5ad25
>>>>>>>>>>         # save the attached .config to linux build tree
>>>>>>>>>>         GCC_VERSION=7.5.0 make.cross ARCH=arm 
>>>>>>>>>>
>>>>>>>>>> If you fix the issue, kindly add following tag
>>>>>>>>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>>>>>>>>
>>>>>>>>>> All errors (new ones prefixed by >>):
>>>>>>>>>>
>>>>>>>>>>    arch/arm/mach-omap2/omap-secure.o: In function `omap_smccc_smc':
>>>>>>>>>>>> omap-secure.c:(.text+0x94): undefined reference to `__arm_smccc_smc'
>>>>>>>>>
>>>>>>>>> Have you looked at this one? Looks like there's still an unhandled
>>>>>>>>> randconfig build case.
>>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> I've had a quick look, all the ARM config does:
>>>>>>>>
>>>>>>>> select HAVE_ARM_SMCCC if CPU_V7
>>>>>>>>
>>>>>>>> so I don't think this will happen in any real config, but if we want to
>>>>>>>> prevent randconfig issue this we could force ARCH_OMAP2PLUS to "depend"
>>>>>>>> on it.
>>>>>>>
>>>>>>> Seems to happen at least with omap2 only config where we don't have
>>>>>>> CPU_V7. Something like below seems to fix it.
>>>>>>>
>>>>>>> If that looks OK to you, I'll send out a proper fix.
>>>>>>>
>>>>>>
>>>>>>
>>>>>> This looks fine to me.
>>>>>>
>>>>>> A better later fix might be to later stub out the actual __arm_smccc_smc
>>>>>> in common code if CONFIG_HAVE_ARM_SMCCC is not set, so any platform will
>>>>>> get the fix.
>>>>>
>>>>> Yeah seems that might be better. Adding Aaro and Marc to Cc.
>>>>
>>>> But if we can in theory have some arm11 machine with smccc, then this
>>>> local ifdef below is probably the way to go.
>>>>
>>>
>>> If the machine has SMCCC then it will also have the
>>> CONFIG_HAVE_ARM_SMCCC set and so nothing would change.
>>
>> Hmm yeah good point.
> 
> So the patch below seems like the way to go then. Anybody have issues
> with the patch below?
> 
> Regards,
> 
> Tony
> 
> 8< -------------------------
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -121,6 +121,7 @@ struct arm_smccc_quirk {
>  	} state;
>  };
>  
> +#ifdef CONFIG_HAVE_ARM_SMCCC
>  /**
>   * __arm_smccc_smc() - make SMC calls
>   * @a0-a7: arguments passed in registers 0 to 7
> @@ -137,6 +138,14 @@ asmlinkage void __arm_smccc_smc(unsigned long a0, unsigned long a1,
>  			unsigned long a2, unsigned long a3, unsigned long a4,
>  			unsigned long a5, unsigned long a6, unsigned long a7,
>  			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk);
> +#else
> +static inline void __arm_smccc_smc(unsigned long a0, unsigned long a1,
> +			unsigned long a2, unsigned long a3, unsigned long a4,
> +			unsigned long a5, unsigned long a6, unsigned long a7,
> +			struct arm_smccc_res *res, struct arm_smccc_quirk *quirk)
> +{


Maybe a warning? If you do not have SMC on your platform but are still
making SMC calls then something is broken and it looks like it would
fail silently here.

Andrew


> +}
> +#endif
>  
>  /**
>   * __arm_smccc_hvc() - make HVC calls
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
