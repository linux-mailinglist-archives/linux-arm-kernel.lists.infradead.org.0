Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D28141412
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 23:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sWyJble6Ch48fQdQa8fkOLeSBAEuESJSNMVVmCGVGUM=; b=RuxC6xfyILesEgi2ck5xmQToOm
	ltKn8xaipGaguQPSsYwy+cU1x6RpARYDPyJMaSw71VoTxkYg4ub5MHUwl6xW0//clUHiR+ZU8QF4u
	TTTT+828P1b4kep+JjQXDPfj0+dR7KrZ8kuIO46NnGEVxDyuYgbMQ62oexoH3T2jVdg+oNWIH8dXR
	NcXcUJW1Q/JLvyKlFNkza4KXz0e+uU1m6JZpgORXZ4fmFAMym5JpFCaqcUZ3UdFnDYvpQyJ5jiqji
	1/rWftm4AmoNI+tuZoMvRkC6DpYL9ECb9h/CxPlyV4Day/db1fuIlTpkwNFG5OtiTiqajFsS7iOHh
	ZdmeUHvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isa5u-0005y9-O3; Fri, 17 Jan 2020 22:27:58 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isa5B-0005WC-1w
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 22:27:14 +0000
Received: by mail-pl1-x62b.google.com with SMTP id a6so10428936plm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 14:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xH1cSUr8SBRV9CMGWyAAW3UFCbW8FdZTUYzPQ5zdNRs=;
 b=kABM2jdKuYvuIqyTxy4TyVcelygiQt38Ew0UJYQA+lpfvSQHPYxWIsyqPMrLRq4AxI
 6jzdziub/ZoQr0RaExHPlh6ss/IiWzZE8jwbiVAX7VoybWskFgXTiw7y51faVdGE8GVU
 gK+IBdXwQ0flI5+XytshRo+l+O6fg9nbX/gwmDTo3I4mtSj6MO2RjV0jMCo/8orbJEYh
 ZQj8xk/aFl51c3Lw3+2aJDkqcqDCtuDZW6OWl8no0wCi1A/gHbkJrIvugd83dldxjSMX
 s4N10DZgATtiD4z/jg55dr7E8u9Rfgx8UjLV91RoWrHDTGuHKDjNOBXu0Cw2qvvtIL9x
 XVGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xH1cSUr8SBRV9CMGWyAAW3UFCbW8FdZTUYzPQ5zdNRs=;
 b=OoAPQzSBi5dRWkkkNYZGon0EKV6qqnYaWoEVNhlLvoJiCAoyDqw5CwZo0mK0aEzq0M
 3llNaJ/2ZLTeDdDikYayclKMmzDRWfwkezZUWI+h4gplm54oAQTbzH/egP3V3Sppl/kh
 dVH84Rb9EofRNadQKHeTn0pxoQ5C0yNOPTrpz87Jts/gtVuQNceNO3MqF4tq4ZJSR7Cl
 ashVmGp5yQUkZbwP2BDQcMdE1wkQjziOedgCqcNzHVzjQTc7Q/5Ser2ZsmgrK4e+lYmh
 4mncDb8ua+pyHT+WjSFClids7esRAs87nAq4Mojz7RPt0RIcJRfzaEgM7FqtEetmXuSK
 meaw==
X-Gm-Message-State: APjAAAXi0fzV63shOxlHXEMjApfpFl75RBMyhfj0zdG151liPJGlQfXZ
 g2jlYruxQCFkRvhaQ93zYDU=
X-Google-Smtp-Source: APXvYqwzCgQbKi1X2YFChvFDG4VqN349RRGOKHguq3xvpTTX4qFKQOWR7t4sdeyFz9TwGuwX+vLGog==
X-Received: by 2002:a17:902:904c:: with SMTP id
 w12mr1621421plz.35.1579300030208; 
 Fri, 17 Jan 2020 14:27:10 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n1sm31696435pfd.47.2020.01.17.14.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 14:27:09 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/3 part 2 v2] Broadcom devicetree changes for 5.6
Date: Fri, 17 Jan 2020 14:27:04 -0800
Message-Id: <20200117222705.25391-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200117222705.25391-1-f.fainelli@gmail.com>
References: <20200117222705.25391-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_142713_092280_9A6DCE85 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Phil Elwell <phil@raspberrypi.org>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 0100f76d96346b44e7310a5cfb102124b6667643:

  Merge tag 'tags/bcm2835-dt-next-2020-01-07' into devicetree/next (2020-01-08 10:09:49 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/devicetree-part2

for you to fetch changes up to d5c8dc0d4c880fbde5293cc186b1ab23466254c4:

  ARM: dts: bcm2711: Enable PCIe controller (2020-01-15 15:41:11 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoC changes for 5.6,
please pull the following:

- Nicolas unifies the CMA reserved region declaration between all
  BCM283x/BCM2711 chips in order for firmwares to easily adjust those
  based on the use case needs

- Nicolas adds the Broadcom STB PCIe Root Complex Device Tree node for
  the Raspberry Pi 4. The driver will go through the PCIe maintainers
  pull request for 5.6.

----------------------------------------------------------------
Nicolas Saenz Julienne (2):
      ARM: dts: bcm283x: Unify CMA configuration
      ARM: dts: bcm2711: Enable PCIe controller

 arch/arm/boot/dts/bcm2711.dtsi | 64 ++++++++++++++++++++++++++++--------------
 arch/arm/boot/dts/bcm283x.dtsi | 13 +++++++++
 2 files changed, 56 insertions(+), 21 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
