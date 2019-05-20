Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9D3229AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 03:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71eLYLkc/41NFjX4RrL8oh8qNf6SOKD7vhrypP/BUvw=; b=cWROSoYqLOiSvF
	f99w46jFETBe60Vp4gVpVkQYwu1OgAqBh1rUH5yJ7xTAAhMi0yFFZ9W/eF6tod0xVQVmLMc8Q3cuX
	Z+jgNMazc1mM5WmH+R+Pytmr+KKBIWmG6PbJcP62r5ClW8/wEDImc0PaKAbiBUN0+kGDBTMkzsIWi
	X7dDnDUtf0GAquZlWwLpy+niyBPzfMcNLseGhYYwS9kBEZ8LcaKiq+miLggEplr/Ubj0xqTZ8+rJF
	YDqIN8amgs/mDgB0ODs4+nEs/0ferhqoD1dihV2Fhw4Lod7TlYJ5nf+3zUReq+1or+OWX5/FrQZJh
	tSS9LJ6QvfNby4AtHvew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSWuF-00078y-Gl; Mon, 20 May 2019 01:15:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSWu7-000784-2i; Mon, 20 May 2019 01:15:53 +0000
X-UUID: e0d781155c494a11be0a956767fb23a1-20190519
X-UUID: e0d781155c494a11be0a956767fb23a1-20190519
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1088236999; Sun, 19 May 2019 17:15:41 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 18:15:40 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 09:15:38 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 09:15:38 +0800
Message-ID: <1558314937.660.2.camel@mtkswgap22>
Subject: Re: [PATCH v2 0/3] scsi: ufs: Add error handling of Auto-Hibernate
From: Stanley Chu <stanley.chu@mediatek.com>
To: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>
Date: Mon, 20 May 2019 09:15:37 +0800
In-Reply-To: <1557912988-26758-1-git-send-email-stanley.chu@mediatek.com>
References: <1557912988-26758-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 98DB3DEF6BAFB6C6F7C95ADEF238E8BF6072C530D9204002251DC5A7057FDE232000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_181551_127584_9C51BC5A 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 Andy Teng =?UTF-8?Q?=28=E9=84=A7=E5=A6=82=E5=AE=8F=29?=
 <Andy.Teng@mediatek.com>,
 Chun-Hung Wu =?UTF-8?Q?=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29?=
 <Chun-hung.Wu@mediatek.com>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>, "evgreen@chromium.org" <evgreen@chromium.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Peter Wang =?UTF-8?Q?=28=E7=8E=8B=E4=BF=A1=E5=8F=8B=29?=
 <peter.wang@mediatek.com>, "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri, Alim, Pedro,

Gentle ping for this patch.

On Wed, 2019-05-15 at 17:36 +0800, Stanley Chu wrote:
> Currently auto-hibernate is activated if host supports
> auto-hibern8 capability. However error-handling is not implemented,
> which makes the feature somewhat risky.
> 
> If either "Hibernate Enter" or "Hibernate Exit" fail during
> auto-hibernate flow, the corresponding interrupt
> "UIC_HIBERNATE_ENTER" or "UIC_HIBERNATE_EXIT" shall be raised
> according to UFS specification.
> 
> This patch adds auto-hibernate error-handling:
> 
> - Monitor "Hibernate Enter" and "Hibernate Exit" interrupts after
>   auto-hibernate feature is activated.
> 
> - If fail happens, trigger error-handling just like "manual-hibernate"
>   fail and apply the same recovery flow: schedule UFS error handler in
>   ufshcd_check_errors(), and then do host reset and restore
>   in UFS error handler.
> 
> v2:
>  - Fix sentences in commit message (Marc Gonzalez)
>  - Make "Auto-Hibernate" error detection more precise (Bean Huo)
> 
> Stanley Chu (3):
>   scsi: ufs: Do not overwrite Auto-Hibernate timer
>   scsi: ufs: Add error-handling of Auto-Hibernate
>   scsi: ufs: Use re-factored Auto-Hibernate function
> 
>  drivers/scsi/ufs/ufshcd.c | 33 ++++++++++++++++++++++++++++++++-
>  drivers/scsi/ufs/ufshcd.h |  5 +++++
>  drivers/scsi/ufs/ufshci.h |  3 +++
>  3 files changed, 40 insertions(+), 1 deletion(-)
> 
Thanks,
Stanley


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
