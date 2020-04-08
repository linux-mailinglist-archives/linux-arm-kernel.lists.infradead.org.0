Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEA21A2C7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 01:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GRQhqzx3bBMrf9roNDVbqzW3qljk+Mp34TLyU/fdnj8=; b=e+v
	TWYh2WTUBF+JK+SjnNNXaBevc00c+BLxAHtUr/TV+4A0eZlJSoFyi8wnRX3j+fGYsskQAJ998LlMD
	067lNUGCnsAClyIrb0pDM2vJjYUx9vBZY4yJYllOKVRdHclUEJMzMZgbWvknYJTssr6GTMwlXk/ok
	K5jMdf9A3isOK3yDcfQUvBU+CEG+eNgu7IctVYGBNx5OKakcxIztnVCr9VCWkBW8EDvLl0LRUZ8pO
	sooHWkIsX1Bwp1jcAis/MUFWpbpGADPA+uukANFavG6aAslQH31B5CPk9sL7vOeiIEqaBsAQF5XHr
	vYHLPwR+z9Gv7BR/BGWEW37nLei3png==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMKGw-0008AO-5V; Wed, 08 Apr 2020 23:38:18 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMKFs-000796-SU
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 23:37:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586389034; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=tbcG9Xjqe60X/ooLgj0Eg0Bo9Gmm4Kf5zVw+OwJVwcE=;
 b=cKX+C3LPGYnkO9BWd1AEVlZk8/YM+pGtDeWQwQ7sl4J45RH1JE0eNngZRhZ8FFjrsSWHNW4Z
 dKK9TmEJ5PX5yP/eeO7gNU1wjgcq13YXvzlqnjQHd7K4wWoqBAVdDi2RO5f7OUZNr1JQ/8Za
 ghDtQr7mYNkj6dZrnmaMkTBtEfU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8e601c.7fe343f84570-smtp-out-n02;
 Wed, 08 Apr 2020 23:37:00 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BAC96C433F2; Wed,  8 Apr 2020 23:37:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from sidgup-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sidgup)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B844EC433D2;
 Wed,  8 Apr 2020 23:36:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B844EC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sidgup@codeaurora.org
From: Siddharth Gupta <sidgup@codeaurora.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	ohad@wizery.com
Subject: [PATCH v2 0/6] remoteproc: qcom: Add callbacks for remoteproc events
Date: Wed,  8 Apr 2020 16:36:37 -0700
Message-Id: <1586389003-26675-1-git-send-email-sidgup@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_163714_786967_FEAA50FF 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patch series adds the usecases for SSR and Sysmon subdevices which are
used by remoteprocs and kernel client drivers relying on those remoteprocs.

Patch 1-3 adds callbacks for prepare, start and unprepare events, and also type
          of sysmon notification.
Patch 4-6 adds a per subsystem notifier chain, callbacks for prepare, start
          and stop events for ssr subdevice.

Changes since v1:
- Patch 3 updated to add comments and check for sysmon ssctl_version, and
  updated commit text based on Mathieu's comments [1].

[1]: https://lkml.org/lkml/2020/2/27/1802

Rishabh Bhatnagar (1):
  remoteproc: qcom: Add name field for every subdevice

Siddharth Gupta (5):
  remoteproc: sysmon: Add ability to send type of notification
  remoteproc: sysmon: Add notifications for events
  remoteproc: sysmon: Inform current rproc about all active rprocs
  remoteproc: qcom: Add per subsystem SSR notification
  remoteproc: qcom: Add notification types to SSR

 drivers/remoteproc/qcom_common.c      |  86 +++++++++++++++++++++----
 drivers/remoteproc/qcom_common.h      |   1 +
 drivers/remoteproc/qcom_sysmon.c      | 116 +++++++++++++++++++++++++++++-----
 drivers/soc/qcom/glink_ssr.c          |  20 +++++-
 include/linux/remoteproc.h            |  17 +++++
 include/linux/remoteproc/qcom_rproc.h |  17 +++--
 6 files changed, 222 insertions(+), 35 deletions(-)

-- 
Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
