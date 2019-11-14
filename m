Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00619FC4FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:03:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3+d659mNyuJG+c82CEEfbkuKnlHAa8XJK/kob11eqFY=; b=r/ng/nzyXAthRZ
	zSgpz6mMFBIbhuR1PJ+4RcnVK/ucKCzKnfKhkOn1xYswA1g4b0uOUT6C44n3WYFWxZEd0oGNu3WQn
	17F8NX72icXTEZ8guI4FhNtXxW8bmKmNZcLMpjsbdf2HKawQSinROBvfww1uamzNqBIAMTTzUJtAt
	UVDRIjp3ufmTsPBqe/NP0Ep2tCjuwgTAMLASe2uApQsLIhDGlB1SjL+IxldYX45zrnr1zDP9WTWAv
	6rbThp24+5wVcIGUOysy6ZMyUTjDqc5J/BLChUEgwgGixDCL/G19RvaF2+HRVXB+VO5XFwA34D9T1
	iZnvv1eDnxdazRWbousQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCu8-0003tv-5q; Thu, 14 Nov 2019 11:03:12 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCtu-0003tN-U1
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:03:00 +0000
Received: by mail-lf1-x144.google.com with SMTP id q5so4681982lfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 03:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vDUvIPPyRNx4rgOl/6jUmNuj/P2ZCCnD4pYUmkyMZ1k=;
 b=R5x9uzjscvPLquHJeOkh0tku1Ct5Uszt9lT+ldmBnhaup737IDiCn6xBY4f+17YT/D
 NHJZI85eLG2Vg7nH1JxNhI60rbgz5XgR2JyOKzIL07H2QJ1EEir75BttnwCggKIfm20Q
 HuuUVZf0ypsiSLkGOb3rF25Cz6EtuX8aPMfOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vDUvIPPyRNx4rgOl/6jUmNuj/P2ZCCnD4pYUmkyMZ1k=;
 b=qz5KG7sQno2nEmakjN2yu08oegf1tjuFE9Zt/9/bRuRj9wJGB42srs5m04Bah9jSSj
 TJzR4QzAWLXzByrsVBrWrCIHOH/DJ8TG7tQ96HrOlYuCDCLQdm2QgZ+1xP5iHOEVwlg7
 Vsxs0rNeJWeyOieM/o+3NIocmml4AHDMRThKpkmf5EpvQixYM0goNxl1HDwxOB2eXrId
 OONneS3YuESOhEnJkBnWUAivpc1574KWXNd77cFMCdnawkwBJeD7KDkw7wcRA4ogsf+f
 lnUK1xyuJ9yBtH+tKXCoDzzuG457dsmVwSpNRCePw3ID8v5zK3qalU/n1uZhmx3BvRGV
 qvjQ==
X-Gm-Message-State: APjAAAXPEbcFJMKEqYrvjWzA0BgD+pg3Mpl62DMVbW9S+fHeRRk+I1AA
 7xsd+HDeLkBAGw4q5tsPc8EOAg==
X-Google-Smtp-Source: APXvYqx+dcqdEMfunFaJ5aoDcBHQugDvO/1iPG/YCzjkmgCH3CM0yjGR8tExVmakG+Y6L4JFcIYfTw==
X-Received: by 2002:ac2:57cb:: with SMTP id k11mr6295630lfo.87.1573729376716; 
 Thu, 14 Nov 2019 03:02:56 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id x5sm2498795lfg.71.2019.11.14.03.02.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 03:02:56 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] ARM: dts: ls1021a: define and use external interrupt
 lines
Date: Thu, 14 Nov 2019 12:02:51 +0100
Message-Id: <20191114110254.32171-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_030258_970570_84A4A8DB 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <maz@kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A device tree binding documentation as well as a driver implementing
support for the external interrupt lines on the ls1021a has been
merged into irqchip-next, so will very likely appear in v5.5. See

87cd38dfd9e6 dt/bindings: Add bindings for Layerscape external irqs
0dcd9f872769 irqchip: Add support for Layerscape external interrupt lines

present in next-20191114.

These patches simply add the extirq node to the ls1021a.dtsi and make
use of it on the LS1021A-TSN board. I hope these can be picked up so
they also land in v5.5, so we don't have to wait a full extra release
cycle.

v2: fix interrupt type in 2/2 (s/IRQ_TYPE_EDGE_FALLING/IRQ_TYPE_LEVEL_LOW/).

Rasmus Villemoes (1):
  ARM: dts: ls1021a: add node describing external interrupt lines

Vladimir Oltean (1):
  ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs

 arch/arm/boot/dts/ls1021a-tsn.dts |  4 ++++
 arch/arm/boot/dts/ls1021a.dtsi    | 19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
