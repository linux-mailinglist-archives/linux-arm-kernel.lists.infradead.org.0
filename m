Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7546322B1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 07:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9IaqKN+Sx02Ky7Z4YUrRXxx8vVNEkomtp56YZ+Zcbg=; b=rBL6vs/FDy4PDL
	81zZR+g6bGExGuvn1UWbbHZTfRRmoWBGtQO3J1lL6ts1D1MT+HSvA72xmoiRcbrAFsW3er3z7KpgW
	d+kU7XcRbdpFdQ4R69WFIB96WtoHcjPJrnzw2ShVkTKh2M+sbn/2XYQ/zYtv5+/u6HgxykBYjA31Z
	0ykbOpeS1nlxakHE0ZYmeoXUNJqACHQf5UecSSZr5ycnyJz2TMJ5qT2ZfeNH/KkpG61GjGBPYjXTp
	wMu505fF9xO+3THOtlXoeTf5bHHqRiJClu29VnOJrMEeTUq0HwUicRO8xrCAvy6QP6+/3c5TWXlP0
	ygeYkF0KD+bX8W6SMGMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSaoI-0003Uf-Q7; Mon, 20 May 2019 05:26:06 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSaoA-0003Sg-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 05:26:00 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190520052550epoutp0233abd9ceb169885992ba119756259956~gTNVisDc92080220802epoutp02N
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 05:25:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190520052550epoutp0233abd9ceb169885992ba119756259956~gTNVisDc92080220802epoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558329950;
 bh=VYqZ8pX4JEj6SMX7HVs1dhhu8H1gxzZkoe1GrhwI4Zo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=PHV+uTDQojxQYCsbliGOo5XVYpfkq7hMwn8YUUBDAVrAEI+ZZxf48+CsxlvzvOQ9G
 zieLyMANFeU8BGMI97a5mebOaQkAbTfRKIGHVuDiuRNEAot+e2icdPgX6aEf48thRz
 3pxttnAaIUm+0oVn3snMew61qDdAYvd1AHsGq0Rc=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20190520052549epcas5p391a70df588f08d6bfd0268091d3097e3~gTNVE-zLy0368503685epcas5p3d;
 Mon, 20 May 2019 05:25:49 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 8D.99.04066.D5A32EC5; Mon, 20 May 2019 14:25:49 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20190520052549epcas5p31f79f15fd71cbb13bfdfacdd5be2b3b9~gTNUvl6gq0368903689epcas5p3T;
 Mon, 20 May 2019 05:25:49 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190520052549epsmtrp2bff5e032b66ce571f2d433707371f609~gTNUukvno0347903479epsmtrp2f;
 Mon, 20 May 2019 05:25:49 +0000 (GMT)
