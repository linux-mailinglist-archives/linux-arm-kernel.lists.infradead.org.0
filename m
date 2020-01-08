Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDDC133BD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 07:42:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwnA7KMY6cYHYFZV02ov8ERTuEJoufpXqFNPCA60LFQ=; b=JDd6beRSKkoyX9
	ayRqJAa5FF5OkxXMsTB1l/gNGMo10J/u8XLE7YtnTzPCOfsCFxqDlCNIV4YPUjBhU/kFD/6lx7VMs
	WO3qFZvWgDKuaTSy1dgXMMON8nAXBqT++cjoK/Xu5MawnuZcoMEZYrPLWfAokkqoBEpz525s30Rd4
	b1HxQRN8SfLLYP4SNPIhip9sTW3P1ud4XoFCxXMDizeMPnGrf6RSEZ9ankk/w5eMzTV61R7/+aftw
	BFz1qMxDsgfDZR5pVhUmWlA2J3idhF7MHXEp1eN31YYUcqJ4+LihdlkEG0Hr9F3mhrmLwwUQcf0lw
	jM75s2wv93y0ud2cvNLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip52d-0001mh-Vb; Wed, 08 Jan 2020 06:42:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip52B-0001Ut-Vc; Wed, 08 Jan 2020 06:41:42 +0000
X-UUID: b7d289a606b5449390a6c38b2f196ac1-20200107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Yu9NqwYbodwJATiMDbCNRoEDTSoP+9XjHOc4EfpOpn0=; 
 b=r59Z0UQjDPytbSDPxEgtRHtSDkO/HXRRrNMvzncfo+f9cwFS79Z5iIglIsU1pCljPTK+4aTgIg4XciBj2MhgQkxik7/mJHv+fAJ0OemCsa64LUMyFldVMPUaJQPjPnMGi/KwTMEgjkffs9Zdwt99+UXxNkA+ioJgwgxSvv9lhhc=;
X-UUID: b7d289a606b5449390a6c38b2f196ac1-20200107
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ming-fan.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1129365498; Tue, 07 Jan 2020 22:41:35 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 22:42:07 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 14:41:07 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 8 Jan 2020 14:39:59 +0800
From: Ming-Fan Chen <ming-fan.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 0/3] memory: mtk-smi: Add bandwidth initial golden setting
Date: Wed, 8 Jan 2020 14:41:28 +0800
Message-ID: <1578465691-30692-2-git-send-email-ming-fan.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1578465691-30692-1-git-send-email-ming-fan.chen@mediatek.com>
References: <1578465691-30692-1-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_224140_018697_42D6EC8B 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Joerg
 Roedel <jroedel@suse.de>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>, Ming-Fan
 Chen <ming-fan.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

*** BLURB HERE ***

Ming-Fan Chen (3):
  dt-bindings: mediatek: Add binding for MT6779 SMI
  memory: mtk-smi: Add basic support for MT6779
  memory: mtk-smi: Add bandwidth initial golden setting

 .../memory-controllers/mediatek,smi-common.txt     |    5 +-
 .../memory-controllers/mediatek,smi-larb.txt       |    3 +-
 drivers/memory/mtk-smi.c                           |  140 +++++++++++++++++++-
 3 files changed, 144 insertions(+), 4 deletions(-)

-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
