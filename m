Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9082A173F39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 19:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IStV6K2RWnO8n/N38ntywNv8Ey83c2dxWS/trzwGevA=; b=dHY
	y24gZwBGTWm6j/amRypnJpANBpqs3/DKh0dpoIt3HKyLyXp79q4YMo+Urey6V0aqhvHlofshB8L9H
	1RJNDr7Okgf457/7aCnoXZ6fSnQ333f4eNuCQ2JYtx4kqE4QoBCC5oil5/Y2C8c6h9fKDd7uqvz/W
	vh1aE/ohl8SJN97fJrGF4G4FXEiysb1GFFUdV7EH6uLu4wj26gPgbNuwdFPXJkFxVyXUmPdUoThLy
	CQkFb+xXw/VpWhUNOMpFCjTDheCwuJ+1ec0Dd/rEj60fmYfGCoumt8oXOKPSqZSBFEaWYfjGA5hWA
	OAydejfNY+nLgHslRERXaRDZJyxZiqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7k7b-0007IL-33; Fri, 28 Feb 2020 18:12:23 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7k7N-0007HY-Mh
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 18:12:11 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m7so4545439pjs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 10:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rmkLSF/u/lyA9WLEB84G/oJbfSDg46L3+7tvySu7pQo=;
 b=SoL77plIwEbOOW4qUBPktSYj2tiXD8MLHVDotnZrLSeHAxGgV8KFvYH6mVy++wxaVs
 4RlPow9YlquT+zgqVU/KNh54ssJOJPlU9D84ezLC1/Gqg4tDJTqGSYmm79/b296GPdKs
 AyaUjF66RHKBTMBn0qd+qKjomPENS79IobBsUPGt6Xz3+8txnQK+yiVa7PGKGL4MaxSe
 +4IsW7PQ3wMJHH9rBKg9+kV/jIViEVES5Z2QFremlTs9xZIIruphhcNk2Z5zwV29rza4
 SMc1UVWBWokG6/YCpqUw96ZSUQbrIMBwOWyw4p8bjlksliRVutPbPdHK2oC+14gyHVeU
 gy0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rmkLSF/u/lyA9WLEB84G/oJbfSDg46L3+7tvySu7pQo=;
 b=jw+IB6OqdL7+SWoaKEFT2YE4l0xNkBCgY3uiOTFkzgHv9yJpy512G9gaigrnCiO4yn
 EwbtQcbC/KaXXX5ZkIM+SmThWuYBs51sr9/9x7J7AOLaBJXwyY38CpHPbtKOgkMG2oHe
 cZO/IbxfIW0iNNRd0iJmOG9SMnRmBzE98DdrBrUb238O6xrrHALRwwV+v1Y7CRfkheGZ
 fatQUh7i85xQyolxnPY4yT4RaRkS06TGmA/TewABPGgql34ItTVHrIg3fEc5K61wD6Sb
 DYWzy76xw06JJbWKaY6QvdzefdhxQz1Cag9BXHfVQU0CZuyakxZptbqoz4avPsNPe5lP
 DC5Q==
X-Gm-Message-State: APjAAAWH0SajcL1yOH+yv6JGWnE0S0mcyku4tcreYu6o+BEl4RB8pybZ
 /f6rJjh6/54HDhj+VzHMv2c=
X-Google-Smtp-Source: APXvYqw+NNZnFjYJwMmCiyhIDtTEr1HduBM6JpuYMWmz7HVHAa+DCjRlsij27ERoXP5/GrKwaHwFGg==
X-Received: by 2002:a17:902:c313:: with SMTP id
 k19mr5137108plx.25.1582913520813; 
 Fri, 28 Feb 2020 10:12:00 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i11sm3149306pjg.0.2020.02.28.10.11.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 10:12:00 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/2] Broadcom defconfig fixes for 5.6
Date: Fri, 28 Feb 2020 10:11:43 -0800
Message-Id: <20200228181144.15148-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_101209_769710_752CAFAF 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, arnd@arndb.de, khilman@kernel.org,
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

for you to fetch changes up to 653c00f289371fc5162f1daf4c3742113812aa94:

  ARM: bcm2835_defconfig: Explicitly restore CONFIG_DEBUG_FS (2020-02-27 12:47:45 -0800)

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
