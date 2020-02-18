Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8582162464
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 11:18:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UHrVhGvq4ad+onrShoM+v0EEArA2MNWD4uUeWnO1PP8=; b=g6b9MWmOs5YGrL
	6pyjGFz9DNUYw+fDSFb811bVjezk2hH3+cuGhQTgWEaPthGmGN2dYL4kAXNrcc/bY8h7Ei7u6pUq8
	b/62KaP+2/BVpo131MhuS7EI+7hd1i4m3MN6hseXvk3coQdPr+EMqsM72AuwTZfNNS84RVOzLihqL
	CEjph6nRMBpGWkrQ+nunJLOOx6UIp9emBjAO/YGuXAyiC5owrdhUvuDCcgLgcLLGtTW8ku096Pik8
	qowFunoh0J7sAycIfLgu/cMIouGV8j1HJiIa7rGsP6Z9UupGLdMOlFqQXAeszkstTDI5QCd4XCwK1
	ZKgvqRS8HAqJ2BKViwww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zxS-0001fN-Cy; Tue, 18 Feb 2020 10:18:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zxJ-0001e5-F7; Tue, 18 Feb 2020 10:18:18 +0000
X-UUID: f21d0fc5fac044cfb31a4da89772e9d2-20200218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=dehudLvz3II1sCqB8R/3Ho6QWR8DegTmoPcH9t7ygyw=; 
 b=mimk3Y579gVz9ZKkolLkxGFPIclZErNaT3d0clZl4TcSaI+KvqNjdJAwiSV5GfEbn8DciKlqI89U6lxlJ3KH0KaHPoY3p8S5X8lET0HFFBmy/9vctYfpwHEeoId9IhZejBVZ4pP6EJSqtQ6Zst5T8aLtK7DLYu22wGedMboTG+8=;
X-UUID: f21d0fc5fac044cfb31a4da89772e9d2-20200218
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 911295598; Tue, 18 Feb 2020 02:18:12 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 02:05:14 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 18:03:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Feb 2020 18:04:03 +0800
From: <gtk_ruiwang@mediatek.com>
To: <linux-firmware@kernel.org>
Subject: pull request: linux-firmware: Update Mediatek MT8173 VPU firmware
Date: Tue, 18 Feb 2020 18:03:57 +0800
Message-ID: <20200218100358.2015-1-gtk_ruiwang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_021817_512337_C1C22ED3 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: gtk_ruiwang@mediatek.com, Maoguang Meng <maoguang.meng@mediatek.com>,
 Alexandre Courbot <acourbot@chromium.org>, srv_heupstream@mediatek.com, Yunfei
 Dong <yunfei.dong@mediatek.com>, Longfei Wang <longfei.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, PoChun.Lin@mediatek.com,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi linux-firmware maintainers,

The following changes since commit 6f89735800fe3af761104defdb81b50b6d6402f0:

  rtl_nic: update firmware for RTL8153A (2020-02-07 08:30:37 -0500)

are available in the Git repository at:

  https://github.com/ruiwang-mtk/linux_fw_vpu_v1.1.4.git

for you to fetch changes up to 0bd965d5e4b0d24e2fc054a933fea3a8c22af92b:

  mediatek: update MT8173 VPU firmware to v1.1.4 (2020-02-18 17:27:30 +0800)

----------------------------------------------------------------
gtk_ruiwang (1):
      mediatek: update MT8173 VPU firmware to v1.1.4

 vpu_d.bin | Bin 2977136 -> 2977184 bytes
 vpu_p.bin | Bin 131180 -> 131180 bytes
 2 files changed, 0 insertions(+), 0 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
