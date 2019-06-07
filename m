Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF6939620
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6q6+BwBPSmOclfCUitEbV6XnJrLc+0yeejixl2my6mQ=; b=NhH
	yOrrI18Fuan+/41i1BPZUdzzartrKKiS1CphJogbuVki+ud+qbvtesvWYMXYVfb7TuKLt2eIFhT0U
	OazTIdPlGmACnT0gItnhHw7QNvgOLIscB9ff0zN2xb8rC3stSYwpr3xBYJaeL6TjYn02HShS9oe5E
	25MmqbaoadspZBNGzPYW8rzOYRHxhzgsfGqlSaOlMLWyZmZFYkFDsR8rBK58O0pjEvn7uu+eWV+Le
	K70f/mUwyXZPZnviF0TJdH4kvEQk41Q5l0vUOVxXz60v5YUCzvwrV8WsvyhoKqdaH0Z14ZpTrMDh1
	dXCPy6QgcBs/Q2RxXOPCODn6640f9OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZKnb-00012p-7c; Fri, 07 Jun 2019 19:45:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZKnM-0000s7-DK
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 19:45:01 +0000
Received: from localhost (107-207-74-175.lightspeed.austtx.sbcglobal.net
 [107.207.74.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88CFE20868;
 Fri,  7 Jun 2019 19:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559936699;
 bh=n+3Sw/P9Edjb/WQZTIlVmNy5Vbg1PHkTk5IHHvvsEdw=;
 h=From:To:Cc:Subject:Date:From;
 b=keuDiN46VAX426027Ek7ZhfHrrLZ+7LmzFjuTfC9cmVWvXvnwLMzO5UNlHW2g4etB
 sULqXu0w1bwKfEKPKnBn6zQrKRN+KRgcznA5AAxxUe7aOKzAa/TUvFkTaHwp7Br4WP
 CJN/U/4GrtR6AnBf9K/sZr6aceSFkgWvEDXWRngc=
From: Andy Gross <agross@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Change QCOM repo location
Date: Fri,  7 Jun 2019 14:44:51 -0500
Message-Id: <1559936691-15759-1-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_124500_467220_81B950CE 
X-CRM114-Status: UNSURE (   9.92  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-msm@vger.kernel.org, arm@kernel.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch updates the Qualcomm SoC repo to a new location.

Signed-off-by: Andy Gross <agross@kernel.org>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4..de1e935 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2079,7 +2079,7 @@ F:	drivers/tty/serial/msm_serial.c
 F:	drivers/usb/dwc3/dwc3-qcom.c
 F:	include/dt-bindings/*/qcom*
 F:	include/linux/*/qcom*
-T:	git git://git.kernel.org/pub/scm/linux/kernel/git/agross/linux.git
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git
 
 ARM/RADISYS ENP2611 MACHINE SUPPORT
 M:	Lennert Buytenhek <kernel@wantstofly.org>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
