Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95B0F9732
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDwrXzChKzOB6XELYhv3YArnR1mxltC9QlCI/ZC/g3w=; b=j4R6DfBKhbULFr
	PS0NSQcfDWBHexSVbdPjtErRteyeL8vfiopScKedRB/4AHDukoyKivBc4giYWKSGC0XPtms82KX1S
	klo20yrxjCJ9UDDhytv3fYNBpfdcMwCL6pwxmGER6ObS9rOon7B+19gGQGtncufi/LvkQO0Lw0XLJ
	81HMyqfLcEjAha2c9wtk7+t8aX2xaRi9DDcN3Uh/hww4hbZfh26nYe+wrGargvzl0CRB0BkTFpxIB
	S50LAS0YEv2VmQCXwhp2lObU3/O3ZIPXyEY8/wgs1qJ53KrhCjzHNJ6pzfp8Srni5AJ1g6PWHnfbG
	zoOcDPmy8MhgOmanCjwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUa30-0008LV-Vv; Tue, 12 Nov 2019 17:33:46 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUa2Q-0007vt-Ep
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:33:12 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7E00D81A3;
 Tue, 12 Nov 2019 17:33:46 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 3/3] update maintainers file paths
Date: Tue, 12 Nov 2019 09:33:03 -0800
Message-Id: <pull-1573579927-542764@atomide.com-3>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <pull-1573579927-542764@atomide.com>
References: <pull-1573579927-542764@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_093310_540234_72A069D5 
X-CRM114-Status: UNSURE (   5.78  )
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

The following changes since commit 93a212ebfb083cba977d4c3b9d214068a97689cc:

  MAINTAINERS: Add logicpd-som-lv and logicpd-torpedo to OMAP TREE (2019-10-22 09:02:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/maintainers-signed

for you to fetch changes up to 93a212ebfb083cba977d4c3b9d214068a97689cc:

  MAINTAINERS: Add logicpd-som-lv and logicpd-torpedo to OMAP TREE (2019-10-22 09:02:41 -0700)

----------------------------------------------------------------
Update MAINTAINERS file for LogicPD dts files

Just one patch to update MAINTAINERS file for LogicPD boards.

----------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
