Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDB33454D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KpD9VrSaCbKvfagTSYB1210zqBWWBiWcq+03Ke9s4M0=; b=cOkxkMqWlzQQ0f
	z9dZMDQDLBIF89YLDYuFd5bfcU+dW8tOR8anhFWKxU+UgNrqmBPfxxgw0tuutKgOrgFSWFDQ4LkNF
	PGYcSrk0Mca6Sh15h7nzWzQ+VGPe7OqAKr9wBiqS+sMBtdmMYnxHn348Gc5Y4bpTkpbtcxyaMoumq
	sVV7O8cIHjpInoVb7ch0mBj+03MvjDixRO3pyCf7KwGrWIZrZEoHtCu5c/9gaTSw8N5AByrc1QFRR
	cANaPTZOZ/SWbHek+h33NmY6Y1ITKS2nGHIdw4IljBnlFoDJJarWLg6J5yywFXNzWMeI8j71fKeha
	n1PdMHrZUd/+fGFUM7Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7Uh-0005T5-0L; Tue, 04 Jun 2019 11:20:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7Ua-0005SY-1f
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:20:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id p11so10551148wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 04:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dxpNRThISdlm9cH6wVLDT0m23cE+WD+Qwgx9Y+V0kcw=;
 b=qorJynVwLuvik3sbivI5IjQKek7vzUdZCZszNNGbzCEeBlZEduEh2WwFFpZ/9QsRvX
 dJo3sXn9omTqzoQsBnwRHnllGRB6Cpdta98FFXlEUnaSG6o4pHkMTpLoSi3RPlfQho2C
 4WLeCFj8l5xQK3C3wHKfEal2QZBExg/+JgckPRQ5BHqAFRmwOOoJFWd7cGw8UvFvyp5g
 uGO2Glimu1ul6j/1P3D9R0Qa0fmuG2vSRZnUDAoAVVRuDCPyTqBSDYUKUqZ3AGKur7wh
 vZUUU5qmtE7i6K0e/WLrfW9WvlVX4FTuldY7y3IFU8yCEL0LAXzdwoiU9+lBCwnlraB9
 BVtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=dxpNRThISdlm9cH6wVLDT0m23cE+WD+Qwgx9Y+V0kcw=;
 b=YHSdzR/WIo9PsgfhL6y+FQabjddi7BUaURR7ix2a9XosAnwdSEzxwiS8pNRkGdXiak
 fP5gmYyjWxSToW6jNDNKG6GHTT/BA5meIbhFIsbTuBmVMQ4NCO8f9GKeD74AfgpH8hn+
 So43TD1sE1hGyoTnYe8zyCABFIHZYBdaj2uyHC1ggga/fd8So3o/f0jYJkLOi63UNEDu
 Ro1f8FFyXT3XFeXRj6LjMn8H6WnpT+cKrc5WYtItd9NzkYln8zpavp5k+E3kMiag9jgs
 sMJcIWp2SfnJcEAkKS7voZVVEw6GuHoenXbUe2QmZUYgQxJ1Xw+cpyn5632WyNn2Kyf3
 1oxg==
X-Gm-Message-State: APjAAAV4sdMd8c0TP65psY3ZQgjMKQJrhcUohHh03VecmLacvyoWBNsO
 DTDlnQ8S4LKP2s6+w6BFU8Q=
X-Google-Smtp-Source: APXvYqwNC0MkswzFShHt3yQldVkSXUz1KfIAJTRcaMCLUjOMO/ePNMi5n6kd/8vEPzhgHcOwyWftYQ==
X-Received: by 2002:a5d:4a82:: with SMTP id o2mr3321183wrq.154.1559647234597; 
 Tue, 04 Jun 2019 04:20:34 -0700 (PDT)
Received: from cizrna.lan ([109.72.12.213])
 by smtp.gmail.com with ESMTPSA id g5sm20580044wrp.29.2019.06.04.04.20.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 04:20:33 -0700 (PDT)
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: multi_v7_defconfig: add Panfrost driver
Date: Tue,  4 Jun 2019 13:20:01 +0200
Message-Id: <20190604112003.31813-1-tomeu.vizoso@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_042036_093231_8D03F137 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Tony Lindgren <tony@atomide.com>,
 Russell King <linux@armlinux.org.uk>,
 =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>, arm@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the goal of making it easier for CI services such as KernelCI to
run tests for it.

Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 6b748f214eae..952dff9d39f2 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -656,6 +656,7 @@ CONFIG_DRM_VC4=m
 CONFIG_DRM_ETNAVIV=m
 CONFIG_DRM_MXSFB=m
 CONFIG_DRM_PL111=m
+CONFIG_DRM_PANFROST=m
 CONFIG_FB_EFI=y
 CONFIG_FB_WM8505=y
 CONFIG_FB_SH_MOBILE_LCDC=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
