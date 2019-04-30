Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9016210200
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 23:45:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PGG8l7rBJX9SySz8ndMOnr8UznLryF5j5q5S7Kxca8Y=; b=gvFDLOZPC0OJNS8gfIUAzmN5Bs
	PwjNhq+IK3+V/omz4xNu5Qkc8YzPPu+ispDDSeOBwd2BLdoO1ReRZlkcdHs0MGG7Aq+J7G9dCeLhC
	rYpg3hN0QgNW7mzoPKS7ECoBlKBCg06GPaB5EW7Va4Xp3g0t0Baxo2tZcyQNs7kYn9RwUwjwXaQnt
	MrdaHNLAh1fRsDeRMgfryvQVUlKxYZN/lnYtvWyn+t/mvLY9UY4oP21mpplqJtLpI+lXXrRyoHbUB
	WS6Nl/s3Q5QM1Wt1l23XAVeVfLqO01fT4vXRF5wgHLgcfrcEsU/lw+vya/fhMWJ57VI19jeiH3lN6
	7sCn/fUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLaYn-0004GJ-TS; Tue, 30 Apr 2019 21:45:09 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLaYb-0004Fz-Kw
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 21:44:59 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D4EE160452; Tue, 30 Apr 2019 21:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556660696;
 bh=GaxIt+7bRIgTOt3LO61YtPvKLFWZmEpisbNXRWdc0Io=;
 h=Date:From:To:Cc:Subject:From;
 b=FNDcQkJnJf/BQtyjS5BVN779hFfQ0aBq3JU5sl8xcSmgpkawL0WQ36JwIjj2s40Kw
 L7QoC0433kFTb+OxHkYiTMzUdvxZUSs/HtU6WMQXn0aE8KHNOnK/iNpn50XN9uUStv
 rJhilMNkUCLvthte7Bj6gQEUKL7Je/WkamamsFHk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 7A3186020A;
 Tue, 30 Apr 2019 21:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556660696;
 bh=GaxIt+7bRIgTOt3LO61YtPvKLFWZmEpisbNXRWdc0Io=;
 h=Date:From:To:Cc:Subject:From;
 b=FNDcQkJnJf/BQtyjS5BVN779hFfQ0aBq3JU5sl8xcSmgpkawL0WQ36JwIjj2s40Kw
 L7QoC0433kFTb+OxHkYiTMzUdvxZUSs/HtU6WMQXn0aE8KHNOnK/iNpn50XN9uUStv
 rJhilMNkUCLvthte7Bj6gQEUKL7Je/WkamamsFHk=
MIME-Version: 1.0
Date: Tue, 30 Apr 2019 14:44:56 -0700
From: Sodagudi Prasad <psodagud@codeaurora.org>
To: julien.thierry@arm.com, will.deacon@arm.com, catalin.marinas@arm.com,
 mark.rutland@arm.com, lorenzo.pieralisi@arm.com
Subject: PSCI version 1.1 and SYSTEM_RESET2
Message-ID: <24970f7101952f347bd4046c9a980473@codeaurora.org>
X-Sender: psodagud@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_144457_706892_076408C9 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark/Will,

I would like to understand whether ARM linux community have plans to 
support PSCI version 1.1 or not.
PSCI_1_1 specification introduced support for SYSTEM_RESET2 command and 
this new command helps mobile devices to SYSTEM_WARM_RESET support. 
Rebooting devices with warm reboot helps to capture the snapshot of the 
ram contents for post-mortem analysis.

-Thanks, Prasad
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
