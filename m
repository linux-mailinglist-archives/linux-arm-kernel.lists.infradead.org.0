Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DF360943
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhvHDhKjbTO5R3+Itz5RGs8zt3yldpFTHdPwXwU3jig=; b=G7dWyjLgXid0xd
	Cb6wiE+lF3S7XMqKc5oFMvvAcULKZ1CvwzesurK1NEew/5tdqPhpwDXbn0BTwwWzpIu/FRTvhRz8n
	ypJ5wR2rvi8cXfdUQXKwCiKg0o7L5aMcvFtT0NixRRydUGuVVMXkhfnfvxo0hEHsejEeBSJgXi+Qw
	TTLRUX+jYxxmW8HfKDwic0Ln4lRdAy+TBx0gdiIrPF02tkhuuEvNYhqP2u+PFJAU/I4VkPscqF3AB
	CC/yQsbcYkLc/cL0tvEIfJp0qM6IGWjV2jXO4igMyDEUDfD2DaiOvSlxyFIwdwe4tCJLp3NELnxIf
	g06fmQ5ryEjc89WPmqhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQ75-0007UW-6c; Fri, 05 Jul 2019 15:27:03 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQ6w-0007Tv-MM
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:26:56 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190705152651euoutp01834637b46f90f1154374c393da07f981~ujFOigqZn0720607206euoutp01g
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  5 Jul 2019 15:26:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190705152651euoutp01834637b46f90f1154374c393da07f981~ujFOigqZn0720607206euoutp01g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562340411;
 bh=pYuFsx7cHi1vXY+tY4Fc6WSu6NjqYr65RWHF2eerspo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=NsKp2RUYdWlneWqbL9h7UxrN0QgB8U/cbPlUcBx2QFiV30ORxjXV3P3WTx4WjPo8h
 Ph41K0shMHTgoG/dykr/gZUYrpHYh1VLAjXoVQGUmkdFH224hJjTxeAWegFNJxGilg
 rp4MIEwmeJj4oa8n+31X2SfvUDDByu+L9JTp1Oyg=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190705152651eucas1p22d53e5b2ee96cc5bc188134435df1200~ujFOKJlcs0666606666eucas1p2P;
 Fri,  5 Jul 2019 15:26:51 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 34.1C.04298.A3C6F1D5; Fri,  5
 Jul 2019 16:26:50 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190705152650eucas1p18489d01b339d75aefa8be6cc30b48bad~ujFNV84U51867618676eucas1p14;
 Fri,  5 Jul 2019 15:26:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190705152650eusmtrp21dea3bcfe879dde7c20e0e3e8cc8f60e~ujFNHw1d90470504705eusmtrp2k;
 Fri,  5 Jul 2019 15:26:50 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-f5-5d1f6c3aa82b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A9.A1.04140.93C6F1D5; Fri,  5
 Jul 2019 16:26:49 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190705152649eusmtip190b4235f512004d88494fd92ca9cff0f~ujFMpypu73046930469eusmtip1d;
 Fri,  5 Jul 2019 15:26:49 +0000 (GMT)
