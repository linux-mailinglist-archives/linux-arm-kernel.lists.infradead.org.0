Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2520F1DA8EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 06:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCBHIxneNK8HUHBMoZLPMRkvyg3dPU8aYZYghJbsWWE=; b=A1G08kqEPiurwK
	/6bOG+mLtm6Xd9XLBsMJaMb9on8coyf8TBOmh6g5MFzE+S1nTUgiDMTquBePA8O8p3xdn+dvlfPnO
	VWUL2VuJ+Cw4W5XH1V9G+4WJpFUSHYfqCyzIFA9VM2ZzrgcOeNkEyXiH8EpL+T1BkYj3Tg6v5sXLy
	hWCDHFF4/UGTR+H0ufABfA5FTfC4E+SR4xc6pv3ZAnroLEDA/0bS01FRMoxvSVlbuThnnIBFBvW12
	bcliEgMYQZzmTQ9tszCp1c3SSBrxhTdmPWxQe52PYl65lys2t1TBL5GbxoL+KlX/b+wNt+G0yZa6u
	B4ibwnC2hsjOZAQwgwCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFuc-0008Iv-NB; Wed, 20 May 2020 04:00:58 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFuT-0008G5-65
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 04:00:50 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200520040038epoutp01ec3b7d399dc0cabd86a1e2a679bc37c6~QoJbd8RYf0975909759epoutp019
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:00:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200520040038epoutp01ec3b7d399dc0cabd86a1e2a679bc37c6~QoJbd8RYf0975909759epoutp019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589947238;
 bh=+A93EgRDoz7uCPtvKzScjT7YCC3iGmFF0K5t8LgUfsY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=TnDmT1d/aGi/fTN7+LhlGLDvEc9oqWQsW1+sBqaWJ5vUgw4Gk9REx4oKi84hR24jt
 XvgD1yS0UmwPEm14kNrDSBTiXit+E3L/9XWnomCxdsih0wY+B09vMQCD2NGBUIHewZ
 mampQ2YulMmtvsThpZ8yWugeqNifQED3VSvdLiQ4=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200520040037epcas1p3d899d50212fdfb99f0cf0fb08413ddb7~QoJajZThm0716307163epcas1p3m;
 Wed, 20 May 2020 04:00:37 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.154]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 49RfDM1TTkzMqYkn; Wed, 20 May
 2020 04:00:35 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 99.9B.04658.36BA4CE5; Wed, 20 May 2020 13:00:35 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200520040033epcas1p24774bccf513be863ab4a2b5499eb61fd~QoJXKZ9s60392403924epcas1p2x;
 Wed, 20 May 2020 04:00:33 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200520040033epsmtrp2b8b9163d2e6d734804559d37671ace69~QoJXJIvbC0682106821epsmtrp2k;
 Wed, 20 May 2020 04:00:33 +0000 (GMT)
X-AuditID: b6c32a39-a99ff70000001232-72-5ec4ab63a02a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 C6.5D.25866.16BA4CE5; Wed, 20 May 2020 13:00:33 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200520040033epsmtip1bf656738f910c076b9f02a7400fa6ce7~QoJWyTxic1684816848epsmtip1W;
 Wed, 20 May 2020 04:00:33 +0000 (GMT)
Subject: Re: [PATCH 00/12] Add cpufreq and cci devfreq for mt8183, and SVS
 support
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, Stephen
 Boyd <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <d08c0dc0-5573-6ba0-1d9f-18857c7f6fb6@samsung.com>
