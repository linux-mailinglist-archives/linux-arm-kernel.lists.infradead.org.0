Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F1713F4DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6yjzhWi/J9PF1jB00bgJPYsu/yyC+CNW+ii/2RGvS00=; b=Oc5A3f1G+bQC+u
	hETWKoi3SfnTUF+BlPKfhA0uR8F24JjCUkwCQrO2MH6BiBFyrN5eLvheVe0Zmmrfrc0216gxgc5nc
	vYkD6WU8w0y1eHItOGBqSWt2c1mORx92sTbrysx5b9uJ5prudMVwoUj9hZEwfCFEv4AikrvByWkfb
	I9070Co5kFDqwbn+nTNstAjNdqKpa9pF4aT6pC47Dn+XkC6q68OTqw0UQxcyXFAAVPtisXS+qeLjC
	ApiXrpkFyh8fYCVcBeBzgh3AK1J1/YPyTNnkhzk9wZBae4g+rD+LMF76WtYhnRCgJoTgUlcGUKPcI
	zJHiXc+WJcy18aj4Qm8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAGj-0001ha-K8; Thu, 16 Jan 2020 18:53:25 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isACE-0004kG-Us
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:48:51 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 9BB3080FC;
 Thu, 16 Jan 2020 18:49:26 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 1/4] fix for omap sdma changes for v5.6
Date: Thu, 16 Jan 2020 10:48:10 -0800
Message-Id: <pull-1579200367-372444@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_104847_077805_77BD8F5E 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 9fc85a7124b5ff9ec24ad391f9994f89ae611313:

  Merge branch 'omap-for-v5.6/sdma' into omap-for-v5.6/ti-sysc-drop-pdata (2019-12-30 10:17:51 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/sdma-fix-signed

for you to fetch changes up to a25e29bd0fe9be33491b3816d2d7b1137d5eeaec:

  Merge branch 'omap-for-v5.6/sdma' into omap-for-v5.6/ti-sysc-drop-pdata (2020-01-13 09:42:55 -0800)

----------------------------------------------------------------
Fix omap sdma handling for missing auxdata for v5.6 merge window

Turns out I was overly optimistic about making platform data optional, and
we still need it to pass various quirk flags. If the platform data is missing
for whatever reason, we will currently try to access non-existing data later
on.

----------------------------------------------------------------
Colin Ian King (1):
      dmaengine: ti: omap-dma: don't allow a null od->plat pointer to be dereferenced

Tony Lindgren (1):
      Merge branch 'omap-for-v5.6/sdma' into omap-for-v5.6/ti-sysc-drop-pdata

 drivers/dma/ti/omap-dma.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
