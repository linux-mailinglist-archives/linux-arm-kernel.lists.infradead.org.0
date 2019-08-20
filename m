Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A832695A95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8sDhmyU/Mwy/LjuToW4exZNVMPelTKzTeqG9khhiXY=; b=IriOUr9nm8qnP3
	TStwugj4jacbRNwG1uRMl6nAOCquTX7AE0rX+kjVORWZf3h8oza1uuWmdNoLfH0zfJdlfDme5YQyz
	Cj9TFU1YQ14a+/seHQY70d1iIr3Ecp7jSFG48bvosN4B6C65MzV5PEjpAi62BEPXFyrVX8h8BKOSB
	LLrBomlSIp0ApBiQ0MSSh8X4FlscSNW+jxJdx/Ji12Imn6lZUGRbdcZ4QpOK2rUMaLBBNEssWi+nf
	fuCHYVsjtwzb72CU93Ro5mP/IR6mOs1rovekZdnPS8CTMI120g+63v5eMMxcA6vRI7/Qqh0oYeAe/
	y83Prx6rX87kUSoJPCgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i003G-0000fv-PX; Tue, 20 Aug 2019 09:03:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i002v-0000bt-Jv
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 09:03:19 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190820090313euoutp02eeb52bb32e4b10d1bc82b52b69f7d983~8lhZgkbiz1639016390euoutp02F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 09:03:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190820090313euoutp02eeb52bb32e4b10d1bc82b52b69f7d983~8lhZgkbiz1639016390euoutp02F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566291793;
 bh=3zMMcEr18biqTPjjpGx/QXtGczLZJ59EMRIX8XVsp4M=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Pis5QM29mpMBkwcjn2ppAKZVNzPam7ynnHaVKm4SUCh8i9GB6w+OSFsFlCl+PiUbU
 rneorXSWb2zDUJH5gkp28CDFG+b3/sHP2vPIvXzvZgVyvai2fuOyQxkWorMFTjl46N
 QfYFT1mCv0YMZF3zd97khieu5lHslpAeYTlbx5eU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190820090312eucas1p10400f7e3ec45efcd30f6d11d5926aab7~8lhY_mQr11704817048eucas1p1F;
 Tue, 20 Aug 2019 09:03:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id BA.89.04374.057BB5D5; Tue, 20
 Aug 2019 10:03:12 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190820090311eucas1p251e3f45bb9db6bcdd97ad07b691e1b5f~8lhYF39JE1805518055eucas1p2I;
 Tue, 20 Aug 2019 09:03:11 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190820090311eusmtrp2e6d78b6cd4d260a29af70d3e9975f26e~8lhX3qCW02503525035eusmtrp2g;
 Tue, 20 Aug 2019 09:03:11 +0000 (GMT)
