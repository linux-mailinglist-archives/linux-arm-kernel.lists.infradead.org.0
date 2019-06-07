Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920CB389BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfmOxNfPQNSb34dVCXlDR1bn8Oiv58zIHuTusBwO2pw=; b=q/mosmNc42Mba3
	+neFechUOq+ZKUXYqfYJNYLnrlgoCEsLj87s63rgPYXHwBcyUMZThrdQw6EdQjtRNqVWagRYuXY0p
	/WL80v7TnEAUREkizIC03mDkwr9PvLNe/R8SUysD3aU/LXBA7JFe6nc2dOwpFsu0KDNvqMeeVkRzv
	v8C5ddCgMchG57AbW5hT/OSgbkNB5Fos2wE4290HgZQQj1hewqWlNMEnB/We1Mfy0pq5/ApwU5gpH
	iHtuBE6RwegE6PXzMQqb9irWDMszpYROffxfX9LOUMZdXT+WeEHwvUKvcMI9XvUbhKZDWX3dVBpRl
	UaVfufFex+iK+swqkH8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZDcr-0006Nt-8J; Fri, 07 Jun 2019 12:05:41 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZDcj-0006N4-Lt
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 12:05:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190607120531euoutp018303b9e93659e95f34aa3c96f349ad65~l6RcGc1aQ1982819828euoutp01y
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  7 Jun 2019 12:05:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190607120531euoutp018303b9e93659e95f34aa3c96f349ad65~l6RcGc1aQ1982819828euoutp01y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559909131;
 bh=COHVb0UeeGmSgkAXwTwyqkaza60Y5M9a3mjtKEoAQBs=;
 h=Subject:To:From:Cc:Date:In-Reply-To:References:From;
 b=NHSK5GZuBqssg0L8cRZDRo3h+TWLUv/+H2t9HEmFCXI8/D2lV4uXUXKLGzayHJ/Dq
 c/FsKsN7rlu2pAMJ3z233w/ubv1qrLFu4J+cleFw+gMByJJgvIewOP4OV0jCFcwbvS
 afVwvERuwarYacS8vgzOOxp9dn5DryTrc/t5z8Zs=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190607120529eucas1p18edacacf6f19b60087a2f81430102464~l6RbAkG0l1333013330eucas1p1D;
 Fri,  7 Jun 2019 12:05:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1C.3F.04325.9035AFC5; Fri,  7
 Jun 2019 13:05:29 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190607120528eucas1p182869712159a1c29305842fa596c5712~l6RaI-h5M1333013330eucas1p1C;
 Fri,  7 Jun 2019 12:05:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190607120528eusmtrp148aefe48cfbb0f4362fc9c7897a5f755~l6RZ5HnQ22024420244eusmtrp1g;
 Fri,  7 Jun 2019 12:05:28 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-3c-5cfa53090139
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id AA.95.04146.8035AFC5; Fri,  7
 Jun 2019 13:05:28 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190607120527eusmtip2eee646333b640feea00b97666f02f5a6~l6RY5VO9u0977709777eusmtip2G;
 Fri,  7 Jun 2019 12:05:27 +0000 (GMT)
Subject: Re: [PATCH 3/8] drivers: (video|gpu): fix warning same module names
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Anders Roxell
 <anders.roxell@linaro.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <4c9681c0-5ead-3e4c-584b-c4e98cd94480@samsung.com>
