Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B93E201C51
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 22:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MZA7UL4n/JuBebioS/gW45SE132mlz5AfJc7FGVg15U=; b=Un2vtKZvSRgPWjvBzhKPbPNGRZ
	S1YWL1pHm0g9ftXOU3WYse/DdzUZH0MNWFtj2Nbc1jyieavh41/UfFzU/lC0r27KBRFqyUd+kWIS4
	qUWyCA2tlA49nIHjX+LCk4+Lebm+vO1gAVe40desTGVlrvli//LUBt+78PXaVL51j1b2/bV10MEOc
	2T6yl9BLB6qa6dUJxxnpgAgltLZ39L34RsZQvMIMjySH/g4FsLD6gPZw0oEKp1Z01hJFzhxOkj+Gn
	hGPdd8SvkPxY6/obcLFiLwwyiDD15bU0Tmaq3g49QuxkefXKkK8bWqMhRSKY0RkAZFIiWf9p3zOCV
	C2EctKfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmNXs-0002Xy-T2; Fri, 19 Jun 2020 20:23:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmNXQ-0002Hb-TX
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 20:23:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id l10so10879481wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 13:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mwLM46/PlaNtuZqrLJRhjMMTDtehEk9OO6fgQEE4THo=;
 b=WVYVyvC0NJC6tFP1ccTQHNZIcR8mEfm6e0fyCxW1G3jtosZ9WvxgpWSRS53fJ1aDUp
 RtTbkiz8L1OzBkgdjJCaJXU+fsibb7MAZlSH4w3LFC/txB15E5HXqTuOW4yxSLCzRBiL
 L1zNaLNuAxdou7Sw3QFnO4qBYnbzh4jFyRLyY6fGeEgGqlqE6XbRnuiwvM5EaG5IwEW3
 OscA4sYhwAX82p4TFD2ZTmxWQUxGKZ0AY4zuPLXqeNr34yc8TYLuK6RADyRLimZeJaRa
 d/YMgTtSPaojk4WBi3wVVs9MZ4hevmetTzWsm/XmagkBZUVWBraOIRWzz3Q8bJT+AWkl
 sqfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mwLM46/PlaNtuZqrLJRhjMMTDtehEk9OO6fgQEE4THo=;
 b=XG3dnxPEM7JOWzy7Qxu8o13CDsLf1gSFfapiML4LfFHC5PpX9LcAf3G4QnvWpfOuq/
 SPWDqE98eh297p3+J8lWtOLJu9TylghhAilIUXJAC8AEgHUr46+i2glsG6YvpSrNd9j1
 b0MCn41OCErTenQz33ZJaItZ1lfQRjKbwwNquPwaZZiU89fwC2/Ggu3qQihdAfs4kGvj
 lIiXjXbaL+P7A6oY87VPPMch930JZCnqRUgJ/4fU5eQRRYphIQ03wjwYyK+25APg6cKs
 X1z+ehBIcrcZJ6Q7c2rnGkbDS2FccNRJYJxY61AqpcJN8CoI1RQPOtX0zBIhsA3aqR+S
 ycYA==
X-Gm-Message-State: AOAM5306P7GGw9z3D3UUyyQHL8Emx4fXd2+mTAdo1X9NsJs+i7AYCxJB
 +PIb6VvrE+WNBUaNyluXvCk=
X-Google-Smtp-Source: ABdhPJwpNy4CQKBpG//aGGN4GlgXRRCwU4g8Pqy3GJd0KTtuClZiGlPgI2SkHpj4/7Ymud1FtJyKzg==
X-Received: by 2002:a5d:4282:: with SMTP id k2mr5779743wrq.196.1592598179319; 
 Fri, 19 Jun 2020 13:22:59 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e5sm6109224wrs.33.2020.06.19.13.22.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 13:22:58 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/3] Broadcom drivers fixes for 5.8
Date: Fri, 19 Jun 2020 13:22:49 -0700
Message-Id: <20200619202250.19029-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619202250.19029-1-f.fainelli@gmail.com>
References: <20200619202250.19029-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_132300_948443_7145C298 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407:

  Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.8/drivers-fixes

for you to fetch changes up to e92bc059e7fa5f443e958900229bc7fa1d38fecb:

  Merge tag 'tags/bcm2835-drivers-fixes-2020-0-17' into drivers/fixes (2020-06-17 15:02:13 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM/ARM64/MIPS SoCs drivers fixes
for 5.8, please pull the following:

- Andy provides a fix for the Raspberry Pi firmware driver to print the
  correct time upon boot. This is a fallout from a converstion to use
  the ptT format

----------------------------------------------------------------
Andy Shevchenko (1):
      ARM: bcm2835: Fix integer overflow in rpi_firmware_print_firmware_revision()

Florian Fainelli (1):
      Merge tag 'tags/bcm2835-drivers-fixes-2020-0-17' into drivers/fixes

 drivers/firmware/raspberrypi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
