Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0214F1A5F54
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 18:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UoMR0WJv0fA0kekg0QVPKM9dICvSA/jk4YKhlsWobeU=; b=L6wc0brkV2PzDa
	5N4M0VM00pMLvSjB7x1IX6cKiDk9/apoiXxi07cbfNl4VB3o/+YLZfRWsj0LYCU6Be+LLl+CDg/ND
	kz6RmMJjsOx3sLx9R1qn21kRkxc4rYtz1n3VRDLkkOJ2Q8S5Z1O3eQL60ckWBhDxukjkW+FvYoMTS
	5NQZYR82pVTcInL7ifSoUPxTrqK9SWwMmMfSB2v0y0HDh/47JVUyBcfRpROHLhDbY4pm3VjHBmorJ
	zpGO74wEbB0ZE8tA0SykDienRs2CbQpFce6TouShNuy/+roowOlNXum3ZDJ4xaQCvR//srqw031OK
	EECjWpyDbyPlrG5BNFAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNfQ5-0006So-3Z; Sun, 12 Apr 2020 16:25:17 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNfPu-0005Fe-C7
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 16:25:08 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200412162501epoutp03cc6c7805ca4f7f16a49eebf0ffd1a496~FHygpES201383313833epoutp03f
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 16:25:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200412162501epoutp03cc6c7805ca4f7f16a49eebf0ffd1a496~FHygpES201383313833epoutp03f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586708701;
 bh=7gehAhvPd0bQ/3Pb49DoC4efoIHtTlTiKUVA2ybcyCc=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=Y1Ic/brO5Q4p1E7KdT+B4Pt8Ikb4MRKjswj3wN12wAQlD5iuqviWPm86R/AoLOVHb
 TlfYDEcNomw75Z6tK5s38u0QvQ4iKm8e7Dr9B8zu3U61Mihrl6679WlpQ4K9r9cIOa
 Ez9b1hEUZc+TIfs3FHQ/+XiT4964B0wxmdx8ve8Y=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200412162500epcas5p348d02863b15b9d63e3ca730d2ae126b3~FHygIYJOc2939929399epcas5p3p;
 Sun, 12 Apr 2020 16:25:00 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 41.91.04778.CD0439E5; Mon, 13 Apr 2020 01:25:00 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200412162459epcas5p299fae74f80ad5ec2f68a9df865b4bff2~FHye6aPd-2705227052epcas5p2k;
 Sun, 12 Apr 2020 16:24:59 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200412162459epsmtrp1f6f67211c3b49863ed1db785630a8cf8~FHye2ymy70693706937epsmtrp1s;
 Sun, 12 Apr 2020 16:24:59 +0000 (GMT)
X-AuditID: b6c32a4a-353ff700000012aa-fc-5e9340dc000e
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DB.15.04024.AD0439E5; Mon, 13 Apr 2020 01:24:59 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200412162455epsmtip2882de67d478a270b552da62c75357cad~FHybmFtyD2101821018epsmtip27;
 Sun, 12 Apr 2020 16:24:55 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Christoph Hellwig'" <hch@infradead.org>
In-Reply-To: <20200412080947.GA6524@infradead.org>
Subject: RE: [PATCH v5 4/5] scsi: ufs-exynos: add UFS host support for
 Exynos SoCs
