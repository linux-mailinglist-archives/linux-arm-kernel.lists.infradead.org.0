Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA64819C589
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 17:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUS00WRGiqR4ZVfMtOjpl832taqF8bl2Z75f4CFpKE8=; b=HMH4nm2diOuGwU
	lbRAO7TraPk7S3K8pD9tccQ72G2JpDVS9aDw5mTmb+9xVHP9IG+mkjcjSh/BhE1a7ftuOug15feQ1
	/LEFMAfDGm6iEUa+VU96Xz9t+FciCWfPWfj4i4CgABptPfb3PG/42L4h5mcZ7lPNAnexqc8aPuoVz
	1AlmlEu5L6Zw4BJYIPmlwx9mSZHfMUehRkXmxtjUPfMxPxnlKinFtvepEu2WCfIiPECt1L4TYRecN
	D2frjob6VxWUtJiBFf0HKjpfxs4cUi+jIqmEiGhAZsV+AICOMR+WUQxOHyJ4qJOcr1U2UUZRRcUsc
	6ujlheP0aW0MvF3lQt4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK1SL-0007HK-7D; Thu, 02 Apr 2020 15:08:33 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK1SD-00079G-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 15:08:27 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200402150821epoutp0332baa113d88d947d48f3effd7d4a5d37~CCSuPOeyV1292712927epoutp03g
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Apr 2020 15:08:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200402150821epoutp0332baa113d88d947d48f3effd7d4a5d37~CCSuPOeyV1292712927epoutp03g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585840101;
 bh=6n/U4UXr1sadm5NpMP9GqwT5rx5fOlWjC/IaV5L6yFI=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=VOSnjOU3F90aQgXc10Zr3lnSf7D5vupy1FNDL5CHZ9DimK21wm1JldHQrPtSZZo05
 ILBvL3TWhlFsabG3rJydz27e4qqmZNp5PIidZ2ZBA+MkcgysDec8AWLn8azUPFw/lv
 UD6SrBHMU3HG22/MYJzVDgFHYrabT4pTypeswQ5s=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200402150820epcas5p3de6c9f31537388707edabd8a4a12df73~CCStqQfdI3224332243epcas5p3p;
 Thu,  2 Apr 2020 15:08:20 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 54.91.04782.4EFF58E5; Fri,  3 Apr 2020 00:08:20 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200402150820epcas5p1d7438cd324271c43d54bd446e239f108~CCStIGjxQ2767827678epcas5p1g;
 Thu,  2 Apr 2020 15:08:20 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200402150820epsmtrp26e18ee8b63dda67bfd570c016d798f08~CCStHTQBJ2842128421epsmtrp2Z;
 Thu,  2 Apr 2020 15:08:20 +0000 (GMT)
X-AuditID: b6c32a49-89bff700000012ae-a1-5e85ffe49d7c
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E8.1F.04024.4EFF58E5; Fri,  3 Apr 2020 00:08:20 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200402150817epsmtip2bc01951f013328dcb2a8973e30a4a8cd~CCSqSFhsN0906209062epsmtip2I;
 Thu,  2 Apr 2020 15:08:17 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Avri Altman'" <Avri.Altman@wdc.com>, <robh+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-scsi@vger.kernel.org>
In-Reply-To: <SN6PR04MB4640B92BC9EA5CFEB74BE5EAFCCD0@SN6PR04MB4640.namprd04.prod.outlook.com>
Subject: RE: [PATCH v4 4/5] scsi: ufs-exynos: add UFS host support for
 Exynos SoCs
