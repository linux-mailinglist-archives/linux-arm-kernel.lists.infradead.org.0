Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D0F104847
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 02:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=On+KbToXy0hh2n4eKEM3qmdDXQWKtPmdZmmOg5CVQEo=; b=S8Q4x0uDMxHqyg
	DPH4f1dwGja5WllRMFiOECGKKYiDvZE35s2dL1SXGTnDJYhwxu+U2fcRlj6QN92K66XuFcDmh6rLf
	snDckCBrjXyiqqBIdDf/82GbK1qc1QOVhPpWFmf2JNkBQKNMoUQ4jPTHVihDHjCeb9Mg6zwxhhbUQ
	EG8P2UDKAsLKTblzTGEbXgTyLoJiQwop8/zWa+9Xh6+qcsXaHomRlU67n1J24tZKL/w6pyAeDy1lI
	lzPfTcbvdUNvhhQ+/ZCjA0ms6J0tBgfGMcM4ajJ/ce3F8Rrib53eXOUBTjv+6YdYDF/IhjGuDExpm
	+M8AF3XrsH29wwyXhsIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXbfz-00074B-DX; Thu, 21 Nov 2019 01:54:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXbfq-00071r-2q; Thu, 21 Nov 2019 01:54:23 +0000
X-UUID: 7943dd9efa4a47729c920dc0555689f4-20191120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=eNc1q+Jm+ke51V5X9loIt4L2ckyzxIUn7oSSInk3fLI=; 
 b=ctaH3Z5Vs7F7wKL3GCd+LW7C4GRIcJOuOdUxlKnd6hxHs6vav44yD6tWIFKjS1yPwZiB0RqzFlGwRvucTAccVkexi9ANuGX94jv9FFlMJeDH3qIL0thcyj38f/pOmOJXQu22gOUJO2tqh2GCXE2vYa47PyiyWWE6/Z+8inZT/bo=;
X-UUID: 7943dd9efa4a47729c920dc0555689f4-20191120
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 62264977; Wed, 20 Nov 2019 17:54:15 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 17:54:33 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 09:54:07 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 09:54:16 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, CK HU <ck.hu@mediatek.com>
Subject: [PATCH v17 0/6] support gce on mt8183 platform
Date: Thu, 21 Nov 2019 09:54:04 +0800
Message-ID: <20191121015410.18852-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_175422_129697_ED8759E0 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes since v16:
 - naming the poll mask enable bit
 - add a patch to fiup the input order of write api

Changes since v15:
 - rebase onto 5.4-rc1
 - rollback the v14 change
 - add a patch to fixup the combination of return value

Changes since v14:
 - change input argument as pointer in append_commend()

Changes since v13:
 - separate poll function as poll w/ & w/o mask function
 - directly pass inst into append_command function instead
   of returns a pointer
 - fixup coding style
 - rebase onto 5.3-rc1

[... snip ...]

Bibby Hsieh (6):
  soc: mediatek: cmdq: fixup wrong input order of write api
  soc: mediatek: cmdq: remove OR opertaion from err return
  soc: mediatek: cmdq: define the instruction struct
  soc: mediatek: cmdq: add polling function
  soc: mediatek: cmdq: add cmdq_dev_get_client_reg function
  arm64: dts: add gce node for mt8183

 arch/arm64/boot/dts/mediatek/mt8183.dtsi |  10 ++
 drivers/soc/mediatek/mtk-cmdq-helper.c   | 147 +++++++++++++++++++----
 include/linux/mailbox/mtk-cmdq-mailbox.h |  11 ++
 include/linux/soc/mediatek/mtk-cmdq.h    |  53 ++++++++
 4 files changed, 195 insertions(+), 26 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
