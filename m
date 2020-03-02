Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 668BE176445
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 20:51:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iz7GRzof631riEU+ipWJwlagOPFoR3zmDZURdthi8kM=; b=oLj
	5lX5ET4HlqLIGsPppM1M+oauJQHXv8vcizYCBXkk5cIpyzOobuWp2GRqCq5t28c6+6Ut1xqBbO2FS
	a5dUMfYROEpiPRKK9NVd7IOEofUvG5QAbxDPsu/OmnkwCxsGVobCyZJp9Nqj1cwNHkTvAznA+5Y+G
	PnEPkjP1rnEcLvuEd87/ygMASj87xzS/f/BIGIKVxFlFI/oBgfBDTMV6vLU0A/WHakHAQmF3LMS6+
	9wofH3eFhC/xbXagXqTbOds9qecfz8Q9yWuUOqzYlQe8D7W+u3wLvA2qH21ZNt+eKBu4yu5ulQH+Y
	AgmBs5wfAP40UY9wRFw8TwG3UwGz+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8r5f-00036T-Fd; Mon, 02 Mar 2020 19:50:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8r5X-00035c-Vr
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 19:50:53 +0000
Received: by mail-wm1-x341.google.com with SMTP id a132so404661wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 11:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9/aYSwBFR1VRtgSHwOqCwZ4gRZXD5nlyhWAQoI2tB6g=;
 b=tzY/8Me4I3AT0WRCoQ7vpo2tPQhoPZId4xOFP9pBsjojAuMLX3/QzmYZDn+D23vr4u
 38gAiN2x5u12IemV6CC2y3iWdg3m8QmqZPgYqiLS6Y6/qXZcygn/PAlVSWge9Q+HRKJA
 oWROS2idHeL5mGBwt6MsCiIazKyd7OMnX/oXILVCHS5hhxRNa9NJYjAY1lAmXVJGayIg
 yGVw0XcQwOZSGvWoWkd3ADbQcF4IxPFujyGg1jCEs71bCMfhRg6WeE9lPIUdR4xzKGJw
 C21QnSdjg9yQ6I6yhJ+Vv4hzYu7dLjSbJ1DhSG2rspnQo1J2jP5hCg+Mm0ehHnOAenkw
 fcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9/aYSwBFR1VRtgSHwOqCwZ4gRZXD5nlyhWAQoI2tB6g=;
 b=nRpanAPwhPrDEplQiWNBOd1J6ADXw43C+Xamxv6AtIyh1o3sV1r31w/whoIiLOMvwL
 zIcQIcq2lxELfl5S3g3N34Gdd442u7mJw9XFHl9+NmAjakiqUt2uhHMuapJjBPvtcROC
 SvgKok6XW3cGFVcI0CrGc/mDocWyoYY99gOd7BW7+WZY3pJLNXkQU69NgnxxCYdP9m2o
 3bty7hyuDfHpPvfxXBLZ5Tlqe+yneIlm7gmtOLbvcFwpusnaa2rpbFpAHoDbR7V4LYB7
 Ae8QN8cjtYh5VnFdxVGfiNvwVWPbX9eY0DQrnUFDAYGtwHw3eFEqywPqJHTFcLPuH7gj
 4+CA==
X-Gm-Message-State: ANhLgQ19oEmB0MqBtFcPdiJMVxDXmGH7PN8hn88VR6yNu7XLsZqdpuC2
 kuL20Kf2Ud6Afb4V0yvMSxM=
X-Google-Smtp-Source: ADFU+vskgegx9ochL61HF2MO4x0soVLsN075udpFfTTR8gGJjZ7eGdyXH+kzQk89Ajo2SsZSFY0p3Q==
X-Received: by 2002:a1c:6a15:: with SMTP id f21mr78470wmc.126.1583178649339;
 Mon, 02 Mar 2020 11:50:49 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l3sm28967940wrq.62.2020.03.02.11.50.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 11:50:48 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/2 v2] Broadcom defconfig fixes for 5.6
Date: Mon,  2 Mar 2020 11:50:42 -0800
Message-Id: <20200302195043.14513-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_115052_025020_21752998 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/defconfig-fixes

for you to fetch changes up to 1bba60808404b873defa0f3560497eb2e8fe86b8:

  ARM: bcm2835_defconfig: Explicitly restore CONFIG_DEBUG_FS (2020-03-02 09:26:09 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs defconfig file(s)
fixes for v5.6, please pull the following:

- Stefan restores CONFIG_DEBUG_FS from the bcm2835_defconfig which was
  accidentally removed

----------------------------------------------------------------
Stefan Wahren (1):
      ARM: bcm2835_defconfig: Explicitly restore CONFIG_DEBUG_FS

 arch/arm/configs/bcm2835_defconfig | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