Date: Thu, 2 Apr 2020 20:38:15 +0530
Message-ID: <000001d60900$8b6f5e70$a24e1b50$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKI+vJzlUBp7WIi19k8pRZBKIHK2gGl+w7dArc8+ogCfXKHn6bJNFzg
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEKsWRmVeSWpSXmKPExsWy7bCmlu6T/61xBh/nGFq8/HmVzeLT+mWs
 FvOPnGO1OH9+A7vFzS1HWSw2Pb7GanF51xw2ixnn9zFZdF/fwWax/Pg/JovWvUfYLZZuvcno
 wONxua+XyWPTqk42j81L6j1aTu5n8fj49BaLR9+WVYwenzfJebQf6GYK4IjisklJzcksSy3S
 t0vgyliw2LngOU/F1Jf3mBsYV3F1MXJySAiYSOxZ9YKpi5GLQ0hgN6PE6h332SGcT4wS5589
 ZwGpEhL4xigxfakqTEfn/l6oor2MEu+/voFy3jBKLJqzjxWkik1AV2LH4jY2EFtEoFZi8eQO
 VpAiZpCx3/ZOBhvLKRAr8fPJNEYQW1ggROLG6+VgzSwCKhKrHt9iBrF5BSwl9i+7wAphC0qc
 nPkErJdZQFti2cLXzBAnKUj8fLqMFWKZm8T7exOYIGrEJY7+7GEGWSwhsIxd4tO1dawQDS4S
 lzadY4SwhSVeHd/CDmFLSXx+txfoag4gO1uiZ5cxRLhGYum8YywQtr3EgStzWEBKmAU0Jdbv
 0odYxSfR+/sJE0Qnr0RHmxBEtapE87urUJ3SEhO7u6EO8JD423uIaQKj4iwkj81C8tgsJA/M
 Qli2gJFlFaNkakFxbnpqsWmBYV5quV5xYm5xaV66XnJ+7iZGcErT8tzBOOuczyFGAQ5GJR5e
 hoOtcUKsiWXFlbmHGCU4mJVEeB1nAIV4UxIrq1KL8uOLSnNSiw8xSnOwKInzTmK9GiMkkJ5Y
 kpqdmlqQWgSTZeLglGpgDOdqszdfoWPp0h3DErrd+tVh3pR3G/m6YrX91nXt7MvcpeFblaNZ
 s9jcaMN574ipu8S44meWpm0te7XQ/+qFuWfrvnsd/3f+74Nj4r/2/97Iozo5+k/RqSMZonuq
 +7u5eCJPz2/pnvxm/5/7HMnXOvpaKib9rPoQabrr5JTnR4o+TvFzcd70QYmlOCPRUIu5qDgR
 AF51hTZlAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFIsWRmVeSWpSXmKPExsWy7bCSvO6T/61xBi3nuS1e/rzKZvFp/TJW
 i/lHzrFanD+/gd3i5pajLBabHl9jtbi8aw6bxYzz+5gsuq/vYLNYfvwfk0Xr3iPsFku33mR0
 4PG43NfL5LFpVSebx+Yl9R4tJ/ezeHx8eovFo2/LKkaPz5vkPNoPdDMFcERx2aSk5mSWpRbp
 2yVwZTSe7GcrOMpT8enmN/YGxg6uLkZODgkBE4nO/b3sXYxcHEICuxklpq94ywKRkJa4vnEC
 O4QtLLHy33OooleMEms6TjOBJNgEdCV2LG5jA0mICDQySiz+t4QRxGEW+MUo8WTtQyaIlglM
 En8vLmUEaeEUiJX4+WQamC0sECTx/8RGNhCbRUBFYtXjW8wgNq+ApcT+ZRdYIWxBiZMzn4Dd
 xCygLfH05lM4e9nC18wQ9ylI/Hy6DKxeRMBN4v29CUwQNeISR3/2ME9gFJ6FZNQsJKNmIRk1
 C0nLAkaWVYySqQXFuem5xYYFhnmp5XrFibnFpXnpesn5uZsYwTGqpbmD8fKS+EOMAhyMSjy8
 DAdb44RYE8uKK3MPMUpwMCuJ8DrOAArxpiRWVqUW5ccXleakFh9ilOZgURLnfZp3LFJIID2x
 JDU7NbUgtQgmy8TBKdXAmMgiJcbzOX79dEt9Z8O3K5LP/Y+z3OGR8khQxdOunufQouN7LiZ3
 OrQcm14nurfNs/xx4owcp52dnacO9uRXehVP+N/n1hC4OXq/auNPtuZJk8QOHtHWf/dr25Rn
 8gzzr004/uqL0r1wj3RzsU79HQENrm7rzy2OerWQ042573KEtN/WaoYYJZbijERDLeai4kQA
 sutWFs0CAAA=
X-CMS-MailID: 20200402150820epcas5p1d7438cd324271c43d54bd446e239f108
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200327171420epcas5p490e1e6d090a540eaf050e0728a39ba25
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171420epcas5p490e1e6d090a540eaf050e0728a39ba25@epcas5p4.samsung.com>
 <20200327170638.17670-5-alim.akhtar@samsung.com>
 <SN6PR04MB4640B92BC9EA5CFEB74BE5EAFCCD0@SN6PR04MB4640.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_080825_474349_7D9402EB 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri

> -----Original Message-----
> From: Avri Altman <Avri.Altman@wdc.com>
> Sent: 28 March 2020 16:58
> To: Alim Akhtar <alim.akhtar@samsung.com>; robh+dt@kernel.org;
> devicetree@vger.kernel.org; linux-scsi@vger.kernel.org
> Cc: krzk@kernel.org; martin.petersen@oracle.com; kwmad.kim@samsung.com;
> stanley.chu@mediatek.com; cang@codeaurora.org; linux-samsung-
> soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: RE: [PATCH v4 4/5] scsi: ufs-exynos: add UFS host support for Exynos
> SoCs
> 
> Hi,
> 
> > +
> > +long exynos_ufs_calc_time_cntr(struct exynos_ufs *ufs, long period) {
> > +       const int precise = 10;
> > +       long pclk_rate = ufs->pclk_rate;
> > +       long clk_period, fraction;
> > +
> > +       clk_period = UNIPRO_PCLK_PERIOD(ufs);
> > +       fraction = ((NSEC_PER_SEC % pclk_rate) * precise) / pclk_rate;
> > +
> > +       return (period * precise) / ((clk_period * precise) +
> > +fraction); }
> This helper essentially calculates a factor f, and returns period x f.
> Why not do that regardless of period?
> 
The period can be different for different timing attributes, so this helper function takes the period and returns the timer counter value based on the pclk_rate. 

> > +extern long exynos_ufs_calc_time_cntr(struct exynos_ufs *, long);
> Why this factor needed to be exported?
Yes, not needed, will correct this in next version, which I am planning to post soon.
Thanks for your time and review, let me know if you have more inputs.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
