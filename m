Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B779EDF6AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 22:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iY4c+7MUb+36TciS1RWlFxM991Mk0vXX2YmiBgdfZnY=; b=AQHvtpFua9a7xv
	EdpTL7ZT2NDAM4+iBWfaWYbGvDOUA6giO2CfVmQcpB1JDR17BZJhOW6TvE5IH9cgEmXw5U46aq9kG
	MILMeEExsBOAjU8hTBa7fGwdGEUcNKJ0wbiFG/U76ngAtH0W9eJw7nFiHMZ1J2yT0y6KJw97O8vfX
	SZINx+R6Tk4vjRFWAI/inuh+WhgXGj1AFl6DS8ga5brO5xdusItyrmwCVtxLbCDxg+Egl92WNQUj2
	AUfcNP8jnwJAhImrjp54Wd36vTLl66eQMW1xhvi/ZnDisYB647kitORpS6TTqwKnz7y3WoTKFgOkM
	/1xt0SZ7rgK5D3oL9O1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMeEa-0001rl-Av; Mon, 21 Oct 2019 20:24:56 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMeE7-0001e7-Eo
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 20:24:28 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 13:24:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,324,1566889200"; d="scan'208";a="209450424"
Received: from maru.jf.intel.com ([10.54.51.77])
 by orsmga002.jf.intel.com with ESMTP; 21 Oct 2019 13:24:24 -0700
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
To: Brendan Higgins <brendanhiggins@google.com>,
 Wolfram Sang <wsa@the-dreams.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Jeffery <andrew@aj.id.au>,
 Tao Ren <taoren@fb.com>, Cedric Le Goater <clg@kaod.org>
Subject: [PATCH i2c-next 1/2] dt-bindings: i2c: aspeed: add hardware timeout
 support
Date: Mon, 21 Oct 2019 13:24:13 -0700
Message-Id: <20191021202414.17484-2-jae.hyun.yoo@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191021202414.17484-1-jae.hyun.yoo@linux.intel.com>
References: <20191021202414.17484-1-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_132427_553686_9AA4D3E2 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Append a binding to support hardware timeout feature.

Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
 Documentation/devicetree/bindings/i2c/i2c-aspeed.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
index b47f6ccb196a..133bfedf4cdd 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
@@ -17,6 +17,8 @@ Optional Properties:
 - bus-frequency	: frequency of the bus clock in Hz defaults to 100 kHz when not
 		  specified
 - multi-master	: states that there is another master active on this bus.
+- aspeed,hw-timeout-ms	: Hardware timeout in milliseconds. If it's not
+			  specified, the H/W timeout feature will be disabled.
 
 Example:
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
