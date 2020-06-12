Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B5F1F7B93
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 18:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=expwuusjcbbKTCUGn4jC3WjooNM1Tsvic3gw2x9fi04=; b=nvNk6Ak756wGX7
	S8HKaljPMg1C0O6ugcn8QVgR2LKhsZyH345triiYLYKIAimReB8tO/frhHdbNCE4grTmDaxr484DY
	4VSK8NAAeKWu1CK3yaFvvIVE8gPUpsJVjoB1ihCM1WHMKvxamO5whNjnEEmagvwIPkEDxPfvviJwO
	b8YslJf7D2nST5iteVm7RoRAA4zy7NKBL/80vBDP3rUec47J2bfKIdlhpb4nO7N9dQAI/Y7Y+CTBU
	J1wQO5Ia8sXO2dQ22D5PWHPqkZ7UIt8wtTfQ08y1syWQSJap+cnMxNkTrtOWq7EOYYN7oAXiaODxI
	vP82vjTRsatdnAcCwnKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjmSP-00061k-Py; Fri, 12 Jun 2020 16:23:05 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjmSG-0005zr-HV
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 16:22:58 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200612162253epoutp01617da10436811452af3aa828a42973bf~X2HD5x3uj1984719847epoutp01d
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 16:22:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200612162253epoutp01617da10436811452af3aa828a42973bf~X2HD5x3uj1984719847epoutp01d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591978973;
 bh=odVw2pPAyWLK5Z88W0uV7CR8eVQ6niomkBGBqsSTZqA=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=GtDn19y6HmsaNaNrT/PC+2WFlvr6GtJ5LdncDqtRLqicTWEZVBPLFFCtdPAmzId9D
 +LpUTBjz9qukVI+USpEvBsGnglzVlYPmLyax066zqC+8MpNjyw3T4xFGTqg+EbqNAO
 4DNILR68AQgBWguFGMmP8ZqhqOQRiq3h2dUTZz7s=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200612162252epcas5p4a0b01a59989e95ff9002b927bdbecb7e~X2HDOVABo3159931599epcas5p4q;
 Fri, 12 Jun 2020 16:22:52 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3E.93.09475.CDBA3EE5; Sat, 13 Jun 2020 01:22:52 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200612162251epcas5p17799db495a306a323dc0e1740c8397d0~X2HCYsCZi1956119561epcas5p17;
 Fri, 12 Jun 2020 16:22:51 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200612162251epsmtrp1c4f39db4ff9e0fc924aa272f813a0dac~X2HCXzRRN1965319653epsmtrp1g;
 Fri, 12 Jun 2020 16:22:51 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-84-5ee3abdc2a6a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 76.E4.08382.BDBA3EE5; Sat, 13 Jun 2020 01:22:51 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200612162246epsmtip1cef97bb576d7a094db111ff37787dfcb~X2G_Pyzcr3056430564epsmtip1G;
 Fri, 12 Jun 2020 16:22:46 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Stanley Chu'" <stanley.chu@mediatek.com>,
 <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <jejb@linux.ibm.com>, <asutoshd@codeaurora.org>
In-Reply-To: <20200612151000.27639-2-stanley.chu@mediatek.com>
Subject: RE: [PATCH v1 1/2] scsi: ufs: Remove unused field in struct
 uic_command
