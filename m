Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C8E74963
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 10:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0HilVTEmzgdjtzCXjS1fOBInOhJSVsFXt2rrNr9HGg=; b=YLqxPg8VBLWbEr
	1W5MO8U8YruPljh1bYozWhHHkr2w4uUvU1P9ZldptvxNBxveznj8hNcQ/ssXYBc/UvYG2ABRTG+LQ
	PvvYMew6jgSHYlagfdY5+Z8mvOhUGQru06eSKPxpwmIA5y/rxKdoKAAHTNYQ5hmsuOMEBe9PDuSHK
	lqAVS7hGW8p6/VDq78JnQ2YYkvQEsF3+uY/wlL9/Jks6sUS7sCXVqCaHC48kFWM47ckhccGL6x6Ok
	OVf23TfowNX1Kn6068EALlg9Ofv3juSRXBp2z8moILOfpD/rrujia7UGx7iv/7IZTDVrSEluF2zJs
	d3dLp6ZRGkurDkwMuLDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqZUi-00029K-VN; Thu, 25 Jul 2019 08:53:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqZUT-00027m-0J; Thu, 25 Jul 2019 08:52:46 +0000
X-UUID: 4c0036327c5141d196b5ddf1f2a0a8fe-20190725
X-UUID: 4c0036327c5141d196b5ddf1f2a0a8fe-20190725
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 877433952; Thu, 25 Jul 2019 00:52:20 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 25 Jul 2019 01:52:19 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 25 Jul 2019 16:52:17 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 25 Jul 2019 16:52:17 +0800
Message-ID: <1564044737.7235.9.camel@mtkswgap22>
Subject: RE: [PATCH v2 0/3] scsi: ufs: fix broken hba->outstanding_tasks
From: Stanley Chu <stanley.chu@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Thu, 25 Jul 2019 16:52:17 +0800
In-Reply-To: <MN2PR04MB69914824302B84E144137869FCC10@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
 <MN2PR04MB69914824302B84E144137869FCC10@MN2PR04MB6991.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_015245_054795_B2E3A0F4 
X-CRM114-Status: GOOD (  10.61  )
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
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

On Thu, 2019-07-25 at 07:54 +0000, Avri Altman wrote:
> Stanly,
> 
> > 
> > Currently bits in hba->outstanding_tasks are cleared only after their
> > corresponding task management commands are successfully done by
> > __ufshcd_issue_tm_cmd().
> > 
> > If timeout happens in a task management command, its corresponding
> > bit in hba->outstanding_tasks will not be cleared until next task
> > management command with the same tag used successfully finishes.
> I'm sorry - I still don't understand why you just can't release the tag either way,
> Just like we do in device management queries tags,
> Instead of adding all this unnecessary code.
> 
> I will not object to your series -
> just step down and let other people review you patches.


Sorry to not describe the failed scenario clearly.

Simpliy focus on outstanding bits cleanup in failed (timeout) case:
- For device command, if timeout happens, its tag can be cleared in
ufshcd_wait_for_dev_cmd() which specifically uses
ufshcd_outstanding_req_clear() to clear failed bit in outstanding_reqs
mask.
- For task management command, if timeout happens, current driver will
not clear failed bit in outstanding_tasks mask:
	- __ufshcd_issue_tm_cmd() will not clear it,
	- ufshcd_tmc_handler() will not clear it either during reset flow.

> Thanks,
> Avri

Thanks,
Stanley

> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
