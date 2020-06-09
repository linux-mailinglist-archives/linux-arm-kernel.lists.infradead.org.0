Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F294D1F3800
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=caz9hD6aAHd2RDAgjPEH1+/DTaHX+ZBXseQNcP2NrWU=; b=inbkwF1XaUcZiq
	zfe6Btv6T94vosUtfbM4ala1KfsNZGVvr4ctaB4X1T/KvaqFIm0B1MaJiHjAMW7IPSDGtlTWe76Hl
	Iit4YjzTpoUNtwh2r4+zVd4GhvPN4WuKB2HaSdgDSY6afFAcEXFA7OOknNipfLhK8Qw+v7CjDxY8k
	PvFEDxVBJUo4h1ROvBPT6BcZRoPbm57jn05B6ieX3Jgte8hu8/vcxTcTiWGwl9BGY9XMWxPs56r97
	Gv4VQlofEsu9BTQhbsQnMaDlxREXEoRll7VJ9r9xCNkYJNkqkhLn9jyVqN86/JNDbWZelM5/teph7
	kRt6KfXkuDbpZlE2UWxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibRU-0003RZ-5y; Tue, 09 Jun 2020 10:25:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibQz-0003Fu-9C; Tue, 09 Jun 2020 10:24:47 +0000
X-UUID: 387c5cc9e8c74d1a830209fa914628d2-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=27GaRRMJgI8jXomyewf9EjW3IGOTuWZHXBF43R7U3x8=; 
 b=G6XwXEti9LgKFhiMGH4u4AWjtlbSdrPhFOpaBWZjexEoz1S1qZonWg9E02aEW17gUUIIjRcsWNJLlbbTraFQx0kfrNc9JtJ/wTpnX9s7j5+HLeYz7zAnR+Qw5/KsCZob+2TAUxwlEkU2Usikm0K9gER5ccN3oBPEGMCrpJP/glc=;
X-UUID: 387c5cc9e8c74d1a830209fa914628d2-20200609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1253366072; Tue, 09 Jun 2020 02:24:45 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 03:24:38 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 18:24:31 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 9 Jun 2020 18:24:30 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: Add MediaTek MT6873 devapc driver
Date: Tue, 9 Jun 2020 18:24:19 +0800
Message-ID: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_032445_331686_3958C260 
X-CRM114-Status: UNSURE (   7.22  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Neal Liu <neal.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patch series introduce a MediaTek MT6873 devapc driver.

MT6873 bus frabric provides TrustZone security support and data
protection to prevent slaves from being accessed by unexpected
masters.
The security violations are logged and sent to the processor for
further analysis or countermeasures.

Any occurrence of security violation would raise an interrupt, and
it will be handled by devapc-mt6873 driver. The violation
information is printed in order to find the murderer.

*** BLURB HERE ***

Neal Liu (2):
  dt-bindings: devapc: add bindings for devapc-mt6873
  soc: mediatek: devapc: add devapc-mt6873 driver

 .../soc/mediatek/devapc/devapc-mt6873.yaml    |   61 +
 drivers/soc/mediatek/Kconfig                  |    6 +
 drivers/soc/mediatek/Makefile                 |    1 +
 drivers/soc/mediatek/devapc/Kconfig           |   25 +
 drivers/soc/mediatek/devapc/Makefile          |   13 +
 drivers/soc/mediatek/devapc/devapc-mt6873.c   | 1733 +++++++++++++++++
 drivers/soc/mediatek/devapc/devapc-mt6873.h   |  130 ++
 .../soc/mediatek/devapc/devapc-mtk-multi-ao.c | 1019 ++++++++++
 .../soc/mediatek/devapc/devapc-mtk-multi-ao.h |  183 ++
 include/linux/soc/mediatek/devapc_public.h    |   41 +
 10 files changed, 3212 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml
 create mode 100644 drivers/soc/mediatek/devapc/Kconfig
 create mode 100644 drivers/soc/mediatek/devapc/Makefile
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mt6873.c
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mt6873.h
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.c
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.h
 create mode 100644 include/linux/soc/mediatek/devapc_public.h

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
