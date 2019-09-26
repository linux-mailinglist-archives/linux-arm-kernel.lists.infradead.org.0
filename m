Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED66BFBF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 01:29:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=azM3hPT6xDpZhc1Au9EJaB+SkudpaMUokALfQCb5l9Q=; b=eBkdimjraCqlcf
	Cevrn3Blacj5WRsUKjfOZa9A8Q9xbZyW7h1eh4ONksB9vesfqJAlqfbW2pp+CtWdj8cx56X4+akJJ
	sAY27+CmFUdAa5kkXT3+B/XMWIsFC8R+g8N/jeb0phMFmMdeE4FVdlzW9PgInxyXWEUrNr7TCohpd
	+AYp6t1LKCk2t2aOXoe71140a39OYa1PqSmgVfrj2cppOapd7+hB3N1MTrDKEJnWhoIoLQ6XNIHqF
	ym/5KV7McCRSjBN+VsvUcikhLecBhL3SJI1jJpLM8D9rWNLJv+RlEtRolv6MtPYeb5/fBmwJWyZ1m
	mKAxzK3WHyKZVflB5oDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDdCA-0000yS-37; Thu, 26 Sep 2019 23:29:10 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDdBf-0000if-12
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 23:28:40 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id A07FB886BF;
 Fri, 27 Sep 2019 11:28:26 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1569540506;
 bh=6RbE8qI20kMEdMD7hJsrS7/ArZwF7p3FRXfaz2j2zVo=;
 h=From:To:Cc:Subject:Date;
 b=AOasu4YE/rNgmlEt3wbns6XCP6oVTh0K6isgfuhvYjMlI+JPZzJPV0IrCnkbSQL6/
 YmO4JqAy9/taOwnxf1lBz1p8OSiMIPw2L8dlmbm9sHA6Xs1mqBBHDZTsOXU/PJHZHc
 Y/qRJ4aehuhymI5FtPp+LsRmVjygQS1hOu7piaVucp99TDvH28u2maRlzH/sDzTlND
 GW5njq0M2kljLxlfGyVjFryKJ53NrVQrx7fevF1+cooONCK/PGu3snPG+vbKh+UEst
 +0JqDG7Fbo3WKXWWN4chJ9rXxviLH+F4H3Dkg+V6kxop0GqD0zjARCvu7V1qplJM/3
 JZZ+fYXkSK8qw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d8d49980000>; Fri, 27 Sep 2019 11:28:26 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 13C2C13EED0;
 Fri, 27 Sep 2019 11:28:28 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 592FD28003E; Fri, 27 Sep 2019 11:28:24 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: jason@lakedaemon.net, andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 0/3] ARM: dts: SDRAM and L2 cache EDAC for Armada SoCs
Date: Fri, 27 Sep 2019 11:28:17 +1200
Message-Id: <20190926232820.27676-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_162839_242833_BF3003E6 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series was waiting for the armada_xp edac driver to be accepted.
Now that it has the relevant nodes can be added to the Armada SoCs. So
that boards can use the EDAC driver if they have the hardware support.

The db-xc3-24g4xg.dts board doesn't have an ECC chip for it's DDR but it
can use the L2 cache parity and ecc support.

Chris Packham (3):
  ARM: dts: armada-xp: enable L2 cache parity and ecc on db-xc3-24g4xg
  ARM: dts: mvebu: add sdram controller node to Armada-38x
  ARM: dts: armada-xp: add label to sdram-controller node

 arch/arm/boot/dts/armada-38x.dtsi             | 5 +++++
 arch/arm/boot/dts/armada-xp-98dx3236.dtsi     | 2 +-
 arch/arm/boot/dts/armada-xp-db-xc3-24g4xg.dts | 5 +++++
 arch/arm/boot/dts/armada-xp.dtsi              | 2 +-
 4 files changed, 12 insertions(+), 2 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
