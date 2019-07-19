Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35DE6EB16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 21:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G8Ic3xQloL5DdNP+UDLzTujTb75O1//Girb4kQgRec4=; b=R8f7C6QpQPfhBS
	+qezDVP91VIAtOYP5B2Xtz+sPEpGkgvbXmDCGzu+WXmbT9or3g8VOmIz+4uq3VecjCai3Xoymfjxd
	pb13ZdDA7UCFcEUlLMqk5RX733iIto3350AUgtiTfWrHeqoFHdgK0TKeY9qXeg729wsz1lhQn3O2Z
	tUkJtmn+nO1B/OA1HUtPLAJd5gTnw+eZm/vLsslKyqUWYH+BNUEBnok22vL2gy+ygRS4WxG2jpLQO
	Mjb2tiHmboFJrNu46zDiplEnetJ54QI5PRL/hhLW3eG8tS2LruOoWlNFVJ6fbkdhLvflDINz9NK/r
	6IQm/bz637Zp8Mmfu76Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYaD-00027p-9d; Fri, 19 Jul 2019 19:30:21 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYZp-00021t-8a; Fri, 19 Jul 2019 19:29:58 +0000
Received: by mail-ed1-x542.google.com with SMTP id e3so35417628edr.10;
 Fri, 19 Jul 2019 12:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wppe19Sbg/LaJHpxWMdO2Cb51TOC5T5tbB13DPqYbts=;
 b=mPOJjaoZ8B7DFK7HNdHEH/Bw5fbLR+1KxuWp2BA2vv0HUD0YEGHXoJQZY54jVODQw/
 YhRra+7xWLba9fuM14ry76BA+ljUlOoSb8yMuT3Zapv1d0u93v78SjdnwI9r3d3a07tV
 H0LkhC2VK1+ucQxDxv6V4FCWtg1vCeBif9OM9er0VolH4LBtVGtnTa6qTSpawVCmKDJp
 5W6pYxqYICLJOnHyxeBVwwYZxRACZO4Vv9g0vodIIMB0GU80X33yAoQLW2fit2LfmC7f
 Y7o1ITm1lmWFOOt3TO4rhQXPRp5kJWNBewVwnUxPLY2DVVFL3LmUybZUqSdYCAnPhBYJ
 7tvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wppe19Sbg/LaJHpxWMdO2Cb51TOC5T5tbB13DPqYbts=;
 b=MHEhBbYr4dPG3kt/p8PsDbl/vkDipwAcPvQuNcS5r519hrovDI7tXMgk9Sq72l2CF0
 io5nCrelw/xWpmyfPUMoj+ni+BLYgC9PssocWow+51/VwPPWI8n4wdOsvTmcJIi16dl2
 2yZLbB50qEg1WPH5ZJhoqWoTDB7Rs3pebCUq2UTaQpKjgc36XqwaocaBsV6KRXUpmYrU
 IGROtc8e7Lbj/cQOFbCB55V8ZfGkzClcUXD7QR08n8pYA7VU6rOSo/NakWOplRK0r23g
 9qXQpNXB1EzMSG1b+o6olnV5izNX6KnnOyij9pPWQ/ssqh7xCfeSckW60Jzmw8awFubG
 0HjQ==
X-Gm-Message-State: APjAAAVwl3LYQZDX5rU+4PyN1dTjOvWmSRz42LQUVM/elolvx4TIK9w9
 Qzm7vr+VjpwT7RsQVBtkJuc=
X-Google-Smtp-Source: APXvYqzYGfoa+2Rs+xxkevrhYuAWHQ7Z7bZb+FBxde/d70WtXAkvJgTnGcsuMrHKhgpC4pYgls3CMg==
X-Received: by 2002:a50:84e2:: with SMTP id 89mr48449082edq.218.1563564594936; 
 Fri, 19 Jul 2019 12:29:54 -0700 (PDT)
Received: from archon.lan (adsl-89-217-88-77.adslplus.ch. [89.217.88.77])
 by smtp.gmail.com with ESMTPSA id d4sm8738624edb.4.2019.07.19.12.29.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 12:29:54 -0700 (PDT)
From: Xavier Ruppen <xruppen@gmail.com>
To: khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson: odroid-n2: keep SD card regulator always on
Date: Fri, 19 Jul 2019 21:29:54 +0200
Message-Id: <20190719192954.26481-1-xruppen@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_122957_330076_9DDF13B3 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xruppen[at]gmail.com)
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
Cc: narmstrong@baylibre.com, martin.blumenstingl@googlemail.com,
 linux-kernel@vger.kernel.org, Xavier Ruppen <xruppen@gmail.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When powering off the Odroid N2, the tflash_vdd regulator is
automatically turned off by the kernel. This is a problem
when issuing the "reboot" command while using an SD card.
The boot ROM does not power this regulator back on, blocking
the reboot process at the boot ROM stage, preventing the
SD card from being detected.

Adding the "regulator-always-on" property fixes the problem.

Signed-off-by: Xavier Ruppen <xruppen@gmail.com>
---

Here is what the boot ROM output looks like without this patch:

    [root@alarm ~]# reboot 
    [...]
    [   24.275860] shutdown[1]: All loop devices detached.
    [   24.278864] shutdown[1]: Detaching DM devices.
    [   24.287105] kvm: exiting hardware virtualization
    [   24.318776] reboot: Restarting system
    bl31 reboot reason: 0xd
    bl31 reboot reason: 0x0
    system cmd  1.
    G12B:BL:6e7c85:7898ac;FEAT:E0F83180:2000;POC:F;RCY:0;
    EMMC:800;NAND:81;SD?:0;SD:400;USB:8;LOOP:1;EMMC:800;
    NAND:81;SD?:0;SD:400;USB:8;LOOP:2;EMMC:800;NAND:81;
    SD?:0;SD:400;USB:8;LOOP:3; [...]

Other people can be seen having this problem on the odroid
forum [1].

The cause of the problem was found by Martin Blumenstingl
on #linux-amlogic. We may want to add his Suggested-by tag
if he agrees.

[1] https://forum.odroid.com/viewtopic.php?f=176&t=33993

 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 81780ffcc7f0..4e916e1f71f7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -53,6 +53,7 @@
 
 		gpio = <&gpio_ao GPIOAO_8 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+		regulator-always-on;
 	};
 
 	tf_io: gpio-regulator-tf_io {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
