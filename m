Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42A08798D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 14:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wHrlKU9SuGEdOUHzaPY3UuPgJIrgkx8AXjRpdycwPws=; b=AfyVQC5W2f/RWP
	CkEqOhaC+BpUmHFUL5PrgPN8HpzEC+f0Zs1MMssiULUmQB/4aHPg7jiM9s/zOjz1QTldxNdUjx8oq
	Eav8cWjvd7N8ameALraH65Zk8NYyxxxo5nsoIFHRJsC8D2V0BDX5tnVm4C+hP71LgRF6h3VX4x+eV
	wzrPqlDcwpkcH5bYx3QC6cv0FhyteLBHF7dx9At0jXrnS4UC8dhiQiPtGPdDvIB38oYefPvdHauPK
	1BPP9puBbrakvgtfmuARdPKy3+Wq9kY5d34h8Mzx4wWQ0B69lR8YMUkz8f82waXh9LuisZqqDWEwP
	+EhFHXrLoBAtPQLy1x0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3mC-0000JW-KK; Fri, 09 Aug 2019 12:13:44 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3ly-0000Ib-26
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 12:13:31 +0000
Received: by mail-lj1-x242.google.com with SMTP id l14so1948436lje.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 05:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=khC2xFZGDuzHm7LauVefQf76DxyJ5wKd6wD3GFIWUBg=;
 b=YUgvvikfXP7Algmo5FVFozvaeWU2EgvjF+cD5mnYuI9U/j45lqwxwPig/8wh+wBIYJ
 vuM2ziYQxZ3XRGtGKH8leZv/0X/H5XGfN1teN4G6dK5r5mNF99DaoQBvutQOFSVgwerk
 9hK95niDmQhtp26IAkvdHZCV9wiiW3TXt449kOLrWnGCjOlO//g5MXgC16LV+89FUL9f
 3zsyayZsATMVEY1Wc5XXhy87ejlE2aYZ++BhvhVtk2AaWLM9L0u0zz8JAEu8ZmpFvpWu
 69JrTgiRNMAMoGfpFEMoxM7A/bOsdIg1DJByonCqXf1r4c4b7onV3S+OXPKN6QADsvbR
 0rZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=khC2xFZGDuzHm7LauVefQf76DxyJ5wKd6wD3GFIWUBg=;
 b=OIODsqx0/tAd/xhGVfNKQpBFIbqiice7qzYzMr+lyQW7wtNvfpSQ0w1AJF3wzIA6QJ
 +ShF5y9i8GKP2ZqJvtJkG5MLbazhj/rzCL3UPCxZBxA6yyKd0MUBp56qipUosRekosM0
 +VrkZiXuwn3vR7a7qAdauYeTB2SvLVHtqnGszwixg5AB8QO7fKvgfBCWndDLO7utOQLC
 iPE8Y/NCVkGiuVOvICVTiF4p48ClYPO5nQTYOFOK5uPLwftoXhLQwfg2cmwdHhgfuWWo
 fM6rGYaffsQy/3IJ3Mwnpb/xsaQ8YNQwnjw4KqwE1BXGgBrbBuLFLTTT7jvCqHS1sJ9V
 ddag==
X-Gm-Message-State: APjAAAUJ0ATRJCtz7YNnuWuF6+MYiAjaSEDsKfHM4gnpkIiBjDjl3Aci
 6Hb5kLccKU+0Wizmny6Nz6Z1sA==
X-Google-Smtp-Source: APXvYqwRqWQziVL8uoa4G3k4jkXSZfMfrqNN15MtnOv5kCBBjJo+CYN2nXEZmgvdeMjACcuywFWqNA==
X-Received: by 2002:a2e:8455:: with SMTP id u21mr10848999ljh.20.1565352808013; 
 Fri, 09 Aug 2019 05:13:28 -0700 (PDT)
Received: from localhost.localdomain ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id f23sm1083425lfc.25.2019.08.09.05.13.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 09 Aug 2019 05:13:27 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: linux-pm@vger.kernel.org,
	evgreen@chromium.org
Subject: [PATCH v3 0/3] interconnect: Add path tagging support
Date: Fri,  9 Aug 2019 15:13:22 +0300
Message-Id: <20190809121325.8138-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_051330_102580_CED7B3CA 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: seansw@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 daidavid1@codeaurora.org, dianders@chromium.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 georgi.djakov@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SoCs that have multiple coexisting CPUs and DSPs, may have shared
interconnect buses between them. In such cases, each CPU/DSP may have
different bandwidth needs, depending on whether it is active or sleeping.
This means that we have to keep different bandwidth configurations for
the CPU (active/sleep). In such systems, usually there is a way to
communicate and synchronize this information with some firmware or pass
it to another processor responsible for monitoring and switching the
interconnect configurations based on the state of each CPU/DSP.

The above problem can be solved by introducing the path tagging concept,
that allows consumers to optionally attach a tag to each path they use.
This tag is used to differentiate between the aggregated bandwidth values
for each state. The tag is generic and how it's handled is up to the
platform specific interconnect provider drivers.

v3:
- New patch to add a pre_aggregate() callback.

v2: https://lore.kernel.org/lkml/20190618091724.28232-1-georgi.djakov@linaro.org/
- Store tag with the request. (Evan)
- Reorganize the code to save bandwidth values into buckets and use the
  tag as a bitfield. (Evan)
- Clear the aggregated values after icc_set().

v1: https://lore.kernel.org/lkml/20190208172152.1807-1-georgi.djakov@linaro.org/


David Dai (1):
  interconnect: qcom: Add tagging and wake/sleep support for sdm845

Georgi Djakov (2):
  interconnect: Add support for path tags
  interconnect: Add pre_aggregate() callback

 drivers/interconnect/core.c           |  27 ++++-
 drivers/interconnect/qcom/sdm845.c    | 136 ++++++++++++++++++++------
 include/linux/interconnect-provider.h |   7 +-
 include/linux/interconnect.h          |   5 +
 4 files changed, 140 insertions(+), 35 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
