Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606EE13E632
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:19:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEvW6GFxRBbPmBYUpBnCK6L0tCGsgHpHpS+OV9oW/kQ=; b=QjyEUqgZodt3Fn
	SeJrBwZxvb6rWl6zz5lr2MjxXUXlm5jbnVuQKyelWhPJH9Evn/3xEAoVhghbuE9CVNrc4R19PoenH
	7ZgSsBFQ0mzySjsQCirNufqFzILQcaPtj1QWoiTLvnBqlSBhOedNMOuEHRPQx7l9s+onpq0Tl1wTZ
	ul1NFfxCkoe2S+cQUzUve5l1QpRHcBxLd39uCGPOl3om8OKn7w+YoUgO6DdCxOOxSVaIRw/yqT8H5
	c2B3rvwwqGqEE/a3HpVTN/DMRQLA0fdUr183YX/pW/wCqFz+7md5Sdb3G3ngCAMmuxkXu1gOvW7SY
	2NhOD1ZKU/ZK5PIU7VVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8nn-00049J-9M; Thu, 16 Jan 2020 17:19:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8aY-0007UX-CT
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:05:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0D612051A;
 Thu, 16 Jan 2020 17:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194345;
 bh=IRmLSqE83uCsKnjCWPMxfFgshRxKOTa8eJMPacvSZ0g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xRyE3qE9XkPxfH2+JyxOs2H2/N76aN3XOgSIi0EkJrgm99r1hIb+DmswKB8rjJ1yG
 GZ9JA6u52W8Wbtwln2NB70OXXycuIj3fQFlvKEuiU8nD4XsWhUjNcdMe1GUk8u7Kxy
 nK0CBxwg507SCqC0VUh9EZiaFL9Ra1fzH+M9cizk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 287/671] firmware: arm_scmi: fix of_node leak in
 scmi_mailbox_check
Date: Thu, 16 Jan 2020 11:58:45 -0500
Message-Id: <20200116170509.12787-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090546_496076_5339EC91 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Steven Price <steven.price@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steven Price <steven.price@arm.com>

[ Upstream commit fa7fe29a645b4da08efe8ff2392898b88f9ded9f ]

of_parse_phandle_with_args() requires the caller to call of_node_put() on
the returned args->np pointer. Otherwise the reference count will remain
incremented.

However, in this case, since we don't actually use the returned pointer,
we can simply pass in NULL.

Fixes: aa4f886f3893f ("firmware: arm_scmi: add basic driver infrastructure for SCMI")
Signed-off-by: Steven Price <steven.price@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/firmware/arm_scmi/driver.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 09119e3f5c01..effc4c17e0fb 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -662,9 +662,7 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
 
 static int scmi_mailbox_check(struct device_node *np)
 {
-	struct of_phandle_args arg;
-
-	return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells", 0, &arg);
+	return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells", 0, NULL);
 }
 
 static int scmi_mbox_free_channel(int id, void *p, void *data)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
