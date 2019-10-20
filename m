Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE26FDE0FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 01:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g0Ap1W9nIsmCNKW2iqa6gaDCrTC8M4NAEae3y2IG0pE=; b=LYKe+V47SWfc4k
	KrzEvJJXHi2wY86H6yftWjvHC5lISMjaMg2IL9EHTwOyBqa08bAiWgVm342UFx9C0wLk1sk+SQiRR
	A8rwE+BZMyBD9kPa4KYzxITc+uEbtlH7yRYeUL+AqOV3EUlaB8PELCAu4+u5XLavzEcFzZA5fNBaV
	hjVAVpgrrMTF1LIXbM6D39y65L4d3myxo1F9oyqq+5CQlqZLLYipxApE1/2LsyV+PHBCy/uSZYjym
	9v7U0IJjKyVjvDQiDmB7SkeU+BgP6uXHRDnUsnwQSjvyx6VETNPutwQ0JiV1CQsm6hn/WR/gD//Gb
	mT++ZJSlGb8dhmjZbB/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMKGA-0001W8-W8; Sun, 20 Oct 2019 23:05:15 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMKFP-0008Ol-TU
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 23:04:29 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Oct 2019 16:04:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,321,1566889200"; d="scan'208";a="280806121"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 20 Oct 2019 16:04:21 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iMKFJ-00067f-Ew; Mon, 21 Oct 2019 07:04:21 +0800
Date: Mon, 21 Oct 2019 07:04:02 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [nomadik:ux500-skomer 13/16]
 drivers/gpu/drm/panel/panel-novatek-nt35510.c:162:5: sparse: sparse: symbol
 'nt35510_send_seq' was not declared. Should it be static?
Message-ID: <201910210747.wcNwhnp5%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_160427_973967_4F3B5858 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git ux500-skomer
head:   f1a6bcc62ea4b1aae1400a69d63ad371a07e2af6
commit: 50e3376936b186b037de9be118b0acd9551c3e86 [13/16] drm/panel: Add driver for Novatek NT35510-based panels
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-dirty
        git checkout 50e3376936b186b037de9be118b0acd9551c3e86
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/gpu/drm/panel/panel-novatek-nt35510.c:162:5: sparse: sparse: symbol 'nt35510_send_seq' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
