Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C368CCE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 09:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGg8UxrLkkWQHPNbkPYGNHF4W/BfZlPglsmNeri/45c=; b=mP8Rew4l7ukiku
	WziIc5EM4KUZHvy7R7ovVi/oKPMDYCaZz3VCkCaCGmecTTQE6ClcSMmX+Fc9WpfZ4YXSYVVoXU36l
	HZvMXoqHMA69FrMi4qr350wqvcRwPVym7WQ3T09YhmoV6Vki7n4nr2xFgT1/o2+NeTcfU6H44HvwC
	7gfxNUWkYn75XK5LzI/x7EBLcbryNYZCqQTZYe7IPBnextH2zgiymsmRzRxrqttrSFvJOYVuRl03i
	ys5SRmJi82d0Z8EFeK6UaiSs6Ux1UuZX/iZGKdKUoVQvVtlW/ysxGuBbN6v43y+Y3US6F1pBWxn6f
	rholG/8jRydX1pYUXjaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxnm9-0007c5-FH; Wed, 14 Aug 2019 07:32:53 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxnlu-0007bC-Tb
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 07:32:40 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 9956480C8;
 Wed, 14 Aug 2019 07:33:05 +0000 (UTC)
Date: Wed, 14 Aug 2019 00:32:34 -0700
From: Tony Lindgren <tony@atomide.com>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: Regression in Linux next with show wakeup sources stats in sysfs
Message-ID: <20190814073234.GZ52127@atomide.com>
References: <20190814063803.GY52127@atomide.com>
 <5d53b378.1c69fb81.31b2e.5077@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d53b378.1c69fb81.31b2e.5077@mx.google.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_003238_997461_410C036C 
X-CRM114-Status: GOOD (  12.10  )
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
Cc: Tri Vo <trong@android.com>, linux-pm@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Kalesh Singh <kaleshsingh@google.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Stephen Boyd <swboyd@chromium.org> [190814 07:09]:
> Quoting Tony Lindgren (2019-08-13 23:38:03)
> > Hi all,
> > 
> > Looks like commit 986845e747af ("PM / wakeup: Show wakeup sources stats
> > in sysfs") has caused a regression in Linux next where I can now get
> > some errors like this during the boot:
> > 
> > kobject_add_internal failed for wakeup10 (error: -2 parent: usb)
> > 
> > Any ideas why this might be happening? Maybe some deferred probe
> > related issue?
> > 
> 
> Yeah! Take a look at this thread[1] and please test out patches I'm
> throwing out there like a total cowboy(d).
> 
> [1] https://lkml.kernel.org/r/1565731976.8572.16.camel@lca.pw

Oh OK thanks, looks like I'm a bit behind then. My test case turned
out to be caused by device_init_wakeup() called before device_add() for
power_supply in case that helps. In that case create_dir() will fail
for kobject_add_internal(). Doing something like below fixes the
issue, but seems like we probably have other similar issues as well.
Adding Sebastian to Cc in case this might be a real problem despite
the other issues.

Regards,

Tony

8< -----------------------
diff --git a/drivers/power/supply/power_supply_core.c b/drivers/power/supply/power_supply_core.c
--- a/drivers/power/supply/power_supply_core.c
+++ b/drivers/power/supply/power_supply_core.c
@@ -1051,14 +1051,14 @@ __power_supply_register(struct device *parent,
 	}
 
 	spin_lock_init(&psy->changed_lock);
-	rc = device_init_wakeup(dev, ws);
-	if (rc)
-		goto wakeup_init_failed;
-
 	rc = device_add(dev);
 	if (rc)
 		goto device_add_failed;
 
+	rc = device_init_wakeup(dev, ws);
+	if (rc)
+		goto wakeup_init_failed;
+
 	rc = psy_register_thermal(psy);
 	if (rc)
 		goto register_thermal_failed;
@@ -1100,9 +1100,9 @@ __power_supply_register(struct device *parent,
 register_cooler_failed:
 	psy_unregister_thermal(psy);
 register_thermal_failed:
+wakeup_init_failed:
 	device_del(dev);
 device_add_failed:
-wakeup_init_failed:
 check_supplies_failed:
 dev_set_name_failed:
 	put_device(dev);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
