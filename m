Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EF316B159
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 21:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1eGXPjWpkOlzsC0SvQZxYRatjuCDZMBqDWI2/zo91U0=; b=mSa
	IeBWinoqPGd0mA+1OHtxawz5QJMDjj5iE/fKHjBFSjsiroeLANH8xVQijKKTjUi4YVevwYi8U3BMh
	STC2M+Q774iKebW3iNXuzlrfBfiqMVg5tPhrhARyaODOAm3Dt1BL4tn7sixgY6FvvRpryST5Joeq/
	4dpol3l3qxSs0gwEFMI2BHLQIeReC748SaHJqLLvw6ESxLCn29cknqDZgr7Q/XWfnPOb/ugFvViRk
	vC220IgdtfFK/UWHaEq8jN3WjKlvHFjytISUtOmMqx8bqIIfLDFKRwt6WBP4TL8YUlUXZd45coOR2
	qXgykA9usz4XyAlo0GrH8BsjdoTXZfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6KoH-0004xe-WE; Mon, 24 Feb 2020 20:58:38 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6KnY-0004T6-LN
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 20:57:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582577870; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=u1OjEUA+oUmSGKqhqxYhxngiUVtrvHAE5gOZERmV6aY=;
 b=uockONICktHXCl8+GuoUCyBV89Fynwmp8DHmbBwpZNuOi8iYuAZiOwhA4TkCzSBNypXa5MYx
 PEz0qVFj9HJ0fuCJvd6d5VItUcVcbFeQJXSUh6X7oP5Eb5N5gTkWlVNoNMlahgp/xXnrjOsZ
 NCwX1zBtDnPOBc8cxblVotgOnnw=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e5438cb.7f63684d86c0-smtp-out-n03;
 Mon, 24 Feb 2020 20:57:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0A9A0C447A0; Mon, 24 Feb 2020 20:57:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from eberman-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: eberman)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2A211C4479C;
 Mon, 24 Feb 2020 20:57:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2A211C4479C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=eberman@codeaurora.org
From: Elliot Berman <eberman@codeaurora.org>
To: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 0/3] ARM PSCI: Add support for vendor-specific SYSTEM_RESET2
Date: Mon, 24 Feb 2020 12:57:35 -0800
Message-Id: <1582577858-12410-1-git-send-email-eberman@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_125752_756331_47C86C61 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Trilok Soni <tsoni@codeaurora.org>, David Collins <collinsd@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Elliot Berman <eberman@codeaurora.org>,
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

Changes since v1:
 - Address Sudeep's comments

Changes since RFC v2:
 - None, tested on SM8250 MTP

Elliot Berman (3):
  dt: psci: Add arm,psci-sys-reset2-type property
  firmware: psci: Add support for dt-supplied SYSTEM_RESET2 type
  arm64: dts: qcom: sm8250: Add vendor-specific PSCI system reset2 type

 Documentation/devicetree/bindings/arm/psci.yaml |  5 +++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi            |  1 +
 drivers/firmware/psci/psci.c                    | 22 ++++++++++++++++++----
 include/uapi/linux/psci.h                       |  2 ++
 4 files changed, 26 insertions(+), 4 deletions(-)

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