Subject: Re: [PATCH -next] video: fbdev: imxfb: fix a typo in imxfb_probe()
To: Wei Yongjun <weiyongjun1@huawei.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <2b579d3f-a441-39c9-fdb7-6089edea3cb1@samsung.com>
Date: Fri, 5 Jul 2019 17:26:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190704095225.143177-1-weiyongjun1@huawei.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCKsWRmVeSWpSXmKPExsWy7djPc7pWOfKxBouazSyufH3PZvHwqr/F
 1lvSFqum7mSx2PT4GqvFib4PrBZdv1YyW/zdvonF4sUWcYvDX3axOXB57Jx1l92j5chbVo9N
 qzrZPO53H2fy2Lyk3mPjux1MHv1/DTw+b5IL4IjisklJzcksSy3St0vgyuhZ+YmlYBZXxe0T
 OQ2M2zi6GDk5JARMJK6//M3WxcjFISSwglFi1dK3zBDOF0aJR01PGCGcz4wS+zZfYIRpmXFh
 BlTLckaJRd0XmSCct4wSfXv3soNUCQt4S2z5+YMZxBYR0JDYcvkO2ChmgQtMEst2b2cBSbAJ
 WElMbF8FNpZXwE6i4WUXE4jNIqAisejgJrBBogIREvePbWCFqBGUODnzCVgvp4CtxLlrB8AW
 MAuIS9x6Mp8JwpaX2P52DtgTEgLX2CXezH8BdbeLxJQ7O9kgbGGJV8e3sEPYMhL/d85ngmhY
 xyjxt+MFVPd2Ronlk/9BdVhLHD5+EegMDqAVmhLrd+mDmBICjhLXNslDmHwSN94KQtzAJzFp
 23RmiDCvREebEMQMNYkNyzawwWzt2rmSeQKj0iwkn81C8s0sJN/MQli7gJFlFaN4amlxbnpq
 sWFearlecWJucWleul5yfu4mRmDaOv3v+KcdjF8vJR1iFOBgVOLhPeEkHyvEmlhWXJl7iFGC
 g1lJhDcxCCjEm5JYWZValB9fVJqTWnyIUZqDRUmct5rhQbSQQHpiSWp2ampBahFMlomDU6qB
 UfDA8h2MLto6d68e2Bnl8YA/93CF6rTo7va9TVyP4tvLJZ9Pz826zveD74Did54VEUorJ99W
 33x8hd6lXRZTwvUuTHyZ3JTItNSv+eX9Zu2+T87t09tzSz9zH9Vs61nXorXixIP5vEqFral7
 z1f9yJ+w5ziX6C8usVQO9gdtxhzXpi5euOjpEiWW4oxEQy3mouJEAIFq8EtXAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsVy+t/xu7qWOfKxBl//2Fhc+fqezeLhVX+L
 rbekLVZN3clisenxNVaLE30fWC26fq1ktvi7fROLxYst4haHv+xic+Dy2DnrLrtHy5G3rB6b
 VnWyedzvPs7ksXlJvcfGdzuYPPr/Gnh83iQXwBGlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdk
 YqlnaGwea2VkqqRvZ5OSmpNZllqkb5egl9Gz8hNLwSyuitsnchoYt3F0MXJySAiYSMy4MIOt
 i5GLQ0hgKaPE+Zm7mLoYOYASMhLH15dB1AhL/LnWBVXzmlFi28yNrCAJYQFviS0/fzCD2CIC
 GhJbLt9hBCliFrjEJPHp5HZmiI4JjBL/zt9hB6liE7CSmNi+ihHE5hWwk2h42cUEYrMIqEgs
 OrgJrEZUIELizPsVLBA1ghInZz4BszkFbCXOXTsAto1ZQF3iz7xLULa4xK0n85kgbHmJ7W/n
 ME9gFJqFpH0WkpZZSFpmIWlZwMiyilEktbQ4Nz232EivODG3uDQvXS85P3cTIzBOtx37uWUH
 Y9e74EOMAhyMSjy8J5zkY4VYE8uKK3MPMUpwMCuJ8CYGAYV4UxIrq1KL8uOLSnNSiw8xmgI9
 N5FZSjQ5H5hC8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MAZa
 zzz7XOY8/+kj3jW+ygXnaqSnn/oRdMFF9qCBYsFqLVVlZummoiPVWZ3/eESnTS1MKlg+9fun
 vA9962s9NrdfbLvZlJeysPDW+khDoZpCeVW/Y9zarZqL3m/UVrKQKYmcePgzn+heo81dbu28
 W4veyvtMflXI2S7jzN+4dP1E/fLE7zXPlViKMxINtZiLihMBuxluAukCAAA=
X-CMS-MailID: 20190705152650eucas1p18489d01b339d75aefa8be6cc30b48bad
X-Msg-Generator: CA
X-RootMTR: 20190704094615epcas2p30e66b919c33afcfa233c9218eae892b7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190704094615epcas2p30e66b919c33afcfa233c9218eae892b7
References: <CGME20190704094615epcas2p30e66b919c33afcfa233c9218eae892b7@epcas2p3.samsung.com>
 <20190704095225.143177-1-weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_082655_035713_50972AFC 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-fbdev@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, kernel-janitors@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 7/4/19 11:52 AM, Wei Yongjun wrote:
> Fix the return value check which testing the wrong variable
> in imxfb_probe().

I added following comment while merging the patch:

b.zolnierkie: please note that ->screen_base and ->screen_buffer
are equivalent (they are part of unnamed union in struct fb_info)

> Fixes: 739a6439c2bf ("video: fbdev: imxfb: fix sparse warnings about using incorrect types")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Patch queued for v5.3, thanks.

> ---
>  drivers/video/fbdev/imxfb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/video/fbdev/imxfb.c b/drivers/video/fbdev/imxfb.c
> index 8d1053e9ef9f..b3286d1fa543 100644
> --- a/drivers/video/fbdev/imxfb.c
> +++ b/drivers/video/fbdev/imxfb.c
> @@ -976,7 +976,7 @@ static int imxfb_probe(struct platform_device *pdev)
>  	fbi->map_size = PAGE_ALIGN(info->fix.smem_len);
>  	info->screen_buffer = dma_alloc_wc(&pdev->dev, fbi->map_size,
>  					   &fbi->map_dma, GFP_KERNEL);
> -	if (!info->screen_base) {
> +	if (!info->screen_buffer) {
>  		dev_err(&pdev->dev, "Failed to allocate video RAM: %d\n", ret);
>  		ret = -ENOMEM;
>  		goto failed_map;

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