Date: Fri, 12 Jun 2020 21:52:45 +0530
Message-ID: <002801d640d5$b7ba7430$272f5c90$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQDXcguafoUh6qhsLNKe8uQEpk41JwIvpsOBAO+mpQSqucyfkA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPKsWRmVeSWpSXmKPExsWy7bCmhu6d1Y/jDHr281icnneV2WJv2wl2
 i5c/r7JZHHzYyWIx7cNPZotP65exWvw//5vd4tqt+WwWq97sYLNYdGMbk0Xr/1fMFpseX2O1
 uLxrDpvF5eaLjBbd14Gyy4//Y7JoajG22PrpN6vF0q03GR2EPS5f8fa43NfL5LFz1l12jwmL
 DjB6bF5S79Fycj+Lx/f1HWweH5/eYvH4vEnOo/1AN1MAVxSXTUpqTmZZapG+XQJXxvF30QUb
 eCsWt29ga2Cczt3FyMkhIWAi8frCb8YuRi4OIYHdjBIrv/WwQDifGCU2bN4D5XxjlHj3+TU7
 TMuT5ROgWvYySvz9cRHKecMoMXnPRjaQKjYBXYkdi9vAbBGBbYwSR975ghQxC/xhktjRPAFo
 LgcHp4CdxOeHSSA1wgJBEm9Pf2IFsVkEVCX6Z7SA9fIKWEpM/nGHCcIWlDg58wkLiM0sIC+x
 /e0cZoiLFCR+Pl3GCjJSRMBJYlGnCESJuMTRnz3MIGslBKZzSsxpPcICUe8iseTvFlYIW1ji
 1fEtUJ9JSbzsb2MHmSMhkC3Rs8sYIlwjsXTeMahWe4kDV+aAXc8soCmxfpc+xCo+id7fT5gg
 OnklOtqEIKpVJZrfXYXqlJaY2N0NtdRDov/ZOrYJjIqzkPw1C8lfs5A8MAth2QJGllWMkqkF
 xbnpqcWmBcZ5qeV6xYm5xaV56XrJ+bmbGMFpUst7B+OjBx/0DjEycTAeYpTgYFYS4RUUfxgn
 xJuSWFmVWpQfX1Sak1p8iFGag0VJnFfpx5k4IYH0xJLU7NTUgtQimCwTB6dUA1Ni4M4W3hfL
 JwjHyj+4tu4E99QZN66veePXVRdrLMXyVGexRq9m9/Q9925PuHemQil3tvnWs5fW7z+jqF+z
 tyfdeFPklEfS5Y/e337sllZnP7Xu/0aTNmH+o44ntWTipbee9LDabzW1RXzD0Tohxk6Dsx4e
 jldF7/X6rNpbspprgRgHX9Xkyr6rYQ8MO3o2zpC96nrsI/eeYsat+/e0b+ednX3nypX3jVbu
 XaG3r8T2umXpF+pPbDFl/mMYvfDKHs5TawuDv3Uc5ew2sJwsethL1k287+h06U3uNz0utvEZ
 bT+QuF1mWdL+T8s+7eo0DH9ilLNt6czpmntsThj2VWkbX5TKkTjiLmk9a12j0RUlluKMREMt
 5qLiRAAM0mXoAgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsWy7bCSnO7t1Y/jDD5s5bM4Pe8qs8XethPs
 Fi9/XmWzOPiwk8Vi2oefzBaf1i9jtfh//je7xbVb89ksVr3ZwWax6MY2JovW/6+YLTY9vsZq
 cXnXHDaLy80XGS26rwNllx//x2TR1GJssfXTb1aLpVtvMjoIe1y+4u1xua+XyWPnrLvsHhMW
 HWD02Lyk3qPl5H4Wj+/rO9g8Pj69xeLxeZOcR/uBbqYArigum5TUnMyy1CJ9uwSujOPvogs2
 8FYsbt/A1sA4nbuLkZNDQsBE4snyCYxdjFwcQgK7GSWOnl7FCJGQlri+cQI7hC0ssfLfc3aI
 oleMEisebWIGSbAJ6ErsWNzGBpIQEdjDKPF92X2wKmaBLmaJrwf/sEG0HGSUmNB9F2guBwen
 gJ3E54dJIN3CAgES83bOAVvHIqAq0T+jhQ3E5hWwlJj84w4ThC0ocXLmExaQVmYBPYm2jWDl
 zALyEtvfzmGGuE5B4ufTZawgJSICThKLOkUgSsQljv7sYZ7AKDwLyaBZCINmIRk0C0nHAkaW
 VYySqQXFuem5xYYFhnmp5XrFibnFpXnpesn5uZsYwfGupbmDcfuqD3qHGJk4GA8xSnAwK4nw
 Coo/jBPiTUmsrEotyo8vKs1JLT7EKM3BoiTOe6NwYZyQQHpiSWp2ampBahFMlomDU6qB6drM
 MKXSj0euuiocrhfYNlH1Q/2amTPcjZ3T/af0ri1XXOMSOetNUeY0kWWFvh9SWAq8Zj8UNlra
 NtPWqCNq2bQWG/aJtw77H2w3e+iknXn5cnlt+cMjq3eknHXW1z+mHxTfu3G3DMO6+IlbfxlU
 3G09oHj2604/rSD3Wn/u20cYTkUV9LBEXdsnf9VVT+ol8/nZx+XtFA5sv7XBO+z5nZXLN7Q2
 3rx5r8s7hutmYri1+j//k7t/26zTWNrpXnxF/SPTh7yerRvu9//dNP9dzpW1UbO3rbryRC0o
 uCBjVtSkM2+WJ+959iuQ91LeiQ2Sj/KaRG6fORLgvk/yxd69T+60HZglvWzT6eNRMapBYRxK
 LMUZiYZazEXFiQDOPU4uZgMAAA==
X-CMS-MailID: 20200612162251epcas5p17799db495a306a323dc0e1740c8397d0
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200612151010epcas5p3f667305eeef2d3ce5c05e0e87482ae7c
References: <20200612151000.27639-1-stanley.chu@mediatek.com>
 <CGME20200612151010epcas5p3f667305eeef2d3ce5c05e0e87482ae7c@epcas5p3.samsung.com>
 <20200612151000.27639-2-stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_092256_998292_B7970413 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
> Sent: 12 June 2020 20:40
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
> Subject: [PATCH v1 1/2] scsi: ufs: Remove unused field in struct
uic_command
> 
> Remove unused field "cmd_active" in struct ufs_command.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

>  drivers/scsi/ufs/ufshcd.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h index
> bf97d616e597..814e44871ff0 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -88,7 +88,6 @@ enum dev_cmd_type {
>   * @argument1: UIC command argument 1
>   * @argument2: UIC command argument 2
>   * @argument3: UIC command argument 3
> - * @cmd_active: Indicate if UIC command is outstanding
>   * @result: UIC command result
>   * @done: UIC command completion
>   */
> @@ -97,7 +96,6 @@ struct uic_command {
>  	u32 argument1;
>  	u32 argument2;
>  	u32 argument3;
> -	int cmd_active;
>  	int result;
>  	struct completion done;
>  };
> --
> 2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
