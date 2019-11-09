Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69F1F5D0F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 03:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X3zzFccT1RYQhhEbGAfxaqX3/hPrcS03OwiClUf2vrs=; b=ceJC6sE+wMR1np
	0NCeTOuH8H5vf6eQb9QXaq7S5twuJMJk8M5VRF4vYCMw+KnS6Y2CXiGU7OCwUYIW1K4xvORu/SlgQ
	gdl1Q0OY5zeo/JYLnlxH0auOMVCYPsZlsII8h9ldo/W6D5rTQNVk/VJBxetUNkyArWAHLVkmzKQ/f
	ZKT9M7heLt3xkuhJpnF1teHD6c+wJLUYPYfhNY95gHcEphpH2UhcG5qPDY+SxF19sAaDLOwsisW4Q
	2cMbjbPz9YMmXFI9xgrTv/CEl7GXGgntiNgCfS8NeI+xrqznF0t9DKvJwbMRwNSh0Nb4Aegv97X9q
	oph1pcOTRQFt1LAxueEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTGi9-0006AS-0F; Sat, 09 Nov 2019 02:42:49 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTGhz-00069q-H3
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 02:42:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id s5so6352989pfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 18:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z3aOUzy6rUzyL+A22ql+voMdR9JLNJalZQcTYr1824w=;
 b=NRtazlfidpLzrbXKDkCOE6NaO6GOLX5Lh6Mm7Pvv32Q3hQv5PMbZLh7Ac92oDhosFR
 /1zBLFNCf7wGnzAQyXp/pqUR/AikPgmQKcIPZVSGbHhAjK+UDMKln89bNSQVS85ACJJE
 ikbdmKqeIuQvukcaxMNkKR9ZU8ZRzZeoxkmvGNv/ubqJNkAPnjUUWwNe91owFiC/OzSO
 hmSQwuKmmDzAekKCN3hKX4nzPlBPlzydDEr9FeFQtpqj+mVR5hOVCaY3fxzLKbfuUaz9
 fFqsVOa1BH65aTRWqQwStHrv5OsMNXXlVRCaJ+Z/+azMJmnFR9VWisr6AX+uJEn57jtN
 Gyvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z3aOUzy6rUzyL+A22ql+voMdR9JLNJalZQcTYr1824w=;
 b=OruVGsBwWpfotRwN8c1uGwl/0h/g0Ex6czxjlb58N53imsqw6qCrXuUyORDMlgIzfi
 9OXAc9vtJASniZofqkFeU1RQ5Hi2viUh0SUSXf09zzOTl2E9XbyJlInoLLMsIP6XhfOa
 Yb+VprnR/yYQ613GbKeZu7Yic+HGqK3lPBbF0wGPM1wLtF4eHmV5rMOU8myBu1rX7+uo
 OljPRd+LMQ//rM7KfLheY7kCBjcQj1tlx+jXJ1AGL+ATG8BmJ2gQh+L9u3tQ/wuO47By
 wCKSU/S+YFNOX/juOj827RbkbVRTe7aImvlQY1K1ZL9Gv7ox7uno9ElFB9pJlwkkzyZI
 VGPw==
X-Gm-Message-State: APjAAAUi4NtzNhd9OyxiwGoCOpd5aNbgolno9VMTsFJd6pXwsucZZC0S
 tV67qp2uKX6lzGLOba4hPCx/Bg==
X-Google-Smtp-Source: APXvYqxbTMEPmg4n9oNIpZHyLmp21Sp2dvJPnoo+1J59q3v0NVek1OR1AH8jXhKgG7Lx4ATWe0bCeg==
X-Received: by 2002:a63:e249:: with SMTP id y9mr15582281pgj.383.1573267358334; 
 Fri, 08 Nov 2019 18:42:38 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id u20sm8436966pgo.50.2019.11.08.18.42.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 18:42:37 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
	agross@kernel.org
Subject: [PATCH] arm64: defconfig: Enable Qualcomm SDM845 display and gpu
 clocks
Date: Fri,  8 Nov 2019 18:42:34 -0800
Message-Id: <20191109024234.1757452-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_184239_612392_43699010 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-msm@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the drivers for the display and gpu clock controllers on Qualcomm
SDM845, needed in order to get these features working. These drivers
provides power-domains and can as such not be compiled as modules.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7fa92defb964..7fd999be3de3 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -726,6 +726,8 @@ CONFIG_MSM_MMCC_8996=y
 CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
 CONFIG_SDM_GCC_845=y
+CONFIG_SDM_GPUCC_845=y
+CONFIG_SDM_DISPCC_845=y
 CONFIG_SM_GCC_8150=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_QCOM=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