Date: Fri, 7 Jun 2019 14:05:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190607075728.GE21222@phenom.ffwll.local>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SeUiTYRjv/a59Sluv6/DBImmVYofZQb1dUhT0RScEXUq18kPNKzZnF9SK
 qGmXZmUOyZXhRZhOcypZsUwNQcsiSlpzZGDZNFiaVsvcvkn+9+N3PL/ngYenlSVcEB+fnCpq
 ktWJKs6fqW4cap3vt+NXdITVFEw6ylpZcrn1BUU6rv+mSJvNSpMbji6O3HHYaJLXdo4hb/r7
 OPKrt0FG7vbdYom9/zkiA28MFDF/esuS5ivfWfK6Lo8jl8ofsuTb+TOIFJr/UKTRNIXYPjYz
 xG0xM6S7KpBUll2QkQJnDb0GhIKfH2mhquQ9Jdw2NjNC/YCJEWqNNplgLk3nhA9vH3GCZaCT
 FewXmyih8t5pobbGRQlX3RHClapSJLjM07cr9vqvihET49NEzYLIA/5xraaNR0oCjvW2VTN6
 ZFJkID8e8BIoGuxnM5A/r8TFCJ4MDyGPoMQ/EGTmz5YEFwK7o5gdTWRaHIwkFCGwVbb54k4E
 72qvMx7XRLwZGnr0lAdPwjuhuvKqdyyHV0DWhVLkCdA4i4G6LgvtEeQ4Eoxn7V7M4FngKnR7
 B03Gu8HeWM5KngB4kdvl5f0wgZ99PV4/jQOhoyufknAwWJx5tKcAcDcPH3odvr3Xw3BWDifh
 ifC1qUom4WnQkn2JkQJlCNyGbl/agqAo+68vsRKeNb0amcSPVITBg7oFEr0WCr47aQ8NWAHv
 nAHSEgq4Vp3jo+VgOK+U3CFQXljOjdZm1JbQmUhlHHOaccw5xjHnGP/3mhBTigJFnTYpVtQu
 ThaPhmvVSVpdcmz4oZQkMxp54Ja/Tf016PGfg1aEeaQaLxdkQ9FKVp2mPZ5kRcDTqknytJeD
 0Up5jPr4CVGTsl+jSxS1VjSVZ1SB8pPjOqOUOFadKiaI4hFRM6pSvF+QHm2qWJ2QcD93fqRL
 PvN38XD9Z5V+3Mujy/d9CV7PtJD2FKFuhrxzl6Lg8NKBvc9vdqhDsyMbp849eNu2LH966L4n
 ywbXLTz1MD4i6NuiPfE1Vl2fbv+anvT2dqwXuQ1PwwxbLlZETZiRWm+dmdugjHMbYMm1kHOn
 07cpovbMM59I2RqkYrRx6oVzaI1W/Q962XULvAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe89tZ9HquGa+SjeWZAgtj1P3GiZ9KU5QFHQh1LChp1k5Fzvb
 yL5kElqrvJBdHKtWlugKtWneMrSVty4aFqMsXZahYbbC0jKtNlfgtz/P//d74IGHxqV3yRB6
 f4aB12eo0+XUXOLx7/b+1fT2yaSIypow1FvRRaIzXZ0Y6i36haHuPieOzg0MUujqQB+OrN3H
 CfTiu4dCk58fitA1z0USub+3AjT+4gSGHO9dJOrI+0Ki541WCp2uukOiTznHACp1TGGozbYI
 9fV3EGi6zkGg4ZogVF2RK0Ilo/X4esiVTPTjXE35K4y7bOkguHvjNoJrsPSJOIf9JMW9cTVR
 XN34W5Jzn2rHuOrrR7mG+jGMy5+O4PJq7IAbcyzdNj9BEafXGQ388jSdYFgnT2RRpIKNRYrI
 qFgFq1TtWRsZLV8TH5fKp+838fo18XsVaV22TYfKAw5/7q4lsoBtvhmIachEwYK6AcIM5tJS
 5gaAltEKkRnQ3mIxbK80+ZmFcMplpvzMCIAu9wWRr1jIbIYPR7IwX5Yxu2BLoY30Q80AFnl8
 W8U0xayFhbl24CtwppCAY6UlM7aEiYeWbDfuywQT6p1PzwiBzG74xFNG+JkA2Fk8OJPFDIIT
 npEZHmfC4NTlnn85CPYOXsH8eRmsG7XiBUBqmaVbZimWWYpllmIDhB3IeKOg1WgFViGotYIx
 Q6NI0WkdwPs4tW0/q+tBz+3tTsDQQD5Psn7OzyQpqTYJmVongDQul0lMz34kSSWp6swjvF6X
 rDem84ITRHuPK8RDAlN03jfMMCSz0awKxbIqpUoZg+RBkhPM/SQpo1Eb+IM8f4jX//cwWhyS
 BTTfZItb7OPWd3EfNlxcpVFlL3m5szbm3aPpW1Xmpiji8MfzZa1VxVTwFLPt0XnJguzM3BXF
 By7FHOx1Goc6Kwu+NVo3PsC7ZFGBw2ef83k7kp1/tjS1D6FhZeJQcM5XQ9hqa4K1KBoFlrYe
 2LoyZV/4x6f5v17nN7tvfmHbTKGblXJCSFOz4bheUP8Fi3t/J04DAAA=
