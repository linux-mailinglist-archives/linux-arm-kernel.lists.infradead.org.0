Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30BA1823BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 22:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MYUt3Vu2dolu2XfWkwNKvIoLJBWv2JlJvpC9p/ZQmQw=; b=LOL
	VBveC4KV/2E7Cadd1LQ1lYV7nIDFeRpRYas5/644HSZeBvKeBzIiX/Kt28+MYIHCY+MX6HYA79+7N
	dmrSyJ5hZeAW6HWqj11lzns4UVgQ3CbaFEroUZE0oKf0acBDAf2dLuriIo5rq0oPiCwrXGBVeOD7p
	cAL8vD/c0sgXc1kqE74EIKMCZho5OPwL+puBjwE4ZHKHhQOQ37Xjlt/i0PpSt2fmy1n1DwuHcHR8a
	RpZ41waucVOSw8UYOUkJJwdTvuwNgYOAyYQFNTSxjKJP/R7TmhRjNiSJiHfrTW1wZreysD5hPYQ99
	wJhY22QS5rNq+yJQbQUCnzaPO2wcfFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC8mF-0006HD-0m; Wed, 11 Mar 2020 21:20:31 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC8m5-0006GR-RR
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 21:20:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id n8so3751190wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 14:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FS4tvip85s1Fuc7rwRMxBecw2b3R//5SlD8u5OTatz4=;
 b=K05GtvA0AioWurfkj0OzhpTnOO57JOg5Z+mmEKrrioG9+4gHDyXlUeEq7kZY5gHx/j
 e7xHGyOVvJHUIYzzqdAq0fV+HIdjUf7NYcvpZEWwPvNrD2vuTgZc7eKWpRNSFzCOWTk2
 JvUWe5I/LURRrrR3o80jL59MgBmLKOo5PnvyqBH7rEBCv7e0N3wUE+Xj8i0f6ye7Gvri
 R8VH7m46O1Mf66liBJX1JMDH+/grZVagFfeM+gda+cvIBXrvLRx+dTpTbR1CUvrYOyfL
 4I6yxwIT4YYQ8fYBPqD4t7o1tJZRHOZV7coTEjx70xr13Jw7Jgj7ruJAHTGJr0NnY803
 1ugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FS4tvip85s1Fuc7rwRMxBecw2b3R//5SlD8u5OTatz4=;
 b=rENRpUV8iNT4VoafPuR1m4IHyCeoxWtKusMLFjzIJX0FGLnZLzsjgAld18/hrhdtMX
 72lfiBSLzi+CJ30zpq41Wb/vaKGI53efh7U0lfhPMVL39PmZlSyb/xqu2vabYC7DTYjR
 2bV90kGifjdvWHIR97JKBodrn4rPrDySw84Jp99EXy7D2ZkK24dNCLChPsEt3A03yNXF
 5E7FTTQOQWaFg1VWdWWToAS674FCWGho+ltLRfWVRGTAR9YhIWwDQ0PA+6uKpi1SGIiP
 CKBl1B2Trs6Uz3l0YgL+w0q6mTwa5aqNXOzO6W8dezMRfOUUSWl5GM68GbGL+iGQTRH4
 76bA==
X-Gm-Message-State: ANhLgQ0gNGotQSdfXhTMvGt4dAJ7WT5wXEDBxurXjej4JFOVLBiKVjoY
 n/bFdRkPwnPpuV8VlfuZz8w=
X-Google-Smtp-Source: ADFU+vtQL7WXc+PG1AjhUEVl8pOL/1vglK+8ln4qfOhwskk/uU+X8yjI7EU8x4Yst+66uOaAq58G9Q==
X-Received: by 2002:a1c:ab07:: with SMTP id u7mr609943wme.23.1583961618572;
 Wed, 11 Mar 2020 14:20:18 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p8sm3014032wrw.19.2020.03.11.14.20.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 14:20:18 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/4] Broadcom defconfig changes for 5.7
Date: Wed, 11 Mar 2020 14:20:09 -0700
Message-Id: <20200311212012.9418-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_142021_890984_094D1218 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
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

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.7/defconfig

for you to fetch changes up to 8068b7b63583764b46416a62856e42fb1f954ab6:

  Merge tag 'tags/bcm2835-defconfig-next-2020-03-09' into defconfig/next (2020-03-10 11:13:21 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs defconfig changes for
v5.7, please pull the following:

- Marek enables the Raspberry Pi 4 specific drivers: GENET, thermal, and
  GPIO regulator support in bcm2835_defconfig

----------------------------------------------------------------
Florian Fainelli (1):
      Merge tag 'tags/bcm2835-defconfig-next-2020-03-09' into defconfig/next

Marek Szyprowski (1):
      ARM: bcm2835_defconfig: add support for Raspberry Pi4

 arch/arm/configs/bcm2835_defconfig | 5 +++++
 1 file changed, 5 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
