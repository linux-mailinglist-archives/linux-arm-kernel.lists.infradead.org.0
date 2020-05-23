Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988BE1DF883
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=af4x658rPZjb65MZRcwMZO3k2mQgTyWwsvKo5JAsOLc=; b=X2KsmSoq/lWH1cnkOGsacbnIr8
	gcurNnPiwdyEuPWLnAUfpOV85jtf2nXaCJZcrxrOjRR3eEbA0ovHRM3kNqAx+4KnWKHgx7xIo2wyJ
	1o+R3o/GFj28qvB615ApFOLKt45+LhTsCMZj1iH/kUr1aloaVF9DO9GbNscBfcmLX6Hg1CennQhyO
	QnbWAF4Bo8rs+VyisQx794Tvkz1pyThhFkKB/ixE6tuKuGSazGmJIQkeN4sBZSr7epwv2LNSyruW4
	0dkdYMYdzgrhfzZWuexvUEvIZNk3CfZcsK/o/hVV11rOkV4rm46bZUyqbcxkLZdBJrCpB048sZ7De
	8ePy4dRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXgH-000050-8C; Sat, 23 May 2020 17:11:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXe8-0004XY-Mm
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:09:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCA93139F;
 Sat, 23 May 2020 10:09:14 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BB0CC3F305;
 Sat, 23 May 2020 10:09:13 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/8] ARM: OMAP2: Switch to use DEVICE_ATTR_RO()
Date: Sat, 23 May 2020 18:08:58 +0100
Message-Id: <20200523170859.50003-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523170859.50003-1-sudeep.holla@arm.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_100916_828980_EA910725 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move device attributes to DEVICE_ATTR_RO() as that would make things
a lot more "obvious" what is happening over the existing __ATTR usage.

Cc: Tony Lindgren <tony@atomide.com>
Cc: linux-omap@vger.kernel.org
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm/mach-omap2/id.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-omap2/id.c b/arch/arm/mach-omap2/id.c
index 188ea5258c99..37ac2d103548 100644
--- a/arch/arm/mach-omap2/id.c
+++ b/arch/arm/mach-omap2/id.c
@@ -775,15 +775,13 @@ static const char * __init omap_get_family(void)
 		return kasprintf(GFP_KERNEL, "Unknown");
 }
 
-static ssize_t omap_get_type(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
+static ssize_t
+type_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%s\n", omap_types[omap_type()]);
 }
 
-static struct device_attribute omap_soc_attr =
-	__ATTR(type,  S_IRUGO, omap_get_type,  NULL);
+static DEVICE_ATTR_RO(type);
 
 void __init omap_soc_device_init(void)
 {
@@ -806,6 +804,6 @@ void __init omap_soc_device_init(void)
 	}
 
 	parent = soc_device_to_device(soc_dev);
-	device_create_file(parent, &omap_soc_attr);
+	device_create_file(parent, &dev_attr_type);
 }
 #endif /* CONFIG_SOC_BUS */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
