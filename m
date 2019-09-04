Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2717A8716
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pvkarl94++Z8JGbquLwGWOs9sozx0UK61LmYLxYuha0=; b=LMO
	DbjnZnlnZYsSA/6VGa2v0o9AROwGueV/zBc8pe5igWtL+tpvrOrVggw4q4jTFF3KBL3X+JaD08IPY
	DzFbtufMuDulJm0wbONUKNNdsDkMmo/R0hyPR8UaGWXRIez3+rCaAs/5vhP0OY4iSf05rg9DrdTTU
	9+AZ8nBXyNJsXlq7/LLHZy+sDTwGNtkNYDPrr7ZSFwFG7idp8uBgdcoI1OXrBJv8bt/vArX4aRQGe
	aU3lKpUEY7dgeUgrvIu/8LfPk0Pww1BXjkK6XPdlzMBt48m8u+cfmNQf8WIzjGpN2Qet9BwCwd1c/
	46BBmlGTlX9DZHx6yOFygjwXcUByOLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZQF-0007dD-H2; Wed, 04 Sep 2019 17:50:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZQ5-0007cE-7w
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:50:14 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 141E621670;
 Wed,  4 Sep 2019 17:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567619411;
 bh=0Ky5a6jI0AkemeGonRETgu9vKBzpw70po9Drs8yrHQU=;
 h=From:To:Cc:Subject:Date:From;
 b=d15ZoBlDldssJf4rJKpfX5FQ8Ak9BfyUApl8Inl6hS7n65N526vcsVFm4fCxicJlf
 EAyW+UeLU8atKZYv+Wz9US8cUTXtZQ4HgilPPm6N7/kI1Lmop6y4zDiCXNR1tUsMxS
 BUAm5cH4MwLHTTZ1Uja5dlb4fV3NDZQLCrq0Wtog=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 0/5] arm: exynos: Second round of pulls for v5.4
Date: Wed,  4 Sep 2019 19:49:57 +0200
Message-Id: <20190904175002.10487-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_105013_306988_43742034 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Notes:
1. One patch for soc64 sent directly, not as pull req.
2. Drivers and DTS pulls are on top of previous.
3. mach/soc pull replaces previous pull (I see it was not merged).

No dependencies between pulls.

Best regards,
Krzysztof



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
