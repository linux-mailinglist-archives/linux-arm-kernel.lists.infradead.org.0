Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F49117AEBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 20:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y/z/h2A0ccpxdvnppBSoeIM6OGdJwYDNXqrvANW0JcA=; b=HYa
	tMoAAN69JJdnFMX69+bPPNv1hpxsjcg1xfx/hB4aHd/K/eQFj6homfBBuclVdX3BmZK4GHSVVEn+9
	6SHETt26toUsCbvsWJXnvabEOImQyKB6+aHGQ0oEqY+g4sUAQ52sz2F55q7y6GCh5S6Ntwjcqd+WS
	ogJkirEWWxekc8v4ihE5bZOzjeRYG+QrqKh7TASd652Cgrne+iaNOpLyBSXqwbNzXncQiFxq9Pf0F
	Df8SQnosD/S/etFtDyyR4X3E1xSKZaxed7oUQijT03e2FWk1/eCUwAq9bEMl7RgTJhOa4fvDHIMP7
	/D60//OMrSOHn1yfv/Ma6Rbp+nYRbaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9vpJ-0002se-HF; Thu, 05 Mar 2020 19:06:33 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9vob-0002C3-Dq
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 19:05:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583435150; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=1sG3u0mTkH09rmGeFRjFz49NiO7dwyUuTIhoDE0H1I8=;
 b=I5GWk3ror7EFvJKEJkkRUta5SvcQo+ZR1he26Y7UDvJMVErF9lW5fWbUMU/PeZBeTQ5UgdS6
 UDwOr/kDAAXCFYsEywVp/XpIE1YKHwAh02ydxqctBwP/e/r9bll+QRhK5zLPUQnXMKp2hNj2
 X8l9iMWiKkN8hbvkfI2GrMr3OgA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e614d85.7f03a1e67110-smtp-out-n03;
 Thu, 05 Mar 2020 19:05:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CD4B2C447A3; Thu,  5 Mar 2020 19:05:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from eberman-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: eberman)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E59EDC43383;
 Thu,  5 Mar 2020 19:05:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E59EDC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=eberman@codeaurora.org
From: Elliot Berman <eberman@codeaurora.org>
To: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v3 0/3] ARM PSCI: Add support for vendor-specific SYSTEM_RESET2
Date: Thu,  5 Mar 2020 11:05:26 -0800
Message-Id: <1583435129-31356-1-git-send-email-eberman@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_110550_852979_117C409A 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: Trilok Soni <tsoni@codeaurora.org>, David Collins <collinsd@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds support for vendor-specific SYSTEM_RESET2 to support
Qualcomm target use cases of rebooting into a RAM dump download mode.

This patch series applies on top of [1].

[1]: https://lore.kernel.org/patchwork/cover/1185759/

Changes since v2:
 - dt property forces vendor-specifc reset type

Changes since v1:
 - Address Sudeep's comments

Changes since RFC v2:
 - None, tested on SM8250 MTP

Elliot Berman (3):
  dt: psci: Add arm,psci-sys-reset2-vendor-param property
  firmware: psci: Add support for dt-supplied SYSTEM_RESET2 type
  arm64: dts: qcom: sm8250: Add vendor-specific PSCI system reset2 type

 Documentation/devicetree/bindings/arm/psci.yaml |  7 +++++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi            |  1 +
 drivers/firmware/psci/psci.c                    | 21 +++++++++++++++++----
 include/uapi/linux/psci.h                       |  5 +++++
 4 files changed, 30 insertions(+), 4 deletions(-)

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
