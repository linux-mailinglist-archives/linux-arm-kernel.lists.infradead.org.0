Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BC31F6B18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wa9sHsVboqxCBjbN0CNDSoy9Ixn0hwT/UlQt4yUu2UA=; b=Au8VzeLL3iYAt9
	EUUoUmwToFKQY3lTrrE1aH2pmyhNPwef2qi9+hsbs/WUf/JhPhiKd9V8pS5W3oUexO7N2b3PGcpz8
	1QR/Pn+CazXyKpOsQZc69PWmxU4sUYgfBTJdwqwfj1eiiLyYI9PBPhoVY9DYRw9hDE/pg7vXWse4x
	7GlWORL6SHgM6DjNOZ6t6lWLKLDYUMv1VZ+vi69cJ1YvbPbEYi/CRd8+rLa7JeVT0p6+74GHyYG8B
	VlkWl95BEkBn8026i7rLW1nd4uo6AOoK1vOEf6r47uHk/a5HWzJAtttM/d96OBVF2SUwiAbugztPV
	7HQ02PPMj/JXeXo4exwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPEZ-0007EY-Nm; Thu, 11 Jun 2020 15:35:15 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPED-0007Cw-HB
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:34:55 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200611153450epoutp04f7b48ce7c34df6665ea099da0f808f04~Xhz0xfM8T2515825158epoutp04U
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 15:34:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200611153450epoutp04f7b48ce7c34df6665ea099da0f808f04~Xhz0xfM8T2515825158epoutp04U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591889690;
 bh=VTu+Wl7o0f6zMSeWa7X78SNfhzjGVixbL6VZNPfGdmg=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=iQ0nRG854K8lJRfoqScKhTME2vv4fHTh1qByV8tGB3wCWE86UKbxHld/zCAAWTO4v
 Zw6ZFe+xYh1cnteZJWBYSDC/70VhB8qfLs84YnQaDMSOFVk9wAHK3CNji/vaMNlgtZ
 hUDZW+J0uWiJeoPldDAYdiYmqsv9GDlrrepMvKjA=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200611153449epcas5p439a028547161adf40aa18bbae9cde178~Xhz0X6OTY1533615336epcas5p4U;
 Thu, 11 Jun 2020 15:34:49 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1C.59.09703.91F42EE5; Fri, 12 Jun 2020 00:34:49 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200611153449epcas5p32bb9c35be3553b953663e2bf3b87d1ff~Xhzzzd3az0869408694epcas5p3J;
 Thu, 11 Jun 2020 15:34:49 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200611153449epsmtrp16d518940d9912579f6c572f6d5311f4d~XhzzygOJo2872128721epsmtrp1Q;
 Thu, 11 Jun 2020 15:34:49 +0000 (GMT)
X-AuditID: b6c32a4a-4cbff700000025e7-58-5ee24f192c3e
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 61.40.08303.81F42EE5; Fri, 12 Jun 2020 00:34:48 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200611153444epsmtip1bd6066f07ba6943205cef3e50aa6b2f1~XhzveSxLR2645626456epsmtip1D;
 Thu, 11 Jun 2020 15:34:44 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Stanley Chu'" <stanley.chu@mediatek.com>,
 <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <jejb@linux.ibm.com>, <asutoshd@codeaurora.org>
In-Reply-To: <20200610053645.19975-3-stanley.chu@mediatek.com>
Subject: RE: [PATCH v1 2/2] scsi: ufs: Cleanup device vendor and quirk
 definition
