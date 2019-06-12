Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D2A41A85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 04:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/sOWmaqtNf2ZK4QRdSqa56pamZ5S3xcwp72HB031OhU=; b=DsfhjajjDHONJWKotAHQ9OvuzM
	nnQAaTAOzNwtRh8qqFQuEYsCikgjqokj7eRETJ6SXeXQh3zxSzS+wENvv3zwViMCF4G5GWByvH4S2
	DM7bBtsJt/HFgY3CW7m8Is+FxILHedIUqg4K0oD0uihJLh6lD4hogK5hj6btQv5PZGe+lDTwtyW2c
	63Pq/8Ig6Gzp5QktfvtCq6I0bet0ly1bvcF/FKPNX7Od5772EIc4x/7E/45aEc6bsaGwFYG68Zl0G
	eJLUKEdGbEV99rp119te5v27MsAIt4v2Gnj81/Yx2VqeFxEcWTWJ6qtVy4j98vcVBzyk5GPWVARnd
	YI26RebA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hatMq-0003yq-S4; Wed, 12 Jun 2019 02:52:04 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hatLj-00036M-Pf
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 02:50:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id f9so15092376wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 19:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZYOlLTboZIRXWZw6S6TQeVuhAbGmdEdSutoUzSCOLps=;
 b=GCDvTBABTOKUVgipDQtZOMx6whSGb276wciJPY+7DxRYk49lxT8P8rGhlztBPPG5mE
 33mkUdsapqPrh157t57f8bruOxWlToxSDy8lmuh/0CEvEjRmvtwF+QSqh2uRtqiKh6L0
 +spTZ8SXeqden9ogBIQ3JOoMvVxTuWt3i3wRuShEXuiQ1SCGsl8YSKc1JO7nSKWosov3
 gNSEV077gYlGn+gvAz/s77D3/bBGB2Ouy1bxNaSG9MSa/4ebc8yedO+DvNr/9aO1h5uL
 bB4EmI9t0i/cxEXaGBV5WFLhUzZZF6+VdLUelqATHZiTJ0pIWmZfG+4r63H4c/AqRjN2
 9tWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZYOlLTboZIRXWZw6S6TQeVuhAbGmdEdSutoUzSCOLps=;
 b=qoQ/2Z1hYOzi341/IGPJMGhCkv/HWWdAiBTmANE1+c1xPlh9luF+Gg+2KMvHluFWcP
 rWEdy9STD/FyXLZTsxLjw1U9VntLvlYxJ49qBFKjUz0bQrUlGvlvcVcBcHc/c52BEGrE
 4DN/ocf+FmAugo2Mrf0ZbSkpzlynqF30yEfr4bh8eVGgyLWf51ihO0VmM4jaDwfUdDbp
 zH/XaIQI7BmBhRT9D94K0Ptlh3HPeilKfyC4P5uwDOJrxm7r83dmEJ1RWRWBurO+O53D
 7znJ0rtzjb1kPR4m5c8gyMf4SWUVVhVrU9YLZju6N2ZY+XlsQYpbGgcIuXitU1YWLfHi
 Ib9Q==
X-Gm-Message-State: APjAAAV76x4um/OJyVgOdkT1NZWzkR6TStcXIsq9jslecamWPJYp/gZ1
 w0h2kfMSaNOKd7lK8MF9VMI=
X-Google-Smtp-Source: APXvYqzGlfqZKQkwITfgFWt6NPY2a4l1rWS4jBLvCiq9QM/5IkXvG4u0FfgOJjBPmsBMdEnItc1/HQ==
X-Received: by 2002:adf:fbc7:: with SMTP id d7mr48920878wrs.224.1560307854503; 
 Tue, 11 Jun 2019 19:50:54 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s10sm4374100wmf.8.2019.06.11.19.50.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 19:50:54 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 5/6] Broadcom soc changes for 5.3
Date: Tue, 11 Jun 2019 19:50:27 -0700
Message-Id: <20190612025028.13118-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612025028.13118-1-f.fainelli@gmail.com>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_195055_853133_7554A4E8 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Jim Quinlan <jim2101024@gmail.com>, Ray Jui <ray.jui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 Doug Berger <opendmb@gmail.com>, Wen Yang <wen.yang99@zte.com.cn>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/soc

for you to fetch changes up to 885895a8eae60bfcb9fbc6b91b35c5b930834011:

  ARM: bcm: Enable PINCTRL for ARCH_BRCMSTB (2019-06-11 14:59:50 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoC Kconfig/machine
changes for 5.3, please pull the following:

- Wen fixes a missing referenc count on the CPU device_node object
  throughout mach-bcm/

- Jim adds the ability for ARCH_BRCMSTB to use reset controllers

- Doug adds the ability for ARCH_BRCMSTB to use the PINCTRL framework

----------------------------------------------------------------
Doug Berger (1):
      ARM: bcm: Enable PINCTRL for ARCH_BRCMSTB

Jim Quinlan (1):
      ARM: bcm: Enable ARCH_HAS_RESET_CONTROLLER for ARCH_BRCMSTB

Wen Yang (1):
      ARM: bcm: fix a leaked reference by adding missing of_node_put

 arch/arm/mach-bcm/Kconfig           | 2 ++
 arch/arm/mach-bcm/bcm63xx_smp.c     | 1 +
 arch/arm/mach-bcm/board_bcm281xx.c  | 1 +
 arch/arm/mach-bcm/platsmp-brcmstb.c | 7 +++++--
 4 files changed, 9 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