Date: Sun, 12 Apr 2020 21:54:53 +0530
Message-ID: <000001d610e6$e8b11450$ba133cf0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHr+Y8xYXIsvNQeqORDaXjXFCUqCgIAvgGXAbEacNoBTCAGf6gh6cLQ
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTYRTvu69dR7PbLDzN6DGQcmClGd2ih4TEpYIK6o8ispUXHzmV3dQS
 I+lhti0fJZFDNDNn2sOaVsss17KVmlq+ykeaNkt7CCpIYlRud5L//c45v8c5Hx+Nyz+TCjoy
 5hivjVFHKykp8fCF33L/7uDLB1cVGhTs0EQbxY6WmUg2v6aRZIvf3sDY+szrGNvUdE/CdlS8
 JFjz53aSbanMpdirTc8wVv/eQrHFr/5g7N8qi4QtetCBgj25lvSLGPfY+FHCld9UcebSCxRX
 fuMUd7a2muBGBjoJLr2iFHFj5kXcease2yXdL90QxkdHJvDalZsOSSOG345jcWkex0c/eaag
 9xId8qCBCYJqSwbSISktZ54gsPb0uItRBNkTJZiTJWfGETS9WzitsN7vokTSUwS2kkfu4geC
 IV2Ny5di/MFSmEo58bwp3FAw6LLFmdM4/DbnuEgeTCDcLrEhJ/Zi9kB1d+uUgKYJxhdGHa62
 jFkHFvs5QsRzoTbH4cI4sxge/czFxY2WwMSAiRSztkLv86tujje8nDDgzlxgbBLIrjMTTn9g
 QsCkOylqveDbqwr3WyhgKCNVIlKOgqFytdhOhqI8OyHizWBtzXW54IwflFWuFJM84eKkAxOV
 MkhLlYtsXzgz3OZW+kCWXk+KmIPqwX4iEy01zrjLOOMu44z9jf/DriGiFC3g4wRNOC+siQuM
 4RNXCGqNEB8TvuJIrMaMXF9Ptc2CTI07bIihkXK2zNqedVBOqhOEExobAhpXzpM5EqdasjD1
 iSReGxuqjY/mBRvyoQmlt+wS2XZAzoSrj/FHeT6O105PMdpDkYJMezYmPwjaYiorff1V26+S
 To6U1EfVDXw3DG/wb46X5H/xvKvI3fJ1+MPIsiu3euz2fSHZswbG7hT1betbG5IfED45Od6F
 Og1EfU2dI287tTvpcF2WLjR0772dsxmVPXE++eZT5+uGZk1B/lO5XvDKvPtrzpqqqN71OweD
 pfKo9eNKQohQB6hwraD+Bza284Z2AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGIsWRmVeSWpSXmKPExsWy7bCSvO5th8lxBqd3MVm8/HmVzeLT+mWs
 FvOPnGO1WH5hCZPF6QmLmCzOn9/AbnFzy1EWi02Pr7FaXN41h81ixvl9TBbd13ewWSw//o/J
 4v+eHewWS7feZHTg87jc18vksXPWXXaPzSu0PDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1Zxejx
 eZOcR/uBbqYArigum5TUnMyy1CJ9uwSujHcXvjEVdHBWfHrA18B4nb2LkZNDQsBE4sDG22wg
 tpDAbkaJw+0VEHFpiesbJ0DVCEus/PecHaLmFaPEnasJIDabgK7EjsVtYL0iQPbZhS8Yuxi5
 OJgFJjBLnLg3kwXEERJ4yiixYcsnZpAqTgEjiTUrDzGC2MICQRL/ex4CdXNwsAioSnx6Ahbm
 FbCU2HGslQXCFpQ4OfMJC0gJs4CeRNtGsBJmAXmJ7W/nMEPcpiDx8+kyVogb3CTuH5zBAlEj
 LnH0Zw/zBEbhWUgmzUKYNAvJpFlIOhYwsqxilEwtKM5Nzy02LDDMSy3XK07MLS7NS9dLzs/d
 xAiOXS3NHYyXl8QfYhTgYFTi4T1wbWKcEGtiWXFl7iFGCQ5mJRHeJ+VAId6UxMqq1KL8+KLS
 nNTiQ4zSHCxK4rxP845FCgmkJ5akZqemFqQWwWSZODilGhjjLI4/DDJ4/fx+71uPrxdKTry+
 oR15o8K2KoJ7zarXsxyO37eamMz77fcM3vApC97uXe9UOPml720BrVnH7+sWPTh8enmh8MVr
 GzOrpfaxTW+rllsr9e/uk5YJy7Xfuv9ZGdbNJCGwflGhjIrNv5OMXtd7n3F8rvFcmDBL38mE
 YUrtg41hHzesVGIpzkg01GIuKk4EAORK9mLZAgAA
X-CMS-MailID: 20200412162459epcas5p299fae74f80ad5ec2f68a9df865b4bff2
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200412074218epcas5p3ef7973c8a47533a15a359b069da8003c
References: <20200412073159.37747-1-alim.akhtar@samsung.com>
 <CGME20200412074218epcas5p3ef7973c8a47533a15a359b069da8003c@epcas5p3.samsung.com>
 <20200412073159.37747-5-alim.akhtar@samsung.com>
 <20200412080947.GA6524@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_092506_802121_047BCA97 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 linux-arm-kernel@lists.infradead.org, stanley.chu@mediatek.com,
 'Seungwon Jeon' <essuuj@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Christoph,

> -----Original Message-----
> From: Christoph Hellwig <hch@infradead.org>
> Sent: 12 April 2020 13:40
> To: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: robh@kernel.org; devicetree@vger.kernel.org;
linux-scsi@vger.kernel.org;
> linux-samsung-soc@vger.kernel.org; martin.petersen@oracle.com; linux-
> kernel@vger.kernel.org; krzk@kernel.org; kwmad.kim@samsung.com;
> avri.altman@wdc.com; cang@codeaurora.org; Seungwon Jeon
> <essuuj@gmail.com>; stanley.chu@mediatek.com; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [PATCH v5 4/5] scsi: ufs-exynos: add UFS host support for
Exynos
> SoCs
> 
> On Sun, Apr 12, 2020 at 01:01:58PM +0530, Alim Akhtar wrote:
> > This patch introduces Exynos UFS host controller driver, which mainly
> > handles vendor-specific operations including link startup, power mode
> > change and hibernation/unhibernation.
> 
> So this doesn't actually require the various removed or not added quirks
after
> all?
This driver is actual consumer of those quirks, so those are still needed.
On Martin's 5.7/scsi-queue need to revert " 492001990f64 scsi: ufshcd:
remove unused quirks"


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
