Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F2913E810
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:30:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGPzTrwAbT9h3nzTZnoWSlqXc3ptT0zBF2pZLzOUMP0=; b=q28tILqCllFcEn
	OWgKJlKuAtK92rtGmgvYX9JSKYj8wUW1kn+L0G/KRGaUl9Jxy/cOMU4xAT8LBGjM338xvSR78qru/
	Os46mT0UPnA75IjfOyXDY1lld5vU39Gk1iSCJvJezLaoh40ljQKfPoD62wL+aMA9btSecALHxnHSF
	3a0KLe9A9andlaM4rfeD5dl3gK4gAK/0bV5hQc+SenjeRZ8jZ0jc1hxXZkhAxOSEpdpyP0ThaOlDc
	XLjwdprRMRyBSBldM96qZVbwfOpJO0OLlKmbZ/16a/JmhNCdBAISZbagSlND9qq1HV+8S1EAkcBg8
	Hzr64RdBwIky8zF6mH/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8xy-0006wN-EW; Thu, 16 Jan 2020 17:29:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8dH-0001Uw-LX
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:08:44 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28F58205F4;
 Thu, 16 Jan 2020 17:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194514;
 bh=k8GReeyE90iWoxw6ZmMi4YPvCx8AKmgbeGlh4ZYDKyk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VJniDalO1pbCuRUQLJg0M74UQn+KjrgEgmJGqwJoeCiDu4yCPchJ6A3LL9cet2Lvm
 r2LoYsP7ox3xtyt7yVt8p6rEc6cf5p4piHjg9lZhryh8BmQSXGIXDhuvN2VgccNV3a
 lYyI/sIuiq50w4/lxnhqIp5srS/AwTV+R8HAbgtM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 408/671] firmware: arm_scmi: update rate_discrete
 in clock_describe_rates_get
Date: Thu, 16 Jan 2020 12:00:46 -0500
Message-Id: <20200116170509.12787-145-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090835_788026_08F07E97 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
Cc: Sasha Levin <sashal@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

[ Upstream commit c0759b9b5d411ab27c479125cee9bae391a96436 ]

The boolean rate_discrete needs to be assigned to clk->rate_discrete,
so that clock driver can distinguish between the continuous range and
discrete rates. It uses this in scmi_clk_round_rate could get the
rounded value if it's a continuous range.

Fixes: 5f6c6430e904 ("firmware: arm_scmi: add initial support for clock protocol")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
[sudeep.holla: updated commit message]
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/firmware/arm_scmi/clock.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 30fc04e28431..0a194af92438 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -185,6 +185,8 @@ scmi_clock_describe_rates_get(const struct scmi_handle *handle, u32 clk_id,
 	if (rate_discrete)
 		clk->list.num_rates = tot_rate_cnt;
 
+	clk->rate_discrete = rate_discrete;
+
 err:
 	scmi_xfer_put(handle, t);
 	return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
