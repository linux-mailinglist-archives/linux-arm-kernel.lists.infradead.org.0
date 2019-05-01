Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CB010D78
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 21:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KsVYA6bgD9Jn3pwOvq1nnIOqWJ+bP9hlNuHnAHYkw64=; b=su9
	4F7fFrZSRZAks8XVmhK8MDCdacxsyIRs5RqoWqAQnQg1pdrRUzcKhyOzNcmwz6lGkhRHxvmYB/kGD
	JQJ4nbuEt3BSLkxO87dHfVW5Dh1Q3Lyf1vf+cXcOAOMG9qnLPL7u0ope42rGL0nHVtYaXoI2gQ5Oc
	zm+okYRxLvzYs+Y/PJuG1c8vdVpFcTwMjcgCwmeJBX9T6Nb2p13iwf+Ehwf0A/AyMJpLUk0zc/bKz
	85FLUzxWAfABq0UXd+nDHS/6XSOkPIyW2lxL5AfMTlmThlf08PyPpbgGEOpxTmlYEPNp38V6e4iYT
	SPgbjln17TBpu7XF5tHhjLgYGFmJcXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvE3-0003es-7X; Wed, 01 May 2019 19:49:07 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvDw-0003eA-9j
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 19:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1556740137;
 bh=21zQ6hHqrFQ3g2iUdFoiowCPHS6/TQd1VUg3wwhis9o=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=SZaUrBqtcwq1X7pXBzbBrTtBS+Jr9vgtIzZi7foz9VwTlN6p9xEvnOkNUakE6pga2
 gvL/8RHzmTz0K+pqPxi+DArA5pcgrfjoQeE8TVyxwp7kXEGIoSjt8pv5pT0eCayv7K
 gEdZZW1fOC5PWaQRy1WiOWwY2W+IbEykUOolMwRo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx001 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MAxyW-1hVn6z3AP6-009zm4; Wed, 01 May 2019 21:48:57 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Update Stefan Wahren email address
Date: Wed,  1 May 2019 21:47:35 +0200
Message-Id: <1556740055-4962-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:f+rwKC3ASZA5zARUzjT+aTKfFX/7Q7fJ1bIFmoxL+HAxUDFYoR8
 4H4+NgGEvqIJ/4u7ig7sA6sT5KK/jox8bEbj7z6wQ5F3eTUnmxJLGnFKI0HQrdIR7o9LNu6
 gQz5mL+4ON8Z5UyQuk84AUQJ0PMI4Un2uQoy3NYCFnqLKtV5ZziRb84WTbvsvV655CzTAdV
 zzbxJOjVu2Q/fhqBgy+BA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0w6+BajR9i8=:fTwrj/p6wwBuGwdA0a7fn+
 7U5HXEnj4BKaQMGwJxDP65dFWTkEA6TMKvg2cN7PO251fO0wrbzxmRv+xf+fqKvY2J3NqyRmL
 wu3IDdHB4g0o2plLCZYfOA9a4fQOxBtpySZ78FuzrxlFc7bZumiUsrOesom/OvtL+i7d+xP95
 CcgUkpoHo0eE94jNZ9rqiJygMlP4VV+m57oDumsLtKQw4Kri67XQ7JLMD4xXFvBVz6ubmNJJY
 qwAuK7pBXrgEq3VlrRCSrX2wLRSrpuXdsjkNgciHpuZ5tqGVfYWGR7H79swIs+hdi3mMUEb9w
 o/whKNyf7dwy/bainOeIFUM+7vtGwEXrleZr/xPHt+p8z8KC1eYyU6aMmmGPj32V/6cPzFjw7
 8khAXeKRRC37jJ8wS2wsI59EDZ6zftf9FOGYYdyMUKbzNFFMZgaRi+NTD3C47CwjfxwxeSzrs
 Z1bitLLQ0ulMIZagL7rhdi937FGcQrtmiVrFeR7rUSs8p3FUxmNEHdaPMRdjltkKQRzhx8tc7
 QnotSf8//75DB+Zfc5f2enqoG+CjngoV6MkgFzLXazIU5+/sDJfEDgdHgvMbQ6Uj2h08uuiTY
 VmcXP87OA5TNoj6bAT88oUkuusdUkqJ41km9v2O7OObJLnz/25Ih0bTOksC67/ezaMkWezA6P
 62DpzbT8UbAAmPAzIcrxJS6LU7ThkDZSg31LR3qoPI0a/jprOTAaFzuDcdQ4ECCHPFXLsZBjt
 jFfonXyAaf+CgBBHQIaRc6NG3hgYPJa9sW7p1vrEAfnJP8V82Yf4VT27F1pphvXUuuV0BQVgX
 bjpeSe4t42laKfhNylpWIf0zWhFjPv0bDDobIMaJ+e4MXZVlqQHY2CC9RMjbfcpbY3F1nfkpQ
 kj4FWeFT0CAd3Kx2yndB3Ph1wCjjcdeFMsglO5oylyYFMxvsJs9OiAMS5g+lpi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_124900_679270_FA6110BC 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I2SE has been acquired, so i decided to use my private address now.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2c7d4e1..75a7876 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3068,7 +3068,7 @@ F:	arch/arm/mach-bcm/

 BROADCOM BCM2835 ARM ARCHITECTURE
 M:	Eric Anholt <eric@anholt.net>
-M:	Stefan Wahren <stefan.wahren@i2se.com>
+M:	Stefan Wahren <wahrenst@gmx.net>
 L:	linux-rpi-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://github.com/anholt/linux
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
