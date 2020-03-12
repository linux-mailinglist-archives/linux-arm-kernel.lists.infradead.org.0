Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C15C183752
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6SWICPSo6HpXuT76wMh6WOMCwQ/K1AikyH8ECJCtrU8=; b=j0u
	VhQ/hCh1mCWaDoQUDWJfHoP/JC5nDoPNNE5zALNNNM9LnwyzNdQcVLYFveD+RsJjAwb0OYV1fOJpA
	hfu5+nMQK29VWYvJ6D1Nw+HhUkIhOtAoYDN6lsg+KCe6SfEfxBpwe0BW4be8IAxlqkr7uImKj2pYv
	pFuImG8/4hNwYAFu6Ut0I/3byf4waiCoZn/ZXtHjkqqrQ1Hz/j9uDjVxkteHeSeJVJ40MFX0bX/9P
	bgcU7BOZovrhfUu2i9QmPDtN8Ln7PLcB+9x4B40QgaUj5wa6wyqmdh18oYiqak+zlQbat7AoUWIMB
	ADkzDOaDk4Uwa/Wq51OC4KUrVacRADQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRY0-0003kn-C5; Thu, 12 Mar 2020 17:23:04 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRXl-0003je-2V; Thu, 12 Mar 2020 17:22:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id m3so7264364wmi.0;
 Thu, 12 Mar 2020 10:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Wy+lE/1lzqrBWgr4qGqulWltQuGidDCwcinzvkx26bY=;
 b=J+5Z+2xKMn1aIC0Uo2VC9f/lb55f3cqFfWZj5j1p0lphY5XIDra1fpkc65qmhCFKGH
 PWYVvNENVeQHN+rQtmr87GkugtvbXMwwNydg0Qsdf6YQnMJlQRwKgC3ksC/LDYm6iVbV
 tqs8r3NS9FDGtv1emvZBbMXBcYjJWE5q/fdFEzYgRjxbIWDvxT64WYyIVnpf+oFv9Hil
 ibu/wC1ULKbyQWjmFxELT7Z3UuIYKv+VAdw5v5dG0YIdU9haHa2rx7MRDMlZg3oJ6Qsu
 nW1NcF7FhtB7L+7XNshghcODee93iH5lj+FVmjHqbCEmSOr3M37pYB1rn+aFKC4zSis7
 ddkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Wy+lE/1lzqrBWgr4qGqulWltQuGidDCwcinzvkx26bY=;
 b=f4CeswWs56fkP5Ffru4KmxGO5VLRLeN5oCOEJiU9378nFkAY/78tIrBqISZ/p0YcKP
 2nSJNpE6UKNkzJoGV805+uF4xK8EQ1zUjZaMwya7J8WQP8p0a1nC4F+/dQCWwnJxVSdc
 qIHgGwe9PBk74cQPH0eUjFa/Da3FN4AjzNY+g4xXy2ueUx3UNC+xmQLefd7bmarTXoNT
 3wK/2jPKe8dvKVUuqrcqDqI2KrynKSFP3oVcYud9QEk7PGfxd4IhvCgzFuE1cD6OTwnF
 Eyhucqrv8I51cCkwyAvosdMDF3njwoD4B+AmHT6oXfWhX5TV9+XPFFOKKY27JTxGpe2Q
 fiiw==
X-Gm-Message-State: ANhLgQ09ZFOU+UxLsmGzr+5MXgehhe354ueZKNjbvC+adsfSK/ZipPeh
 PvAg0rr2DbPTxqOvmt4uUY66efaR
X-Google-Smtp-Source: ADFU+vvfIDpBkUD9w0w0y9O0EdtJTyviZVdZcBsPGD0KGGOBs+1FdKuhcvmu1jQbjlNqHpBDIAFSCA==
X-Received: by 2002:a7b:cc6a:: with SMTP id n10mr5831317wmj.170.1584033767636; 
 Thu, 12 Mar 2020 10:22:47 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id d7sm2064492wrc.25.2020.03.12.10.22.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 10:22:47 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: remove properties from spdif node
 RK3399 Excavator
Date: Thu, 12 Mar 2020 18:22:39 +0100
Message-Id: <20200312172240.21362-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_102249_117788_E0BA04E3 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An expermental test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml:
spdif@ff870000:
'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns', 'power-domains'
do not match any of the regexes: 'pinctrl-[0-9]+'

'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns'
are not valid properties for 'spdif' nodes, so remove them.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-spdif.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index b4d8f60b7..73e269a8a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -230,7 +230,5 @@
 };
 
 &spdif {
-	i2c-scl-rising-time-ns = <450>;
-	i2c-scl-falling-time-ns = <15>;
 	status = "okay";
 };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
