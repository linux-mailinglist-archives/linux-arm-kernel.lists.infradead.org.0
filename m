Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D35DD8440
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 01:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pgt7TpAFKHrsoPv53WML7Ig3CqD5Ydu0DDvS921TyhA=; b=hXteg22eeM1PU8
	sFIUl/LR6Sl0gV/cXiCOGjrxrrDT8SoMs9dX9UcTa1OTXTwwosY2R+Glj5QGsEOohFoKCXppOKgzo
	8pz8W1pJEhf0Dp6iNQX8BlLRa8zCFoE0SfolmnHSDonQJlfLTN7HIzVAqnHmXXzMTgT//E6//ATE4
	n3DaXXFmvCATceeXEWrfyhVg87L9YNhmxJ3DYbyzm0apd0MB8AJ16Tao7zoY5RFHX+Xxu9ZNmUfJz
	a2N9Bp42HDlgc1Vd3bLyzs5S2d9YRleoxybuzs+0e+Z1ch7YmBxM7JPgZYExDw4v8OAdV4qjzO+tF
	Qkz2E0Zpk/12SpnVxohw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVwl-0005ag-Do; Tue, 15 Oct 2019 23:09:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVwc-0005a6-Hr; Tue, 15 Oct 2019 23:09:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id o28so3122204wro.7;
 Tue, 15 Oct 2019 16:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DuHx+fF2E92JEhlaePQoLmuFeHNU/07czImxZEwxanA=;
 b=NvZZU4hCK4gBl9/e1Md+nHXL0Y0WlXJ6WZlZpGkTX+su4IryR+CmQW0avCndLe1Nbx
 R4qxA1LunmzZIv9pDDyNN89hSl5hEczj17U5L59hxr02ZXC5UvZYoSdfF6SwK6pyba7u
 U+fvVl8x8Cdk9tv11EbYxmdqQyGwQdIio1OUSvK2XTG+qjZm10LhX9todDHLRQFK8zEB
 Qm+cWX4SvVM/aQQw9Bxjn23b1bry15KahaM/sA8SgopC4eTn0yR4XCmind9ejxdbT0PB
 ugyCDvNRIvstdlDhbpCpIWW1ClD7YMvKBdw7YdiqI19sjI/xN+stgC09eCpN7HVP9xo9
 4sZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DuHx+fF2E92JEhlaePQoLmuFeHNU/07czImxZEwxanA=;
 b=lbo1ncIKoPnE62MPd77oGyY78nP6bITk+16IcHQnZ7M281NMbS3u+sQ4YJxHwh+Prk
 TCk+CDuZwxMmAtakJS8xAE3XexAnNVOvsf34V4OEVWuTNhqAEzg2ck+jhJ/uvByxJUOb
 3jiNUZ3HDK73MTuiWnY8eqE879mAdtAmMlt08alJ4onh/So6fsGFT2d54gyLra4eHxzM
 tygGSXBGiunS43vd7Lkn+O3SZBMmGifEJjxB1dIzDILQ9XLayu//8V8026T4xKam2SAd
 l1znC4OyKEWJGoJSpAykC/dcvTNm8RnHlrY5YYEhJXHsrELpfDSF5COD8EVPAJcyr689
 7dlQ==
X-Gm-Message-State: APjAAAUPso8QueT9N7n8SpboHDmI9ktCAuIMXNq3foW3ImBzZQ2ur3hq
 juR6PH2WsFPolZlfy71+hQ==
X-Google-Smtp-Source: APXvYqy1oYXENQDYU+ylMQuWE3kL0PhJH09RZX3/Ee8okUe4msaZYKwLrL/ZIr4HAyKGvcTumVM//g==
X-Received: by 2002:a5d:43c1:: with SMTP id v1mr33618982wrr.91.1571180972896; 
 Tue, 15 Oct 2019 16:09:32 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id s1sm33064362wrg.80.2019.10.15.16.09.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 16:09:32 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: add space to fix check warning
Date: Wed, 16 Oct 2019 00:09:22 +0100
Message-Id: <20191015230922.11261-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_160934_614163_EB068559 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbi.octave[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add space betwen operator to fix check warning.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
index dbb6a5f07a79..192c287503a5 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
@@ -163,9 +163,9 @@
  * by suspending parsing as the comment above says, but we don't.
  * This sweeps the issue under the carpet.
  */
-#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
+#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS
 #  undef VCHI_RX_MSG_QUEUE_SIZE
-#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
+#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS)
 #endif
 
 /* How many bulk transmits can we have pending. Once exhausted,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
