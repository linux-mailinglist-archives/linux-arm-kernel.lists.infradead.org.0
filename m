Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11B1129639
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 14:03:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YS61As0d7v4PZL5INJrji3xRSQM8G3N2HOcZnajSU68=; b=TQi
	sYLMcWrpZjL0rM5CkILbTu0cWRhHR0DzwrV8qCBUATlTH2mDL7XQ9P/K0cyUUNu5XjjyIHqww1Pe+
	OVAtexoHhOhQPjbILp0BNw5XaWdc48rBmk0L3xBMZ266HqWmh8IFhq8Hm1rUoFhCbRep84F57PRcr
	NZjVM0d7gKSzQD6Kf0/QBBISznC4yghPApgHsr28j0nMooaBdV78vL2lLDty5VvdLb99wmKDw6wm8
	hiGNJC8jhofTrlFefYQuvgZw8tp5ssYnkIPJwSgB3CWXOrfu8gGHT/8G0A76nzTEd/DsF1YQ/2IYk
	njdKwBLkaczQsDxfO6oryVKSoN96QqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijNMM-0008JL-Ub; Mon, 23 Dec 2019 13:02:54 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijNMD-0008IW-O6
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 13:02:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577106166; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=/YMggVbc7M6CjZVE5kCb7Ofg44zujSw7jl0Io5iU98k=;
 b=olLbObS2Q+kQQkjq79FRixkMP7L6yYXDlHkOo4T+RoHn8WrshCzCAFCI5Iv5UQj2ZPlDzhnU
 HYEu3XzGBBEjLgKP/vVLSlAA2z0J/HuxVSZp0kvUL7Kyt1y1Y420FbhpDrAcNu8zQAHqacgX
 VabEtoVJkpLC9duBGQhufnMfjmI=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e00baf0.7f089cceef48-smtp-out-n02;
 Mon, 23 Dec 2019 13:02:40 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6CE98C44BE6; Mon, 23 Dec 2019 13:02:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from sramana-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sramana)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 548BDC3D68C;
 Mon, 23 Dec 2019 13:02:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 548BDC3D68C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sramana@codeaurora.org
From: Srinivas Ramana <sramana@codeaurora.org>
To: will@kernel.org, catalin.marinas@arm.com, maz@kernel.org,
 will.deacon@arm.com
Subject: [PATCH] arm64: Set SSBS for user threads while creation
Date: Mon, 23 Dec 2019 18:32:26 +0530
Message-Id: <1577106146-8999-1-git-send-email-sramana@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_050246_433887_25DB698D 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-msm@vger.kernel.org, Srinivas Ramana <sramana@codeaurora.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current SSBS implementation takes care of setting the
SSBS bit in start_thread() for user threads. While this works
for tasks launched with fork/clone followed by execve, for cases
where userspace would just call fork (eg, Java applications) this
leaves the SSBS bit unset. This results in performance
regression for such tasks.

It is understood that commit cbdf8a189a66 ("arm64: Force SSBS
on context switch") masks this issue, but that was done for a
different reason where heterogeneous CPUs(both SSBS supported
and unsupported) are present. It is appropriate to take care
of the SSBS bit for all threads while creation itself.

Fixes: 8f04e8e6e29c ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
Signed-off-by: Srinivas Ramana <sramana@codeaurora.org>
---
 arch/arm64/kernel/process.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 71f788cd2b18..a8f05cc39261 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -399,6 +399,13 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 		 */
 		if (clone_flags & CLONE_SETTLS)
 			p->thread.uw.tp_value = childregs->regs[3];
+
+		if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE) {
+			if (is_compat_thread(task_thread_info(p)))
+				set_compat_ssbs_bit(childregs);
+			else
+				set_ssbs_bit(childregs);
+		}
 	} else {
 		memset(childregs, 0, sizeof(struct pt_regs));
 		childregs->pstate = PSR_MODE_EL1h;
-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc., 
is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
