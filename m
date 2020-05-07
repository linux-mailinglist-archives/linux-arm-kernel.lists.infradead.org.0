Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE421C9F59
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 01:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLyUZwFs2ad/afEDx25aNBVpcs2e6RyhiEYpR3Z/76k=; b=qOZuB1XiJwc3q6
	ZgAgKt9S6xEHKOXHWmBGvbS2Sn4ivFyMFPTegCFwaE9BRnSvnptOaigl2Hpwi1SIA/I0qjidL8vW5
	SsY3y74i3FvBhNpDDrrKuM5AK4uQFucHRA8mmBX8EJkDdxZGWQPvkt1A0dV9LJKx23pyAxAKyscps
	FW/E6XcsrR5wA54Mt+MU1J0jTFjpBGTxJOXBRw11K88tXPvTJt+fr/RPz20FNeHg4+udPlcqjeHAi
	7/kI1WItjVHSnYZ6++47MMmEwxJFOoFHJgBBUtmd5QRLDuFtFBPxgb91xDPyHiza6zUXM5W6WsWMO
	NVeBHKG5+qugxI6zlpOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWqO7-00061R-Q7; Thu, 07 May 2020 23:57:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWqNz-000610-4a; Thu, 07 May 2020 23:57:04 +0000
X-UUID: 866f838dcf014a479b67a5d32148daf6-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=JhHIyBxzU60a1fEjAc2AhM3GWgEwwTj1mu/Pn9wiBHA=; 
 b=G9fFRxzL6DQ9u+Xd3Gy+VOaLgHpS7LqgRAY/NJcyYznEB0km80kiiA+/EeSAY/eRdOhvNPRkS3FRgaQjUsraD4E8HKZPu8eWGTC390dj+Qa+EefN2+EkgpqPy7mnL5MO1zKu1nvmpGsq8BP3ELA0g9D1E8MZQce4SO6la4lBqAE=;
X-UUID: 866f838dcf014a479b67a5d32148daf6-20200507
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1108194849; Thu, 07 May 2020 15:56:59 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 16:56:59 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 07:56:51 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 8 May 2020 07:56:49 +0800
Message-ID: <1588895812.3197.43.camel@mtkswgap22>
Subject: Re: [SPAM]RE: [PATCH v5 2/8] scsi: ufs: introduce fixup_dev_quirks
 vops
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Fri, 8 May 2020 07:56:52 +0800
In-Reply-To: <1588603287.3197.35.camel@mtkswgap22>
References: <20200503113415.21034-1-stanley.chu@mediatek.com>
 <20200503113415.21034-3-stanley.chu@mediatek.com>
 <BYAPR04MB46294C86DB9BD1A91256F39BFCA60@BYAPR04MB4629.namprd04.prod.outlook.com>
 <1588603287.3197.35.camel@mtkswgap22>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 66C8E74B693F90EA0A8EBB8993C8FC6E17EBBF32BAC6523C6BFC6E4B55825C9E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_165703_186356_418AB9B1 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Mon, 2020-05-04 at 22:41 +0800, Stanley Chu wrote:
> Hi Avri,
> 
> On Mon, 2020-05-04 at 10:38 +0000, Avri Altman wrote:
> > > 
> > >         ufs_fixup_device_setup(hba);
> > > +       ufshcd_vops_fixup_dev_quirks(hba);
> > Maybe call your new ufshcd_vops_fixup_dev_quirks as part of ufs_fixup_device_setup
> 
> The latter patch exports ufs_fixup_device_setup() for vendors to re-use
> it to parse vendor-specific device quirk table during the call of
> ufshcd_vops_fixup_dev_quirks(), thus ufshcd_vops_fixup_dev_quirks()
> cannot be as part of ufs_fixup_device_setup().

Maybe I could use a new function to contain ufs_fixup_device_setup() and
ufshcd_vops_fixup_dev_quirks() to make the code more clear here.

Thanks,
Stanley Chu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
