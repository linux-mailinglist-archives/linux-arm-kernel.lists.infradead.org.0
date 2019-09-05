Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C6DA9C49
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fNPqZTj3g3HwsAZ/wdsgkcNbtKjlwqcpdQ8v8ZU+Uuk=; b=H0OGiraypWWjIO
	4UWRXWqOnYdDxEHDhYobHLCYA6ZUOteD+pPasWijIkm0Y/cIV3YDOfVwftMGpSvuUrs4Y5iK3lwLu
	JzRyvZ6pq4/v4jVAPLVJzahFFqQLhTO3UuQmP0sNiMNHr9GDIgJLXrxluonIG75lG5nqbjPkIW7SI
	kmx3/Wu3yXBgiBdEoznENbl4t6BwwbelEsKxD7mZgMs34CcgA7e466DLUZiDrkmsGZIexnXXt0LTt
	b+Khs9LsGL8h1cVUeIBrK4q4ooS8UgytJabgwX03vh+4BoJEubb+0VfURos7Pfxt+RnceoGvXCS3l
	tI5Ry1Fl48VWtq4lzgRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5maP-00063h-Ti; Thu, 05 Sep 2019 07:53:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ma7-00061r-LO; Thu, 05 Sep 2019 07:53:28 +0000
X-UUID: eb5b2acc3cbe43c499344b826520a2a7-20190904
X-UUID: eb5b2acc3cbe43c499344b826520a2a7-20190904
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 154836926; Wed, 04 Sep 2019 23:53:22 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 00:53:21 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 15:53:19 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 15:53:18 +0800
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH v2] fix device in programming state after ioctl() 
Date: Thu, 5 Sep 2019 15:53:16 +0800
Message-ID: <20190905075318.15554-1-chaotian.jing@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_005327_703044_B4408342 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
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
Cc: Jens Axboe <axboe@kernel.dk>, Chris Boot <bootc@bootc.net>,
 srv_heupstream@mediatek.com, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-mmc@vger.kernel.org, Zachary Hays <zhays@lexmark.com>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Ming Lei <ming.lei@redhat.com>, Avri Altman <avri.altman@wdc.com>,
 linux-mediatek@lists.infradead.org, Hannes Reinecke <hare@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v2 vs v1:
	base on Avri's comment, drop the ioctl_rpmb_card_status_poll()

the user space program may access eMMC by ioctl(), after the ioctl() was
completed, it should ensure that eMMC is in transfer state, or it will
cause other thread which access eMMC got timeout error, as it assume that
card was in transfer state.

this patch add CMD13 polling for R1B command to avoid this issue.

Chaotian Jing (2):
  mmc: block: make the card_busy_detect() more generic
  mmc: block: add CMD13 polling for ioctl() cmd with R1B response

 drivers/mmc/core/block.c | 150 +++++++++++++++------------------------
 1 file changed, 57 insertions(+), 93 deletions(-)

-- 
2.18.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