Date: Wed, 20 May 2020 13:10:46 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEJsWRmVeSWpSXmKPExsWy7bCmrm7y6iNxBod7OCy2r3/BajH14RM2
 i/lHzrFanG16w27x7UoHk8Wmx9dYLS7vmsNmcbn5IqPF594jjBZLr19ksmhqMba43biCzeLN
 j7NMFmdOX2K1aN17hN3i37WNLBbT7wpZbPzq4SDksWbeGkaPnbPusntsWtXJ5nHn2h42j81L
 6j1aTu5n8dhytZ3Fo2/LKkaP4ze2M3l83iQXwBWVbZORmpiSWqSQmpecn5KZl26r5B0c7xxv
 amZgqGtoaWGupJCXmJtqq+TiE6DrlpkD9JKSQlliTilQKCCxuFhJ386mKL+0JFUhI7+4xFYp
 tSAlp8CyQK84Mbe4NC9dLzk/18rQwMDIFKgwITtj/q2JjAVzRSqWrelnaWDcztfFyMEhIWAi
 8fVbQRcjF4eQwA5GiWlX+pkhnE+MEjfezGWBcD4zSjy4v4yxi5ETrOP2z0msEIldjBIf771n
 h3DeM0r8v9DADFIlLBAisXbHejBbROA2s8SE2SEgRcwCBxklpl+6yASSYBPQktj/4gYbiM0v
 oChx9cdjsBW8AnYSr689ZAGxWQRUJbbe3AlmiwqESZzc1gJVIyhxcuYTsDingJPE5DPPwGxm
 AXGJW0/mM0HY8hLb384Be0hCYDKnxJ+XB9khfnCRmNy1mwXCFpZ4dXwLVFxK4vO7vWwQdrXE
 ypNH2CCaOxgltuy/wAqRMJbYv3QyEyj4mAU0Jdbv0ocIK0rs/D2XEWIxn8S7rz2skBDmleho
 E4IoUZa4/OAuE4QtKbG4vZNtAqPSLCTvzELywiwkL8xCWLaAkWUVo1hqQXFuemqxYYEpcnRv
 YgSndy3LHYzHzvkcYhTgYFTi4b2x83CcEGtiWXFl7iFGCQ5mJRHeCS8OxQnxpiRWVqUW5ccX
 leakFh9iNAWG9kRmKdHkfGDuySuJNzQ1MjY2tjAxNDM1NFQS5516PSdOSCA9sSQ1OzW1ILUI
 po+Jg1OqgVGUs6ZfzHqb9qPKX0KX+7fLXHJ1m76l7PaFvXaGXzYt1AnI1X535bem6dn3BWev
 Wy2O/Zvx+5+8733v8Ff7jmWJrzsleuH+1MtLJt7euEmX/21Wxt16Kyl1KW7XKzpmTD/UJZkS
 WV/UJ0icDijbupTTjdtFzzdM56rvh5WJ4SvtmTuz5XLyNymxFGckGmoxFxUnAgBGfzrDBQQA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIIsWRmVeSWpSXmKPExsWy7bCSnG7i6iNxBluXKlhsX/+C1WLqwyds
 FvOPnGO1ONv0ht3i25UOJotNj6+xWlzeNYfN4nLzRUaLz71HGC2WXr/IZNHUYmxxu3EFm8Wb
 H2eZLM6cvsRq0br3CLvFv2sbWSym3xWy2PjVw0HIY828NYweO2fdZffYtKqTzePOtT1sHpuX
 1Hu0nNzP4rHlajuLR9+WVYwex29sZ/L4vEkugCuKyyYlNSezLLVI3y6BK2P+rYmMBXNFKpat
 6WdpYNzO18XIySEhYCJx++ck1i5GLg4hgR2MEo8PbGaDSEhKTLt4lLmLkQPIFpY4fLgYouYt
 o8S2hglMIDXCAiESa3esZwZJiAjcZ5ZYfvcqG4jDLHCQUeJZ9x92iJapjBIvX61gBmlhE9CS
 2P/iBtgKfgFFias/HjOC2LwCdhKvrz1kAbFZBFQltt7cCWaLCoRJ7FzymAmiRlDi5MwnYHFO
 ASeJyWeegdnMAuoSf+ZdYoawxSVuPZnPBGHLS2x/O4d5AqPwLCTts5C0zELSMgtJywJGllWM
 kqkFxbnpucWGBUZ5qeV6xYm5xaV56XrJ+bmbGMGxrqW1g3HPqg96hxiZOBgPMUpwMCuJ8E54
 cShOiDclsbIqtSg/vqg0J7X4EKM0B4uSOO/XWQvjhATSE0tSs1NTC1KLYLJMHJxSDUyOf27N
 fFj2fVHePwMjG9vo9NmXlu5fe5tj/5f5209cU1FrzQ12SPOM/BG72iBpwsLje2onfko4+XXl
 3cmZ6a51H6x0v73QN4gu5NNs33F/5wzHnyJtuj/uSPn/dhDTnCG6/rBlD2/ImrXKhqGHeL+e
 fXWjtaK8u1h8dTC3X9/UQ6vPqTOwtJUevC0XN+lU02mtHc86VyvuqGpaI5fK/CkrLP/7tUqZ
 HcypQfGT92pys1p5h29qkY0oncHLJOB9/3//M98TW7Tfn2aplPpfYmgfLG8oKHPq8v7Jdds9
 BM6uc1VMXm6ZI2C2apc3k/JNjcf/AmYk7NlwdZWyPc+8T3uUJt+ft3ZL384yjv7IsqVKLMUZ
 iYZazEXFiQAg1dBHZAMAAA==
