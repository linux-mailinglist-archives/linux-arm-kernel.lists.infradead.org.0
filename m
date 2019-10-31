Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601E3EB683
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:59:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3+lTqq2HhsqzJgqapvk8Gz4KbcWkhSBv22DBeAJ3bRY=; b=CG3giz99MPigHUS+JoWJMzsUC0
	oF8sejDGb8aFYSpVgbQotOS5P61kA8kS5TG2lyCDe+qEZEI+FT7GsnQPYvB6YoD4giHQ6Ud6sjLj/
	MJ8P/m0IUckeGdpPN3tSKIlw13V+6nFQgMChp6tCfkrnkhRQerJpGFadv1Jx7dZggu+dwbKM4MTe7
	0ZrQyr6wiBBKZ5Wor2o4MjJMlR2ohADWuDaM7YuVaQo8GUoF6RpAcHXXt8m61//dhH54+tY+u14SV
	OkKtWtc5NZzXjQ4NtY3n8Er7Krp/lA2wVFl6CkkvE9NLj+vGs5MEx3k080r96UJkATNsTvWG39NF+
	lksRoXDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEix-0008IP-UY; Thu, 31 Oct 2019 17:59:08 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEiU-00088S-A1
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:58:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id q26so4855415pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/ws48OPfYIJsP3hLi0od0xxVO+NdaAYQZFQkL5nisiM=;
 b=ATidlEjEqD00UPJarL+ncmaSsGAlcuIP8YB2LTb+0EVSJWNqesZQj6dFeAV7iSzX91
 BvzrjMRoTBs2lfTwKEYXe1AaDvKWhphMavrmAx2ZYd0y/qHStcqHTKuY9klBNyRDp0j3
 q2YmpFczqJajz69+imTNDU0LtX4QTyHZXLV6dtzD+Ya50UY7DaX8YXNtRWGQaBopGBsx
 s8AtgTZTQZnO7FZ+f7A9fbcxsCQUnsTIY5Ba3i+Gxs/cfmQvb7hxQu035hpAq+jaakyJ
 4Vo1yK6PH210LLJPYdll0hlBzeYvNDkd3//aqYIpb++z5Xwas2SMkC0E0aBx9AUuY7Rx
 Sbnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/ws48OPfYIJsP3hLi0od0xxVO+NdaAYQZFQkL5nisiM=;
 b=quYr6wPhZwWsYxTPyHcv/o7boYSjtqavMzEkA9ulE3Nu5+gx1f/HTq/eeyzQhCCC3k
 34Ex5kb65LZHh5viABGHaDorf3bo5O+pslNggsMOTYQfdGhw0t8/k+kdAaUU537aPCns
 4LvdVY2Idz9fBoUjQP0y7ZNzBJNGsRs3jzYd29bZd8P4i8F3x7aLeE6dAWQrXMDF9HY3
 4+pWVaCfJT4g294Em+5YKIhb0sNakEkTAi8X1FczPx9s/S7xcMDC8fMyzStEiDD+kCpT
 YlVmnGYyzbIYe79GqlG3+qLvkJy98AuZ111V6CE+OYLxJDU44KqdqMb9tygqjU8MhpWN
 rm9w==
X-Gm-Message-State: APjAAAWyKrrx/jGh6gS2IgU7ww/Gbtu7BjLqtFCAfBmM9nyWf5gyhk9x
 Vy0fBizozrUeFjUvbv3HaRkbRG3t9yA=
X-Google-Smtp-Source: APXvYqxQs8ZQ5Ruv/C9/lnpJ42h8VwAa6x+pIpe8aXf0grM0GwA7KunaMBdVfcWHB/0EeZDApjFciA==
X-Received: by 2002:a63:65c6:: with SMTP id z189mr7889040pgb.433.1572544717693; 
 Thu, 31 Oct 2019 10:58:37 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c6sm4382210pfj.59.2019.10.31.10.58.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 10:58:37 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: corbet@lwn.net
Subject: [PATCH 2/4] coresight: etm4x: docs: Update ABI doc for new sysfs etm4
 attributes
Date: Thu, 31 Oct 2019 11:58:32 -0600
Message-Id: <20191031175834.17548-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191031175834.17548-1-mathieu.poirier@linaro.org>
References: <20191031175834.17548-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_105838_347164_DDC3D05C 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

This updates the ABI document to reflect recent additions to the ETM4.X
driver sysfs interface.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
[Updated Date and KernelVersion fields]
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../testing/sysfs-bus-coresight-devices-etm4x | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
index 9290010e973e..614874e2cf53 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
@@ -282,6 +282,53 @@ Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
 Description:	(RW) Mask for all 8 virtual machine ID comparator value
 		registers (if implemented).
 
+What:		/sys/bus/coresight/devices/etm<N>/addr_exlevel_s_ns
+Date:		December 2019
+KernelVersion:	5.5
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(RW) Set the Exception Level matching bits for secure and
+		non-secure exception levels.
+
+What:		/sys/bus/coresight/devices/etm<N>/vinst_pe_cmp_start_stop
+Date:		December 2019
+KernelVersion:	5.5
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(RW) Access the start stop control register for PE input
+		comparators.
+
+What:		/sys/bus/coresight/devices/etm<N>/addr_cmp_view
+Date:		December 2019
+KernelVersion:	5.5
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(R) Print the current settings for the selected address
+		comparator.
+
+What:		/sys/bus/coresight/devices/etm<N>/sshot_idx
+Date:		December 2019
+KernelVersion:	5.5
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(RW) Select the single shot control register to access.
+
+What:		/sys/bus/coresight/devices/etm<N>/sshot_ctrl
+Date:		December 2019
+KernelVersion:	5.5
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(RW) Access the selected single shot control register.
+
+What:		/sys/bus/coresight/devices/etm<N>/sshot_status
+Date:		December 2019
+KernelVersion:	5.5
+Contact:	Mathieu Poirier <mathieu.poirier@linaro.org>
+Description:	(R) Print the current value of the selected single shot
+		status register.
+
+What:		/sys/bus/coresight/devices/etm<N>/sshot_pe_ctrl
+Date:		December 2019
+KernelVersion:	5.5
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
