Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0114A099D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPvrjTiM/AJJvWKDeye4uXPGLlhB/QCuZ29m2TRaGmw=; b=FHmx95oeRkSv0g
	5yIlJbsIbW7K09F1v0kLT2SwsZQko42xeCxk3eYXewj3FntjraHVMZV6zUoxEdgLmy74dI2CatSfd
	o5X1+/Au/QotN9XQ8iHaccygwgCFzf1U+Efv3r31jUiI9yE++tLpEO44MrGefWdbDRbEMfq6sNed1
	3L3knbauywdbjTvuUs/LpCWNTXRye718OMHAFbEHBQV79CYbXiMCrXNehUyhkP3sExRPA3UUQrLoB
	opdTKEh+iNRa4Uv2F2qzmiQLu2umFwjoegR727EwXyZKMRwhZjtGifjMfzhlBJ9R5roGEyIS4j/ai
	+POZrHykDTG8KqK+vBLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32n2-0006Fx-HS; Wed, 28 Aug 2019 18:35:28 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i32mY-0004sq-1f
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:34:59 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 3CD6681DD;
 Wed, 28 Aug 2019 18:35:27 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 2/4] more ti-sysc driver changes for v5.4
Date: Wed, 28 Aug 2019 11:34:50 -0700
Message-Id: <pull-1567016893-318461@atomide.com-2>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <pull-1567016893-318461@atomide.com>
References: <pull-1567016893-318461@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113458_122062_88F9C5D0 
X-CRM114-Status: UNSURE (   8.07  )
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

The following changes since commit c8a738f4cfaeccce40b171aca6da5fc45433ce60:

  bus: ti-sysc: remove set but not used variable 'quirks' (2019-08-13 04:40:11 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.4/ti-sysc-part2-signed

for you to fetch changes up to 7edd00f71f4b91ca31dbfa08926495fe5e77aab4:

  bus: ti-sysc: Detect d2d when debug is enabled (2019-08-26 08:33:25 -0700)

----------------------------------------------------------------
more ti-sysc driver changes for omap variants for v5.4

Few changes mostly to deal with sgx SoC glue quirk for omap36xx that
is needed for the related sgx SoC glue dts branch. The other changes
are to simplify sysc_check_one_child() sysc_check_children() to be void
functions, and detect d2d module when debugging is enabled.

----------------------------------------------------------------
Nishka Dasgupta (1):
      bus: ti-sysc: Change return types of functions

Tony Lindgren (2):
      bus: ti-sysc: Add module enable quirk for SGX on omap36xx
      bus: ti-sysc: Detect d2d when debug is enabled

 drivers/bus/ti-sysc.c                 | 45 ++++++++++++++++++++++-------------
 include/linux/platform_data/ti-sysc.h |  1 +
 2 files changed, 30 insertions(+), 16 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