Date: Thu, 11 Jun 2020 21:04:42 +0530
Message-ID: <001d01d64005$d7564e20$8602ea60$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJVHgnpAIsYLnnv5TRNaRnRfw5FngLAwJM8ARCEfBKnt0OJQA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEKsWRmVeSWpSXmKPExsWy7bCmuq6k/6M4gxNHtSxOz7vKbLG37QS7
 xcufV9ksDj7sZLGY9uEns8Wn9ctYLf6f/81uce3WfDaLVW92sFksurGNyaL1/ytmi02Pr7Fa
 XN41h83icvNFRovu60DZ5cf/MVk0tRhbbP30m9Vi6dabjA7CHpeveHtc7utl8tg56y67x4RF
 Bxg9Ni+p92g5uZ/F4/v6DjaPj09vsXh83iTn0X6gmymAK4rLJiU1J7MstUjfLoEr4/Pc92wF
 U0UqFk1/ytTA2C3YxcjJISFgItE28R5LFyMXh5DAbkaJjzdgnE+MEu82H2SGcD4zStzdPpkF
 puXUw31QiV2MEj2dX6GcN4wSk08dYwapYhPQldixuI0NxBYR2MYoceSdL0gRs8AfJokdzRPA
 RnEK2ElMe7yBEcQWFgiW6Lj3DqyBRUBV4vybRawgNq+ApcS0T8+YIWxBiZMzn4D1MgvIS2x/
 O4cZ4iQFiZ9Pl7FCLHOS2DHnJitEjbjE0Z89YNdJCEznlJiz8wjUDy4Sr2duZ4OwhSVeHd/C
 DmFLSbzsbwOyOYDsbImeXcYQ4RqJpfOOQbXaSxy4MocFpIRZQFNi/S59iFV8Er2/nzBBdPJK
 dLQJQVSrSjS/uwrVKS0xsbubFcL2kFjU3cE2gVFxFpLHZiF5bBaSB2YhLFvAyLKKUTK1oDg3
 PbXYtMAoL7Vcrzgxt7g0L10vOT93EyM4WWp57WB8+OCD3iFGJg7GQ4wSHMxKIryC4g/jhHhT
 EiurUovy44tKc1KLDzFKc7AoifMq/TgTJySQnliSmp2aWpBaBJNl4uCUamAK96iWZ/jWeuDN
 k0SThsOy83a+fnVgy9IDvOuEKuMMt038+/bOzg2xt2fuvKaiXH7lQw3bRrNL153CelXUZF/9
 Onie95y+8/9dL55tf2Phf2V12LrdjrWTeFeUr91QIyvx95OzgLTsta96vPvnK0tsZzfnZYgI
 4H1cuFhN2WiZvSKTZVDiC8sPe960tj7X/y3Qa3j9r/mxjak8rKaNCXNjdsR8itv/RtzWxObi
 3kLZY1lzIh8xyHVY7LtjX7w2x0pWYv6niVvzok42J/4rda/873mQ4eHW+CefQjfkrjB9OGv2
 Wnv/6b5H5xTffH8qUGL3Tvbruq9qZfQybJa7zDIsVf3K9vzfzq1B5QtOCOwoVmIpzkg01GIu
 Kk4EACkY70YFBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsWy7bCSnK6E/6M4g6lHrC1Oz7vKbLG37QS7
 xcufV9ksDj7sZLGY9uEns8Wn9ctYLf6f/81uce3WfDaLVW92sFksurGNyaL1/ytmi02Pr7Fa
 XN41h83icvNFRovu60DZ5cf/MVk0tRhbbP30m9Vi6dabjA7CHpeveHtc7utl8tg56y67x4RF
 Bxg9Ni+p92g5uZ/F4/v6DjaPj09vsXh83iTn0X6gmymAK4rLJiU1J7MstUjfLoEr4/Pc92wF
 U0UqFk1/ytTA2C3YxcjJISFgInHq4T7mLkYuDiGBHYwSbesWsEEkpCWub5zADmELS6z895wd
 ougVo8TnKbvAEmwCuhI7FrexgSREBPYwSnxfdh+silmgi1ni68E/bBAtBxkl9m+exwTSwilg
 JzHt8QZGEFtYIFDiSv8OsFEsAqoS598sYgWxeQUsJaZ9esYMYQtKnJz5hKWLkQNoqp5E20aw
 VmYBeYntb+cwQ5ynIPHz6TKwVhEBJ4kdc26yQtSISxz92cM8gVF4FpJJsxAmzUIyaRaSjgWM
 LKsYJVMLinPTc4sNC4zyUsv1ihNzi0vz0vWS83M3MYKjXktrB+OeVR/0DjEycTAeYpTgYFYS
 4RUUfxgnxJuSWFmVWpQfX1Sak1p8iFGag0VJnPfrrIVxQgLpiSWp2ampBalFMFkmDk6pBqal
 hrU7HrceEqlMD70uqZ/8sWeOxeWtK1PbJj15K6OReOfCn8/TmrfMcXHgmuwara1060CPvU1j
 40HOuaJ3zJSrVy9Y/Pgmw+HvdukpCsxbXko+uvj8xN96jorUF0HXp+ndcPxyyqVCIjyR5WR3
 ofgBP5km7s0T1d+VtH87fvJEpOirA58uHQ71DrqX+/az059TLLMZixNMdLK/szR80P1wk/W3
 04rts3rfK6VNffUg3H7N9lPHeT40rvfgbrntZdm523zJ2hsqv3kObW3jrS/7MC3gSmdH4Eyv
 w/deT7t5okX5n5L0f/WnWprr/2kZZzQ2bBQteWD3w72Iu86MceeFrl2GZ8unPThg9FtMx+eU
 EktxRqKhFnNRcSIAW0SAJWkDAAA=
