Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3955A17AEBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 20:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LmML710qdz5AjELErySXqgSblctQRrvWFut3OVoh4mQ=; b=m9KzEtZcMUcZwjUENu5x+4QYu1
	bsqTkUWRdWvQ42KC/jYlzp2Jf4pkospBiXR7jWKWlcfqz5+q0b04N/OdlHv0dD880MrixAbBpXDFv
	prD5h2hvqdd+ozyeEnETw7Av173ov6sb7OTPe797wwS7InKvlLQGrTHvqlf6Iw7R+pJEjcXEWLy7q
	CAfzb62irdtCkXABLatYAS4tuuHXeLYfI6ZYiShkZoEEfTNaam3TpOSGxJK86L98m7CVf86Lh1gt/
	3daogGZyVwOUwwQ0D0N18nypyf12uJVasDoXTdtQTl04H9qlWwvAFF4K6dFf3SG338WbaPzLRJhBX
	gRQGmxtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9vpV-0003A3-K0; Thu, 05 Mar 2020 19:06:45 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9vof-0002C3-1Q
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 19:05:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583435154; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=YH+QWh0B2Sy6GXDxwNE87QSZhteGeflftaYJuX5RZ/w=;
 b=r1lyRzmje8Ks9/NXflsxzU9RCvJKo1W4gNY2pJ22pJi6QuVZfAgJe++py2NcE0+1yHTfpAX9
 OhV3+Ost+W4kQ1FwFx5R1l6H6LwpOqgRV8Y2GmLxknSDnkFbUf00T4ZL7DRnjelChs9j+fSc
 qSXX1t2+ShEV1rePg2MOt8x9eVw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e614d88.7f3cb006d148-smtp-out-n01;
 Thu, 05 Mar 2020 19:05:44 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A6FAFC447A3; Thu,  5 Mar 2020 19:05:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from eberman-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: eberman)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D3E60C447A0;
 Thu,  5 Mar 2020 19:05:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D3E60C447A0
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=eberman@codeaurora.org
From: Elliot Berman <eberman@codeaurora.org>
To: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v3 3/3] arm64: dts: qcom: sm8250: Add vendor-specific PSCI
 system reset2 type
Date: Thu,  5 Mar 2020 11:05:29 -0800
Message-Id: <1583435129-31356-4-git-send-email-eberman@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583435129-31356-1-git-send-email-eberman@codeaurora.org>
References: <1583435129-31356-1-git-send-email-eberman@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_110554_830766_D387715A 
X-CRM114-Status: GOOD (  13.63  )
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

Qualcomm Technologies, Inc. SoCs do not guarantee that an architectural
warm reset boots back into Linux kernel. For instance, if download mode
or reboot reason cookies are set, the SoC would do a warm reset into an
alternate exception level (e.g. a mode to collect RAM dumps) or an alternate
EL1 application (e.g. fastboot mode). Thus, Qualcomm Technologies,
Inc. SoCs support a vendor-specific warm reset type that can be used in
all instances of warm/soft reboots.

Signed-off-by: Elliot Berman <eberman@codeaurora.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index f63df12..11cede1 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -162,6 +162,7 @@
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
+		arm,psci-sys-reset2-vendor-param = <0>;
 	};
 
 	reserved_memory: reserved-memory {
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
