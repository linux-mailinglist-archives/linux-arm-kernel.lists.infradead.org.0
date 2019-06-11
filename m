Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AB73C50D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xw30b/f6DSznWzkIM4aT5MGBIQdTv6qeu8RRcHOOyME=; b=pllgNQX5hHB8Bv
	FMnpSPqEQ55XKgeLOgRfyjrq5beV+ZllDY2qIm3VWe0cPjs7zcZPpxsy6GVCtipUjLLMqBtrr+t66
	7r5ODsomhGTF/Psr2tFDHHTt0MTlBoJFpIGmgaJBw9agJ1BGfaqxVd31PXKARB9XmKCMDb3Fu1Mf2
	yBE8RgR+GdlatqNEyvnWJCSwoyPcfvRkjt+8tTECRkxgsgyZCipbQeaHHuTqC47NHrnvcU5HCpJ/m
	jYAFeNGgsL5X38nAlO+bTdrwNN2hsDo7fgFd0Y7yIAQUGPzwQuuwvxOWVDRXczXQB7hDvyo0eH5pF
	VG5hqubHPKOt4+ljo2ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habEC-0000r0-78; Tue, 11 Jun 2019 07:29:56 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habDv-0000qI-GU
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 07:29:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id C78EB104F81;
 Tue, 11 Jun 2019 09:29:35 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id j2yZ0hDsqdX5; Tue, 11 Jun 2019 09:29:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id D9FF5104F84;
 Tue, 11 Jun 2019 09:29:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id eRRZ_nbO6VDH; Tue, 11 Jun 2019 09:29:24 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 87E99104F73;
 Tue, 11 Jun 2019 09:29:23 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 0/6] ARM: A couple of SoC license header fixes
Date: Tue, 11 Jun 2019 09:29:15 +0200
Message-Id: <20190611072921.2979446-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_002939_701680_4CDC8D26 
X-CRM114-Status: UNSURE (   4.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 Daniel Mack <daniel@zonque.org>, Wei Xu <xuwei5@hisilicon.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

There's one particular typo in the license header ("publishhed") that seems
to have spread through the tree by copy-pasting. This patch set fixes the
occurences within mach-*/ and dts/ by replacing the header with a SPDX
identifier.

Lubo



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
