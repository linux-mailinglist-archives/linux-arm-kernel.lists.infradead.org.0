Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D41195B42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3XCU3ASoIPlASHCL9ynGv2c1eRxW3FOjgRVMtK++/Y4=; b=a8z
	c/+c3TlZxESHDbenFFpIX/OoMfjwQzWp8eJCLYHuumgeBODZQMvbj62V4HeN2hNE84X4QFuGgWtXi
	9G966i50UaH4WupNHYcX3EMu29hS9jMaqfErw3eLYy4FB2iU1esTJ1VCTVUOLofp6KLDE/dYRhpEK
	/IMlBqiDoozRuGkxLDKIH1XB3/3XtqhIaw7eHY9ujcyfpABV+FEX9sQFrpLxcNlWIRjEotcRhFjYS
	gT3ebdxbSXy3JiqMsQV/nLwViPy3JTAIG5w/xg7J8cCkc7keW9tIJNnt2BmCrtFWUPdB2JB/E0cIA
	uHAG1sMFM5m2S8SDCCY4CAGcV3LHNZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHryv-0005wN-Ad; Fri, 27 Mar 2020 16:37:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrym-0005vS-F3
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:37:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 566091FB;
 Fri, 27 Mar 2020 09:37:07 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 67FE13F71F;
 Fri, 27 Mar 2020 09:37:06 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>
Subject: [PATCH 0/4] firmware: arm_scmi: Extend SMC/HVC to support multiple
 channels
Date: Fri, 27 Mar 2020 16:36:50 +0000
Message-Id: <20200327163654.13389-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_093708_541590_CF7C708A 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, linux-imx@nxp.com,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

While merging SMC/HVC transport to SCMI, I did a quick hack to extend
it to support multiple channels. I may be missing something obvious, if
not the changes required look simple. Some of them could be merged into
original patch, but since I am unable to test, I preferred to keep them
separate, easy to revert if things break.

Regards,
Sudeep
--

Sudeep Holla (4):
  firmware: arm_scmi: Make mutex channel specific
  firmware: arm_scmi: Drop empty stub for smc_mark_txdone
  firmware: arm_scmi: Check shmem property for channel availablity
  firmware: arm_scmi: Drop checking for shmem property in parent node

 drivers/firmware/arm_scmi/smc.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