X-AuditID: cbfec7f5-92d689c000001116-cb-5d5bb75019d2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FC.53.04117.F47BB5D5; Tue, 20
 Aug 2019 10:03:11 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190820090310eusmtip19a3c0a5f088ec510d5056c4d4f58e0cd~8lhW7CjcM0896908969eusmtip1g;
 Tue, 20 Aug 2019 09:03:10 +0000 (GMT)
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
To: Viresh Kumar <viresh.kumar@linaro.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <06ccff05-2152-4bcc-7537-8f24da75f163@samsung.com>
Date: Tue, 20 Aug 2019 11:03:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820030114.6flnn2omeys3lih3@vireshk-i7>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0gUURjFvTs7O6M0dl0NP1YpWJJQUPMRTfjILHSgAsE/DEXcTQeV3NV2
 fRaUVEpZmhalLZJaarlR6vp+4mN1kSILH6WWSgqSIUm6Qlia6yj53+8795x7vwOXJqQDpIxO
 VKfyGrUySS6xETcP/h52D2uJij668E3G1pfUkmyZ8T3J3p/7QbDDw3UUa5gbJ9mR9lIJu5Jv
 RGzJcLeIfW38SrHPmlYpNqfLSLH1Zo5tmB2UBDGcQX9Hwn0Z75RwDZXXuYJGPeJWDAfDyEgb
 /zg+KTGd13gGKmwSWqf9U3px5kSbfzbKYfKQNQ3YF7qWG1EesqGl+CWCkp+bhDCsImj9VC0W
 hhUE89OV5G5kclC/E3mBoKp3ZCeyhGBxbVRkcdnjYOhcN0vyEE07YDf4PsFbZAKPiaDdvM0S
 7AX5AwXIwgwOhFuTOZSFxdgFCsf7tvkAvgC/ZvtJwWMHQ0/mxRa2xifg4eQCEu50hBurNaTA
 h6BlqXR7H8CTFHyoqNvZ+gzkmccIge1h0dRICewMm21lIiFwE8G9jilKGAoRzJjKkeDyg37T
 R9LShsCuUNvuKcinoGDUKLLIgG3h85KdsIQtPGguJgSZgdu5UsF9GNb1xSKBZXB3flNciOS6
 PdV0e+ro9tTR/X+3HIn1yJFP06riea2Pms/w0CpV2jR1vEdsssqAtj7X2w2TuRV1/7nYhzCN
 5PsY7nFktJRUpmuzVH0IaELuwGSWbklMnDLrCq9JjtGkJfHaPuREi+WOzFWr2Sgpjlem8pd4
 PoXX7J6KaGtZNnLseN4jO+kSMmh1bgL2Y3WI6chGaVUEXUG/UszUJBiz1jaRrytXdM2r2uyc
 PEXrMt60+TBBlFLRXSlZ5iYue3Puj8yGY6GFT6s8k9wbA7jgs06Rq+erW/w0IadDwzdi/rq8
 SyHaihTHm4YSI+Zl5SOqnvAOb0VZamxuAHaTi7UJSi83QqNV/gN63SfcWAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOIsWRmVeSWpSXmKPExsVy+t/xu7r+26NjDR6slrbYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLTZ+9bDY
 /OAYmwOvx6ZVnWwed67tYfPYvKTeo2/LKkaPz5vkAlij9GyK8ktLUhUy8otLbJWiDS2M9Awt
 LfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S9DJ23LMpOChQcXOnTQNjK28XIyeHhICJxK1j
 qxi7GLk4hASWMkq0fnzA1sXIAZSQkpjfogRRIyzx51oXG0TNa0aJ9m0bGEESwgJOEnt+fwWr
 FxHQknh5MxWkhlngKpPE4j2XWCAazrFILFzZxA7SwCZgKNF7tA+smVfATqLlVitYnEVAVWLC
 tUNgtqhAhMThHbOgagQlTs58wgJicwpYSky+9RwsziygLvFn3iVmCFtcounLSlYIW15i+9s5
 zBMYhWYhaZ+FpGUWkpZZSFoWMLKsYhRJLS3OTc8tNtIrTswtLs1L10vOz93ECIzUbcd+btnB
 2PUu+BCjAAejEg+vx7SoWCHWxLLiytxDjBIczEoivBVzgEK8KYmVValF+fFFpTmpxYcYTYGe
 m8gsJZqcD0wieSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGK8e
 c8h6tHljj/HthzJrP9/vk/g7gderrZOr7Xr/R2XnA+Uah/Y8Spc8ttRvc+3/BMf4twVBOy8W
 sXpx8zJPsvV7dc5l9fQjm2ZmKm58+8hnreAPib/7f9192j5nr5BmkrpbtGq2xnzBujnHz6tG
 n7dY+lHOImFxRtksx7vmH28eZdgnd/CM+iElluKMREMt5qLiRADUDE7C6gIAAA==
X-CMS-MailID: 20190820090311eucas1p251e3f45bb9db6bcdd97ad07b691e1b5f
X-Msg-Generator: CA
X-RootMTR: 20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
 <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
 <20190819090928.pke6cov52n4exlbp@vireshk-i7>
 <b831d7c5-c830-fd65-20cf-02e209889c28@samsung.com>
 <20190819112533.bvfyinw7fsebkufr@vireshk-i7>
 <b7093aaf-ea56-c390-781f-6f9d0780bd8e@samsung.com>
 <20190820030114.6flnn2omeys3lih3@vireshk-i7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_020318_181822_AF130E5E 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/20/19 05:01, Viresh Kumar wrote:
> On 19-08-19, 15:39, Sylwester Nawrocki wrote:
>> Unfortunately not, the patch set as I see it is another way of updating 
>> an OPP after it was parsed from DT.  OPP remove/add could work equally 
>> well in our use case.
> 
> Adding OPPs dynamically has limitations, you can't set many values which are
> otherwise possible with DT. And removing/adding is not the right thing to do
> technically.

Thanks for explanation, I was not aware of that.

>> The problem is that we have the information on how to translate the 
>> common OPP voltage to a voltage specific to given silicon encoded jointly 
>> in the ASV tables and the CHIPID registers (efuse/OTP memory). 
>> Additionally, algorithm of selecting ASV data (OPP voltage) based on 
>> the "key" data from registers is not generic, it is usually different 
>> per each SoC type.
>>
>> I tried to identify some patterns in those tables in order to simplify 
>> possible DT binding, but that was not really successful. I ended up just 
>> keeping whole tables.
> 
> Sorry but I am unable to understand the difficulty you are facing now. So what I
> suggest is something like this.

The difficulty was about representing data from tables asv_{arm,kfc}_table[][]
added in patch 3/9 of the series in devicetree.  If you have no objections
about keeping those tables in the driver then I can't see any difficulties. 
 
> - Use DT to get a frequency and voltage for each frequency.

Yes, this is what happens now, we have common OPPs in DT that work for each SoC
revision. 

> - At runtime, based on SoC, registers, efuses, etc, update the voltage of the
>   OPPs.
> - This algo can be different for each SoC, no one is stopping you from doing
>   that.
> 
> Am I missing something ?

Not really, this is basically what happens in the $subject patch series. 

Then IIUC what I would need to change is to modify exynos_asv_update_cpu_opps() 
function in patch 3/9 to use dev_pm_opp_adjust_voltage() rather than 
dev_pm_opp_remove(), dev_pm_opp_add().

-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
