Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AEC192654
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:57:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwtwiU3XYmRNB7/LScqfJoWQQnP/LykG3ZNRRJ1n2vo=; b=BZzioh5/ELMJ8g
	OE+ihWTRSVTLksQqKwQXF3zofr6OXf6F+FwVaIcVZrN2CXIXKUO02SJG5NjhdJSkLnMwDlCf2YHTS
	z7XqcyKirGjCSAEf3gjUC4lb7B4AUznAeAf6OZnKfP/ArhEAFJyci1wnXU2U7OmAtulROzV6Bj8qk
	D2Gapfowf9NY8GU3gIhacCduYMWCWG4X0qUn5qVcXLxB0WV3HbilU2r2LVvF86MrsS+tvUVvFpIAa
	9Wp0MD0AK8cw1mA1rzsFYHNBoJz66MNnHFdDZAE4VgRdWzKlSr+6abci/XEuPWQSIoXxT7Beblr9G
	0alP7dJuDxJshGUZIM0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3iP-0006Yj-Lc; Wed, 25 Mar 2020 10:56:53 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3iG-0006XF-Ni
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 10:56:46 +0000
IronPort-SDR: sTHCVbld2obo40KlMDeQW7xI4D4SQBh2mx6aRX6vBYycubqtOYtLokZ523K/n2erHnSdcSKynh
 5BQKmpY1W1Cg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 03:56:43 -0700
IronPort-SDR: yO4hZWNNwCFbw9Pd0X+9N56gjZ1K5ojZuheAj7d0VDb3c1DFgeV5Guxi1BoMtpkgyojGs2U+Ix
 VeBIegGC6sBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,304,1580803200"; d="scan'208";a="235903898"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 25 Mar 2020 03:56:42 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jH3iE-0004RH-4K; Wed, 25 Mar 2020 18:56:42 +0800
Date: Wed, 25 Mar 2020 18:55:57 +0800
From: kbuild test robot <lkp@intel.com>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: [PATCH] net: fix boolreturn.cocci warnings
Message-ID: <20200325105557.GA4015@6d5c83dcba44>
References: <202003251849.wLfJ5mOC%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003251849.wLfJ5mOC%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_035644_823948_FD44B5C6 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

From: kbuild test robot <lkp@intel.com>

drivers/net/phy/qsfp.c:872:8-9: WARNING: return of 0/1 in function 'sfp_los_event_active' with return type bool
drivers/net/phy/qsfp.c:877:8-9: WARNING: return of 0/1 in function 'sfp_los_event_inactive' with return type bool

 Return statements in functions returning bool should use
 true/false instead of 1/0.
Generated by: scripts/coccinelle/misc/boolreturn.cocci

Fixes: e409cdeab751 ("net: add qsfp support                              [*experimental*]")
Signed-off-by: kbuild test robot <lkp@intel.com>
---

tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git cex7
head:   6edfcc6e759c8dd593c9079525e610919d680ae5
commit: e409cdeab75156478ac793528742274f6ad4be96 [142/143] net: add qsfp support                              [*experimental*]

 qsfp.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- a/drivers/net/phy/qsfp.c
+++ b/drivers/net/phy/qsfp.c
@@ -869,12 +869,12 @@ static void sfp_sm_link_check_los(struct
 
 static bool sfp_los_event_active(struct qsfp *sfp, unsigned int event)
 {
-	return 0;
+	return false;
 }
 
 static bool sfp_los_event_inactive(struct qsfp *sfp, unsigned int event)
 {
-	return 0;
+	return false;
 }
 
 static int qsfp_set_tx_disable(struct qsfp *qsfp, unsigned int val)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
