Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63F741A83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 04:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S6Xz3SqMvkAO0L6nQLNHbgy5sWbQ0veY6OREauFUBl0=; b=IkGJFFVAcEGz4N76o92UiNT9+l
	tPzphlpQDiYNdCR3+Q2HTedJ9iSOVDsf4BlzkmlwWUvSky8ZJzOPxbNAzN4SNN6SzLOf1Z0B2FpP9
	+k5PwhGAYL1HqCmFemUus9BBLDtLXoPgs9XX87adNNwPbZQLuTVK0QNv1FD31ohc74O9fEB4+DINl
	b3Mq939yW1GVvJ0EeFRdJ4Ux2+9855DpRJGmjqrkUmOLlD87ryWEsDWDpm+pnPggg7STGT4VCW9UN
	FvJXmK+8FohOVRqVar2AGvgYaYp3apz1RqlVzga8aTzQcygPYH2bZsYpJnGxS2bYq0cigeMKQCvSm
	YAQcTwmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hatMO-0003Tv-5J; Wed, 12 Jun 2019 02:51:36 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hatLf-00032W-1l
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 02:50:52 +0000
Received: by mail-wr1-x42f.google.com with SMTP id c2so15120149wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 19:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jbbB19wDlWy5s1Zxmkb4rfJdNzF3RqnIBZA9RE9RHIo=;
 b=O8iLLY3odnTFRutgBb96NAnwqpla/42XO92mOHTlLtn7HjdZgCxymw2hw0cwQJzBw4
 w+d/5Qufyt57wUrBn/0oHmbcmA6nAC8bS3DMUGzT4nNaMbYxh+6jtZeDReQEJM0Uc58C
 vJ7HSkVHncqQps8oYAiGzBryC5Wsopbt1IHW4XyP97mjq2W7GtNyv3wiLfEwJ4M0Awz8
 wrWZtmM3+Q4NV6gFbH2swEK/Tt9Fc54S1epiRmvUhWEXmnw53ioO8y8HkfjlYXjgR+MX
 mo5I7FuC22JP2fbsNTceQuxx5XH6QftovrXOBuHRbafMGYbYhyKRdu1eD5TXf6kD9wph
 +erA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jbbB19wDlWy5s1Zxmkb4rfJdNzF3RqnIBZA9RE9RHIo=;
 b=ASxdOKzgKYE1V/fdFoPnjHQo1N9qxwvc5QVm7ybwNZEBGfpXHvcsfdFuIWqE8bLUKp
 MprBCiPYG8oKW7c3+AV0TlykRBK376BMEtkhcEfsG3PBfJCMTfmUV31Ew7OovKvFi0CL
 69XbAdL4O9xn4VoTc8fyF1SeQJCZbxXJ4/z7QlKNZOGo9Bqb9WPErOHT6WGouiAHw/PT
 ZTF1KkV2YvFXXufzY6a1CoHY7AYfSkAhIYlDt/d4viw4K2sdD0V3BJMiak/RjET5zMZB
 1etmzhAxrAnoPz9OFGvBVj7yHksobZjKS8oLszE4eBvNOtd19H934seCDdvyQ2qRaJfc
 784Q==
X-Gm-Message-State: APjAAAWo36PjPkTCHxOAKJ3CdBQ09xE+X4WgKk3eqCwcoPJYH3uwHqqp
 6SbNAK9OFRItpnfvMgNIHws=
X-Google-Smtp-Source: APXvYqwQU0EXdbXkbpZGwVL43jLArCgzIG6CYNtt2RBkj1yvWKnECgfXeKxWgcPYFzpYlFdP8E7uUA==
X-Received: by 2002:a5d:5302:: with SMTP id e2mr37821341wrv.347.1560307849483; 
 Tue, 11 Jun 2019 19:50:49 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s10sm4374100wmf.8.2019.06.11.19.50.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 19:50:48 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 3/6] Broadcom drivers changes for 5.3
Date: Tue, 11 Jun 2019 19:50:25 -0700
Message-Id: <20190612025028.13118-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612025028.13118-1-f.fainelli@gmail.com>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_195051_105658_3A4AA87A 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
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
 bcm-kernel-feedback-list@broadcom.com, Markus Mayer <mmayer@broadcom.com>,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/drivers

for you to fetch changes up to e3b7472362ba5ec84642e1c8d2cc8db6781afe4a:

  memory: brcmstb: dpfe: introduce DPFE API v3 (2019-05-20 09:32:35 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM/ARM64/MIPS SoCs drivers changes
for 5.3, please pull the following:

- Markus provides a set of updates to the DPFE driver to support a new
  revision of the API to the firmware (version 3) and provides minor fixes
  about how the MR4-8 words are read for LPDDR4 devices

- Florian removes a print of a virtual address in brcmstb_gisb.c

----------------------------------------------------------------
Florian Fainelli (1):
      bus: brcmstb_gisb: Remove print of base address

Markus Mayer (9):
      memory: brcmstb: dpfe: use msleep() over udelay()
      memory: brcmstb: dpfe: optimize generic_show()
      memory: brcmstb: dpfe: use byte 3 of registers MR4-MR8
      memory: brcmstb: dpfe: remove unused code and fix formatting
      memory: brcmstb: dpfe: report firmware loading error
      memory: brcmstb: dpfe: wait for DCPU to be ready
      memory: brcmstb: dpfe: prepare support for multiple API versions
      memory: brcmstb: dpfe: prepare for API-dependent sysfs attributes
      memory: brcmstb: dpfe: introduce DPFE API v3

 drivers/bus/brcmstb_gisb.c    |   4 +-
 drivers/memory/brcmstb_dpfe.c | 317 +++++++++++++++++++++++++++++++-----------
 2 files changed, 240 insertions(+), 81 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
