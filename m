Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E91B160A7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zM2bH7wPnlN1LiL8k3BsHof5l/EG5dMYu/p7d1Wqomc=; b=RsQRH/gRO0bSiq
	Z9okJlEcx6hmTyoRuN7ChYSse3JtoTlwKkrCXzgfJkYsM9giSkJAwrbiNtoseBnKAFNOYeSf2ZN7N
	YHCs2UVdmV8wC8SjPbJ2umpoVNvCJ2zUzupkC+/AWAGd1xi4Xzgq3RPM8l3iTkfO5C8M5pVBjBwe6
	WemqF1Y2vMotT4YVzrtsQZdEy5Hgqc6Y68XDMRYCN5ATbPoNw7CtnCADSyvrk462lBfW9keMTD4nk
	ie8qR3EZYMVZ+TXhykY7ZGa6hxghgSzA2ARvGQ+r+Hiv2pKaA2mmlCB5IC+Ed4ARpxEZw4MhmLSWa
	+Eibiv53d8QyIjRSK8ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Zxv-0006v3-CF; Mon, 17 Feb 2020 06:33:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Zxl-0006uL-4A; Mon, 17 Feb 2020 06:33:02 +0000
X-UUID: cd6b8375a6c247799f53cfbd91ca6999-20200216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=L6ns1uLHFIoR7JrbKm5yCeM+PGvfPIcb1rFj/+bzaJ4=; 
 b=FY0IUQubd3tHV3Us6amxxVk+AVMSseObZ05O34MJE3insm9aXz8W1ociu6AgTZaXf9o75FyhdUVBBEadQPAKpURn1SGN8VUSa2DY3byBudnDq6Ww1NN0EAQbr0Hk5mzUv+TCWx4QGx7l+HnztTXhiGFC7Z7adNcXdNXGuLA/Okg=;
X-UUID: cd6b8375a6c247799f53cfbd91ca6999-20200216
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1503532075; Sun, 16 Feb 2020 22:32:52 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 22:32:50 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 14:31:54 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 17 Feb 2020 14:32:24 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>, "Linus
 Walleij" <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>, Kate
 Stewart <kstewart@linuxfoundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Pan Bian <bianpan2016@163.com>, "Thomas
 Gleixner" <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "Mathieu Malaterre" <malat@debian.org>, Stanley Chu
 <stanley.chu@mediatek.com>, "Kuohong Wang" <kuohong.wang@mediatek.com>
Subject: [PATCH 1/4] [1/4] mmc: core: expose MMC_CAP2_CQE* to dt
Date: Mon, 17 Feb 2020 14:31:48 +0800
Message-ID: <1581921111-24172-2-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1581921111-24172-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1581921111-24172-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_223301_169815_DAB66D2B 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Chun-Hung Wu <chun-hung.wu@mediatek.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Expose MMC_CAP2_CQE and MMC_CAP2_CQE_DCMD
to host->caps2 if
1. "supports-cqe" is defined in dt and
2. "disable-cqe-dcmd" is not defined in dt.

---
 drivers/mmc/core/host.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
index 105b7a7..efb0dbe 100644
--- a/drivers/mmc/core/host.c
+++ b/drivers/mmc/core/host.c
@@ -319,6 +319,14 @@ int mmc_of_parse(struct mmc_host *host)
 		host->caps2 |= MMC_CAP2_NO_SD;
 	if (device_property_read_bool(dev, "no-mmc"))
 		host->caps2 |= MMC_CAP2_NO_MMC;
+	if (device_property_read_bool(dev, "supports-cqe"))
+		host->caps2 |= MMC_CAP2_CQE;
+
+	/* Must be after "supports-cqe" check */
+	if (!device_property_read_bool(dev, "disable-cqe-dcmd")) {
+		if (host->caps2 & MMC_CAP2_CQE)
+			host->caps2 |= MMC_CAP2_CQE_DCMD;
+	}
 
 	/* Must be after "non-removable" check */
 	if (device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type) == 0) {
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
