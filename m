Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA05913E7F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:29:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eL9Owv+c1qv0tIjLhvAJISYqqwFkxIr4HbuPEgedsg=; b=bGyZn84r/OLUAv
	zrAjbz7W2PTUIc/el7vBEWnoNWM77/UXFOItfyE+hlcQ+inqZXlrkEtK/vnYKZptegqWh5dm6mDvY
	WXfP7XtheFTRszrGayTXn7/2CDil88zRsfbgV7wiXsWyOntPVJpKLlw84tXxKn3nqAHnsDPOzEXe1
	slx/tNGaLG+jMVECy1UG7L37z25zd5srpoQLqi2tAK5buWQgwlwkRbK50GWFqPUm1F4s2CfRlnJ/8
	gCVf/PMUASYSxz/QhxynTtTXZDzoiV+NSUlvdMi8Z3xkK0YSnSiJXbBmPzYS1ukSEzM+R9vknxUkC
	9f5huhwmr0x54SPZnsOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8xL-0006IO-3z; Thu, 16 Jan 2020 17:29:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8dG-0001U2-OY
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:08:41 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0676E2467C;
 Thu, 16 Jan 2020 17:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194513;
 bh=QOXJQFLhX9thyDPeqKCT78Ibo5JZTuoneB29aF9mx6I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EFSFpqpQ/4gsggMeQ/YXbl/wWQFGYDbW94BbMNtGYkqA/Umb8VHA997P6DfoSPSuD
 IuGk2c3UtpMbBWrmj0HvJ7pcYKxeR5rxDAM4fjBVXl64mXXowlZ9/uqT/BYXkSXXeV
 lcAUsr7I3nGy1iAf99B5pJxOL8RcUDUlnW1r/ZRE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 407/671] firmware: arm_scmi: fix bitfield
 definitions for SENSOR_DESC attributes
Date: Thu, 16 Jan 2020 12:00:45 -0500
Message-Id: <20200116170509.12787-144-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090834_832784_BCA15A15 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

[ Upstream commit 430daaf96ad133be5ce7c3a5c60e94247f7c6f71 ]

As per the SCMI specification the bitfields for SENSOR_DESC attributes
are as follows:
attributes_low 	[7:0] 	Number of trip points supported
attributes_high	[15:11]	The power-of-10 multiplier in 2's-complement
			format that is applied to the sensor units

Looks like the code developed during the draft versions of the
specification slipped through and are wrong with respect to final
released version. Fix them by adjusting the bitfields appropriately.

Fixes: 5179c523c1ea ("firmware: arm_scmi: add initial support for sensor protocol")
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/firmware/arm_scmi/sensors.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index b53d5cc9c9f6..c00287b5f2c2 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -30,10 +30,10 @@ struct scmi_msg_resp_sensor_description {
 		__le32 id;
 		__le32 attributes_low;
 #define SUPPORTS_ASYNC_READ(x)	((x) & BIT(31))
-#define NUM_TRIP_POINTS(x)	(((x) >> 4) & 0xff)
+#define NUM_TRIP_POINTS(x)	((x) & 0xff)
 		__le32 attributes_high;
 #define SENSOR_TYPE(x)		((x) & 0xff)
-#define SENSOR_SCALE(x)		(((x) >> 11) & 0x3f)
+#define SENSOR_SCALE(x)		(((x) >> 11) & 0x1f)
 #define SENSOR_UPDATE_SCALE(x)	(((x) >> 22) & 0x1f)
 #define SENSOR_UPDATE_BASE(x)	(((x) >> 27) & 0x1f)
 		    u8 name[SCMI_MAX_STR_SIZE];
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
