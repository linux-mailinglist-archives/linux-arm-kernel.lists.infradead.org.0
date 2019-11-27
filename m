Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBCB10B698
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 20:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eHt4TFuQhw+47dpyJkyh/cJDuHVXhiCAYsA/IXCndxk=; b=TIe
	Vv0vtXOeYcBi5zjHur0hfdrRsQof6Mi/+DqUDjQg+IEiueKlgDrRJQ3tjLrAJ7gn3IT0Vc0gCLtug
	OFTHsY7xXTvA8sfcTs3vq8mumFvYqtuu1416OrAKXj5JVvZBR7KLv2jvyvU1i38MNLRevKr1JsOfX
	qYn/20+3ZdUxJU0xeDEjreeWax783VfPxkNR09aSH9M6/sOh0+XRrOjmz/aouyEMslRTWomqzNvBL
	RVJbIFMQFoj1wHgmr6P9dun8ouF7uoYflmWlb7ML3kz2e7YAe28tsy/2Ws7583UE1wfHAKtw9VYUf
	sdDCrdLlUOSfsbPDdbJQ+88Ys8dA4DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2qu-0006xp-Te; Wed, 27 Nov 2019 19:19:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2qk-0006xQ-6A
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 19:19:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id g206so8319201wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 11:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=M+0NuMZQaK1+LEWLPTyUvNajoYkjV4XKtzL52YNTL00=;
 b=CoDBS3lpR61f4rI0KCcuztGkQWopeytpzE5omE0pg516D1wzj5OSzxWSy9K4OXVN1y
 Xix1fbFxlbYfd0QTn7F+XnYty55eDoeyL7mRbz0aQZ2YqFY7uJGI8Yh7VWI84HhlG5zU
 2ozNv6tY8Spi9AoCgH1AMV769EngqCXRIj1ytuoMx8tt+d3Puju8nEPNjjBxAEsDH8Yw
 J0eplvEEMsyq3WZycgksI5Sa3IebipU6zCBhNkk0RIx76a2AjQI3t53r/n2jEr+SA8N+
 U8qRXI+uiGQW93lNYHVieCtK725DG/TWsYiI1xsvM5+Knus80GFKpxePEfio5/lv4i0A
 Eu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=M+0NuMZQaK1+LEWLPTyUvNajoYkjV4XKtzL52YNTL00=;
 b=Ezg91T0LuOJv6uG6jmrSJnqATHUVvvYYb71l+TYhjwX8XajyOVcXY4HY0od88gX3t1
 9k1Jm9AhSX/GoMnxGWlRtrM8yQ+a2CxIzha/Rh2n3V6OloTHMzzFvHKWPXI5rmjEtPXM
 UI9UiDjjGNE4rJWBu1ZFNsjESVFJyjLO3dtOw6bzJzeR2x1ea0B8YC5tgaVmtZWedP5q
 QHfGSbBiFfpji6ksP6sf9Vn2+1V+Sl7ASEaYaZEIpCIYwWLoAvD9rqZ2CFN6tEkWKTGu
 cjBoyKPovqMKpLCWS9vJNL/Hwi4TU2Zgvxrc6SkKrISiale12UNWxKa+slutllNUl2c1
 VVrw==
X-Gm-Message-State: APjAAAW/ckGuhSkRFwBrk6X5SSSiOBAARBILoHEXgzH1QR4B3Xr4QdPj
 IdM9aujcOqfksMZ0uSfO+t0=
X-Google-Smtp-Source: APXvYqxOWvNZym0FA0f/eBL6n7FVBRMfXqIYyFbHSVaoFZyv9fn1aO75XWOpY0fGhmS/ZpXL0HDSvA==
X-Received: by 2002:a05:600c:2295:: with SMTP id
 21mr5597608wmf.85.1574882380419; 
 Wed, 27 Nov 2019 11:19:40 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b186sm7546613wmb.21.2019.11.27.11.19.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 11:19:39 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL] Broadcom maintainers changes for 5.5 (part 2)
Date: Wed, 27 Nov 2019 11:19:32 -0800
Message-Id: <20191127191932.9711-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_111942_228566_211E20E6 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 0d660ffbca1a5f16f6db8f6ccbea5c207ec7e361:

  MAINTAINERS: Remove Gregory and Brian for ARCH_BRCMSTB (2019-10-23 12:02:05 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/maintainers-part2

for you to fetch changes up to 6859ad379439df609915fd2e0c44dc39605c6618:

  MAINTAINERS: Make Nicolas Saenz Julienne the new bcm2835 maintainer (2019-11-26 12:00:34 -0800)

----------------------------------------------------------------
This pull request contains MAINTAINERS file updates for Broadcom SoCs,
please pull the following:

- Stefan and Eric step down from doing BCM283x maintenance and Nicolas
  replaces them both moving forward

----------------------------------------------------------------
Stefan Wahren (1):
      MAINTAINERS: Make Nicolas Saenz Julienne the new bcm2835 maintainer

 MAINTAINERS | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
