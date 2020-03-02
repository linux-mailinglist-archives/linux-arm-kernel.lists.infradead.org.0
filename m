Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D3317644B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 20:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BCOhSZkNkMPPjAZkQaTf/GqPG9+V3Ktcz7usdiPVvnw=; b=LlVetvU5PvSva1U2Od+NAsKM48
	aMXL/YkE2vvptTdP+vEKL9NoQd01SHt23YBDTu4aRJhcBIY0Ptv+o6KA/0mIolQVgndhwmo+uVJSX
	z7Wlccr0F0l0tLNxKbzvq7B6nasCqpXmXfEMbBvxyY+qnfuZ6XvDT1NUKFYSA2KrsYjEU+zcM23pN
	SO3zgpYqB65hpUwzBf5K4wz2azi1IYRPxU+bV8lhWoEq9C+VG6vUXXzU/EBZ8hHj2t4Rl9UmDVx/y
	PfkBQkVBg0z2AYxiwIXfWgJxJQjDCJne79iW0AGjqarjUgo3yWdJbRpVxRbIvzd3hnAWE6W5q2wrX
	+WKudoxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8r5w-0003Dr-G3; Mon, 02 Mar 2020 19:51:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8r5Z-000363-Ru
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 19:50:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so1356869wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 11:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=86+073KfeItXhtS3CYFMVIMMT1uWpwdCaXzQZ94IilE=;
 b=kczZ1XbU7Lw/kwkwzQpLchQouxRQyhUhZntZ0VRL12iLBLMpMj/3Q3snzHUKZLDH3B
 qNHJFk/pYRA+3P+1owaYSaB0XAugtQOUriUwWZZqxvxB9YLvDeqSAyFmRSUBT6cgi9zH
 Izhd0yQJlrMfA2413kLP+lgzP7Syyk5e2hIwP84N/Pkx/l4GyHB50pc5i33AajmknUFi
 6+nTJQ9qPDqRBK/JA4sWKPWlJnh86Cs4UBniQHAtl0W1kzrgohmlplEsOXMcMsmHeTO8
 oexVtHxDYJSaYMEZj72oUVLgOhYmXC8B3iKwrrPc6P6PDsOhF+kg8LOcWRWuX9KXfdcs
 5Ovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=86+073KfeItXhtS3CYFMVIMMT1uWpwdCaXzQZ94IilE=;
 b=iiwfzxB5+O98x2/g7qOm3t1Wpj6ix1QpgPntGRFBK/PayI3UNH2mt0CjoCiPQ+Te2l
 WYfYA7j5NU8NlXkml2GiOwjYuvpgj79LRyY8+b+DPvzfH9PurPUyxouRXZFfQ11SzgoT
 uJXGVzL9mHLwY8XM1VGgG+J8m9fGmUos4+JBG0Oo8Z5pquPbyMCkh1W4wqm8ua/vOM39
 bNxg4G7O/PAQNfsoSjC4KrgtvjK7YjkwtB1jtFEjjg5Nt0d/0aPN7jN0b6DwbxQqQsnJ
 Nzt2GOX5iXMnFITRpI+aGeOP6KlEqCJwGo1srRsG0srgtV8Btw7isaT/DzWtgHsPlaj3
 QCGg==
X-Gm-Message-State: ANhLgQ0pPID1VjPSMtsRRmkInYn+KloN9t7IfsiY0/VYG/ojhAh6q4LI
 Eaw/Cby8+Hik251LxFfiW52h28vJ
X-Google-Smtp-Source: ADFU+vt/ujWTX5ER7b5ujOzVGd9exYRB0LZHaw2vN7VIkuxUyorSgsq1dRyCtowpiJnEQxq+9FPSzA==
X-Received: by 2002:a5d:4f0e:: with SMTP id c14mr1148840wru.100.1583178652202; 
 Mon, 02 Mar 2020 11:50:52 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l3sm28967940wrq.62.2020.03.02.11.50.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 11:50:51 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/2 v2] Broadcom devicetree fixes for 5.6
Date: Mon,  2 Mar 2020 11:50:43 -0800
Message-Id: <20200302195043.14513-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200302195043.14513-1-f.fainelli@gmail.com>
References: <20200302195043.14513-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_115053_899079_808773E2 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Peter Robinson <pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/devicetree-fixes

for you to fetch changes up to 94f18b9b24ee4d812ebd30ff848298a9f413f07a:

  ARM: dts: bcm2711: Add pcie0 alias (2020-02-27 11:29:45 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
5.6, please pull the following:

- Stefan adds missing Device Tree properties for the Raspberry Pi 3B and
  4 LEDs to have proper default configuration

- Nicolas adds an alias for the PCIe root complex node that is looked up
  by the Raspberry Pi firmware for patching in specific properties

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      ARM: dts: bcm2711: Add pcie0 alias

Stefan Wahren (1):
      ARM: dts: bcm283x: Add missing properties to the PWR LED

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts      | 3 +++
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 2 ++
 3 files changed, 7 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
