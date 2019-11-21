Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BC0105215
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 13:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V6CfruNcQhZSZuhoEXg/iAec3f9+IseihFh4oCb6DAs=; b=lmDySTS36NCxz1
	LcoH+RGue8deCIo5wFoVffpXFGrg53ABxiqBrc7vusOHkEp3cBdU0+jPt3m6GMWPRL8+nn1R5l/Ks
	hmNT4m8ys/kCWGFhBKxp4MTjBlAVZ4RcxGktBZrDtYBDrSdF7lkBViFpACqaFC+brGYLwPHU+rmu0
	rQf9O8PB0n0XXbqnvWmYZzFdKct3qPXZTWXk5EF+HiHQX60mPVmJuD3gbDXUNq6UQytMJpxLPuBxO
	CKcKPZltkxr0LI53Q29lrxVp7tq6+7WLClrLuoL4LXo3rs5EbBMtyzPqZk3B1eKC8hFHVJeGcgT3B
	Fy7Oy8S8R1Ru3vP76ybQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXlGZ-0002ur-DP; Thu, 21 Nov 2019 12:08:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXlGR-0002u1-SS
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 12:08:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id 4so774634wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 04:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KJqYvhXBJDffzJ0SjrFtTMgdKaiuOXK87Udh2aE1kIk=;
 b=EIKBJKnJiIYImuHuGrq//OUcOmc2QWisi6PUQPO/OyaDLGtuuQM11gsFNR4tIaWIzQ
 vkr0GFkp5oGVj32D4+DhnCOMVlIGOz+JFtvyLi/a79ZMb/e75QDLrBu+4GraHqwted9I
 tt7BIJ7Sjj0Dv6fDTh5UWk4dlmm272JnXAXtZiGMs+uJygjivWYd3JcSYLNX802ocVA+
 LbLASb3ZkekGzZfVY/toSTaYngajR6MVAPwGQJiuBypVc31mniCL8daeFXpz32nqmMbi
 oKFYnqKtQU16WLzVCWiwiX/HuCYgGVQ/q31l8g+psrT5/oJfpnHY7XwKx1o4CsoTwSr/
 PRZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KJqYvhXBJDffzJ0SjrFtTMgdKaiuOXK87Udh2aE1kIk=;
 b=OeMO4Hjh/nAEV4qXkywWrhihsYdhlGxr7Tm26QRAYrgVoVQSXORVGAMY5oA8r3XUEJ
 bqp4FcQ4R4VWBU3x8hivPzb6smpGP+JOBH0lqlIl2gAlfUC5AvwWToMgWj6ax8xI5tpX
 4cDvL7bimztc598O+l5ZCSMt4B6hIPxYzxht1kitoc6xScImH7uUamgloxkitdXdnZRV
 uHDzPpQapF78Wm1tSsx/Ul/4xrUvuCjyhhVEJrqcfsh14uXw2LDB1vWa4wKQDoiaZtl/
 /qHWKDDnny/3HhAnFU6vLd02YPemu8pxDUTGT3HRXUEjGLSTqymHnIvoZxd+SJ4WI4MK
 X5qw==
X-Gm-Message-State: APjAAAUS7nAgC2SpiGBasEvHi4pfs+erXNTo2cpWN2g8wvSzLYYuFMqu
 kaV2+WOC1bhretXhJq8PMeEMGtZS
X-Google-Smtp-Source: APXvYqxt7UYus/QYBp7KgEb4MEKvp80qZOawsyaiNOw6CLOIZfZXznUS+4AiMe1KGWmh6JstEnKHaw==
X-Received: by 2002:a5d:6192:: with SMTP id j18mr10526390wru.239.1574338124290; 
 Thu, 21 Nov 2019 04:08:44 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:a03f:40e1:9900:8828:fc8c:bd94:ae7f])
 by smtp.gmail.com with ESMTPSA id g8sm2738874wmk.23.2019.11.21.04.08.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 04:08:43 -0800 (PST)
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] misc: xilinx_sdfec: add missing __user annotation
Date: Thu, 21 Nov 2019 13:08:27 +0100
Message-Id: <20191121120827.4079-1-luc.vanoostenryck@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_040847_943772_AB42CF3C 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The second arg of xsdfec_set_order() is a 'void __user *'
and this pointer is then used in get_user() which expect
a __user pointer.

But get_user() can't be used with a void pointer, it a
pointer to the effective type. This is done here by casting
the argument to a pointer to the effective type but the
__user is missing in the cast.

Fix this by adding the missing __user in the cast.

CC: Derek Kiernan <derek.kiernan@xilinx.com>
CC: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
---
 drivers/misc/xilinx_sdfec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 11835969e982..f05e1b4c2826 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -733,7 +733,7 @@ static int xsdfec_set_order(struct xsdfec_dev *xsdfec, void __user *arg)
 	enum xsdfec_order order;
 	int err;
 
-	err = get_user(order, (enum xsdfec_order *)arg);
+	err = get_user(order, (enum xsdfec_order __user *)arg);
 	if (err)
 		return -EFAULT;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
