Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E90E7798
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lk4sqEwG51Wf062UcinJBgV+47DE9fmsZ3ZlPZ3lwRY=; b=nF8JmsXFUl83QZsrN/pt+ADIEF
	EG4zzKbs43xDrEoy5uS6DtFsKcttTkO1J8kHAVHu7fnjh1zczA9uRnwxNyP6inIr4KM92JwdNwRg1
	yXcrAjgJGrazA3eYdz5R/hd1cnox1Tp+wxxfwwMG9wTUn2s5WHeFMiZw5SgVTeGstZsew4ekh/wpD
	yHZzK2gj4C0YxZV0UqpeGN/dPgSGfi2iRGFUMZvOZ3YE5dN72gjUWcY+ctWFpQSms1YAqdZXceOBw
	HIa272gmYBGJlWaALfxPPIhRXpRj64dd0Z1wldkMAIWYQNulvpOBQp/FC5qlffsiZw8wDom7qhMzq
	dYQ0/DRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8qZ-0006BJ-9f; Mon, 28 Oct 2019 17:30:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8pj-0004XU-KZ
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:29:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id s1so10813769wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 10:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5e9SBnpRUamAh+I5HrYlGgS5LyU4NETekxC5h4r3LQA=;
 b=YKX7xlF/+96dr6LPc8LL8xdN3YYhEMgmVo5zozdhEbj6Tlv8LfhSYmYGzkHvqbHmhR
 p21VePlLvcptpmmmye04Y9NiqMAF9+uB5zEPbyXehcNqlrjRV8323PgJtN2sDadArWHh
 CcH7A0Kl0Qj6eVqg9ziqQyRof7QWtA7A5iXQq/T8q9gAWqfKZk0mmEhxhtK6+6TYYmLy
 TXg2W+qmTDxBG1U7vUAHjJWyDoMDB7Ufc/yGDUS2l7fSj2njsVn0b9v5NoAamqSFAFwW
 2Nbh1zgi3S/9zZHxmpsgu4RDk5zLQZskjqIytsOPIh6XDdPjsA3A1i4f0MfWVrDtKXKa
 +Cvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5e9SBnpRUamAh+I5HrYlGgS5LyU4NETekxC5h4r3LQA=;
 b=kOoLUO0BVsRWnaAKwYWTH3extmK6aFLiN4DXI0MwE1PLMCebyzvgFFayAM7kqhBzi5
 CbVfOOxzbv+8VfV5/D3l2tVVEr6QdvXD0hOsuZ7YpmeiCiO1ESv3FD7sHrqtDBKkWx2b
 IOJl6ckzkQ2ux/6g/D+XbWta7ns5yXc1h7IlNKzgDxtIEATL4zyR8Rsq3/oKQ27mTeGN
 OG1ezwVgkku/YYl8PfzGzjDgSnl69/3Iwt57v1JgBSu2s44LXmIQ4ShBnlT3lhr99e7m
 yhWgC5IJwC+a4jEMaNsYFSn7lUbUtx31vfL/R/ocOnehbydv4Mpy7x3SEVmqVC2CoZXY
 2yWQ==
X-Gm-Message-State: APjAAAVKiDhbPm7kTACt4vM9zvzX83iJK+iyABF6mHeDu8bJqhdXyVJP
 nLlQYuMIpXtLdUaR999l3q2kXA==
X-Google-Smtp-Source: APXvYqzznjvuSs1Br8xsj7CAq70J24mIinmMbFKkXYrkbS6l9tzRFp04fz7Av1znWjjY0wXAbg/2PA==
X-Received: by 2002:adf:ecc7:: with SMTP id s7mr15834826wro.305.1572283773663; 
 Mon, 28 Oct 2019 10:29:33 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:a072:1d10:8dba:cbb])
 by smtp.gmail.com with ESMTPSA id r19sm14273295wrr.47.2019.10.28.10.29.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 10:29:33 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-doc@vger.kernel.org,
	corbet@lwn.net
Subject: [PATCH v4 2/4] coresight: etm4x: docs: Update ABI doc for new sysfs
 etm4 attributes
Date: Mon, 28 Oct 2019 17:29:17 +0000
Message-Id: <20191028172919.19662-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028172919.19662-1-mike.leach@linaro.org>
References: <20191028172919.19662-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_102935_670145_7675AF93 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org, Mike Leach <mike.leach@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This updates the ABI document to reflect recent additions to the ETM4.X
driver sysfs interface.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../testing/sysfs-bus-coresight-devices-etm4x | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
index 9290010e973e..112c50ae9986 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
@@ -282,6 +282,53 @@ Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(RW) Mask for all 8 virtual machine ID comparator value
 		registers (if implemented).
 
+What:		/sys/bus/coresight/devices/etm<N>/addr_exlevel_s_ns
+Date:		August 2019
+KernelVersion:	5.4
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(RW) Set the Exception Level matching bits for secure and
+		non-secure exception levels.
+
+What:		/sys/bus/coresight/devices/etm<N>/vinst_pe_cmp_start_stop
+Date:		August 2019
+KernelVersion:	5.4
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(RW) Access the start stop control register for PE input
+		comparators.
+
+What:		/sys/bus/coresight/devices/etm<N>/addr_cmp_view
+Date:		August 2019
+KernelVersion:	5.4
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(R) Print the current settings for the selected address
+		comparator.
+
+What:		/sys/bus/coresight/devices/etm<N>/sshot_idx
+Date:		August 2019
+KernelVersion:	5.4
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(RW) Select the single shot control register to access.
+
+What:		/sys/bus/coresight/devices/etm<N>/sshot_ctrl
+Date:		August 2019
+KernelVersion:	5.4
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(RW) Access the selected single shot control register.
+
+What:		/sys/bus/coresight/devices/etm<N>/sshot_status
+Date:		August 2019
+KernelVersion:	5.4
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(R) Print the current value of the selected single shot
+		status register.
+
+What:		/sys/bus/coresight/devices/etm<N>/sshot_pe_ctrl
+Date:		August 2019
+KernelVersion:	5.4
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(RW) Access the selected single show PE comparator control
+		register.
+
 What:		/sys/bus/coresight/devices/etm<N>/mgmt/trcoslsr
 Date:		April 2015
 KernelVersion:	4.01
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
