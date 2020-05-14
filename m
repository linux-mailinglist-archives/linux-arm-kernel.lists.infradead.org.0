Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B1C1D24E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hM0ggUkykZPhVNlET+SI8ZlZ+qQPDVFFtTkLRnkmlHM=; b=ZzGGaiEO8i1Osv
	rhyyyrFQZAJwOGlA3tQDdB05kTiMY0eb/0/S02MzZFWDiRC2c9Sc782QutAA2hi87fp/UrlSG/A8P
	Bmmx6N0wO6Ty2gKs1xXCcJ+chwXafpMJwOVFdajiQMtbCWQWes5tcvMomecMXWstoBl4Q7ruYy2ao
	SQP9sDpLpzWZ37vLi/GQq8tDTUCQLUrtSfCIMJnCcC4Dqa3RJ0pbyDR5GRjIn/T1e01ztqYxXw0jm
	9x/Rct+8HfcA4tYIwlyGc9oJ6EYp0lDhGlB52DN2yBiwrx9kMo2nc2T/ADvsNRhFn3UJOWfV6FLJp
	f4lrITrU4w7b0zJwX+kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2yR-0006oi-97; Thu, 14 May 2020 01:47:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2yH-0006n3-8I; Thu, 14 May 2020 01:47:38 +0000
X-UUID: 67f9e8df95a146ed957d3d08d7ea1006-20200513
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Drge9OXYgbT+fFEdFivffpxHUog0+A3cvV/oIWxCy0o=; 
 b=E8eQCC3ggnQS0UGiA7OXfIXtk9/yM9/YzL5CssbiVK1y76v+bCyWf+UmyThF4nPkYhvWQI/M7NAhVbl9J/zpH8EXOjzB651RBGC/ZPEk1UMwx07M50pAqcHcyPxcGPk09AUmDiP5jGEJFdJhOxTWi696gSni5l+Xt/9espY9SuE=;
X-UUID: 67f9e8df95a146ed957d3d08d7ea1006-20200513
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1309554704; Wed, 13 May 2020 17:47:32 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 13 May 2020 18:37:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 09:37:27 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 14 May 2020 09:37:25 +0800
Message-ID: <1589420249.3197.69.camel@mtkswgap22>
Subject: Re: [PATCH -next] scsi: ufs-mediatek: Make ufs_mtk_fixup_dev_quirks
 static
From: Stanley Chu <stanley.chu@mediatek.com>
To: ChenTao <chentao107@huawei.com>
Date: Thu, 14 May 2020 09:37:29 +0800
In-Reply-To: <20200514012655.127202-1-chentao107@huawei.com>
References: <20200514012655.127202-1-chentao107@huawei.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_184737_301548_FBA9D479 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: martin.petersen@oracle.com, linux-scsi@vger.kernel.org, jejb@linux.ibm.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, alim.akhtar@samsung.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tao,

On Thu, 2020-05-14 at 09:26 +0800, ChenTao wrote:
> Fix the following warning:
> 
> drivers/scsi/ufs/ufs-mediatek.c:585:6: warning:
> symbol 'ufs_mtk_fixup_dev_quirks' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: ChenTao <chentao107@huawei.com>
> ---
>  drivers/scsi/ufs/ufs-mediatek.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index c543142554d3..73e4a4f9a3a2 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -582,7 +582,7 @@ static int ufs_mtk_apply_dev_quirks(struct ufs_hba *hba)
>  	return 0;
>  }
>  
> -void ufs_mtk_fixup_dev_quirks(struct ufs_hba *hba)
> +static void ufs_mtk_fixup_dev_quirks(struct ufs_hba *hba)
>  {
>  	struct ufs_dev_info *dev_info = &hba->dev_info;
>  	u16 mid = dev_info->wmanufacturerid;

Thanks for fixing this.

Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
