Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF59EB4C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:36:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OGSMjgkKu3SM0ZXmXypk1UinQk6H7qIYh5tp+GCj6WA=; b=KkaR40HGjx8lOP
	5vwXwRc1xFYHBZ8uzsrbFoaq3ubqF6NpowwBaiJ/I4vtHWV1gqRBv64s0HQUsXcketlwGDr6Y1bLr
	iroibfO9Wi3Vg4e2HBIuhSpQHFd5kFw3LJNFRJxGc5pn3GaX/H9Ci8PAyCk666tkWKf62xN9mn2yA
	Z4w23zE+AH2pY1+ScYwKxBKy/aqoBt37Xl405Lod1NLjdxm4eAZv39kmjzUGD7GPSRHefYMKVNGo8
	vOO3GAxao76OZuXLYVnnM1xFVbBZfJMafywqHcKyDRSkLjdQ/IRM0/knXk7lL9jpUPQQjXBwrV+Bd
	Qvpq1mXjvpiaSp+yIWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDQZ-0002CM-Ga; Thu, 31 Oct 2019 16:36:03 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDPl-0001j7-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:35:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 78A2251140;
 Thu, 31 Oct 2019 17:35:12 +0100 (CET)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id VxnXLSaOJjTD; Thu, 31 Oct 2019 17:35:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 6431E51149;
 Thu, 31 Oct 2019 17:35:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FML9lIJCFW6P; Thu, 31 Oct 2019 17:34:58 +0100 (CET)
Received: from belphegor.redhat.com (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 700C851139;
 Thu, 31 Oct 2019 17:34:58 +0100 (CET)
From: Lubomir Rintel <lkundrak@v3.sk>
To: soc@kernel.org
Subject: [PATCH 1/4] ARM: dts: mmp3: A handful of fixes
Date: Thu, 31 Oct 2019 17:34:51 +0100
Message-Id: <20191031163455.1711872-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_093514_038237_149452E6 
X-CRM114-Status: UNSURE (   4.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Olof Johansson <olof@lixom.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

chained to this message are fixes to some issues in the MMP3 SoC device trees, 
mostly identified by warnings from the DT compiler.

Applicable on top of soc tree's arm/dt branch, in no particular order.

Cheers
Lubo



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
