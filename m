Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED7F20049E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0dm/b+MJIDP7alaxI+p/0TBCv/HalcVomG3+lIr2Ro=; b=an0E2WR87jKSJW
	S9nTbSQNju8oc6G6tpElvtRieAFSNyEGjgewIQOmCvr+F7BtvyV4MCUdVeAVPVOImPpmPO4EgOKxq
	tDrWacWNX7ETn7hsC1T1jy+NbymCbQCqUGeP5jxkvm2YLGZUFeKHXxLKDzWQ1YLZiTetnPm/oYdr3
	A22Qg6S8gjRcg/aHGwz3j21STWhFEG/YVequqjNLkowhUM5aOgg0Ftp6oHTQEi6/cBSe0U1FZjUCv
	1hYHatk/qSwGslVJmYam2Rgu1cxPxz8LkuaLpIqH8JHtlxGJsCcUCZF8wuzh3OEwLl5NpdDAFr9Mc
	fAVcJohCJ8Vc+z1nwy2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCzz-0004OP-Is; Fri, 19 Jun 2020 09:07:47 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCzA-0003kp-K2
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:06:57 +0000
Received: by mail-ed1-x542.google.com with SMTP id t21so6971707edr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 02:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+0u89dpmgvQy4plYwwslEmSBiru+bR25mmVExT9ZnYw=;
 b=UB/REUZqGhSab2IhwMetGxClUkd/oH91Eb1YMtnqkqAxIYIsM5YWJ4a17MUa8/08et
 0KoPGo9oOwe1emR2wQSQNrT5mDdb5rPGbQPYSjM7oAM0AmVr3nITPyO5xBU0y99uSaYS
 GceF0JPmFhlA4OqkmdjhyRfE1guxkExlPCp0DWWvNnsOZnKJIUT+xfTjyP1zTVLFmjP2
 dMylqWecptZAOuQnxr4pfUQnYY3XKand3fm9DpP1DYG41QiDNvEzeMJVk82vaFfE2K9D
 qtb13ihfkOU5g1JKWZXaspFlc8GMvyr56s1ipcyGwqqbQPiOZwcx/nYfvYwyMjpAPLcZ
 I8Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+0u89dpmgvQy4plYwwslEmSBiru+bR25mmVExT9ZnYw=;
 b=WW9H3PFgOmRjA8Raq6zhbHd0hb5vif5MDfIdhclqsONsgB8k081WMoVE/9TwYg6WA8
 5Z0OpANPPErZSFMGkBL55rdWtlS2F31PFfHVBi4+WNPhJmWzpgDSBzuRzY2k7SB20lXM
 Xm6nnNVoCcT7ZKWuBy70YaK3K/bKwaSdsoUgGEzeZH7dq/KBgjvUyYmZKCvjEUbB7Zea
 SnybmtNidS0PTqHUSawu4WRAATGEDyQxjAVEGjSmWW22CrLuDDkfbLtbcKJnBkUfLC/g
 gpa3XaaktoikAZZ+kuSq8zFSj8iGkV6waBZ8PbUc6We8BDm6jKb97YmQ+QvG9aLq+5Jw
 f0Fg==
X-Gm-Message-State: AOAM533csZI0vlba0HocmujxaqqUfGFhQ3t+UKs13OL2i2EOrH8ttjhD
 Jlc/qiTuQkwcJx76e4GVHwQNUA==
X-Google-Smtp-Source: ABdhPJy/3Bg56TEDS6v87nEXxy3icDzdDUs8cujpuQA8aXHR5JzzlkpBgh63TY4ie6qdHZydvU1qVg==
X-Received: by 2002:aa7:d7ca:: with SMTP id e10mr2271039eds.45.1592557613971; 
 Fri, 19 Jun 2020 02:06:53 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:16b8:5c68:7901:5c06:6064:338b:4004])
 by smtp.gmail.com with ESMTPSA id dm1sm4653650ejc.99.2020.06.19.02.06.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 02:06:53 -0700 (PDT)
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, devicetree@vger.kernel.org,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>
Subject: [PATCH v2 3/3] pinctrl: single: parse #pinctrl-cells = 2
Date: Fri, 19 Jun 2020 11:06:08 +0200
Message-Id: <20200619090608.94948-4-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619090608.94948-1-drew@beagleboard.org>
References: <20200619090608.94948-1-drew@beagleboard.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_020656_705338_8F0FA328 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Drew Fustini <drew@beagleboard.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If "pinctrl-single,pins" has 3 arguments (offset, conf, mux) then
pcs_parse_one_pinctrl_entry() does an OR operation on to get the
value to store in the register.

Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
 drivers/pinctrl/pinctrl-single.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 02f677eb1d53..e6d1cf25782c 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -1017,10 +1017,17 @@ static int pcs_parse_one_pinctrl_entry(struct pcs_device *pcs,
 			break;
 		}
 
-		/* Index plus one value cell */
 		offset = pinctrl_spec.args[0];
 		vals[found].reg = pcs->base + offset;
-		vals[found].val = pinctrl_spec.args[1];
+
+		switch (pinctrl_spec.args_count) {
+		case 2:
+			vals[found].val = pinctrl_spec.args[1];
+			break;
+		case 3:
+			vals[found].val = (pinctrl_spec.args[1] | pinctrl_spec.args[2]);
+			break;
+		}
 
 		dev_dbg(pcs->dev, "%pOFn index: 0x%x value: 0x%x\n",
 			pinctrl_spec.np, offset, pinctrl_spec.args[1]);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
