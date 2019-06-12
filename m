Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A8942854
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLWKTWTJS0csB2x14sdTpWz/3tX8TcjBY3aDknD2tQE=; b=fotgZVLBlEx0Md
	6BFfEZggRycu9WSNWR3ShXMsyZwApA1JZ61pfCLv0H6BvHSxPznlPowhOM2mInnIjciQ/9fU+L3yk
	WUOtdVV+eXrfzeO2PGGEb8KOt55griEWmFRcKvZ97m+EhWE4Jk6URaH8Zik0BTUz+6BGaCQKW+5U+
	HHNl+yC6dFa/6pVXBHubO80cj+3rmEDLpjUvVto/RsR7q1s/d561bvYB1IwlwmZDA99YTi11EFE61
	gcpsPz4UJuhmcju0wKs1r6hzacrbVJY5kxYjiBieoFeZFZc3IGL8NypOB38z2AvG3wi2B5tjpTWCd
	5+angHoEK5KHG5zO/VXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3qn-0002xz-QS; Wed, 12 Jun 2019 14:03:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3qe-0002xN-Pt; Wed, 12 Jun 2019 14:03:34 +0000
X-UUID: 19beb02eebb84110a5974c7c91e29bd6-20190612
X-UUID: 19beb02eebb84110a5974c7c91e29bd6-20190612
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1517432226; Wed, 12 Jun 2019 06:03:27 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 07:03:26 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 22:03:24 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Jun 2019 22:03:23 +0800
Message-ID: <1560348204.19782.6.camel@mtkswgap22>
Subject: RE: [PATCH v1] scsi: ufs: Avoid runtime suspend possibly being
 blocked forever
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Wed, 12 Jun 2019 22:03:24 +0800
In-Reply-To: <SN6PR04MB492546256F8F8635E7EE60C2FCEC0@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1560325326-1598-1-git-send-email-stanley.chu@mediatek.com>
 <SN6PR04MB492546256F8F8635E7EE60C2FCEC0@SN6PR04MB4925.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4018B39517CC99ADF846BD09B0727C651F76F30778E15F902E6C0D2819EA72F62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_070332_848047_3FDE6372 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "ygardi@codeaurora.org" <ygardi@codeaurora.org>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, stanley.chu@mediatek.com,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Wed, 2019-06-12 at 11:10 +0000, Avri Altman wrote:
> Hi,
> 
> > 
> > UFS runtime suspend can be triggered after pm_runtime_enable()
> > is invoked in ufshcd_pltfrm_init(). However if the first runtime
> > suspend is triggered before binding ufs_hba structure to ufs
> > device structure via platform_set_drvdata(), then UFS runtime
> > suspend will be no longer triggered in the future because its
> > dev->power.runtime_error was set in the first triggering and does
> > not have any chance to be cleared.
> > 
> > To be more clear, dev->power.runtime_error is set if hba is NULL
> > in ufshcd_runtime_suspend() which returns -EINVAL to rpm_callback()
> > where dev->power.runtime_error is set as -EINVAL. In this case, any
> > future rpm_suspend() for UFS device fails because
> > rpm_check_suspend_allowed() fails due to non-zero
> > dev->power.runtime_error.
> > 
> > To resolve this issue, make sure the first UFS runtime suspend
> > get valid "hba" in ufshcd_runtime_suspend(): Enable UFS runtime PM
> > only after hba is successfully bound to UFS device structure.
> > 
> > Fixes: e3ce73d (scsi: ufs: fix bugs related to null pointer access and array size)
> This code was inserted before platform_set_drvdata  in
> 6269473 [SCSI] ufs: Add runtime PM support for UFS host controller driver.
> Why do you point to e3ce73d?

e3ce73d (scsi: ufs: fix bugs related to null pointer access and array
size) changed the returned value from 0 to -EINVAL in case of NULL "hba"
in ufshcd_runtime_suspend().

But you are right, above patch may do the right thing, and the real root
cause is the incorrect timing of pm_runtime_enable().

I will fix commit message in next version.

> 
> Thanks,
> Avri

Thanks.
Stanley



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
