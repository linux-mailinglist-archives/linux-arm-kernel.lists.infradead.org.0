Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A111147EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:04:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+Ot/HvVMDWv8RVBIN9Q2H+Dvfpl3vh40C5oIT51gmeM=; b=jJ+
	HLPguUoYJNwH5CffeJNn1XOTqcljRHFr03MEq3pvNj2hGdmG+kJREHfSZ0XUNsUU6cFMCPsduU92W
	7TObYWVBt6xhrpQH07vLsMpmsybre7zJ4CSbJsNDGycUNO5R7VzjPDRz0njYxbR32+GRdF5OBSAx/
	4JBopN7+Z6H1qwXsvW3G4ZDBYGPItYAtwG9mcmoyWrzhvcxDX8//4DP5EoqYej26ZOzA2S1pNpGF+
	1QPSU9g6eoJtw/vIaiQzXlGHlXqTJ8e3UpJ+WSpDMQ9jElX7B6h6UsC9odclByiq5b7JjNApBoAzT
	wznYcgE1WbOu7nolY9I0sP4msVmloLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxMh-0001gn-Qy; Thu, 05 Dec 2019 20:04:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxMZ-0001gT-7m
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 20:04:36 +0000
Received: from localhost.localdomain (unknown [194.230.155.234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 198DB24670;
 Thu,  5 Dec 2019 20:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575576274;
 bh=6i7NWqiwckPbF7W78MFVTVfCgJ8Ms5/BpWOxNhnaeMI=;
 h=From:To:Cc:Subject:Date:From;
 b=QCy1zTpUqeOjX5KHc1vWn36JjhU/Ro2t7HZZfk0ZLURg8cjoC7IL6vlBCYN+vYUcR
 BqFkaDlSqBmjDbxZAqsGrW5uPZor+tX8kG0zfeYq5fq3Lc/eBOIDkIByoh/Bn7ig2P
 J/dctXEC3KW7523KdYunbe/jS5AqsfEZ1JNu7nHI=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Include Samsung SoC serial driver in Samsung
 entry
Date: Thu,  5 Dec 2019 21:04:22 +0100
Message-Id: <20191205200422.5781-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_120435_303813_3E7E4DA0 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Jiri Slaby <jslaby@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Samsung SoC (S3C, S5P and Exynos) serial driver does not have dedicated
reviewing person so some patches might be missed be Samsung-related
folks (e.g. not even reaching Samsung SoC mailing list).  Include them
in generic Samsung SoC maintainer entry to provide some level of
reviewing and care.  This will not change handling of patches (via
serial tree).

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jiri Slaby <jslaby@suse.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

I am not the author of the code and I do not feel confident in its
internals so if anyone else would also like to join in taking care
serial driver, feel free to let me know.
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 15e905b37790..d6e593ee9adc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2272,6 +2272,7 @@ F:	drivers/*/*s3c64xx*
 F:	drivers/*/*s5pv210*
 F:	drivers/memory/samsung/
 F:	drivers/soc/samsung/
+F:	drivers/tty/serial/samsung*
 F:	include/linux/soc/samsung/
 F:	Documentation/arm/samsung/
 F:	Documentation/devicetree/bindings/arm/samsung/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
