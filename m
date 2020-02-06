Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF333154604
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:24:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NdH5AqJIuuq0kyzldCGar83u+AoK2AC8sXfsopaaB7U=; b=IGQ0U8jmy1Dn6M
	ddgTbiU+oSynu3hxl7CFNKDsAbYB9k+PG88WizbIiRoc3LHIkz+t94rhiHrD5rgcPPtScP6dXDdud
	99rLvRk7Zw1RzF1UvRY9ZTsO/GSpNWMQ+8FGJQnLgQRQ/V3+9m7nFcXQeicjgCTc/rv3HzNdg0rej
	bcGaSx1bLPym6yQvWy6ijFEsKv6KpZ+tzKhum/xInKmicF+DPYiU2w8ZQQH2/cJrnrPZKnylKpfF7
	c2n5XUCv0o7nl2xMZU3Z+NzXcqZy62BqEPR0LnjgW3kQZaCKHmb4qCaxSCIi+rxqRwbh4gL799s5O
	NaVZlWJ3auLrrJIp8K+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izi4w-000313-7O; Thu, 06 Feb 2020 14:24:26 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izi4q-00030h-3Q
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:24:21 +0000
Received: by mail-pj1-x1043.google.com with SMTP id gv17so50585pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 06:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ujphz3B+s46aEe7JvGGM1Ne2ZXEsoldLhyDrK7xK9Ko=;
 b=r2fc3qi/9oNBxawfqNV0KXua36nCnXKLMdct8mDNook6eYV55lHztSV5xJ90MWYldf
 GQDjpa2pqjDN/R6JQwv933Zfvw/ePlhJandlvdwup1MujP/V4rd0jVWQErbPOdC/xghr
 IXDkRz0Qfw2uuZO9HEyg5aOlSMidW2brqKSnkLkFZIeh6dIzQCNCB8ZbPqVqA0s1DS6m
 yKcqYX3Qvo6bdZZmQtrz/tLC/u1qH5MPBtlXeWqx/zXLlLNyZ4zaxTtbPCmqTZMacg1Y
 yMiZypbiuqU+5hShOi+yn7yKlw/zZ3beb2KBtcTgZieAKFb+tvG7XgWGtbvmXtrjgoFD
 vKOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ujphz3B+s46aEe7JvGGM1Ne2ZXEsoldLhyDrK7xK9Ko=;
 b=iojHy6VafcM6LYbBse6LAvvLdI/CgGnVpPOC03dno4H6AlUuAbZNVpa5GohMSxsHuw
 hi6I9kAv12mc2FGOz1JT/XPqErqdvA50Pl6Ez6oKyY74KZ4fTqVeu0/Xby+DFu/sfPuu
 mAxVU1vJrIlVnQnTXxddNOvA4CWL953FjQSmgV6M9b10KeHcy1VnoSY8i6DLQIc1OJkA
 L9G6LDcvGlRqUafV0kZT7lzTnHM6IjMq3QRuAl4kHrbNmWMFv/Hq4vQ7gk/h2GO9I6jN
 4PdSuTv2ZvhFzbraoZhwwDnXhgLUMxutmSDkFUaEMZ4xt0sKnM9kWnJNK51X0ZfxvJp9
 ZUcQ==
X-Gm-Message-State: APjAAAUM3NCBrl0luvxDVklJhlzQg3J4FdmgTEUBBrzjau1cf5Dh7zLA
 gCgRKfMUMRyExnM98ajHnvQ=
X-Google-Smtp-Source: APXvYqy8U1nUa1UlxJnp4Ytp6VfhI1JzoIDrTHA7gjaGrxTdicYH6ucP96q5P+GGXmwsw8HEJLwNKA==
X-Received: by 2002:a17:90a:7784:: with SMTP id
 v4mr4688042pjk.134.1580999059559; 
 Thu, 06 Feb 2020 06:24:19 -0800 (PST)
Received: from localhost (104.128.80.227.16clouds.com. [104.128.80.227])
 by smtp.gmail.com with ESMTPSA id q66sm3942259pfq.27.2020.02.06.06.24.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Feb 2020 06:24:19 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org
Subject: [PATCH 0/2]  use readl_poll_timeout() function
Date: Thu,  6 Feb 2020 22:24:02 +0800
Message-Id: <20200206142404.24980-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_062420_167123_50C0FA17 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series just for use readl_poll_timeout() function
to replace the open coded handling of use readl_poll_timeout()
in the stmmac driver. There are two modification positions,
the one in the init_systime() function and the other in the
dwmac4_dma_reset() function.

Dejin Zheng (2):
  net: stmmac: use readl_poll_timeout() function in init_systime()
  net: stmmac: use readl_poll_timeout() function in dwmac4_dma_reset()

 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c   | 14 ++++++--------
 .../net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c  | 14 ++++++--------
 2 files changed, 12 insertions(+), 16 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
