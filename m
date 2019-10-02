Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C984C4792
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 08:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnAi6lp+ZyFkBWPS6Nm/bweoOW2U0BImWZR/iPXeV/o=; b=eD3SqkV945NneF
	b/4C6B1ij8kAcjSjBtVBzi/eej2VhnT8rO2fwLkamjdLVGz+/i/S+1eCFgJIYv2JcOnyh95MI3B3E
	k3/0cR2f2OduaGvKTEiqqATnwq1WVBAMR8/g15GFtd2McpwTmp8UshaZwZCRnokR+C9IT4n+UydMs
	3nU0FZ0DbXR3H68Mbwp/xmti4faC61dvr65IEnWpuQjNC0aXBcF0HN6DdlsL7XFaZ2TIXJWJOQdl+
	H7IUrJR9dafzvyrNPmxvGrR46JemKj2wa1tsUI1snVmkXPKYtmampZ/K3PxKHcIw0LPIIShAXtxDD
	Ejet52B/n48G9UXrSfmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXss-0008TG-Ek; Wed, 02 Oct 2019 06:13:10 +0000
Received: from twspam01.aspeedtech.com ([211.20.114.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXsP-0008Im-WC
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 06:12:46 +0000
Received: from mail.aspeedtech.com (twmbx02.aspeed.com [192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id x925uHxR005679;
 Wed, 2 Oct 2019 13:56:17 +0800 (GMT-8)
 (envelope-from chiawei_wang@aspeedtech.com)
Received: from localhost.localdomain (192.168.100.253) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.620.29; Wed, 2 Oct
 2019 14:12:13 +0800
From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>
To: <jae.hyun.yoo@linux.intel.com>
Subject: [PATCH 2/2] dt-bindings: peci: aspeed: Add AST2600 compatible
Date: Wed, 2 Oct 2019 14:12:00 +0800
Message-ID: <20191002061200.29888-3-chiawei_wang@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
References: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.100.253]
X-ClientProxiedBy: TWMBX01.aspeed.com (192.168.0.23) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com x925uHxR005679
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_231242_297447_C39F8125 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.20.114.71 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 jason.m.bills@linux.intel.com, chiawei_wang@aspeedtech.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the AST2600 PECI controller compatible string.

Signed-off-by: Chia-Wei, Wang <chiawei_wang@aspeedtech.com>
---
 Documentation/devicetree/bindings/peci/peci-aspeed.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/peci/peci-aspeed.txt b/Documentation/devicetree/bindings/peci/peci-aspeed.txt
index cdca73a3b7d8..cddd2d2aa58f 100644
--- a/Documentation/devicetree/bindings/peci/peci-aspeed.txt
+++ b/Documentation/devicetree/bindings/peci/peci-aspeed.txt
@@ -4,6 +4,7 @@ Required properties:
 - compatible        : Should be one of:
 			"aspeed,ast2400-peci"
 			"aspeed,ast2500-peci"
+			"aspeed,ast2600-peci"
 - reg               : Should contain PECI controller registers location and
 		      length.
 - #address-cells    : Should be <1> required to define a client address.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