X-AuditID: b6c32a4a-973ff70000000fe2-d4-5ce23a5d1f12
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 CE.0E.03692.D5A32EC5; Mon, 20 May 2019 14:25:49 +0900 (KST)
Received: from [107.108.73.28] (unknown [107.108.73.28]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190520052547epsmtip2425e9597cbcbc3914b3e5ec1b18b1a3a~gTNSoWB-03166531665epsmtip2U;
 Mon, 20 May 2019 05:25:47 +0000 (GMT)
Subject: Re: [PATCH v2 1/3] scsi: ufs: Do not overwrite Auto-Hibernate timer
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, pedrom.sousa@synopsys.com
From: Alim Akhtar <alim.akhtar@samsung.com>
Message-ID: <15a271c6-88c8-b9d5-68a8-dc142afdf224@samsung.com>
Date: Mon, 20 May 2019 10:35:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557912988-26758-2-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0gTcRznt7ub52h2TcNvCrUmIhpqZdn1wAp6XCEUZhCxqJWXis7Gppa2
 Smw+aj3UJHXqelohlOI7S8tVyjDDVSrO1moZ0Uh7TIswsm23yv8+T37fD/xITGQnAsjktHRW
 mSZLlfAFeMuj0LDwPats0sWNz6PpXv0ARn/8OcCnu96ewunaT218Os9axqPzpu0Y3fBukKBf
 nDQhWjvkNFocfRh9s+c3j87VRNGa7kmcbv42RdA1zcNo3WymMseEM+fvOAjmrs7ixTReP8Fo
 jA9w5kddIZ/5+t6MM00PHIhxNMxnCh5qedsFuwVrEtjU5ExWGRmzT5BUNilWvCaPlNh+ETmo
 2Os08iaBWgbT08NOLCBF1D0Etg9nPOQbAnt/qYd8R/BZe/tfpVr/E+eMDgSPx98gjowhaO08
 y3elfKlYGB7S812GH1XqrP9uxlwEoy7y4Gv7CO5K8alFYClr4rmwkIqB5/kGt45TwaDtqHPj
 udQusHbXE1xmDhgrRt26N7UFvvRp3DpG+YN59BKPwwugdawK427t9AJd4zIOb4CnfUbPBl+w
 9zR5cAA4xjucl5JOnAJn2qM4WQ01+m6cw2vh4csq3BXBqFCoa4/kXvKBs1OjPK4phMJ8EZcO
 hpPjA55mIBRrtQQXYaCgAFyyiBpBUKRZW4TEuhmzdDOm6GZM0f1/9zLCa9E8VqGSJ7Kq5Yql
 aezhCJVMrspIS4w4cEjegNw/MGxrG7rxLNaAKBJJZgm/lL6VighZpipLbkBAYhI/YVSIVSoS
 Jsiyslnlob3KjFRWZUCBJC7xF5YQA1IRlShLZ1NYVsEq/7o80jsgBy2MNmZc9bb9mDDwyTiz
 T9vS+mh1lzXotXgwP2jHytQVCcadleyENbMk3HLhWO8Tu19j/NDg2C317KL44+JyTah806uW
 1vLl+5MqzHEbTd/vHlHXdt7KnjBFKi3WTYW5/tXXHL1NVNeI8nr66oNV4nMlMduubF7/0p5w
 /+iLGtQfIsFVSbIlYZhSJfsDt5XHPX0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKIsWRmVeSWpSXmKPExsWy7bCSvG6s1aMYg7NTpS1Oz7vKbPHy51U2
 i4MPO1ksVr3ZwWbRen86k0Xr/1fMFpseX2O1uNx8kdGi+zpQYtvns8wWy4//Y7JoajG2aDn2
 lcVi66ffrBZLt95kdOD3mN1wkcWjf91nVo+ds+6ye2xeUu/RcnI/i8f39R1sHh+f3mLx2LL/
 M6PH501yHu0HupkCuKK4bFJSczLLUov07RK4MqZ/VSi4x1Ex6dEf1gbGiexdjJwcEgImEnPn
 /WTpYuTiEBLYzSjx984iNoiEtMT1jROgioQlVv57zg5R9JpRYlL3GVaQhLCAj8TN6/PYQBIi
 AlMYJfauesgE4jALTGGS2Ph8AzNEy21GiaazE8Fa2AS0Je5O38IEYvMK2ElcajvEAmKzCKhK
 dO9dD2aLCkRInHm/ggWiRlDi5MwnYDangKfEh7MtYHOYBcwk5m1+yAxhi0vcejKfCcKWl9j+
 dg7zBEahWUjaZyFpmYWkZRaSlgWMLKsYJVMLinPTc4sNCwzzUsv1ihNzi0vz0vWS83M3MYIj
 V0tzB+PlJfGHGAU4GJV4eD2mP4wRYk0sK67MPcQowcGsJMJrrH4/Rog3JbGyKrUoP76oNCe1
 +BCjNAeLkjjv07xjkUIC6YklqdmpqQWpRTBZJg5OqQZGr6RJYe8SX2d9+rb014z4c1Y3W+3P
 cK1sNY02V4m17JnW3nigoSFUU9D3YgZD6fZlZwxL/VPdTjv+S39zwHZa78LTV7TN3wX3fZ52
 JKeZcw6rxmq9Y4c+X2H/nnY/12PNQpOLXvPYX7btL9g7I0x21b3iSxPsyxUe8bp92T4t+6O8
 nLrUxqnJSizFGYmGWsxFxYkA46CZWdgCAAA=
X-CMS-MailID: 20190520052549epcas5p31f79f15fd71cbb13bfdfacdd5be2b3b9
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20190515093640epcas2p17e4c3e4545ce5e4e4b59ed7b9a954741
References: <1557912988-26758-1-git-send-email-stanley.chu@mediatek.com>
 <CGME20190515093640epcas2p17e4c3e4545ce5e4e4b59ed7b9a954741@epcas2p1.samsung.com>
 <1557912988-26758-2-git-send-email-stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_222558_815200_E6E3D83D 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Stanley,

On 5/15/19 3:06 PM, Stanley Chu wrote:
> Some vendor-specific initialization flow may set its own
> auto-hibernate timer. In this case, do not overwrite timer value
> as "default value" in ufshcd_init().
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>   drivers/scsi/ufs/ufshcd.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index e040f9dd9ff3..1665820c22fd 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -8309,7 +8309,7 @@ int ufshcd_init(struct ufs_hba *hba, void __iomem *mmio_base, unsigned int irq)
>   						UIC_LINK_HIBERN8_STATE);
>   
>   	/* Set the default auto-hiberate idle timer value to 150 ms */
> -	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT) {
> +	if (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT & !hba->ahit) {
>   		hba->ahit = FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK, 150) |
>   			    FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3);
>   	}
> 
Looks good to me,
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
