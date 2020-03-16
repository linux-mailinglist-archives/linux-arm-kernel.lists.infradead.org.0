Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FE4186192
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mjD9efTn0e2PNJx082fI+29tAuxFSDrwrvyVYsXj47U=; b=kmWEbk0SSrlWbX
	k5l+1hNmYPQ3Q27tTA3j1o3S2AVnHpHFI9SEE+kd9+Y8biBow6ZFS5NlTcFP0OrCQGQLIgPR8+rUD
	7XAojeJZ4DKOigb7m1hCVjaqPDK8CeIJFsD/2CNuKMDNqx8UFPGPX9mkvHsHaw/DY7Z4oiyvx5cE8
	ty+GrVBC/75EGvFNBnRBY5t+WOLZ4oFFI/b7eTiRUATrOcxzSr70utQ7EAoxpsOU/6Q6ttJgxU5lM
	ZzSlQ0oLVUbfXQJDo4fNs1mqaUf51iOb8W11iVjvy8DSaktdcZ2F87Tonwhj5GnVxMmMkGRCCmzMk
	MgYRay7HVGWhEF6HsGoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfYz-0001eZ-Qe; Mon, 16 Mar 2020 02:33:09 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfYq-0001e5-2j
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:33:01 +0000
Received: by mail-pj1-x1044.google.com with SMTP id mq3so7770938pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 19:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LdMG7Y+xU0eu7euegCHI14a27CukttOQVa2zPD7qKFg=;
 b=qaD+nGz+4req7pisApL3TUgA0bDYUAFYBmMwL+17JsqmYhf05/TQgGkvVW5BleOaVN
 J/ArPj8zJhtN5OBrAcb/uch4u4bsxOR8JqLHkChDE0m25vx07AYeKrZFaF2O9GjiOWhg
 hfFwu9EFCbArdNKVZexcfOTlhp9/a/qBSUinhX/YSyraqkhfFulgcR7Pd5bCwR0pO28+
 nu73c/DvxBaxr/vmey0ww+UOL18TLJ3AFX3k/jonOGvydHwMpqQGER0OlZOKVN7jzFjA
 mgR+3Y7GiyGKn1ZGiFaXwHuPkpDMYNeR+WmKGPTHtRNQZ0BnbV03/ZGkSi0N4zqokKDG
 JtGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LdMG7Y+xU0eu7euegCHI14a27CukttOQVa2zPD7qKFg=;
 b=OkMwhufR09fL1ssooaAR7ZUaa1OjVum3J8GGbP0tZ6o3qN0Es+0oYvb8OBi3fYQHRo
 dHdCZzeA5vYUq1q4SKtUgDa9/JYaT6cY3FqcClTN6moVKNDoMNE7KfDbwVuO+CHz3Tga
 a/9XYvdD8LP7HbttoknSufbnnX4tMCpEmKQpPP3ebqlf9x8ZF0OjKreOpki77YAIwpHY
 efRJhCsBJDQ2phjHgPIkB5SMboQYD5vQyXEiLCfyDRILliF2SxWoWtwBgLJwgTUZ9slV
 1gjcb+fUbQVBRyFM2VUZ9CVOOK+13/ZQ53W3Ij4I6zDUtY//zP/oQHY7KQKZlw2zt3CX
 BbJQ==
X-Gm-Message-State: ANhLgQ1R9JQwpIUEjW0kZcXzZCRvdeGnAapkcZuGOeHGVSw98tRdFlFK
 vZ2ijZ2RgM7oohgrO5+7YvM=
X-Google-Smtp-Source: ADFU+vvefGbRI50sNUTTuCEtd9NhIpfisHMiyldT0aZLPmtS2/VO55W4NpqcF4zc7qkrvptmGtG9fw==
X-Received: by 2002:a17:902:b710:: with SMTP id
 d16mr22228351pls.293.1584325979094; 
 Sun, 15 Mar 2020 19:32:59 -0700 (PDT)
Received: from localhost (216.24.188.11.16clouds.com. [216.24.188.11])
 by smtp.gmail.com with ESMTPSA id l1sm14949598pje.9.2020.03.15.19.32.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 19:32:58 -0700 (PDT)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, andrew@lunn.ch
Subject: [PATCH net-next v3 0/2] net: stmmac: Use readl_poll_timeout() to
 simplify the code
Date: Mon, 16 Mar 2020 10:32:52 +0800
Message-Id: <20200316023254.13201-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193300_147847_D1CE1028 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [216.24.188.11 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
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
Cc: Dejin Zheng <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch sets just for replace the open-coded loop to the
readl_poll_timeout() helper macro for simplify the code in
stmmac driver.

v2 -> v3:
	- return whatever error code by readl_poll_timeout() returned.
v1 -> v2:
	- no changed. I am a newbie and sent this patch a month
	  ago (February 6th). So far, I have not received any comments or
	  suggestion. I think it may be lost somewhere in the world, so
	  resend it.

Dejin Zheng (2):
  net: stmmac: use readl_poll_timeout() function in init_systime()
  net: stmmac: use readl_poll_timeout() function in dwmac4_dma_reset()

 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c  | 15 ++++-----------
 .../net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c | 15 ++++-----------
 2 files changed, 8 insertions(+), 22 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
