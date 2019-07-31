Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AA27B8CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 06:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7b8iDcvKK4G4Jig2hpgZ3XcfhXg67C/eAWdGfVm0bA=; b=aKM/Om5InKxZjH
	TI3ulGnGrfrv6jnb3bQYhccb4gb/nH4t27W0sWyrNHfiZXbUgxURTm01FOpaDaSCKobAyAlTYH/cj
	LKrzUIoNfC8OqByFVSvsPJCaoFJ5+MYn7+khBarN1cDLNgRx78jBChSr6jX+RPWHtQedZWDjvncQ0
	dGtBn3WALcQImMkPGoefuGILTpn+h2qckLtCLXNgkhcurT8MDX5Jb1gbuqDzFb2qUXANOkXntAbdt
	5fkRM24IINF0jiDdixnByoVZghqkxWqyceB+E9ETbof/IQ+i+dM9wDOxUbUbGqMGCDjoiuE16UX1I
	+ZWsqM70W6qubgDJc9Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsgLM-0001Cd-OV; Wed, 31 Jul 2019 04:36:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsgL7-0001CH-F3; Wed, 31 Jul 2019 04:35:50 +0000
X-UUID: 52d00a5c364a47e4a621d33bcb0c46b9-20190730
X-UUID: 52d00a5c364a47e4a621d33bcb0c46b9-20190730
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1468231843; Tue, 30 Jul 2019 20:35:47 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Jul 2019 21:35:46 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 31 Jul 2019 12:35:43 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 31 Jul 2019 12:35:43 +0800
Message-ID: <1564547743.5425.1.camel@mhfsdcap03>
Subject: Re: media: mtk-vcodec: Handle H264 error bitstreams
From: gtk_ruiwang <gtk_ruiwang@mediatek.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date: Wed, 31 Jul 2019 12:35:43 +0800
In-Reply-To: <20190730131541.40ce5ead@coco.lan>
References: <20190726085433.15612-1-gtk_ruiwang@mediatek.com>
 <20190730131541.40ce5ead@coco.lan>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 496C836286EC7F030A9ECD7B32BC667A768E1541A52722DF86AF4CB1367ABF1D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_213549_510129_A5421EE6 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Mauro,

patch v2 uploaded.

Thanks,
Best Regards

On Tue, 2019-07-30 at 13:15 -0300, Mauro Carvalho Chehab wrote:
> Em Fri, 26 Jul 2019 16:54:33 +0800
> <gtk_ruiwang@mediatek.com> escreveu:
> 
> > From: gtk_ruiwang <gtk_ruiwang@mediatek.com>
> 
> ...
> 
> > Signed-off-by: gtk_ruiwang <gtk_ruiwang@mediatek.com>
> 
> Please use your real name on your SOB and at the From: line.
> 
> Thanks,
> Mauro



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
