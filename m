Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC76160992
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 05:14:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XUheUVZtLdoFhtRoONCA4cMj3qodr8b1upAfYTh6R6k=; b=kngG7xuUsvLamD
	qqvLn7HixmXquuCLsPdXHTBtPW7ZyQdq7952595CxBg4js8PIpKvT1zSkifs0kF+njQDViznjlgnp
	N/5uvGATXe90QoA6O5r/ACgsvkJNmnZxZj4uTBEhvHnJApiwByieXDuogXEzt5n3FjXdpGSMNZSx3
	pyBgJstv7W3vSUlG8Supe31csZTr2DeQANTyNkpP5spyq07F3QyCQtKrqP69ykxoVqo4pdY2sP9P7
	PoyN6TSpPvToUfdC5nsM+7JL05daTNv3UkVhruJG5x9UCNJ0dEy5H1+f48I7lpkZFp/etukweIj5Y
	25xFlW8Q/sODkYc1ejZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XnH-00083O-Ev; Mon, 17 Feb 2020 04:14:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Xma-0007VS-J0; Mon, 17 Feb 2020 04:13:22 +0000
X-UUID: 4a707f2d86ad4485add538ea2875b904-20200216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=XXQOsLoB7tFXez5/loNRWj7lM3AnXVWqLDHsdOB8kd4=; 
 b=dL4e6vZMmPM0EqKbGUkxVfrA1LXcQ1PZ4dSLxf+QyJNLZ6TgjXsvHF/DF0+tRjpSzdOzz29Q9ItQJdKDHhWjPz1dQbQxRsp9S/xKfBsNJ3HW06XEBCGRa2MoAgWhuBdJkav23p3dzf4iQMYSvL3UYXpkSZb2hf5tc+NTYFVv9Mo=;
X-UUID: 4a707f2d86ad4485add538ea2875b904-20200216
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 656236981; Sun, 16 Feb 2020 20:13:15 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 20:13:33 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 12:12:19 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 17 Feb 2020 12:12:59 +0800
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
Subject: [PATCH v2 0/4] mmc: mediatek: add mmc cqhci support
Date: Mon, 17 Feb 2020 12:13:06 +0800
Message-ID: <1581912790-19382-1-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_201320_628892_F2B97286 
X-CRM114-Status: UNSURE (   6.06  )
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
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series provides MediaTek cqhci implementations as below:
  - Add expose MMC_CAP2_CQE* to dt
  - Refine msdc timeout api to reduce redundant code
  - MediaTek command queue support
  - dt-bindings for mt6779

v1 -> v2:
  - Add more patch details in commit message
  - Separate msdc timeout api refine to individual patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
