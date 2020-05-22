Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6AB1DEF56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 20:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C68RIMzBurUjiL5/IvFt+DA1ppQ1KMqWygK/+zyua08=; b=tS1dxdH82udYbU
	AoI7VrtodQIrBgcuCpn0rvJ0PsLG39aqrvynvONkLfFYBnjaqsicyrOAmRdSv0dovzxy+bLw+V5xE
	3rKdeAu5fAVcPzUzSowtA5yMBnu1Ik0PjXCI9qNM/NVoz/zTEkd3k/m6VrlYTIW6R3N3K20RSqsxF
	i/5RzTdEHbdlQ3oZuxCu5dQvOnoI3oRt4tJQ9vpnqh9HREtSNENV4QI8Fg909DhYiShZGxnGGpmGy
	x1FA5bUzj78lvOEjbdVP9CrjyHKtvnvgrKORXcxHlJ6Tce3TTsOTVb/nkRm5D3LchEMvaG3I1UW8R
	5nluLlNnzqp7jHQFp2XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCXt-0005eZ-Vz; Fri, 22 May 2020 18:37:25 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCXi-0005e8-JH
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 18:37:18 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590172636; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=PluvX8i1WF/QvxtYsYp5TA7SqqYJOjUCSKj5kFtO5Ns=;
 b=gatgE1D8LcEUBOksY8k0H2VglOKiVlDNKcDaaEaSFfE9BHZ/H9J+eTukA6zHZ8qI5HY1gkeE
 Is6tNq9Pumgrm4cUi//uCwvpNliXJ14ZztJclKRtT88HEds7M0BXF87QbpGHS6brY4Jn4I0I
 zT6d87z3rpjEKybqDG2BkPTquKg=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 5ec81bd08075f6e58ca40c6a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 22 May 2020 18:37:04
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BD52FC43387; Fri, 22 May 2020 18:37:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 51589C433C6;
 Fri, 22 May 2020 18:37:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 51589C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCHv3 0/2] Add support for replicators which loses context on
 clock removal
Date: Sat, 23 May 2020 00:06:50 +0530
Message-Id: <cover.1590171891.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_113716_585809_04339AA8 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-msm@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is mainly to add support for replicators
which lose context on removing AMBA clock like on SC7180
SoC where replicator in AOSS domain loses context.

v2 - https://lore.kernel.org/patchwork/cover/1244340/
More discussion is found here - https://lore.kernel.org/patchwork/patch/1231182/

Changes since v2:
 * Added DT maintainers which I missed in v2
 * Added proper kernel-doc and header as per Mathieu

Sai Prakash Ranjan (2):
  coresight: replicator: Reset replicator if context is lost
  dt-bindings: arm: coresight: Add optional property to replicators

 .../devicetree/bindings/arm/coresight.txt     |  6 ++
 .../coresight/coresight-replicator.c          | 55 +++++++++++++------
 2 files changed, 44 insertions(+), 17 deletions(-)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
