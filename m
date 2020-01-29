Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1002414C68D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 07:34:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSyXJAbKWwtV4wri4Xyzo5xUBZFpaGzpfr7ERD+Lhk8=; b=tVW7K+vPSejBIf
	dKQ7zMVKIihh1/fdx+rtk9/n/Vb3cdOJnKs4Tv3DQNi002mYT2/uC4rgjo8LTDWzLKqEA5lewQXBc
	ZXus/PgSXpYKEFezzFiw61HVNj+tuUzuDnxFxGHzhPPl24UUkRkOPaqSdDEFhoFomfBSXhjXw9Cbk
	l/9cqWGzLF5d/6nPC+WLyDf+OMxa+L3EOldAiL12fAHxyyKNrWmA/qn9uzVgzvS1MDiKVMLbjEbHC
	WrqmqVnFb4LH+gzEGO2dPNMAvYCIox29YF4iVBEzLilnP/pNSF23Z2RgOoeZDpydVz5fha5zgKG4Z
	SVwUd1i5DaELVPggaoiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwgvj-0004ey-UB; Wed, 29 Jan 2020 06:34:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwgvY-0004eB-V8; Wed, 29 Jan 2020 06:34:18 +0000
X-UUID: e2503d2275244a6697466a88eb817e57-20200128
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ujk6W1itj+kyGPWCpmoTXw9A47Q4LtnJX0OapEkv6Rs=; 
 b=HkrrDZHup2REa8MtxmosCkPS2cLm6biREC/G85Xxz2ifw/hufxhyJQyE7nO/eyv2UbcbOJrp6r7QWC/kYf3/gCYxNXbcvGX9QAwrgXNf2ZDE+B+nfo73VozsGay5X4rLIqZw3nigefKFzduoYRwFJtYM/gN7PAk9bJffEryUGbs=;
X-UUID: e2503d2275244a6697466a88eb817e57-20200128
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1135705889; Tue, 28 Jan 2020 22:34:11 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 Jan 2020 22:34:08 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 14:32:35 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 29 Jan 2020 14:34:03 +0800
Message-ID: <1580279636.15794.0.camel@mtksdccf07>
Subject: RE: [EXT] [PATCH v2 4/5] scsi: ufs: fix auto-hibern8 error detection
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Bean Huo (beanhuo)" <beanhuo@micron.com>
Date: Wed, 29 Jan 2020 14:33:56 +0800
In-Reply-To: <BN7PR08MB56840A622E2170C4F913A5D7DB0A0@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200124150743.15110-1-stanley.chu@mediatek.com>
 <20200124150743.15110-5-stanley.chu@mediatek.com>
 <BN7PR08MB56840A622E2170C4F913A5D7DB0A0@BN7PR08MB5684.namprd08.prod.outlook.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_223417_009510_9C193743 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bvanassche@acm.org" <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bean,

On Tue, 2020-01-28 at 15:52 +0000, Bean Huo (beanhuo) wrote:
> Hi, Stanley 
> Do you think it is necessary to add fixes tag, and combine this patch with previous patch to
> single patch?  That will be easier to down port to the older kernel.

OK! I will update this patch according to your suggestions in next
version.

Thanks,
Stanley

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
