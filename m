Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8BC118BC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nxHaxKbdQoc3nxzhaIonLTZpDpAUANhE88IoMQyagi4=; b=O41NSkXSYwSuRbNLjDSq+78Pwn
	wsZxy9COEYX1RZb2vld6FLGHDWtEgNmbGuQ25KIHydJcXJCq0OooaVXcDA19vMQif5gK+hKnNam+8
	9PHL9hUe/qDTV/7PTaTkE4R17QDQEmxCRXJzj8k2bbI/N+1kNlWrcFmcNGX1A/s2KY8e8+Ynceuqb
	xcXeaqtGUcC9FJDNdpFpVRY/lfAf00lU/ZCapmLY9D/Qt213+flmxbFi46DyaHVJVUSQb/O7CEvIV
	7o6/rlB+j2/iaPOVg+Dpz16WLwZCT3P1ZdfO5I5ZAhGIDdM59RXfeKzIoAfRNBdNIq0XrYWmpzTdf
	LCJW7SOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegxr-00027X-8L; Tue, 10 Dec 2019 14:58:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegtz-00068x-6M
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:54:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F36C1396;
 Tue, 10 Dec 2019 06:54:14 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D72D53F67D;
 Tue, 10 Dec 2019 06:54:13 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 11/15] firmware: arm_scmi: Match scmi device by both name and
 protocol id
Date: Tue, 10 Dec 2019 14:53:41 +0000
Message-Id: <20191210145345.11616-12-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210145345.11616-1-sudeep.holla@arm.com>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065415_329587_F7FD9B17 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The scmi bus now has support to match the driver with devices not only
based on their protocol id but also based on their device name if one is
available. This was added to cater the need to support multiple devices
and drivers for the same protocol.

Let us add the name "genpd" to scmi_device_id table in the driver so
that in matches only with device with the same name and protocol id
SCMI_PROTOCOL_POWER.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/scmi_pm_domain.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/scmi_pm_domain.c b/drivers/firmware/arm_scmi/scmi_pm_domain.c
index 87f737e01473..bafbfe358f97 100644
--- a/drivers/firmware/arm_scmi/scmi_pm_domain.c
+++ b/drivers/firmware/arm_scmi/scmi_pm_domain.c
@@ -112,7 +112,7 @@ static int scmi_pm_domain_probe(struct scmi_device *sdev)
 }

 static const struct scmi_device_id scmi_id_table[] = {
-	{ SCMI_PROTOCOL_POWER },
+	{ SCMI_PROTOCOL_POWER, "genpd" },
 	{ },
 };
 MODULE_DEVICE_TABLE(scmi, scmi_id_table);
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