X-CMS-MailID: 20190607120528eucas1p182869712159a1c29305842fa596c5712
X-Msg-Generator: CA
X-RootMTR: 20190607075735epcas3p17dfbe45a2079b12f4e2268ee1b6086fe
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190607075735epcas3p17dfbe45a2079b12f4e2268ee1b6086fe
References: <20190606094712.23715-1-anders.roxell@linaro.org>
 <CGME20190607075735epcas3p17dfbe45a2079b12f4e2268ee1b6086fe@epcas3p1.samsung.com>
 <20190607075728.GE21222@phenom.ffwll.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_050534_013657_AD4707DC 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org, airlied@linux.ie,
 stefan@agner.ch, linux-kernel@vger.kernel.org, a.hajda@samsung.com,
 lee.jones@linaro.org, marex@denx.de, f.fainelli@gmail.com,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org, s.hauer@pengutronix.de,
 broonie@kernel.org, dri-devel@lists.freedesktop.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 lgirdwood@gmail.com, p.zabel@pengutronix.de, shawnguo@kernel.org,
 davem@davemloft.net, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/7/19 9:57 AM, Daniel Vetter wrote:
> On Thu, Jun 06, 2019 at 11:47:12AM +0200, Anders Roxell wrote:
>> When building with CONFIG_DRM_MXSFB and CONFIG_FB_MXS enabled as
>> loadable modules, we see the following warning:
>>
>> warning: same module names found:
>>   drivers/video/fbdev/mxsfb.ko
>>   drivers/gpu/drm/mxsfb/mxsfb.ko
>>
>> Rework so the names matches the config fragment.
>>
>> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> 
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> I'm assuming Bart will pick this one up for fbdev.

The DRM mxsfb has been a default for almost a year (since July
2018) and I've just applied "[PATCH] video: fbdev: mxsfb: Remove
driver" (https://marc.info/?l=dri-devel&m=155835758115686&w=2)
so it seems that this patch is not needed any longer (sorry!).

> -Daniel
> 
>> ---
>>  drivers/gpu/drm/mxsfb/Makefile | 4 ++--
>>  drivers/video/fbdev/Makefile   | 3 ++-
>>  2 files changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/mxsfb/Makefile b/drivers/gpu/drm/mxsfb/Makefile
>> index ff6e358088fa..5d49d7548e66 100644
>> --- a/drivers/gpu/drm/mxsfb/Makefile
>> +++ b/drivers/gpu/drm/mxsfb/Makefile
>> @@ -1,3 +1,3 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>> -mxsfb-y := mxsfb_drv.o mxsfb_crtc.o mxsfb_out.o
>> -obj-$(CONFIG_DRM_MXSFB)	+= mxsfb.o
>> +drm-mxsfb-y := mxsfb_drv.o mxsfb_crtc.o mxsfb_out.o
>> +obj-$(CONFIG_DRM_MXSFB)	+= drm-mxsfb.o
>> diff --git a/drivers/video/fbdev/Makefile b/drivers/video/fbdev/Makefile
>> index 655f2537cac1..7ee967525af2 100644
>> --- a/drivers/video/fbdev/Makefile
>> +++ b/drivers/video/fbdev/Makefile
>> @@ -131,7 +131,8 @@ obj-$(CONFIG_FB_VGA16)            += vga16fb.o
>>  obj-$(CONFIG_FB_OF)               += offb.o
>>  obj-$(CONFIG_FB_MX3)		  += mx3fb.o
>>  obj-$(CONFIG_FB_DA8XX)		  += da8xx-fb.o
>> -obj-$(CONFIG_FB_MXS)		  += mxsfb.o
>> +obj-$(CONFIG_FB_MXS)		  += fb-mxs.o
>> +fb-mxs-objs			  := mxsfb.o
>>  obj-$(CONFIG_FB_SSD1307)	  += ssd1307fb.o
>>  obj-$(CONFIG_FB_SIMPLE)           += simplefb.o
>>  
>> -- 
>> 2.20.1
Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