X-CMS-MailID: 20200520040033epcas1p24774bccf513be863ab4a2b5499eb61fd
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200520034324epcas1p3affbd24bd1f3fe40d51baade07c1abba
References: <CGME20200520034324epcas1p3affbd24bd1f3fe40d51baade07c1abba@epcas1p3.samsung.com>
 <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_210049_580052_0078579D 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

Could you explain the base commit of these patches?
When I tried to apply them to v5.7-rc1 for testing,
the merge conflict occurs.

Thanks,
Chanwoo Choi

On 5/20/20 12:42 PM, Andrew-sh.Cheng wrote:
> MT8183 supports CPU DVFS and CCI DVFS, and LITTLE cpus and CCI are in the same voltage domain.
> So, this series is to add drivers to handle the voltage coupling between CPU and CCI DVFS.
> 
> For SVS support, need OPP_EVENT_ADJUST_VOLTAGE and corresponding reaction.
> 
> Change since v5:
> 	- Changing dt-binding format to yaml.
> 	- Extending current devfreq passive_governor instead of create a new one.
> 	- Resend depending patches of Sravana Kannan base on kernel-5.7
> 
> 
> Andrew-sh.Cheng (6):
>   cpufreq: mediatek: add clock and regulator enable for intermediate
>     clock
>   dt-bindings: devfreq: add compatible for mt8183 cci devfreq
>   devfreq: add mediatek cci devfreq
>   opp: Modify opp API, dev_pm_opp_get_freq(), find freq in opp, even it
>     is disabled
>   cpufreq: mediatek: add opp notification for SVS support
>   devfreq: mediatek: cci devfreq register opp notification for SVS
>     support
> 
> Saravana Kannan (6):
>   OPP: Allow required-opps even if the device doesn't have power-domains
>   OPP: Add function to look up required OPP's for a given OPP
>   OPP: Improve required-opps linking
>   PM / devfreq: Cache OPP table reference in devfreq
>   PM / devfreq: Add required OPPs support to passive governor
>   PM / devfreq: Add cpu based scaling support to passive_governor
> 
>  .../devicetree/bindings/devfreq/mt8183-cci.yaml    |  51 ++++
>  drivers/cpufreq/mediatek-cpufreq.c                 | 122 ++++++++-
>  drivers/devfreq/Kconfig                            |  12 +
>  drivers/devfreq/Makefile                           |   1 +
>  drivers/devfreq/devfreq.c                          |   6 +
>  drivers/devfreq/governor_passive.c                 | 298 +++++++++++++++++++--
>  drivers/devfreq/mt8183-cci-devfreq.c               | 233 ++++++++++++++++
>  drivers/opp/core.c                                 |  85 +++++-
>  drivers/opp/of.c                                   | 108 ++++----
>  drivers/opp/opp.h                                  |   5 +
>  include/linux/devfreq.h                            |  42 ++-
>  include/linux/pm_opp.h                             |  11 +
>  12 files changed, 874 insertions(+), 100 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci.yaml
>  create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
