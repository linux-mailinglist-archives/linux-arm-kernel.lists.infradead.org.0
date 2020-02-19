Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073B0163DC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q2voMwaPFvBgqUvZCKLRa7hLzqhEWmP1Etz8lkN7mnQ=; b=oyQKepDS/Ljcnv
	MxzmxMB+6PD79HCyYG/0vm19rDndIqFDle1MzqA5WlJbAkC2ywA4QGzH6ue252Y59c4u550gVTBCj
	HCCSmdyXKLmjCyTJsO3lLIiBhNz7OX5WZV6UVsKz/axbdilVpqp+fi9VVDkAAS6YNgxBCoySwIqEN
	hUqfPw6Ft6Y/eSJ1Yp+W98XXsiTp36fKjXySZkkitDUyjXoU7eQIBmFUzHWIYgjSZLJyo2ce0qa5Y
	I3/cIgsRBFO6XwQwHf/YT3FMRWsLK0xfuK52xVNx2uMcXHrLkafWuNUUNCATroYPQvlZtOIanSaHI
	gng5qf7+uhtPn3+2wnWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Jtn-0001Gz-FY; Wed, 19 Feb 2020 07:35:59 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jrw-0007Ly-Op
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:07 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 8FF63E0071;
 Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id HN17adJcV5R0; Wed, 19 Feb 2020 07:34:13 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 1EE14E0046;
 Wed, 19 Feb 2020 07:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2QCWGCc6_F_A; Wed, 19 Feb 2020 07:34:12 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 7C773DFCA2;
 Wed, 19 Feb 2020 07:34:12 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 00/10] MMP2 CLK Update
Date: Wed, 19 Feb 2020 08:33:43 +0100
Message-Id: <20200219073353.184336-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233405_378058_F179C318 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

please consider applying this patch series. Its goal is to ultimately
provide accurate clock sources from PLLs configured by firmware on MMP2 and
MMP3. Currently they are hardcoded to more or less wrong values, which
causes bad timings when they are use (e.g. to generate display clock).

It starts off with a handful of cleanups:

  [PATCH 01/10] clk: mmp2: Remove a unused prototype
  [PATCH 02/10] clk: mmp2: Constify some strings
  [PATCH 03/10] dt-bindings: clock: Convert marvell,mmp2-clock to

The next patch adds the logic for calculating the rate of clock signals
coming from the PLLs dynamically, while not actually switching the
driver over to using it.

  [PATCH 04/10] clk: mmp2: Add support for PLL clock sources

Then MMP2 is switched over:

  [PATCH 05/10] clk: mmp2: Stop pretending PLL outputs are constant

Switching MMP3 requires some more work, because until now, the driver
has been the same for both versions of the SoC:

  [PATCH 06/10] dt-bindings: clock: Add MMP3 compatible string
  [PATCH 07/10] clk: mmp2: Check for MMP3
  [PATCH 08/10] dt-bindings: marvell,mmp2: Add clock ids for MMP3 PLLs
  [PATCH 09/10] clk: mmp2: Add PLLs that are available on MMP3
  [PATCH 10/10] ARM: dts: mmp3: Use the MMP3 compatible string for

The hardware vendor doesn't supply documentation, so this is best-effort
work based on the code dump from Marvell.

Tested on MMP2 and MMP3 based hardware I have; details in relevant
commit messages.

Thank you,
Lubo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
