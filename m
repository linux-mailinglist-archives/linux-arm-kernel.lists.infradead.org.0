Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95495F4642
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJcEeV9/96r08yIxMVlKS7coN7NRySG9cmjbEWpOLP4=; b=bNnyhchVtK9Luf
	hSE7pEEaikTcWM5Q8AQMevXqRlkDP0NCCIXHyCnBxeWQwh7U/i3NISPSTtDV6XnyiFFsNFqsVQp93
	xAxdSOy12vueW+lpKHZjoqGzQJpjwKBQmP2AuV/lF/IjhjDtAJsjO6jAz6PIj2kJnWZQgkDFfJa6j
	+72Js06Z0GdzjeVLc3IuM8u28I8hhU/JJd0f/0kwgbPjXGmyZGIQOZj7xAk1/dRJ3O3MJ+k6W/Q+8
	63yVLjGFMPFiBNFOBqPd3DF2gzTIWmqBMGd9FRHISIXPumPw62ZHBrTTINl32Z33uecUbobxwkhWT
	yAB7H8eeVaa2EJpKs4/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2dj-0001eE-U3; Fri, 08 Nov 2019 11:41:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2dF-0001PA-L6
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:40:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A168521D7E;
 Fri,  8 Nov 2019 11:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573213249;
 bh=zgtQn59xKSHLgHf3t2ThmqyQQy/k5Hd9egH/wHnXQc4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0iLX8P4p3Uc0jtDTOUntuGCZghvtYLu/qRo1HuHDfwlbIRBOU7CJV/Ndle2o57FcJ
 P+brYzKHvLz/9XUxGzMRT1YFHN0kWIi3PSrYxfLqriqsRoIrWWbwwRbFRaOr8XstZ6
 Lwtr5+LA1SdxrxGJwjLVStNdnXNU7uJznPJcCO8Q=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 116/205] firmware: arm_scmi: use strlcpy to
 ensure NULL-terminated strings
Date: Fri,  8 Nov 2019 06:36:23 -0500
Message-Id: <20191108113752.12502-116-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108113752.12502-1-sashal@kernel.org>
References: <20191108113752.12502-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_034049_755826_F473FB4F 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>, Sasha Levin <sashal@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

[ Upstream commit ca64b719a1e665ac7449b6a968059176af7365a8 ]

Replace all the memcpy() for copying name strings from the firmware with
strlcpy() to make sure we are bounded by the source buffer size and we
also always have NULL-terminated strings.

This is needed to avoid out of bounds accesses if the firmware returns
a non-terminated string.

Reported-by: Olof Johansson <olof@lixom.net>
Acked-by: Olof Johansson <olof@lixom.net>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/firmware/arm_scmi/base.c    | 2 +-
 drivers/firmware/arm_scmi/clock.c   | 2 +-
 drivers/firmware/arm_scmi/perf.c    | 2 +-
 drivers/firmware/arm_scmi/power.c   | 2 +-
 drivers/firmware/arm_scmi/sensors.c | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
index 9dff33ea6416f..204390297f4bd 100644
--- a/drivers/firmware/arm_scmi/base.c
+++ b/drivers/firmware/arm_scmi/base.c
@@ -208,7 +208,7 @@ static int scmi_base_discover_agent_get(const struct scmi_handle *handle,
 
 	ret = scmi_do_xfer(handle, t);
 	if (!ret)
-		memcpy(name, t->rx.buf, SCMI_MAX_STR_SIZE);
+		strlcpy(name, t->rx.buf, SCMI_MAX_STR_SIZE);
 
 	scmi_xfer_put(handle, t);
 
diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index e4119eb34986c..30fc04e284312 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -111,7 +111,7 @@ static int scmi_clock_attributes_get(const struct scmi_handle *handle,
 
 	ret = scmi_do_xfer(handle, t);
 	if (!ret)
-		memcpy(clk->name, attr->name, SCMI_MAX_STR_SIZE);
+		strlcpy(clk->name, attr->name, SCMI_MAX_STR_SIZE);
 	else
 		clk->name[0] = '\0';
 
diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 64342944d9175..87c99d296ecd3 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -174,7 +174,7 @@ scmi_perf_domain_attributes_get(const struct scmi_handle *handle, u32 domain,
 			dom_info->mult_factor =
 					(dom_info->sustained_freq_khz * 1000) /
 					dom_info->sustained_perf_level;
-		memcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
+		strlcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
 	}
 
 	scmi_xfer_put(handle, t);
diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
index cfa033b05aed5..62f3401a1f01e 100644
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -106,7 +106,7 @@ scmi_power_domain_attributes_get(const struct scmi_handle *handle, u32 domain,
 		dom_info->state_set_notify = SUPPORTS_STATE_SET_NOTIFY(flags);
 		dom_info->state_set_async = SUPPORTS_STATE_SET_ASYNC(flags);
 		dom_info->state_set_sync = SUPPORTS_STATE_SET_SYNC(flags);
-		memcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
+		strlcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
 	}
 
 	scmi_xfer_put(handle, t);
diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index 27f2092b9882a..b53d5cc9c9f6c 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -140,7 +140,7 @@ static int scmi_sensor_description_get(const struct scmi_handle *handle,
 			s = &si->sensors[desc_index + cnt];
 			s->id = le32_to_cpu(buf->desc[cnt].id);
 			s->type = SENSOR_TYPE(attrh);
-			memcpy(s->name, buf->desc[cnt].name, SCMI_MAX_STR_SIZE);
+			strlcpy(s->name, buf->desc[cnt].name, SCMI_MAX_STR_SIZE);
 		}
 
 		desc_index += num_returned;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
