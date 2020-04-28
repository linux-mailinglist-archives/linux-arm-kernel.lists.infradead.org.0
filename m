Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C9E1BBE5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aF5LVG1vlCBxN/nkReVvxw0sgNsQ/aDTVQWTbxWXDIM=; b=db7dhIu51bV0zh
	wA13fESg52u83R50eJTWBxWGr2IXLKhYYckPahGLa371xHVn0H+lwH6OZclUH/Uc3qWDpOOYa0K8x
	UFiGmygL9mjizTKS+7GmCD7FDOXhByNEibMk98m1KFkM+Q9qU00qI3Ey5GWtkSnP4DxIr/TwJKqvb
	zfwMzTsOWK42N5TwYtjsd1lb/nSLoVST/dPR7+UYRpCuEN4bumekUQLBUurYI+hVHEuzAY605QtfM
	zAuM1UJkTlC40J2w0ab1jVQDek95Xjzi2NWYSEHm3z70ah3u6jTh5RAbsw7BNoBH4oRqOF+FvPBVN
	XDhS/eoXxBhVCRI2/wpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPnD-0000VD-OM; Tue, 28 Apr 2020 12:56:55 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPn5-0000UQ-4x
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:56:48 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SCqkWU167004;
 Tue, 28 Apr 2020 12:56:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=4qhmUDa7F437ChnjAQ6A8+Tyq1qMBj5fTsTxjwYc8pU=;
 b=riB2txC4dB+WfIbJ8jO8RYQ9znXob3bZ56ZmZBxW7KqkDOga1rfUGMb7qU14dvAOda9d
 m8WWAxv2bH+Q9HvM9XarrdD6ldFP55+oXWVcDUH72Lr2fuPobjhKN3IJyRM40T2j0Krv
 Pj6mYhKXRaJIzWc5zofqPhD9/joQefp/VZwpPCiem7UYmOLD32RqQTKchLfYU0c7wE+X
 LEl0rSBjykJEE1MKJbMCPvL+PTRJieB9jMROEQ4MsjTxHDVdD5nlWnDb2u4LKnLDIU5h
 KkOFaJl1CbWRnGZycfbvKxi1dAjbIv1t4KvOun/B8zjeKQfx/N1E7YYO5Zbd9w4dWyZ8 0A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 30nucfyqw8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 12:56:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SCpt9L182449;
 Tue, 28 Apr 2020 12:54:37 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 30mxwypfte-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 12:54:37 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03SCsYHe008311;
 Tue, 28 Apr 2020 12:54:35 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Apr 2020 05:54:34 -0700
Date: Tue, 28 Apr 2020 15:54:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] dmaengine: qcom_hidma: Simplify error handling path in
 hidma_probe
Message-ID: <20200428125426.GE2014@kadam>
References: <20200427111043.70218-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427111043.70218-1-christophe.jaillet@wanadoo.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 bulkscore=0
 suspectscore=2 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004280100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011
 priorityscore=1501
 mlxlogscore=999 impostorscore=0 suspectscore=2 malwarescore=0
 lowpriorityscore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004280100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_055647_280205_529C396F 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [141.146.126.78 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: kernel-janitors@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 okaya@kernel.org, linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 vkoul@kernel.org, agross@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 01:10:43PM +0200, Christophe JAILLET wrote:
> There is no need to call 'hidma_debug_uninit()' in the error handling
> path. 'hidma_debug_init()' has not been called yet.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/dma/qcom/hidma.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/dma/qcom/hidma.c b/drivers/dma/qcom/hidma.c
> index 411f91fde734..87490e125bc3 100644
> --- a/drivers/dma/qcom/hidma.c
> +++ b/drivers/dma/qcom/hidma.c
> @@ -897,7 +897,6 @@ static int hidma_probe(struct platform_device *pdev)
>  	if (msi)
            ^^^
This test doesn't work.  It will call free hidma_free_msis() if the
hidma_request_msi() call fails.  We should do:

	if (msi) {
		rc = hidma_request_msi(dmadev, pdev);
		msi = false;
	}

	if (!msi) {
		hidma_ll_setup_irq(dmadev->lldev, false);
		rc = devm_request_irq(&pdev->dev, chirq, hidma_chirq_handler,
				      0, "qcom-hidma", dmadev->lldev);
		if (rc)
			goto uninit;
	}


>  		hidma_free_msis(dmadev);
>  
> -	hidma_debug_uninit(dmadev);
>  	hidma_ll_uninit(dmadev->lldev);
>  dmafree:
>  	if (dmadev)
            ^^^^^^
This test isn't necessary and should be deleted.

regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
