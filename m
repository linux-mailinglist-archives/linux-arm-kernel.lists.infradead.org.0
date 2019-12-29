Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF8012C231
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 11:24:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3R1Yk7+v/Cqowx1/ud6rA9H/uzvfNY1qYicfOFFOgJU=; b=Ffci3OZX3b/Ity
	Ixq143WB0Y0mfeAP7zQhUGLmVhETB/4hLL8lFhZxRCUrKHRm7MWNnsE4sgV2QVuWtqaPXUVc27310
	U2Bihxs4NwKXxA0qZkm37QGqjQXMKW+jYKb8tJu0X/luq3JJQi4Osy3Id1UrCmy5M+ZvvhkYOdaL1
	lVjOE6cPm0xzUB7Guy1nltKsBVbH8+qjVO5fG9mtlM0KlkJUJsEPIC8cBhdYFd8TRY6NNqu064n9C
	hCr7bGIc12TzDNgYw+WTALloRfzzS/SjNGJ6a1h0klmDGxEvUBkkY6LrzdkpWvSG5Ca9TD21pi3Jx
	gdGxPSckAJKucsfSqqZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilVkM-00080w-7X; Sun, 29 Dec 2019 10:24:30 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilVkE-00080M-9b
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 10:24:23 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Dec 2019 02:24:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,371,1571727600"; d="scan'208";a="215563836"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 29 Dec 2019 02:24:20 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ilVkB-0007K7-Ty; Sun, 29 Dec 2019 18:24:19 +0800
Date: Sun, 29 Dec 2019 18:23:00 +0800
From: kbuild test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [RFC PATCH nomadik] iio: light: gp2ap002_illuminance_table[] can be
 static
Message-ID: <20191229102237.4bexrcuc5otlbafe@f53c9c00458a>
References: <201912291830.oupM1vWE%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201912291830.oupM1vWE%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_022422_344653_553F0CF8 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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


Fixes: f095962c5090 ("iio: light: Add a driver for Sharp GP2AP002x00F")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 gp2ap002.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/light/gp2ap002.c b/drivers/iio/light/gp2ap002.c
index 98553041d63cd..6964719d21222 100644
--- a/drivers/iio/light/gp2ap002.c
+++ b/drivers/iio/light/gp2ap002.c
@@ -193,7 +193,7 @@ struct gp2ap002_illuminance {
  * This mapping is based on the following formula.
  * illuminance = 10 ^ (current / 10)
  */
-const struct gp2ap002_illuminance gp2ap002_illuminance_table[] = {
+static const struct gp2ap002_illuminance gp2ap002_illuminance_table[] = {
 	{ .curr		= 5, .lux	= 3 },
 	{ .curr		= 6, .lux	= 4 },
 	{ .curr		= 7, .lux	= 5 },

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
