Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5786811DC3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 03:48:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFWXhG3/Y/13OZM2XTX7h+FGzdDOROq8z2cYYmk7pRg=; b=odaS5js9d5U5Ma
	3RdJCXEIg7fjOPkJ4alPlOpzgngaowOPslF0s8/reIie60sOSNny5PxNoHCuvaRMsBOXeTV2KeuI3
	FzwByTl75mDR2FcJYrACdlBxK08g7VZlBBH3ictwKFjkWkwhuNkPDmTZsT+CYwCY8e3CaICCAFTKk
	j0Q0zbvSldZmBdjBQUcQUthuq7F/g5hzIDjmD8tUBTT0279BaC3z6lzteOla/M6CiTooQbJPQmVXn
	DLuk+5iUX3kBGzXMtdMmsT3Z1cufzGMHlz+DV31gw6Z31psf0Wxrs6I8sr6vqStoj82ttBYd11wV+
	T6xVQcAMj0d55504JPgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifb0O-0007iA-IZ; Fri, 13 Dec 2019 02:48:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifb09-0007h4-Gf; Fri, 13 Dec 2019 02:48:22 +0000
X-UUID: 31dfb38d9d51427097b7ab674c1359e9-20191212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=1mh7OPQCgMOBR1dvjtbiL2hG+rXyscvDOnW/uspS6Jg=; 
 b=Pa6pK6ODz4CZP0vPhpwf7QPrL+CysndJoTOGcw5+gVlbVxo5xLwIHVeS9gTek2XrE4N93R6TlMXZhiArWDall1mgvloG2emzEL0zE8TtuK/nHnqegsla0MLUV3Ujh/H2DJYLR8jaap1kk97tMYd9+6PgddmmYIIh3CWJAUgZ6tU=;
X-UUID: 31dfb38d9d51427097b7ab674c1359e9-20191212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 172248405; Thu, 12 Dec 2019 18:48:18 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 18:49:19 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 10:47:49 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Dec 2019 10:47:36 +0800
Message-ID: <1576205295.12066.5.camel@mtkswgap22>
Subject: Re: [PATCH v1 0/2] scsi: ufs: fixup active period of ufshcd interrupt
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <avri.altman@wdc.com>
Date: Fri, 13 Dec 2019 10:48:15 +0800
In-Reply-To: <1575721321-8071-1-git-send-email-stanley.chu@mediatek.com>
References: <1575721321-8071-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_184821_559898_F82A6118 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: martin.petersen@oracle.com, andy.teng@mediatek.com, jejb@linux.ibm.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear reviewers,

	Gentle ping for this patch set.

On Sat, 2019-12-07 at 20:21 +0800, Stanley Chu wrote:
> This patchset fixes up active duration of ufshcd interrupt to avoid potential system hang issues.
> 
> Stanley Chu (2):
>   scsi: ufs: disable irq before disabling clocks
>   scsi: ufs: disable interrupt during clock-gating
> 
>  drivers/scsi/ufs/ufshcd.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 

Thanks,
Stanley

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
