Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FEC2404D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aGJgTcmxwW2ALifaGaaBIJ7zrtGHgD6cytZZYXElkqk=; b=iN2
	pkVsYGM+VR+n+rspkuNsl1agb8YiSxybnqnUIx0+tH8eQLlmL1XIjEwnH95APa7t+dUG+MrjfaTa8
	GtHR8badt6aV9m7/ziAgPOEy4ct0OZGpNC7OXMiw22v7z8XU+BPNlkYCOhvmAnG5W8SyK6+pdgXqp
	xFTJkgWyRhW9skttEFptkT4up74CxCpDqAqU0fa4kS0Mac1v/IbRt0XFnzYTWEz05aC6yyUj53YX7
	Ups7mLA1o66tP7wDt0HXkrtm54Danp6OjZOR3sYS8cqjTUx4Q2AtRzDkEktmfHrA0Outs9h0G9jxs
	BI/MpdltdK7Wkh0PojVeNPW0ysJRw6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSn05-0006t4-Ii; Mon, 20 May 2019 18:27:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmzx-0006sE-LL
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 18:26:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id t1so5751230pgc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 11:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4JB3xmM81O9yJMtz2Jw3FvlIWnySnxe6Jj18Ua3tmY4=;
 b=PSggfs1Iyp88cxRByrj3ROsWSZwa7lEIVjSkY9O9NHvEoy/hTEp1HSzotdvhvNgOdT
 B1t62ZGequPKmwFd/9cgDZiwyJdYS/szZWmyfGf/ucLN4HdtBVZhcE7utBvCW/VdXwER
 CvvILA9weNIkbbHUbXZTega23lo1JizMxHi6D1/e5vP21qHaSYBJiXsm/stO8og39HTZ
 qNXGwKVNpnFoc90icbQilH0eqqxxZ9o8T1b7j3TXI2fBIM3rbMk8bqZ4Rw2LiLHcZfTe
 nNLqsi8nKdgA831hJzGIlTEkJwy6CD8XUOjbOn5xFeKdx4ZsbJ+Xi664Th83Au5NlUBV
 e7hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4JB3xmM81O9yJMtz2Jw3FvlIWnySnxe6Jj18Ua3tmY4=;
 b=o2HCqdFItDKU9+2rSb/BanTKh6mlPdh1Otv1ccgBv6XsfZlFQkerg5Sc9gWjljUQpo
 Ikljq7eJSz9U0kMAmmZReIMNLTKSAy295sK8/aJnQ3lVYCvtIpPnyNGp7J1+3nfMfFcJ
 jOq1K5S9TMaYezo3YTFsXiyuA3UQQGh4VX1ltjmr1/GNQKReiDKu8oC0d54SQ1tuDWlM
 3803IDcXF0T1sJXfJJJOylIOS0+i51KUTyhuPFab6cdQrydy690f+LyzfLnXWARm1G2n
 eO0PEJ5ALaonoaMgwwZ0RWg3H3w7miLi1sBhjCPij94VAQoj1vM1E2qzzPCNCLXY76MA
 318A==
X-Gm-Message-State: APjAAAU5JjWcBIiHLgSjbHOlVW01jX5Bfhk207BNnmT/vL69D61z0wKu
 07IW3/DlSDkCfOfLePOCiIYBSTQv
X-Google-Smtp-Source: APXvYqwlAzk57XYghECqsA6tx5QMLZW4rZeoA+msLfPGAuOTPDwFWLkjtpNpQJaLCddvjzOR8PGf6g==
X-Received: by 2002:a63:318b:: with SMTP id
 x133mr76670474pgx.297.1558376816874; 
 Mon, 20 May 2019 11:26:56 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l7sm18220150pfl.9.2019.05.20.11.26.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:26:56 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 1/3] Broadcom devicetree fixes for 5.2
Date: Mon, 20 May 2019 11:26:46 -0700
Message-Id: <20190520182648.1063-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_112657_722430_2FE50F51 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de,
 Kevin Hilman <khilman@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.2/devicetree-fixes

for you to fetch changes up to e8bd76dccd792b371a934336c3e7d8c389755d9f:

  ARM: dts: bcm: Add missing device_type = "memory" property (2019-05-20 09:29:47 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
5.2-rc1, please pull the following:

- Florian fixes the remaining Broadcom DTS files to have a valid
device_type = "memory" property which was missed during the removal of
skeleton.dtsi

----------------------------------------------------------------
Florian Fainelli (1):
      ARM: dts: bcm: Add missing device_type = "memory" property

 arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts       | 1 +
 arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts       | 1 +
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts | 1 +
 arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts   | 1 +
 arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts   | 1 +
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts      | 1 +
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts      | 1 +
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts       | 1 +
 arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts    | 1 +
 arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts     | 1 +
 arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts       | 1 +
 arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts | 1 +
 arch/arm/boot/dts/bcm4709-linksys-ea9200.dts      | 1 +
 arch/arm/boot/dts/bcm4709-netgear-r7000.dts       | 1 +
 arch/arm/boot/dts/bcm4709-netgear-r8000.dts       | 1 +
 arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts | 1 +
 arch/arm/boot/dts/bcm47094-phicomm-k3.dts         | 1 +
 arch/arm/boot/dts/bcm94708.dts                    | 1 +
 arch/arm/boot/dts/bcm94709.dts                    | 1 +
 arch/arm/boot/dts/bcm963138dvt.dts                | 1 +
 20 files changed, 20 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
