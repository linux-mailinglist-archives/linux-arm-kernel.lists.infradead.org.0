Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382A449CE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V9mMVk6UZXvKhyOujO+cQhQv/9PC61PPSmpUgxVfF4U=; b=nHdigWaV2v5Y/g
	wYQYQzJ1uo1QXzKXDKfacNfaLVWtFPIY3T7DtaZxeWaB3MQ2fdexdQ6bCtxyRsOBruDYNb/IWZpQj
	C3UtJlrlfkG/gdoFqTgnJh60nopmqx3dxFLAAOSgHBLXgNLGJzPeoW8sufp5ChgagUWE8eAriQZwh
	YcQ/DQMIznHnPxsNMfjgAXEB0KjsXWTp0RTUrlhGZeM1X/94t0auns02kiQ0voRSJmY0BLrzdD87N
	CMFr+AX3LCcZo9ebZDtBgW61IGdwiU6trIgl5MDNSoJMUQ20+sQ7nqS5IHwklarnmV1EYmCgreSD2
	uWD/7fpMwF3g02R/zxlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAFI-0007Sw-EZ; Tue, 18 Jun 2019 09:17:40 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAF7-0007Rb-Do
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:17:30 +0000
Received: by mail-lf1-x142.google.com with SMTP id u10so8659873lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 02:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rJanYe36yi/CmGKqaCrG1otgHpkv5KX5H3hS1IRh33g=;
 b=RiJtJdWoPD8zAWLrRuFlXYtFDm2X0N6/21V3ItMvPDDbdX9jIMVD2NDDE50Evpd7c5
 NP91pnFt1FTIfxm71pG+sw/GLrffxSGkjN5FKLqFCZzFnGDzFCMG19dHtlagjO53JVr/
 80CRzxaL1cN4BtODGKh0tEiNCVJAKGD2hlezCr0t0JeIi0cngbJDXFeAYYfVdH4xapR0
 1nFQQDgIcTIQ1+QHAOYncbIigzuTHyGJIGn5wK5x+yFT1HBY5GkQFMYtVVGMYtPf8zk4
 6jr/zmJsnunS/onnUn73MCCqmxxeoLyyYlMOV/H4O9N6tMze7daUZL+ggyMfqPaVWAIO
 OQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rJanYe36yi/CmGKqaCrG1otgHpkv5KX5H3hS1IRh33g=;
 b=LCY5t/ZQNotnG2hQ4GWkWGxBDpwbkfoDb5QOxtrNIsIDo07UL8Mwd2Vq2jO11iTE8q
 HTAvTclAo9F2+JhnOYffc37oJ14p1oiNcts+apbWDsUNyEGsOsp/O7L2JUDeL0jo7hb/
 hC66KcD5sX6hEzQpxCBF1TfxXPf9C124zWjcEth3v2RRHZPNIvxSqTt6QZwZ/popHzhM
 fmGe373oQ3YJ5GIMkFJcWngnCrcXx/PTS5clydZ84KKQm1gYnE5Dk4SmidSQB9NsN6/G
 ka6YnZe7xjrgH9oIqlhH1C9wHQ3z6cfdeChqBn73MdteD/sxx/ZUZScwi576kFkKVX38
 Rg4g==
X-Gm-Message-State: APjAAAVBT+TwsuwJa1+rrpBOfgMbBoymBoAGHFkBVcxOxfwE4YdztYrF
 4QeVZ002WRb15Xdv5UWuqCPKhA==
X-Google-Smtp-Source: APXvYqzZIY8KYRJ7T3S77TJbee+KXLTlqzbOJRplLldZUlUxRX5u3jYNnsAy45fO6GHH7GsxDOvD1w==
X-Received: by 2002:ac2:482d:: with SMTP id 13mr14129676lft.132.1560849447214; 
 Tue, 18 Jun 2019 02:17:27 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id b9sm2497444ljj.92.2019.06.18.02.17.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 02:17:26 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: linux-pm@vger.kernel.org
Subject: [PATCH v2 0/2] interconnect: Add path tagging support
Date: Tue, 18 Jun 2019 12:17:22 +0300
Message-Id: <20190618091724.28232-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_021729_532008_5AD4BB31 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: seansw@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 daidavid1@codeaurora.org, dianders@chromium.org, evgreen@chromium.org,
 bjorn.andersson@linaro.org, amit.kucheria@linaro.org,
 linux-arm-msm@vger.kernel.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
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

v2:
- Store tag with the request. (Evan)
- Reorganize the code to save bandwidth values into buckets and use the
  tag as a bitfield. (Evan)
- Clear the aggregated values after icc_set().

v1: https://lore.kernel.org/lkml/20190208172152.1807-1-georgi.djakov@linaro.org/


David Dai (1):
  interconnect: qcom: Add tagging and wake/sleep support for sdm845

Georgi Djakov (1):
  interconnect: Add support for path tags

 drivers/interconnect/core.c           |  24 ++++-
 drivers/interconnect/qcom/sdm845.c    | 131 +++++++++++++++++++-------
 include/linux/interconnect-provider.h |   4 +-
 include/linux/interconnect.h          |   5 +
 4 files changed, 129 insertions(+), 35 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
