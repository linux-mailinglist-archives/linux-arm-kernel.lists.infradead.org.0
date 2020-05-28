Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B931E5C8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 11:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L7hbih9r07KQCLreF8K69wlW850wPdaqjixWlLXKrsQ=; b=GJk2xfEJW04VFM
	WBZYMdB/uDC3k0V+k5d25fWhcNdI18LUOyL+97R/s9FTpodWBseIBUKLTJE/Uyk2o69Xx4+c5oNy7
	IZRkwlTQfk23K8pusqGbVJMrEV+QANgJuz7TZ7WxTUq3XFF3tdOGtz6mdZVSayQERCzug5oGCAypI
	v7lrhYnMXCQ8PDx03pIAjWmkUNvOBB4KQ1mgBtu6VY6iCLxCOkr/dMPqvT2VUiecNjgpy2AuqOhwE
	NyMqAujEB/UcDlIKz3UW4dTFpAPL4nbStgTl3tSX4ky765ulCaLQmVmGAKtgUy1fUVGhLCwO6MNUS
	xa3NLmA5m7YPBjXT/euQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFJ7-0003Sz-QP; Thu, 28 May 2020 09:58:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFI7-0002h1-R2; Thu, 28 May 2020 09:57:38 +0000
X-UUID: db2a1bd73ed74ac1b60b311bf65383f3-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=r2yyS/GzdhkWnjygzbbMG8mX4hLDdpXfT3ti9OAQv6Y=; 
 b=FjdVOj5nQMZrE/2dPDdOslYWp14mlFOrWpw9YZmqdPG+vIQ6WWQT5U/zCnXfXkJKTeaQV+UhmZ8NUXsmvxWoJVQSnpDfQB95VGd6Bc2yijhxOjDItpPOablIdRq+/OT0AdeWNfK093W8QPkASwvisv3UeJHikkwejFUgMbupBuY=;
X-UUID: db2a1bd73ed74ac1b60b311bf65383f3-20200528
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 408659777; Thu, 28 May 2020 01:57:28 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 02:57:24 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 17:57:17 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 28 May 2020 17:57:17 +0800
From: EastL <EastL.Lee@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH v4] dmaengine: mediatek-cqdma: add dt-bindings and remove
 redundant queue
Date: Thu, 28 May 2020 17:57:08 +0800
Message-ID: <1590659832-31476-1-git-send-email-EastL.Lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_025735_883396_EBFC80B5 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, vkoul@kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds document the devicetree bindings for MediaTek Command-Queue DMA controller,
and remove redundant queue structure, add dma-channel-mask for DMA capability and fix compatible.

Changes since v3:
- fix dt_binding_check errors

Changes since v2:
- add devicetree bindings for MediaTek Command-Queue DMA controller

Changes since v1:
- remove redundant queue structure
- fix wrong description and tags in the earlier patch
- add dma-channel-mask for DMA capability
- fix compatible for common
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
