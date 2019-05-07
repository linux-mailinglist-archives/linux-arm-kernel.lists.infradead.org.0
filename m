Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7566D16B98
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zxBDlKO66ZdRt1qVWtzGwl8JqcgDh4yZSVObnZy5XGQ=; b=dy6Kc1jNvclV6k
	CNaQ+TIhC7fSHM7H5EOTYTxs6hf2+9UdlGRYO4Tu7E3xEkQfniO7HdXDiVz9z2S14h9oBGaSjXExz
	DDKIlTupbAOFyp2KfHi914SfLbT35Z8KAp5zjAXPLFqRmJ37a9fZlg0cjVnBT3PCINE3PWCYVBNVN
	B8IDpPIw+U5ELEWdYmntGiITUrOfZTEmL+KhN6EmXwR9Z4o9mU+pHBRR7tmnGlCsYTjz20BI8OhoH
	S4+n+agQb4KsW95BUHzTS0AlfgbumqCDoddzVKCo/Wdl8yINe0IvkeuF15UGaPW8t9tWZCTnxxRD8
	sdvGJEecyWv3KQY8IarA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO602-0007zj-CE; Tue, 07 May 2019 19:43:38 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5zw-0007zQ-7C
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:43:33 +0000
Received: by mail-pf1-f193.google.com with SMTP id l132so4228342pfc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 12:43:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ewkuTpRG7XAqOKCyoArod5p1Qyn37L7LNzmlcvLqB88=;
 b=sAOz+dGLjq/tmb+wMgRZkE1tuZZWFILOWpaLhX6t17gbKwc7vBvkNdJ42C1hFV1psz
 YGCSBCYkkFJyvH7lMI7Y4n39RuhQWOfXjH+nB4yT+SDk+6MEZYPbBfactiwtG8CfsmQk
 JRob1yC39j8HxcxUFRV9IEuYtkhGQSTzXcY0ygUAJd0U0yzp3Faol4B8vf/QSzOLUQy7
 X0jD39UDrehgVKUVenEJFzgDOv1/jBmSui1JYCGuUFQkcS/e5kzFo2ea6qZRC7SRQUds
 VE46+B+CnoupSSTHrhlehhTuW82UXU2+dY717CFmLfrNGsaMmQazZl37KTrIFsvNoCBw
 pKSQ==
X-Gm-Message-State: APjAAAUNbErNYOn/SUyc5kp4BP5tEEfWOpvqJ0yR6Q37vgFOqPYUYol/
 S08U3dPuYj5rOZ8l/42dYian4A==
X-Google-Smtp-Source: APXvYqzBkEu3Inaaw5RJcp14jDR73QiaQstLX9sXE/2auF/4QH+BQhdInVPnwxoNgO9g7hlwJL4HxQ==
X-Received: by 2002:a62:e50a:: with SMTP id n10mr43912680pff.55.1557258210936; 
 Tue, 07 May 2019 12:43:30 -0700 (PDT)
Received: from localhost ([2601:647:4700:2953:ec49:968:583:9f8])
 by smtp.gmail.com with ESMTPSA id s79sm31216845pfa.31.2019.05.07.12.43.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 12:43:29 -0700 (PDT)
From: Moritz Fischer <mdf@kernel.org>
To: linux-fpga@vger.kernel.org
Subject: [PATCH v2] fpga: zynqmp-fpga: Correctly handle error pointer
Date: Tue,  7 May 2019 12:43:13 -0700
Message-Id: <20190507194313.1618-1-mdf@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_124332_270043_AF075D65 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
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

Fixes the following static checker errors:

drivers/fpga/zynqmp-fpga.c:50 zynqmp_fpga_ops_write()
error: 'eemi_ops' dereferencing possible ERR_PTR()

drivers/fpga/zynqmp-fpga.c:84 zynqmp_fpga_ops_state()
error: 'eemi_ops' dereferencing possible ERR_PTR()

Note: This does not handle the EPROBE_DEFER value in a
      special manner.

Fixes commit c09f7471127e ("fpga manager: Adding FPGA Manager support for
Xilinx zynqmp")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Moritz Fischer <mdf@kernel.org>
---

Changes from v1:
- Address Alan's feedback regarding handling both occurences.

---
 drivers/fpga/zynqmp-fpga.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/fpga/zynqmp-fpga.c b/drivers/fpga/zynqmp-fpga.c
index f7cbaadf49ab..b8a88d21d038 100644
--- a/drivers/fpga/zynqmp-fpga.c
+++ b/drivers/fpga/zynqmp-fpga.c
@@ -47,7 +47,7 @@ static int zynqmp_fpga_ops_write(struct fpga_manager *mgr,
 	char *kbuf;
 	int ret;
 
-	if (!eemi_ops || !eemi_ops->fpga_load)
+	if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_load)
 		return -ENXIO;
 
 	priv = mgr->priv;
@@ -81,7 +81,7 @@ static enum fpga_mgr_states zynqmp_fpga_ops_state(struct fpga_manager *mgr)
 	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 	u32 status;
 
-	if (!eemi_ops || !eemi_ops->fpga_get_status)
+	if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_get_status)
 		return FPGA_MGR_STATE_UNKNOWN;
 
 	eemi_ops->fpga_get_status(&status);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
