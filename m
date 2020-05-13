Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B49A1D165A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n0pUc5AAiaxBh+fKMILsDh5RKPHmF/1cFX1kjFtDLEc=; b=e5L2gfVQnEFPMf
	VoVFsWLYnTPzL5vbvs0C1gVKPSQ5MTgxEoC4jGIlpNslgBlbM63UH+eXh0DE6ucA42r6fP/vCsioO
	NxqVPwHtQqsPW3z3XXTFVSh8KY00RxQsfJjcBQPrY6eXhoaBTKF22gqHsiW0BJBCJLoguS6y+cJnT
	50g07RSQ4pdhhP3e9yv37OtDZxGsG/7EdcHvs3rHedNv/GFVeKvF6owWjhKqaQIU0qdktH8JjFsDF
	LegwMt7BDOkDLzN6ctS54U70EK1LsAYyaXjbbXbJKZFMqV3Ib9VyGTPisKOjPGKVjs0vzg0uAoVzz
	uwA3PD68+Hj55ClyqchQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrjT-00042Q-CR; Wed, 13 May 2020 13:47:35 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrds-0005Ac-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:41:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589377308; x=1620913308;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ljm8FnjZM8LY8xetHtTmei+qyvIsUSSDg5bKQj+0eQ0=;
 b=wgfMihJE7uQWMJeESA3BI0u9CY5WRvS/0mQO6oi6o5Eg9DE6/yz/Z8dw
 sFYu0eVwtcrCfDYVtosXO/eAkNYz1OJ3qZgmCpBueqjoY7m5yc68NGNI/
 LMJ2rhtrpEHllVPbU9NXEgCE4COOcK3tJL6rI70wJe+d1mx3P9DGoAbX+
 N8TrvZtMfwJ1e/k0DYf+2jJIsYIAAXmqejti4Xf91/+mXFJ7OpcrKxXqD
 6SUhJypCrJ1QYEF6+L+y6P95WCHmTkan8XTOKs9iCdPjduq1Adjmh7qJm
 tvTY3ma683hXwbSjGxD6CtoEvvOQqOvRrYpk7fUtVCto219wySmUbqzji g==;
IronPort-SDR: 2uLuxLcwbwuCg9ZVdYVZrouOLP901++0WbRqO6zMCR7luuHQE7Q5QuEc5Mo7b7xPMeLj8sL3sh
 Nn3NzBQ7Hw5atCOsK68D3mDKxUKS1Mo7xIChiyL9W4eLAnxI6JIYxSFBu/NaeIV7Q5LIJpT3kf
 6Bd6KthtC7PUkKRXoKY/Qgliva20tyHHnAE/ES7ZeZvSdthJBsP4cW/TqudgAytiH7IVH3CLlT
 E7tjkCJ0CevPJ52DUAajhHAMV/mMDBCt/F7bTBjXPSFCe/ztmq7ZYRhiRgls84pZ5xcwk/aW+9
 i9U=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="79444197"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:41:47 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:41:50 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:41:48 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>, SoC Team <soc@kernel.org>
Subject: [PATCH 0/3] hwmon: Adding support for Microchip Sparx5 SoC
Date: Wed, 13 May 2020 15:41:37 +0200
Message-ID: <20200513134140.25357-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_064149_038974_EA0989A1 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an add-on series to the main SoC Sparx5 series
(Message-ID: <20200513125532.24585-1-lars.povlsen@microchip.com>).

It is expected that the DT patches are to be taken directly by the arm-soc
maintainers.

Lars Povlsen (3):
  dt-bindings: hwmon: Add Sparx5 temperature sensor
  arm64: dts: sparx5: Add hwmon temperature sensor
  hwmon: sparx5: Add Sparx5 SoC temperature driver

 .../bindings/hwmon/microchip,sparx5-temp.yaml |  39 +++++
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |   6 +
 drivers/hwmon/Kconfig                         |  10 ++
 drivers/hwmon/Makefile                        |   2 +-
 drivers/hwmon/sparx5-temp.c                   | 154 ++++++++++++++++++
 5 files changed, 210 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
 create mode 100644 drivers/hwmon/sparx5-temp.c

--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
