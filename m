Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C61E1B9537
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 04:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lWmzC1GLhA+Ehtz5lOEIH+qOtclTcJ8cv6eR0ush1Rs=; b=QXYkbjNAAVnggU
	HynQuOLtI1Lon7NkPrObmizRd88BRdTbriBGecRf4ObYAlc3vNHXm/aahJP8tDqqT0sGwIpqvZVNx
	PfOXczkigEbh6pN2gadb7+clEVAM6wh4/I4ahOAfBag6R8FXEZE/zWMBqDlR/GxZzjjiYYrNQDn21
	gl9WfwGBLH2mknXRfr3uUA2to7hXtftlfRis3nlcjvwC1bwVIFb07BByzyJtUpl+8Kvz33yVNbOY7
	qkuQlob8ailfrW0EHsrD+G+ipikFYfPy5ZqHSt71CUvay36pZMDH8MGbac7qYXzp97/RsVfeq87hx
	sncZ+qQURuconqsgHRRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSttp-0002aq-UJ; Mon, 27 Apr 2020 02:53:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSttX-0002X0-L9; Mon, 27 Apr 2020 02:53:21 +0000
X-UUID: 0a8740300bd141b4a75fdae9dd99566c-20200426
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=51pLSQ6vu0bktqe9XfAF5B+ix//CVuEoq0YX27Es87U=; 
 b=FxRC6jPhH+DvWJ4mBvUACkr6D8pTBUuji/QKWmCG8WDFCHTe7r6+GrU3tSWaRqbdAQ6Yy+y5Mh7VjA7wU6kVKJxPFAlurNzCHmoU8UFpkaaeKu8e+VmHIS0iih0AjQVObdvnKsWoTSFIyxRAu8uwDojRZeWLoGvqlwc7RkvIqlA=;
X-UUID: 0a8740300bd141b4a75fdae9dd99566c-20200426
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1225052066; Sun, 26 Apr 2020 18:53:35 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 26 Apr 2020 19:53:04 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 27 Apr 2020 10:53:02 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 27 Apr 2020 10:53:01 +0800
From: EastL <EastL.Lee@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH v3] dmaengine: mediatek-cqdma: add dt-bindings and remove
 redundant queue
Date: Mon, 27 Apr 2020 10:52:55 +0800
Message-ID: <1587955977-17207-1-git-send-email-EastL.Lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: A4FE1395A7320814F6C9DF9C065ECF57BFD0FAA2D5B51FB9BD4F56FBF4D209432000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_195319_699131_BC088953 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, vkoul@kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds document the devicetree bindings for MediaTek Command-Queue DMA controller,
and remove redundant queue structure.

Changes since v2:
- add devicetree bindings for MediaTek Command-Queue DMA controller

Changes since v1:
- remove redundant queue structure
- fix wrong description and tags in the earlier patch
- add dma-channel-mask for DMA capability


EastL (2):
  dt-bindings: dmaengine: Add MediaTek Command-Queue DMA controller
    bindings
  dmaengine: mediatek-cqdma: remove redundant queue structure

 .../devicetree/bindings/dma/mtk-cqdma.yaml    |  98 ++++
 drivers/dma/mediatek/mtk-cqdma.c              | 422 +++++-------------
 2 files changed, 218 insertions(+), 302 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/dma/mtk-cqdma.yaml

--
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
