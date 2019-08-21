Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E42796EF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 03:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bSMsIwlvf+fUysJ9TB+mbXqXpK2GXJtY60+2iBuA/U4=; b=oq+8BZuO3vmvWV
	hcv/sK7eAn/XRkmBlzX9aOSGpjaLIqr8N7cnTmKdq/GigAC3MdhqbTyBpqH2lsqClS/LWSKhsmCCz
	IFO9qNEQ9OO2c4JIWZwaOTzypk1pMN9KBxrxx/rHVMI9jnnZqLzcgeUP5vFMMHKvUjycM3xq7aPhg
	4sUH6Uliz5pm2x6GTdx5PYY9leraXKdU042rFeCjE/IH9v2NqihjTk7WskV9ahoi2dJppOM7o3Dw/
	z4O2vZFDeBE5YC/2L8Z0SNlGhd0lyu07jiybO1NHPPshaZID/pewnuPD7vMGubQyAYK7L6DZoU3kv
	aN/VX1sNsprWKGwvuLPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Fbf-00072h-Vy; Wed, 21 Aug 2019 01:40:12 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0FbU-0006hJ-KD
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 01:40:01 +0000
Received: by mail-pl1-x643.google.com with SMTP id 4so386674pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 18:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SqqKzrWZ2qS6dkegXVibW8kuKykZZ/rF7T52aZbqzg8=;
 b=bbJFB5BlSAycA6QyAKp6liX5bCCkHw6nKRuM37P1r6OdDcraPKjWnmWclRCV/MQOtV
 bzB9GhxXasVkGbfiddRw5PkD6dKN+BSruFLwouI2YaH8WNuGPoMaYgia41Uoaez1xmVg
 E9dB0GT/myQ2vaChXNgSkFLl19h+Dz9LTsS1UrhnJpRS5+OqkOkBU5pZ7/8Jg8K+ADs2
 1h0w7kxtye7pYMmzW9RrsYgF4l8zZSfAuttNxKqf9OYzEphkTETl74KqVyoOURO0wuT4
 S8MXZ3z136bKE/BYCz24idCgEZrgA4WqupO23T12PXcp9gn1UZqV0Tfd7A3eFhO83KEd
 j2pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SqqKzrWZ2qS6dkegXVibW8kuKykZZ/rF7T52aZbqzg8=;
 b=HetETpW10u56Hg4xKKBnqfAoAExtY7q/Sarf8JReMcTq3EgGtxFX7+3GfCistb75K3
 qt7SxZnKPlRR5Jj7LJiO0UpdhogY8EIJghfvjDBchAjAmAFVUasMZHC4SMoT1igQcnEH
 R72MJzWAMrjaJRTZKRqL52SZQHljF0VBmA0sliG+h/i4TL3NjVrKoz3EQPC7V7L1FIgZ
 RLdVhIlWQT76w8xeTXduMYqZ+AQYhvsc2tYQpPtJblkq71I7rfkhxcU0boHtGxqo0RS6
 bEKKIxpSsmAb+kHLXUBdHwFlWaNYKiFuZErcWtraqXB4ScHVeneyF8rj4Z1yplEXF/Br
 tSjg==
X-Gm-Message-State: APjAAAWR12NRTz9J9KvA3C37fwLuWHa93Ftok35YoMDvXg2izw9s4iUa
 9LcktlbbsfFmlf2u91myOWWijyNbNSk=
X-Google-Smtp-Source: APXvYqyekUZD4O/1faXol7aGwG8dEb17vfvxxK3EHSMCKJsevlinncbzs1Jrt5AqrPAeV69oLmkbvQ==
X-Received: by 2002:a17:902:9a8d:: with SMTP id
 w13mr30762630plp.157.1566351597472; 
 Tue, 20 Aug 2019 18:39:57 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id 143sm23155295pgc.6.2019.08.20.18.39.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 18:39:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] ARM: dts: vf610-zii-cfu1: Slow I2C0 down to 100 kHz
Date: Tue, 20 Aug 2019 18:39:36 -0700
Message-Id: <20190821013936.12223-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_184000_669584_18F3F939 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fiber-optic modules attached to the bus are only rated to work at
100 kHz, so decrease the bus frequency to accommodate that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Changes since [v1]:

 - Spelling fixes

[v1] lore.kernel.org/lkml/20190820030804.8892-1-andrew.smirnov@gmail.com

 arch/arm/boot/dts/vf610-zii-cfu1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vf610-zii-cfu1.dts b/arch/arm/boot/dts/vf610-zii-cfu1.dts
index ff460a1de85a..28732249cfc0 100644
--- a/arch/arm/boot/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/boot/dts/vf610-zii-cfu1.dts
@@ -207,7 +207,7 @@
 };
 
 &i2c0 {
-	clock-frequency = <400000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c0>;
 	status = "okay";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
