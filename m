Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316401544C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:22:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DXyKV2W5nG/TenGMybw8vfIkw0d53ZdmCb4mIvQL+bQ=; b=tlgI6WsMfIQY2F
	MaoO6MKjZ840nyQRYAjVJ9nGUBbPx+kmW5HJsF7phvpnkdojFo5LFQVcnAA1glakxzbm7xd0WXMS4
	i0UNXQivAAENv5EQtF/PbMKjNoVLgeNhD3kDfVtwAm5pY0AVZ1ls0Yi7gfkXxzlSMLShsHSSNmEL/
	YyjmTKgL/wdCxLiQcn/27SClj9NrAO0oD/iV2tB2FPLVqr5On2QaysYX8GKKYjg9tltjK1ec42O0L
	cxw8m1/otvx4lLL4t9NYbxu0Td3TW5an57DO1XudC3BzH55EHoOkFsZ5R4qZbUWVgvTxCpaGHUZRg
	ZiHrnzQZpafb4jJvR2UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izh6j-0001J8-Pl; Thu, 06 Feb 2020 13:22:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izh6b-0001Hv-Hb
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:22:06 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay11so2356475plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 05:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MMEdhBkwc3vUygsidCCQyAeg+NALFLEwybGyK66dnDM=;
 b=ThufnkVcDU19LYejj+ltE3+1XMcAoY8Q+5t0KjvrkpxTrDaeOXYjjmvDvZN/xss2zg
 c51VN03oWDQJKeGWbijzI7CpMn4Nl1RO0c2uNhdpZURO1rGkaTGV1iXXXzZ1QvutbMy/
 LVSnZCHO4RmjIfUno4drB63Z33CNnlrYz3D/AATMdEg4kyx06lZ8PFkMMpjr3z3WV7/o
 Xq50QheauxttDJWQN971cFp4SWsyZM8Lr+bYDGY2svzGNgyZNzEGW6iPJF9bjJAE56Zo
 Th03yl9mlf985Cb/6oqKI6vrQhaMtcEGDcIAD0cp2d1QEt8m6fMtG1fniOeoygtxEInx
 JHYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MMEdhBkwc3vUygsidCCQyAeg+NALFLEwybGyK66dnDM=;
 b=kIIwcUllpjH1Chp2723JeMW1cSGDRfvBP2nJYiC9GRqJopQODj05rtmoUKSLBmkTMK
 J9VUZgjnMSTmGFVBDsKua5OzPu3ilOD7ONyD4g8ljk57D1JKnEmGHJWRHjnca5jbS+zA
 eJlOr/AcmJ5zhUvB11OYUNgGbcwRjelJl53wzUSdXmyjPzDWiacI2Vnal33YNg/xMQ23
 U5ZMgtrJ19tc1UGRKWGDPTW84QrxXT3wqC212dR97bu783bK7k5AlBeyHrnZCVL5iYIj
 p6J5m5mbOcqudEjb3vDzM24q0hGfxtPRmiFN3PVqd0LTCYnl5aJhktP3/YLz0f5aggG/
 8E0Q==
X-Gm-Message-State: APjAAAVxqEn8uwUGroWR7W26r37sarYScofz0YEU+VPewt138YFcvf92
 BxVz1GfnA98dulgaucqoiQ0rk3XD
X-Google-Smtp-Source: APXvYqxnin0IXvtlv+L3JlOyDTCqX/MIheUeZ43LFgp9JPOckvDVyoULOK5DJ/d00XhbqGPuQwVrVw==
X-Received: by 2002:a17:902:680c:: with SMTP id
 h12mr3688016plk.102.1580995324525; 
 Thu, 06 Feb 2020 05:22:04 -0800 (PST)
Received: from localhost (104.128.80.227.16clouds.com. [104.128.80.227])
 by smtp.gmail.com with ESMTPSA id f9sm3306849pfd.141.2020.02.06.05.22.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Feb 2020 05:22:04 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: vkoul@kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net, mcoquelin.stm32@gmail.com
Subject: [PATCH] net: stmmac: fix a possible endless loop
Date: Thu,  6 Feb 2020 21:21:47 +0800
Message-Id: <20200206132147.22874-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_052205_606932_C4FDF74A 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It forgot to reduce the value of the variable retry in a while loop
in the ethqos_configure() function. It may cause an endless loop and
without timeout.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 7ec895407d23..e0a5fe83d8e0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -413,6 +413,7 @@ static int ethqos_configure(struct qcom_ethqos *ethqos)
 			dll_lock = rgmii_readl(ethqos, SDC4_STATUS);
 			if (dll_lock & SDC4_STATUS_DLL_LOCK)
 				break;
+			retry--;
 		} while (retry > 0);
 		if (!retry)
 			dev_err(&ethqos->pdev->dev,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
