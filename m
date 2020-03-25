Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7B5192656
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:57:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3F5t9KD394CysJYiJ6k/pY+K4kw80BJzNT0yiqjxPCQ=; b=J9ubrD4r2qUhBQ
	U0ff1gYG782jiNDRf6BrR8sKsh6SQgXrX0/eQZ76pRsEG/SHNud7C4gw9qLbpSvlLQyx0RnYu7obo
	Z2o5qDuZQNmpZl/rjbRXKJaBbDPhZG0eB7KFLCPJkArJV1HYKDvS8sHXxByAeEvNS5SR9p3FaQRuj
	xVygIWRAIYwNt7cVDpGYwAXJHThOZtQC161o3ltFMpDnm2PbzPbORkfNHWZdv6Thbsk4CfZ7fYW2W
	x7cx8LlRN1BYUPUOH4tDEyxzTToJJ3Lok97PA6dJhcpsGc8LK5g7nS5zD1zln9jJryM0/Z7KH6hQu
	fIWR58tnk5IkM62GhV9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3if-0006g7-SW; Wed, 25 Mar 2020 10:57:09 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3iG-0006XE-N7
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 10:56:46 +0000
IronPort-SDR: 8VqWhY+8GABVZJ6UsBYS3g2XRYLC9ZnWGmZdaZGHm3iM4YD+TwaorWX0I8BhmRNdFdMnt/cK2n
 TMs2lW8NLEjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 03:56:43 -0700
IronPort-SDR: RZDOpyOZLZMqRcVDjRSZjdLksPa00WX3kFjVngy7V3TYEcUnbSSWcmfX4XzMCxfN6JQ6MgdOVY
 VnJgAR6QdAHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,304,1580803200"; d="scan'208";a="240584107"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 25 Mar 2020 03:56:42 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jH3iE-0004Re-6q; Wed, 25 Mar 2020 18:56:42 +0800
Date: Wed, 25 Mar 2020 18:55:55 +0800
From: kbuild test robot <lkp@intel.com>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: [arm:cex7 142/143] drivers/net/phy/qsfp.c:872:8-9: WARNING: return
 of 0/1 in function 'sfp_los_event_active' with return type bool
Message-ID: <202003251849.wLfJ5mOC%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_035644_805336_98DEA6CE 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git cex7
head:   6edfcc6e759c8dd593c9079525e610919d680ae5
commit: e409cdeab75156478ac793528742274f6ad4be96 [142/143] net: add qsfp support                              [*experimental*]

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


coccinelle warnings: (new ones prefixed by >>)

>> drivers/net/phy/qsfp.c:872:8-9: WARNING: return of 0/1 in function 'sfp_los_event_active' with return type bool
>> drivers/net/phy/qsfp.c:877:8-9: WARNING: return of 0/1 in function 'sfp_los_event_inactive' with return type bool
--
>> drivers/net/phy/qsfp.c:1750:8-33: ERROR: Threaded IRQ with no primary handler requested without IRQF_ONESHOT

Please review and possibly fold the followup patch.

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
