Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31857D7D95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3zbGVNj85Zxmn1zrr+4xjpFip3v53Tzd04aac+AUs7U=; b=EGwodzot9p5znMvvJ2EohCmUOb
	YzwSq37gkSH/g7Knd01AwPv1wAzAKM5wl1D+JMYNU60ZbWDbJcMM4DEw/K7JhweKxhE0CnE8A8Ktz
	lvd/rKgqJ/G8yYxysWHwsuboMf9C0byUAyUyqVS0NM2lg0RO0S4FUx2BvRqW4waHxC1NNbxpMK8vW
	M/WgWxtdbT2pze2/Heyg5Kaib2Yh2V8ix+MjGLmlU7/J3f14xwFjTeydFcJCDfsmVHrSiQnnhMp3Z
	u2bATEkZkYrn7Fkj13Y/7bilw92ewXDb/X/RqpKpUGTEjU4wFTjau39wZnet4/bJknTba0MMV8b1n
	XdKuMWAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQZ2-0001b7-6M; Tue, 15 Oct 2019 17:24:52 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQYS-0001Gq-Mp
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:24:18 +0000
Received: by mail-pg1-x529.google.com with SMTP id p1so12544521pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sP5OYOozXeWBWDIl97bOKe7LGBKHGPsDir64LmQfQHU=;
 b=pkMf8d8Rf/xfx1cyZ1fwxOttVk2W2tdcGb5qq5MqvnjSboje1ee/P3qYi2VupFodXZ
 lv/r53xFxEpWV1R7NABeG0X4ltG9OnIizV9/zoTsYtT7K35gkoLiqN+uaPj8PJLhGXn2
 1fjSO53LSaT1BWBLShk7kLgSgzRRYMre913kooEFSgRhgenIFY3lSl8l6K0eULDgzoOi
 55DNfdyG/6oy7syAMjhv29EITdg5a0V5MbbirEQ4Xj+3idOxsc1g9mNZLJPXZLvTPefO
 hBNqulBdn/71ydH3NDrxNK6HVqu3tUkEkOOW6cDVnRmUhhIel+/Xleix1XD+nz2dhKka
 mJuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sP5OYOozXeWBWDIl97bOKe7LGBKHGPsDir64LmQfQHU=;
 b=XweZ8F0bmvvpS/o0Ui/9CKiAaha86mNkWnfLaUuZ8zqPfyMjxA2lpZQFCyDk/3XyW3
 1xsRNcigiznlrscEL6oI8YHjCZnNNdA4VN7zujPuX2hOLvY+ijcwIx8J6+tTXh6GxZW6
 NHjnmxBC6/yyRXeD/dy4Xctck/Bgihp3l+jrJMbezHWWbYFAf3EmBuuncRnR4ED0pP70
 Lg8loUTHYr3I+MOWGsr+tYV+yDa/ee6Mn3X9hnYjFbw6tzWBUHEmozhPEwdaU86SVeEm
 wHdb6lNOBfsGne2htaaYYCnlxsZ3BxwnyMU0KKOAcTRKlKNyY6fmO6fL4wv/mf0FiMlE
 B7Ig==
X-Gm-Message-State: APjAAAVfmFhVsI4QuahVHUIrNj1FdiCfib4DBneOrKjnFTZI/6dHhU9c
 tuHO/4ZI1gLDULXkLLAabro=
X-Google-Smtp-Source: APXvYqwVtvaV27FhH+gJYVcCOwy5qNUKKmYghuFg6GwjlfBs2Zfrtr11tUEJXWBdmYVgD2Nfidf/Pw==
X-Received: by 2002:a63:9dcd:: with SMTP id
 i196mr39869259pgd.343.1571160255191; 
 Tue, 15 Oct 2019 10:24:15 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a11sm19497621pfo.165.2019.10.15.10.24.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:24:14 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/2] Broadcom devicetree-arm64 fixes for 5.4
Date: Tue, 15 Oct 2019 10:23:56 -0700
Message-Id: <20191015172356.9650-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015172356.9650-1-f.fainelli@gmail.com>
References: <20191015172356.9650-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_102416_795623_D861ACEB 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>, olof@lixom.net,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/devicetree-arm64-fixes

for you to fetch changes up to 965f6603e3335a953f4f876792074cb36bf65f7f:

  arm64: dts: Fix gpio to pinmux mapping (2019-09-30 15:25:10 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM64-based SoCs Device Tree fixes
for 5.4, please pull the following:

- Rayangonda fixes the GPIO pins assignment for the Stringray SoCs

----------------------------------------------------------------
Rayagonda Kokatanur (1):
      arm64: dts: Fix gpio to pinmux mapping

 arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 5 +++--
 arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi         | 3 +--
 2 files changed, 4 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
