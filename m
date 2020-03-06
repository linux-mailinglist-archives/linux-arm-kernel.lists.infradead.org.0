Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E6E17BA6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lxyPpkl6m9jWcP8mOo2ylhMw6AE3VKFbVpt0+HSN9+g=; b=nGXxzK+kQj/GEZ
	PMhb9hqzJSsfHXGIaFnERz985Xyv9P4cmJh5tCSKX+uiijaTB+wxWJMBB+6sqpy2vfaNLo6+vozic
	tUtVxtDaQGxjJ06HW5mIBQjHOW7Uv6ysxCvGlIXJFLYWQPVqpIDHZLVd+dj9c7hTaDC0EgJ5XjBM9
	uhU0Kriv+HQyD2woGtTW5i9RGKhz1PXL9Sq6HuYlZSubGgod/rbX8XmyUyM7HqyPVJwUZRtnG1WLu
	ZUNAKF4reuJ9DT/xM7bLqUVkV0nWDxAkmEyaqfhCQbl6kyxBx40yGnw3BMszL1rRL9rEbCiox3I/P
	9Vgb2Tc4IXGCw/UQum3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAANx-0007en-Tp; Fri, 06 Mar 2020 10:39:17 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAANb-0007VH-Rr
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:38:57 +0000
Received: by mail-yw1-xc41.google.com with SMTP id x5so879098ywb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 02:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i8oFDlEjKTXEkp27gAlgE/r86E023g4raleT3ZcWqMY=;
 b=JDBeq9tb1A5OkcYN7ne8hRchnK8x+Fq37ru+O+Q+fD7WVcbhle0adu+Cdmr0brRaM5
 8vtoJn+q+iOBGjDEYBtmu3IjeIzh5p38VpPcORFAbmgXxKs6hDA2li882ZuOn6lOPZrk
 +9Pe06OR22siPhRjC5gTI2JFmcopftpJcIONCxLlEr4IgED1/jWQQ45CmcUBruNnlLqJ
 JXWmOiiOAq4ziwRWbhh75TcyyMeBjJby14CpboJt8h749mpqd9p/fH3TWb1j3a5X8l18
 co1Ib79LCPsCCGe6hAaVPqmR6OotNq7BAFLNwByPqjvXJgTcyCsihLWtdlsvhrXRTtBC
 qJKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i8oFDlEjKTXEkp27gAlgE/r86E023g4raleT3ZcWqMY=;
 b=UC2vjsq/Kp+SYpWU07W+TyyfXT/VfYQYwsM6ijiholKKbx/Lu0Jre3SZUycPFrTpIw
 8hXdWv2kk58yL9vy+6phWEZPhYPFtCMbRGFCtV1DiIsQ/ArejNWDgzAzyPMO+X1I6zEW
 HWuOTLWlt34XjCQmHRA73GrodT3YmEruWJ16qat0SnAefzJysQYnjZULembxz2lwbpK7
 vbZNk1HFe5eqwgRt4s2fwgG7oPoHXnxm5tTVI+OoVOfwhFJc6vf5HQWZgr9LBS4bh37e
 06cLKGFv+a/mq8rHo5qqawdz5QrCKGVcNPt+H9w79oSw+HrAxWHMQtcXoPw0WYAb711E
 305Q==
X-Gm-Message-State: ANhLgQ1BsIq5GprXz5W/TGeJO9WIIX9l6FZTVOZUa7BPB80j7LqIruM4
 yXgabXjcimi3I6FZLqD+ulOL9y4UX80=
X-Google-Smtp-Source: ADFU+vvKy8+4rNwuHHdT+UTdEbLzaEdtIoXz141O2iee73ZMJ6cAVqem+QhqWc3dAu9IKjJxAwh0ww==
X-Received: by 2002:a0d:d303:: with SMTP id v3mr3167981ywd.299.1583491134096; 
 Fri, 06 Mar 2020 02:38:54 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id w132sm13345575ywc.51.2020.03.06.02.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 02:38:53 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: defconfig: Enable IMX27 PWM controller
Date: Fri,  6 Mar 2020 04:38:37 -0600
Message-Id: <20200306103839.1231057-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023855_923430_43ED1931 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Adam Ford <aford173@gmail.com>,
 aford@beaconembedded.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8M Mini and others use the i.MX27 PWM controller.
This patch enables it as a module so various boards can use it.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a8de3d327d03..d19ca82b3c40 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -830,6 +830,7 @@ CONFIG_MPL3115=m
 CONFIG_PWM=y
 CONFIG_PWM_BCM2835=m
 CONFIG_PWM_CROS_EC=m
+CONFIG_PWM_IMX27=m
 CONFIG_PWM_MESON=m
 CONFIG_PWM_RCAR=m
 CONFIG_PWM_ROCKCHIP=y
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
