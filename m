Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945B7141410
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 23:27:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GvJbsDUgUWtiebxW70RGbFZeQ/J2rOwjljyICFPB440=; b=akY+TGyuTCgjHtJDJrSH6zVukK
	hG/PKqaZomUvcuXXbeymwJk8bXWISKQuDIdiyjZn/uEdieQzKPjQo0Sq5pwFTvYnQxusjIVA3Amwg
	MuSmcqb6tbVvn8xG9zxZwUXxVbzGMqzn3wgMFAu+Nlm5X0Zcakmy+EeLWICQZP6CFzm6snw4QX6zy
	wBN5CfWoHn/QrXP1YiVNKcVJOyper3GBcsflusq2Zwesf7LkbilkWHc4QZcCyLGsphtAojTgr52YF
	SFT1YpEdf3rB6VQUleAa5zqGMEE+72p+UXZCL5p6VbJRsTJdY6wSa1Vd8VJOSMw3hWu+XqyPs2if1
	T8dA4wUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isa5I-0005X1-9K; Fri, 17 Jan 2020 22:27:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isa59-0005WD-QC
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 22:27:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so12571808pfs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 14:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NVh8Tpd+VJ2sJprbYPiHP3uUQ9hn8hf57WrptUKZ/aE=;
 b=ZflTYwSVW/WKWz4sIhtrb9s+RoX0PHWlcye5y6czLhmesdutjt+AGlCKZ6InI6btMi
 /dvOH3A2j4IBTBSQ/xH/Iam5gx0OSs3C3U4rlU6WAtXp+b3FW4PeEx67MJpl9yOOJQqB
 aS6A3EvbivxJtjK+6gqnmWRW4FI9eEMKjXrbI67/xYurlN/I1v76ZYLgdqpynvdyrUpf
 1asbQFz/nbvhbjCKHKK7LsrJfgmzSxTpg46JMvVnWMKNGHQTxiBV3Z8IusOaTQltFDxX
 O7+J7YdxkJB54cmzSXjbQJXc6bUBgIb72vSkPFcVk+BtjZ5jMXUJM+kE+Lws/+XX7wXe
 qbww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NVh8Tpd+VJ2sJprbYPiHP3uUQ9hn8hf57WrptUKZ/aE=;
 b=lLs38nEv5XVeB41mX1GirRNwx3AHdYfTSr6+xWrKqu4RukFCNlOABbL/KfPN1aHMEz
 PinrSft+47YIu4FCg4p9AGCJCGXkDXBWOO2uKjngJ3eMqpTqR9+flF7pko3iA77mEFlH
 45BfYZ1vPErJXM1tPnUA1WA9+5Er+HM5O597+Hw5bekr3OcNziX9v5dEVaU3C5BN3g6a
 l9lZYHQX6AX99xvq4pgwetkV0HuHN5EKIZpueaGlOBYp3MyDJf8y1fnmWGlZiixjC4tP
 Jy1NglfBaBEAsBpev5IMtmBU0ufJjav5MF9GNuCfXh0IUxgZNtATPRCpX12XgT64hecJ
 yWfw==
X-Gm-Message-State: APjAAAWRnfRrMCdx8rkxPTDDon5KQbxxLtgwt8BKjJWbfd/X3tQEo2pw
 xK3jKrLdJmCs4eDDuXs+y3U=
X-Google-Smtp-Source: APXvYqzoV5vqLtz2VeywAxs5ZjGM+MMsnzG3qxT+q9wQwJvv4PXCLBgVg0qrWuQ1pcoYaB63wL+VDA==
X-Received: by 2002:a63:e545:: with SMTP id z5mr46986941pgj.209.1579300031217; 
 Fri, 17 Jan 2020 14:27:11 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n1sm31696435pfd.47.2020.01.17.14.27.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 14:27:10 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 3/3 part 2 v2] Broadcom maintainers changes for 5.6
Date: Fri, 17 Jan 2020 14:27:05 -0800
Message-Id: <20200117222705.25391-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200117222705.25391-1-f.fainelli@gmail.com>
References: <20200117222705.25391-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_142711_850492_066EA85E 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: arnd@arndb.de, khilman@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/maintainers

for you to fetch changes up to 7f4d4e232f3789bb4bd418d01cf97f195a76b2de:

  MAINTAINERS: Add brcmstb PCIe controller (2020-01-15 15:39:48 -0800)

----------------------------------------------------------------
This pull request contains Broadcom SoCs MAINTAINERS file updates for
5.6, please pull the following:

- Nicolas adds an entry for the Broadcom STB PCIe Root Complex files for
  both BCM7xxx (actual STB SoCs) and BCM2711 (Raspberry Pi 4).

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      MAINTAINERS: Add brcmstb PCIe controller

 MAINTAINERS | 4 ++++
 1 file changed, 4 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
