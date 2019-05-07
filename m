Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353A8168AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 19:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7YDXPqx5+XIxtjtnLa8lHiJ6+HLLpw1i48rkKFLEeR4=; b=lm9NIPQDQgW16P
	3hcGHBGhQtuBzKucBnfgRhgLVFJqn6PID++dswgdJJSe8q2wubwSH5kYyGx7dQE+HAHh8VpLcDfwE
	1mfDQ0zKk/i0GR4kFZBmwITvoScy11QKhNNGQKpSOMUv2GwK5Xr1mpocuGkHCQcvGpUkDTUTx7V5b
	xpjIKWVj7sUQDU5Eu+ZXF7BWKS+mANitf4k7KwJWA5YuLroYmrbk82jorJ56w9gMuEPRHplodo5fO
	unWr2bAZIpsTBcZNJX7Do0opCk30HtzVGgVf7+fjDoBffB95EuB7yWVlmSmcFv5fdppHhsCbPkvYr
	3q4q7rZiZCziD6wI3xVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Uy-0001Qq-7h; Tue, 07 May 2019 17:03:24 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Ur-0001QV-Nq
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 17:03:18 +0000
Received: by mail-pl1-f193.google.com with SMTP id n8so8481193plp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 10:03:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZgOuuMrrhj8XAofs6xeZ/fsPkpFUrdc6Z7bFfUFRLkU=;
 b=ex5h05iFrfaGv+p7MK4D/LXjLsex8mAbp3RLo7/ZCwuLuHUSWqXBGjjtma/TuRfie3
 UHdvTKAz64FoSGiBvdtu/3GIKKOhlSgw4tyeoRFsk9QXudd42qqny7s8a119ucBdjzrj
 MiUOMqhoQTcW2+RziA/v18D3R3WzuOaFDefnJfwNX7teCp2QHtN+B4ySstUQFy8oJ30b
 pswxRrEsfqfyNV+OPyNYq3hBd6xSn+0YIbNYvCu2ZRkgxV2NqcExC7HvlGyZ2/ttwoGw
 Hy7Adjbi3RXPlMBTxkx8j75II1THKx+85UF64LYCK4Rk2ERxZB2cglZkd+SEpD7XjpEQ
 nmPQ==
X-Gm-Message-State: APjAAAWgMPgXTnWzvsEn4rRrVwarWI6ne5jAqC+8+bqud68YRCqigfm6
 plAXot3XZIu0L0qn1Y79z12DQw==
X-Google-Smtp-Source: APXvYqwNDn3NrBxsLCzzv0AbtjUL+SxTQfXa4VJ+Fy/gn2Z/CVWh+d8UM3NntMwIqWZ7Z/heKmrJ2Q==
X-Received: by 2002:a17:902:8483:: with SMTP id
 c3mr39962344plo.19.1557248596403; 
 Tue, 07 May 2019 10:03:16 -0700 (PDT)
Received: from localhost ([2601:647:4700:2953:ec49:968:583:9f8])
 by smtp.gmail.com with ESMTPSA id n15sm31360519pfb.111.2019.05.07.10.03.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 10:03:15 -0700 (PDT)
From: Moritz Fischer <mdf@kernel.org>
To: linux-fpga@vger.kernel.org
Subject: [PATCH] fpga: zynqmp-fpga: Correctly handle error pointer
Date: Tue,  7 May 2019 10:02:57 -0700
Message-Id: <20190507170257.25451-1-mdf@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_100317_776775_62E703ED 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: atull@kernel.org, michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 Moritz Fischer <mdf@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes the following static checker error:

drivers/fpga/zynqmp-fpga.c:50 zynqmp_fpga_ops_write()
error: 'eemi_ops' dereferencing possible ERR_PTR()

Note: This does not handle the EPROBE_DEFER value in a
      special manner.

Fixes commit c09f7471127e ("fpga manager: Adding FPGA Manager support for
Xilinx zynqmp")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Moritz Fischer <mdf@kernel.org>
---
 drivers/fpga/zynqmp-fpga.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/fpga/zynqmp-fpga.c b/drivers/fpga/zynqmp-fpga.c
index f7cbaadf49ab..abcb0b2e75bf 100644
--- a/drivers/fpga/zynqmp-fpga.c
+++ b/drivers/fpga/zynqmp-fpga.c
@@ -47,7 +47,7 @@ static int zynqmp_fpga_ops_write(struct fpga_manager *mgr,
 	char *kbuf;
 	int ret;
 
-	if (!eemi_ops || !eemi_ops->fpga_load)
+	if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_load)
 		return -ENXIO;
 
 	priv = mgr->priv;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
