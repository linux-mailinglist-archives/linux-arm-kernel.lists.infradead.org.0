Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC14E777D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pxcY7sBZ597bG6IzyqUY4MZ76hcZB4KvMwF7baQFSdU=; b=VRCMxH2N6f6qUt
	XUr6yeFG+pwd0wp1foAwnb9sQpBWcK+h/KZqjOB5R1m6fpOcR4AD//l4pyUN8bwTOTpTKjlL2p4kt
	HbWJjU+wsX6p7lxEswsXN6beTo+XHYY5aQ7t00ODRDSQVhSOAmQ7KHOu/ViOZag5/WK5ZM/DEHoim
	QUKp/p250AHIsdQI4H5YYSQIDOp6npYw4gY8/ynv+g6msRBzsfwtQHsgWHlOCkPGnofvgPtkU95Cj
	Ddu11lr5D/uRqZJyzECPVogYCCu699lFiadh9rxwQBlkA3PRrF1Vk3ZhOCTRw68Nb8TEp8xvYhMab
	tc9JoDgUuRyjf2XUPKFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8fN-0000fD-FL; Mon, 28 Oct 2019 17:18:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8fD-0000ep-KL
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:18:44 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so5931058plk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 10:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=al2Rd12hk7dN6JAAxnkLahBDEIvO7RPzw6SmvVKtces=;
 b=ZF1SiL3aNo3Cu8ZjC4BP9Vgp5LnT1B/FdytiksaFFaCT+gihNoA9Do1mrAeruGtnmc
 8VcewWSgwGy+h7iWnxmDEKaUUV9FpeCUqCH7lY6nAub9KnkENay2rejNUzqnwQ/SfQu7
 Fk/hz1MNU/hYfp0AKMK0JwAEGMCJYRGcLZAhpvCyCaEtuYua70afvvEbhZ4QfD/Y+C+2
 nmWMN1+gklEb4DZUR6ltojx/q9TgJ+81EJXYq7G9/NIyMXnmmZi/O7jinBzvAbp+bY1z
 uXyNNJjPAk10ejv0i4YecJYClu+/lW2ilg0xxFD21dt/owr0FhYwVKZod3UvqRUrPsCY
 b2Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=al2Rd12hk7dN6JAAxnkLahBDEIvO7RPzw6SmvVKtces=;
 b=B5/bXyybumC2wQ7EWlUq5XS9xWqH86gBf6RLktgMkRKo5KLJY8eaCgcTPwGmcC+ktY
 z9WyvxFrbKDElWivxkpn9kpoQydWtBL+XojMteQ3ixuBzomXqFVUYxbfjSCo3pVLFdTJ
 f3chxlhct+r32P9OFuQ9wNzTevfC4Ixr3edC3/6Uz41nVIj5kKp1xpq0XKlsHEMshsdu
 BOmOP9NHsmBdhdUfBBjrnQq9DYaCKTBRcJSqB8qtJ2lgno0LCBQoMuwhiTzPN6kTfGzn
 5ycYUdrslKpBER4cbAQV0SKB9xanno5PhM2nr21iMVN/LNcMflLxdpDDTrgJ+x6RU/JP
 J70g==
X-Gm-Message-State: APjAAAVqY2FVO2jTY5Cxm+QGHkfjo5Tc+UXnDqMl2wpgmvCC6I5+BaW9
 Oz9/AuAfB7BUNiQBdqh7FN9j0A==
X-Google-Smtp-Source: APXvYqzwJGHJ2FuWF88+zopx/Wg6G18xL03gdif7+dab8rhMsCCn+8Dnx5FsAj4J7qWFXtbEqf3+1A==
X-Received: by 2002:a17:902:244:: with SMTP id
 62mr20590507plc.14.1572283121593; 
 Mon, 28 Oct 2019 10:18:41 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id i7sm113353pjs.1.2019.10.28.10.18.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 10:18:40 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Olof Johansson <olof@lixom.net>, Maxime Ripard <mripard@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable ATH10K_SNOC
Date: Mon, 28 Oct 2019 10:18:37 -0700
Message-Id: <20191028171837.3907550-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_101843_732281_65CBF346 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ath10k snoc is found on the Qualcomm QCS404 and SDM845, so enable
the driver for this.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e5e83dbf1433..c350ca25ba8e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -308,6 +308,7 @@ CONFIG_USB_NET_PLUSB=m
 CONFIG_USB_NET_MCS7830=m
 CONFIG_ATH10K=m
 CONFIG_ATH10K_PCI=m
+CONFIG_ATH10K_SNOC=m
 CONFIG_BRCMFMAC=m
 CONFIG_MWIFIEX=m
 CONFIG_MWIFIEX_PCIE=m
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
