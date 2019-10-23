Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E41E254A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 23:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xryPqLML4ulcaTB7NCkkr2MWaPABs4angu8yZHxsXtg=; b=mn1XD0hyrCmcb/X3epfBbLAxxa
	g3eg44x+96jVU8RToEbhg+odg/odPfUVr6OSt2lTgrnUNdX2nr0rB2EWhBWut1naaB/xV4Rc7m2HR
	9TveoRMM/GoBEfmxrvz1rBugclqx3muU6KNc30JvLajJYSREwGdxnnFO2uiwm0V35vOHRQpJfqHUV
	/K9lAqK7yx1EdPC58KwTBXykK4jfuavaqNjP+M9XtnjZkOgLrz26IZLICEc0DueXXXoy3Cw8EJonD
	5fCX0+SEBNyFmEL4DtoKmf69Cg7TDFyB9dOkReEckHNzWlyJPFLqv6lWT/fj73K0wjHMqZNgf5Xeh
	D+AHik2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOBZ-0004FX-3T; Wed, 23 Oct 2019 21:28:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOB6-00043C-MX
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 21:28:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id e11so14945785wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 14:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=45ASzokNcC3w3dEvXVJZKwDevKsF0ZxZlVQTpharNqo=;
 b=s48lmFKf75yvCbbjHIqF2pz6fVaQQFP4mopTryM45+TvQSAu5+fra+KsxDO+zZ9nrt
 RNL5cP8982Ifxf8+xN0w6F6EOu62lelRTznoKiJuiLxJiosANVxpZfbR8+jEL+pTrD2W
 3/MGDWYvxwtYXiaxHtw+FRNJg2ZtSMGLi3vliXt+O+fPyQCS71pHKdURK9dNjAAccUqa
 aZ1UDyy2rb51RtdbjaUILjIBkqdAAYc2EVWQd9aplsX7uuqbozD4n65WfCEie4YP+Iaz
 EP0CM/Sh/f3iDxhvLoP4AkbZjEbF0UMEsR/4fEy/m4wrsy910jctxdoJcqbppF8vPRPJ
 qVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=45ASzokNcC3w3dEvXVJZKwDevKsF0ZxZlVQTpharNqo=;
 b=GwiQWIHDbNAIfX9+4EzckIDDF0GD63an6VbUXVMpjdxyBAR2DsgZXLDlephD5lUbLR
 mpImxXXusvggdMCBglI9ECwWGoeslcJY2poiRr94FVyoh6KUn0Y8Hc7IBST0dKNLzQw3
 2CHAtYPzrvJd8tF68Gc4dU2vRGjlshEPP0gGwZEymzeEadzj4Aeafg4Y6r5vVtEhdibm
 VzJxELXXNWO53iT6foZb4nYIbKfXSk7v88plsoWPS2GHQuuNTcU+5N3jNgtf4ugYxxKJ
 mbDQojPaVMfQ4MTHVGLH7IA/Zo2zJPlxqPsacuuqXDh8f7F1SdUG+tASYdAArk89EI4/
 ceiw==
X-Gm-Message-State: APjAAAVPdWh0+SkO3dW50Hm89VPqPOvVw6Dh2Xi3B7cxS7UA56HB7PdF
 clliAkUoSsg0/yzzF98LD1I=
X-Google-Smtp-Source: APXvYqxWaRAfnamg7FR/5dW9Qpch+dG9OgEcn4oxq0UyKIHjiN/nLaJwS43Ou8piQDiRhgX3To11PA==
X-Received: by 2002:adf:e441:: with SMTP id t1mr617984wrm.395.1571866103125;
 Wed, 23 Oct 2019 14:28:23 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l8sm6493609wru.22.2019.10.23.14.28.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 14:28:22 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/4] Broadcom drivers changes for 5.5
Date: Wed, 23 Oct 2019 14:28:11 -0700
Message-Id: <20191023212814.30622-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023212814.30622-1-f.fainelli@gmail.com>
References: <20191023212814.30622-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_142824_732307_174477BC 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Markus Mayer <mmayer@broadcom.com>,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/drivers

for you to fetch changes up to b61d3e87b6ab6f5da1ab1f825d1c75abbbebc578:

  memory: brcmstb: dpfe: Fixup API version/commands for 7211 (2019-10-18 12:11:59 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM/ARM64/MIPS based SoCs drivers
updates for 5.5, please pull the following:

- Markus updates the DPFE driver so as to support deferring the firmware
  loading process until the first sysfs attribute is accessed, in the
  process he does a bunch of cleanups and minor fixes

- Florian adds support for the DPFE on 7211 which uses a "new style" API
  v2 and makes necessary changes along the way

----------------------------------------------------------------
Florian Fainelli (2):
      memory: brcmstb: dpfe: Compute checksum at __send_command() time
      memory: brcmstb: dpfe: Fixup API version/commands for 7211

Markus Mayer (6):
      memory: brcmstb: dpfe: rename struct private_data
      memory: brcmstb: dpfe: initialize priv->dev
      memory: brcmstb: dpfe: add locking around DCPU enable/disable
      memory: brcmstb: dpfe: move init_data into brcmstb_dpfe_download_firmware()
      memory: brcmstb: dpfe: pass *priv as argument to brcmstb_dpfe_download_firmware()
      memory: brcmstb: dpfe: support for deferred firmware download

 drivers/memory/brcmstb_dpfe.c | 164 ++++++++++++++++++++++++++----------------
 1 file changed, 101 insertions(+), 63 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