X-CMS-MailID: 20200611153449epcas5p32bb9c35be3553b953663e2bf3b87d1ff
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200610053659epcas5p391a3c736dd5f59ec45cfeb3715cbe1a1
References: <20200610053645.19975-1-stanley.chu@mediatek.com>
 <CGME20200610053659epcas5p391a3c736dd5f59ec45cfeb3715cbe1a1@epcas5p3.samsung.com>
 <20200610053645.19975-3-stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_083453_821085_3C6D2075 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stanley

> -----Original Message-----
> From: Stanley Chu <stanley.chu@mediatek.com>
> Sent: 10 June 2020 11:07
> To: linux-scsi@vger.kernel.org; martin.petersen@oracle.com;
> avri.altman@wdc.com; alim.akhtar@samsung.com; jejb@linux.ibm.com;
> asutoshd@codeaurora.org
> Cc: beanhuo@micron.com; cang@codeaurora.org; matthias.bgg@gmail.com;
> bvanassche@acm.org; linux-mediatek@lists.infradead.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kuohong.wang@mediatek.com; peter.wang@mediatek.com; chun-
> hung.wu@mediatek.com; andy.teng@mediatek.com;
> chaotian.jing@mediatek.com; cc.chou@mediatek.com; Stanley Chu
> <stanley.chu@mediatek.com>
> Subject: [PATCH v1 2/2] scsi: ufs: Cleanup device vendor and quirk
definition
> 
> Cleanup below items,
> - Arrange vendor name in alphabetical order
> - Squash device quirks as compact as possible in device quirk table
>   to enhance performance of the lookup.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufs_quirks.h | 2 +-
>  drivers/scsi/ufs/ufshcd.c     | 6 ++----
>  2 files changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufs_quirks.h b/drivers/scsi/ufs/ufs_quirks.h
index
> e80d5f26a442..2a0041493e30 100644
> --- a/drivers/scsi/ufs/ufs_quirks.h
> +++ b/drivers/scsi/ufs/ufs_quirks.h
> @@ -13,9 +13,9 @@
>  #define UFS_ANY_MODEL  "ANY_MODEL"
> 
>  #define UFS_VENDOR_MICRON      0x12C
> -#define UFS_VENDOR_TOSHIBA     0x198
>  #define UFS_VENDOR_SAMSUNG     0x1CE
>  #define UFS_VENDOR_SKHYNIX     0x1AD
> +#define UFS_VENDOR_TOSHIBA     0x198
>  #define UFS_VENDOR_WDC         0x145
> 
>  /**
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c index
> dea4fddf9332..7c93cb446f51 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -219,10 +219,8 @@ static struct ufs_dev_fix ufs_fixups[] = {
>  	UFS_FIX(UFS_VENDOR_MICRON, UFS_ANY_MODEL,
>  		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
>  	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
> -		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
> -	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
> -		UFS_DEVICE_QUIRK_RECOVERY_FROM_DL_NAC_ERRORS),
> -	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
> +		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM |
> +		UFS_DEVICE_QUIRK_RECOVERY_FROM_DL_NAC_ERRORS |
>  		UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE),
>  	UFS_FIX(UFS_VENDOR_TOSHIBA, UFS_ANY_MODEL,
>  		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
> --
While at this, may be arrange the table in alphabetical order.

> 2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
