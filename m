Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC471BDD51
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IF7FIY7luQk9Q8tva4kEXAdI24X7MP6xE8zUmDyTIxM=; b=H/HFsYguj8zkpt
	6zcRs71ECSMt6pCCH+XGU9SmqD6/gtiMyuPKetcsp6ZX/bNv23mMlfSt1oHuPAIaNk6ZQOCDiuKYW
	fO0oVwQ4UuLGurA3xc9auNb9Dtz3YSIoKSI8rDvEkmSrzg1X4GL72qJ0gkK85u1Rd7HD+++rxkaXJ
	8uKQzfkPOiSyON7ljSA32kcshBywhE7NUxRHvhpOOhlgXo16TuAR/4sgwzsBT0OZ3QhuQ7FAirBxa
	JR9CJS330blAVPFYE8sv8elkarjTtF6paBcU77YMe8VTJlmmKVD/oP7ZMptB1TK4ZhwbPbCpF8lUJ
	an2xdOuzWTqS2/be2uqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmYu-0003Od-3X; Wed, 29 Apr 2020 13:15:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmYk-0003NC-V4; Wed, 29 Apr 2020 13:15:32 +0000
X-UUID: f9da96a498344fc289dd043ad1045506-20200429
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=PNI0WDJmz/9JD0UtP8DMHGZ8r8zpffAaucvWKOp0H/M=; 
 b=VlACrPdzGlk4pWpXWSA3twIItfS+zLbZwllyohmvhu3rW8OE30iE05HMdM3lWsxkQdQP0exRENm27vJNNV+XP+EIzmPheshVam/XdhXlKgw5hWGAyBGvf7WPzzLhr2agwghH6iOxMXpkQ3j6t6BUBicxZx/bAYQyf66SG86x9HA=;
X-UUID: f9da96a498344fc289dd043ad1045506-20200429
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 851175677; Wed, 29 Apr 2020 05:16:24 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 06:05:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 21:05:04 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 29 Apr 2020 21:05:03 +0800
Message-ID: <1588165506.3197.0.camel@mtkswgap22>
Subject: Re: [PATCH v1 3/4] scsi: ufs: add LU Dedicated buffer type support
 for WriteBooster
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Bean Huo (beanhuo)" <beanhuo@micron.com>
Date: Wed, 29 Apr 2020 21:05:06 +0800
In-Reply-To: <BN7PR08MB5684630793F03282E4C6F3D7DBAD0@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200428111355.1776-1-stanley.chu@mediatek.com>
 <20200428111355.1776-4-stanley.chu@mediatek.com>
 <BN7PR08MB5684630793F03282E4C6F3D7DBAD0@BN7PR08MB5684.namprd08.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 93D7F8DB1FC187A36CBACEF22410B86BFB7E58962EFD80A220FFCC8E333837BA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_061531_010334_7AA3850B 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bean,

On Wed, 2020-04-29 at 10:39 +0000, Bean Huo (beanhuo) wrote:
> > 
> > +/* WriteBooster buffer type */
> > +enum {
> > +	WB_TYPE_LU_DEDICATED	= 0x0,
> > +	WB_TYPE_SINGLE_SHARED	= 0x1
> > +};
> 
> 
> Hi,  Stanly
> WB_TYPE_SINGLE_SHARED might be WB_TYPE_SHARED_BUFFER.  I think,
> we should try to make the name definition correspond to Spec

Make sense. I will fix this in next version.

Thanks,
Stanley Chu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
