Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27ACA1DF870
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AGm5eZJ02yaH/e8GOspuKPJJlVaPJpQzMNZO2ExDnfY=; b=KO3
	7V6WAcuNbB17vuqWSotKqERT74V4Pjf6hoByDUlb6rWwVC/MpPnENvfW/LINzndo9sH6iyafpOfwR
	QE7aHXz3i2G6+T0tBaHuWSTMNAzJUikbzCYcp4iljQpjtVCWseJuLzNHcW7CIvfaMDyI3IExBWp8D
	WV921JW5hY9fUOXEoqIFHFakhp6J5hN1vtfxtSMTvogIiNZ64wLJlLLD3U3BRs5gm1QilQidbCHZ+
	vMn5nkjv2i4e7Mkj2Y83fFehEBAo909wDe3WHfCJ9U7QpDP0PyoCYpf6+uoZ+EHEA10pwOaL54dg3
	lXYCVoPzIriBMSDq7hhyU6nUkb/xFgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXeH-0004Ww-La; Sat, 23 May 2020 17:09:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXe2-0004FE-EA
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:09:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E56901FB;
 Sat, 23 May 2020 10:09:06 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1B8823F305;
 Sat, 23 May 2020 10:09:06 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/8] soc: Use custom soc attribute group and DEVICE_ATTR_RO
Date: Sat, 23 May 2020 18:08:51 +0100
Message-Id: <20200523170859.50003-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_100914_160064_2F5B735A 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

While trying to add SMCCC based SOC_ID support, I found the custom soc
attribute group which had no users in the tree and check if it can be
used or can be removed. I realised that it could clean up the custom
attributes that are added using device_create_file today.

Regards,
Sudeep

Sudeep Holla (8):
  soc: realview: Switch to use DEVICE_ATTR_RO()
  soc: realview: Use custom soc attribute group instead of device_create_file
  soc: integrator: Switch to use DEVICE_ATTR_RO()
  soc: integrator: Use custom soc attribute group instead of device_create_file
  soc: ux500: Switch to use DEVICE_ATTR_RO()
  soc: ux500: Use custom soc attribute group instead of device_create_file
  ARM: OMAP2: Switch to use DEVICE_ATTR_RO()
  ARM: OMAP2: Use custom soc attribute group instead of device_create_file

 arch/arm/mach-omap2/id.c               | 20 ++++++-----
 drivers/soc/ux500/ux500-soc-id.c       | 22 ++++++------
 drivers/soc/versatile/soc-integrator.c | 48 ++++++++++++--------------
 drivers/soc/versatile/soc-realview.c   | 48 ++++++++++++--------------
 4 files changed, 69 insertions(+), 69 deletions(-)

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
