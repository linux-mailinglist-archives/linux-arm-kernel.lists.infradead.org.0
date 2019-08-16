Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534628FB54
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 08:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VZjEUzk9ACfXBpmQUgr0DYoTNCJdLB4EEA6MYGQM8Wk=; b=BEHA/G+yFuvzy4Dr7Bj9AVV9E1
	W+nlMMQ/tw3NfR1gayALRoOnhWV3bif3/Cj7qpKdyvMKHsby6FRlif7X7pUd0nJhJjN4JCVy27T5d
	IXlP1VxaUnDnKe4o1uzmcSltMh5QSwZkDWbCMn/KhYls0uA7ayCX3q9Bj/Eux9CSQ9HblVIPiHK4E
	IT66xtRWGAmKVKYCB8INJ+0yWEHISsdfkfOF6gdXo1XJLOd3vyvyvidEaSu0u/4/OnKYe4NxLEa6I
	BLVV5pwjfejwFkw+jOKRTuurGvVa+F7oSd/CdJpbcoB2nDP6tkksujGLwLUXfg7lGNg7Xmryj6GQ0
	I3NrytiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyW1r-0005J9-D0; Fri, 16 Aug 2019 06:48:03 +0000
Received: from letterbox.kde.org ([2001:41c9:1:41e::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyW1b-0005I3-TO
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 06:47:49 +0000
Received: from archbox.localdomain (unknown [123.201.155.129])
 (Authenticated sender: bshah)
 by letterbox.kde.org (Postfix) with ESMTPSA id 27E8328ACED;
 Fri, 16 Aug 2019 07:47:34 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1565938058; bh=WFc0UZ1hs7LdUGdmu8qpw3+FtS1REZ6c7sIEozRjejM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m4NnzmEd45cZgPnuyqw+E6Xm8fBtuceixldmLQ160P9XhQ1dRsm+MeH3SNozLdrfQ
 7A5skpytPKRusQXFBhklSnwEI9cGrGbfnmRdKDU32i8PE9JgCuCx27DTqxtNowsrGi
 wjjVcvLkWG1bGlwO6X8d8so3dwld4unxrHv1sbxjFLw7IppuxLvE7yyRLgnhw3QKMq
 fJYdX3qv0ewyF3VDfQPIiH8Qf/8cbteZJUN953yNvPARjkKXuUGVRrI+u80WwwL7rX
 Y9FBHxMYFuH9wa3cjwGf6C5hfNLZq5tMGNRnIzwKqDnJyYmqwnUnyeqt4nFAZeY+5B
 Q+f3uE7CWblpw==
From: Bhushan Shah <bshah@kde.org>
To: Icenowy Zheng <icenowy@aosc.io>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] Enable the I2C nodes for Allwinner H6 CPU
Date: Fri, 16 Aug 2019 12:17:07 +0530
Message-Id: <20190816064710.18280-1-bshah@kde.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190811090503.32396-1-bshah@kde.org>
References: <20190811090503.32396-1-bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_234748_225136_986828FF 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:41c9:1:41e:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bhushan Shah <bshah@kde.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds device-tree nodes for i2c nodes in the H6 dtsi,
and enables it for the Pine H64.

Changes in v2:
  - Add the SoC specific compatible string instead of re-using a31 one.
  - Don't enable the i2c0 node in PineH64 by default

Bhushan Shah (3):
  dt-bindings: i2c: mv64xxx: Add compatible for the H6 i2c node.
  arm64: allwinner: h6: add I2C nodes
  arm64: allwinner: h6: add i2c0 node in PineH64

 .../bindings/i2c/marvell,mv64xxx-i2c.yaml     |  3 +
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |  9 +++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 56 ++++++++++++++++++-
 3 files changed, 67 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
