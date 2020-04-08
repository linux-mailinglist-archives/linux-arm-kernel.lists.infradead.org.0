Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60CF1A2BD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 00:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/9aPbWKxgH5KJy/IBuckYshsRk3PmN7n1H2mkJ9ml7s=; b=kW1
	Zhkq+A58JKcXZBLVUjGskhrUE7gxr0R9RjztR6RxPd3+8SG6nrtqrmE5heqrfSzlyQLw92qjoIWsn
	Wa+Xi6n1pVY8jfqrxZGlLu4oO9tZ7yi5/sOJRcjtbkyrjg7wagDI97OF/FnS+E5XvkO2ad4UF9SXr
	dj3Oqy7w8tUCjKGZyoviWbktPbAttWhIAvkOKTM/G9fk2LwHh6HKPVIzx2OfAuc41Sq9CjY6ZECPG
	oQFqSEhyKsGeFWPEJLmo2/ueTaeDf/caYojqo27zWZcIeBAX7DAOQji20r9+v8gDhK1zf4r80znYO
	1bHfAMmNb3VCj57tsxCs03aAs7Fwc0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMJ2C-0007WG-HR; Wed, 08 Apr 2020 22:19:00 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMJ25-0007Uh-3K
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 22:18:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586384331; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=RH35X7vF6ho+C78nwQjbPIiSWT7T/WnEcvFZbvUDnVc=;
 b=d+PkCEg45fqLfhWnbjDpiFEoSlaVTpEd82BQbyEvAFcQ/TmZJ7XE8I/cufC+sKlaqPkx5f0U
 nAoz8BjknkmakTZ1VFV8aCiMHZzev21PXJlzB6wUTRnPMhhOyRowSj2KJXWyUgtV+l+Zwzdf
 htLbCrk9fhkwOUMOwH8WKCXg6TI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8e4dca.7fc3729b23b0-smtp-out-n03;
 Wed, 08 Apr 2020 22:18:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 12643C43636; Wed,  8 Apr 2020 22:18:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from sidgup-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2F236C433D2;
 Wed,  8 Apr 2020 22:18:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2F236C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
From: Siddharth Gupta <sidgup@codeaurora.org>
To: bjorn.andersson@linaro.org,
	ohad@wizery.com
Subject: [PATCH v2 0/2] remoteproc: core: Add core functionality to the
 remoteproc framework
Date: Wed,  8 Apr 2020 15:18:23 -0700
Message-Id: <1586384305-7825-1-git-send-email-sidgup@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_151853_201208_3520EEE1 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 rishabhb@codeaurora.org, Siddharth Gupta <sidgup@codeaurora.org>,
 psodagud@codeaurora.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds core functionality to the remoteproc framework.

Patch 1 adds a new API to the framework which allows kernel clients to update
        the firmware name for the specified remoteproc.
Patch 2 intends to improve the user experience by preventing the system from
        going to sleep while the remoteproc is recovering from a crash.

Changes since v1:
- The API in patch 1 has been modified based on comments by Mathieu [1]. Since
  this patch cannot be merged in without a user this is more of a RFC for
  merging in later once a user is upstreamed.
- In patch 2 updated the device being used to the parent device of the rproc,
  based on comments from Mathieu [2] and Bjorn [3].

[1]: https://lore.kernel.org/linux-arm-msm/1582164713-6413-1-git-send-email-sidgup@codeaurora.org/T/#mc36cf66598238a67d1a3e77ab8362b90bd56882e
[2]: https://lore.kernel.org/linux-arm-msm/1582164713-6413-1-git-send-email-sidgup@codeaurora.org/T/#mbafae326ff7e0e5dd1ba5370355affe042a4e21f
[3]: https://lore.kernel.org/linux-arm-msm/1582164713-6413-1-git-send-email-sidgup@codeaurora.org/T/#m4694a60c2c6c720ff6eb3c83008373dfe18ea06b

Siddharth Gupta (2):
  remoteproc: core: Add an API for changing firmware name
  remoteproc: core: Prevent sleep when rproc crashes

 drivers/remoteproc/qcom_q6v5_pas.c   |  1 +
 drivers/remoteproc/remoteproc_core.c | 47 ++++++++++++++++++++++++++++++++++++
 include/linux/remoteproc.h           |  1 +
 3 files changed, 49 insertions(+)

-- 
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
