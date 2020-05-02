Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46E41C226A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 05:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8NeENETcu6beiN/lnStlKEXEpLKIR7DSCCzWmGyJ1Zk=; b=rii++bRapX1kCC
	0Qv2PM2lJsXKeIiKLgQHJq4advOL+bCdMmYcrVdrvtx2RnAfY1MWa+E00/JMQEiJDdwomXLiK/iZl
	K6SoFJLX3OSAllM9JBxdT1yqp+IrOft1Kqv9rrVhmbE+MKahLnnEhizY1sWD+YbVxMMBHA4r96ZWM
	US0+7KRMXOy47SVTMM32xvugcjTNrATX+qNHr2YmPQ/v6wWVN3E9wVtwrc38fVJNKSnjWa9tv7VLN
	vgRanf9xMhkyeA3+yZDjeG1zeL+Z/KZZ95yiJ3SRFMFaUoupQEIa+gKv6Y6ZZ28t4qSTR+zIK29hs
	Ef/fu9wRKM/zOMxcZc7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUiOB-0000nX-38; Sat, 02 May 2020 03:00:27 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUiO6-0000mN-23
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 03:00:23 +0000
Received: by mail-ot1-x343.google.com with SMTP id z17so4169212oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 20:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ggxUrTEMdOBIpxo+ZeqC5vmjC50PL8n9qRt0O5YmVrM=;
 b=eb1igCkfmUfgb4anqtJRttFUI4TVCn/3yNA1G5fT0zedyad+1V2j+81W6vJFt7cLlD
 aG68D1ffrqudSWUhkI56J6cC5uPM3CYv1bOMbS8qAfQ1umWdECRBXahwKi33o7DtkKwI
 VVnUtuMhnBiGM8hriSFFh2EVa+jZWuzl4U9Qc67srDPGWclef6s2BhNQpUPKkMMA1NXC
 5UfYE7HIe2m37gTZ0X2jMtWMUp3Wn/FjUpT1c53/YEAV6HeRTETqrL0fKkig0r/cUGVA
 WM8peYfgVKsILX1Hf7jMdeD801vqnTsAW6A4wZgrBVuQerUic25nhMfEyA0ctZkNou9r
 vF2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ggxUrTEMdOBIpxo+ZeqC5vmjC50PL8n9qRt0O5YmVrM=;
 b=sAWaXOJbTUU3p4mhciCbld6cRAYKR5WSQ7KDkz8CDfQi2JYlnXT1oxyxkRcpZNS5Tl
 PxJcJ1p3MMOMdHmaNBHC+9pgQ/oOPDMit+U+GY1VU9vvOTp/LiqFrjswwkGzOgqSg9vv
 RJW8ASPpAA8q6O4iowqvueqyunr/ZcTCl/jEzOg6I1I2SKVPdRjpAPQAx/6qC7MReqPv
 H1hRvWGPXJB0jw+37NmycLIN/2R12g5G5z+CNDZBrydJyQWWUTCZfy39RcQp+AqxRmrj
 za06YxESIyXOFbZ/CNvAXPS6M/70UZ3znRZaALa4kRJYEENvCrslurXvr3A1BKDAuc64
 0i+Q==
X-Gm-Message-State: AGi0Pua4cMNKrhnmDjBSImmnhUeH/r5uMAJuxri/wgekjuVmOQuzXDSY
 bDDh48bovYYGTtHVUdzrVFY=
X-Google-Smtp-Source: APiQypLe/yx/Dr+vgP6JwU9y00DcNo+QswijdAlkdRIVlQpMSj0oWburLhC645chJt4a8aZ3xjgOwg==
X-Received: by 2002:a9d:2782:: with SMTP id c2mr93426otb.106.1588388420239;
 Fri, 01 May 2020 20:00:20 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id f16sm468419oib.25.2020.05.01.20.00.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 20:00:19 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michal Simek <michal.simek@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] firmware: xilinx: Export zynqmp_pm_fpga_{get_status,load}
Date: Fri,  1 May 2020 19:59:58 -0700
Message-Id: <20200502025958.2714249-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_200022_185893_2AAA932B 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building arm64 allmodconfig:

ERROR: modpost: "zynqmp_pm_fpga_load" [drivers/fpga/zynqmp-fpga.ko] undefined!
ERROR: modpost: "zynqmp_pm_fpga_get_status" [drivers/fpga/zynqmp-fpga.ko] undefined!

These functions were added to drivers/fpga/zynqmp-fpga.c but not
exported so the module build breaks. Export them so that they can be
used in modules properly.

Fixes: 4db8180ffe7c ("firmware: xilinx: Remove eemi ops for fpga related APIs")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/firmware/xilinx/zynqmp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index bfaf29a58eac..8095fa84d5d7 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -755,6 +755,7 @@ int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags)
 	return zynqmp_pm_invoke_fn(PM_FPGA_LOAD, lower_32_bits(address),
 				   upper_32_bits(address), size, flags, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_fpga_load);
 
 /**
  * zynqmp_pm_fpga_get_status - Read value from PCAP status register
@@ -778,6 +779,7 @@ int zynqmp_pm_fpga_get_status(u32 *value)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_fpga_get_status);
 
 /**
  * zynqmp_pm_init_finalize() - PM call to inform firmware that the caller

base-commit: fb9d670f57e3f6478602328bbbf71138be06ca4f
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
