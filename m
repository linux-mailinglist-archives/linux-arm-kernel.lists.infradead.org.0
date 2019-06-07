Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A2C38D46
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=//NZvQz6qqOfn6M0b1yD8BYnFhWdoGJ+EfR1sj4PzzQ=; b=Bn3DM2rIOsRLX8
	+e1IghPVQ7KuhnusQn0VjMJYkhtkEfG3GhgSk6ykLT3yG7u6hqkMaqdCdidbvTjlD67K7vcCRSzti
	bZVtxIr34vfUu4vxDwRbDSIZ3+QFvrJv7qtty/6SRTpZf1iUpdg5ejPxk2bWnPId+O/izSrC4sQ54
	e6TybXxUdmgjdPFxv+NtMo5vi+Y5YgwUJmH6OHkiNIM5h3P+E9vRSp6eNPeB7Fyb6yMc/xQy0KrJS
	iTgRpM+jUdvwHB1V1teaV9QQWrqSubygq2bbvBm4aSbAKRu5jyk5jARjQpKWIxQgzimwFR5eY/H59
	EUg7MewicF0GB3Hd7pYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFyy-0003BV-Uq; Fri, 07 Jun 2019 14:36:41 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFyh-00038m-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:36:25 +0000
Received: by mail-wr1-x433.google.com with SMTP id m3so2435516wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TO+tC7fWacYRsyaMhXsAdQ88u5H88kvpQVp+NFQh548=;
 b=wot8PIqPhYozDkznWIfR6NX+5Uv1uNcwGbUL8jdwMi40PIL5lo+5PcwXgHuFFXdSxW
 6nGcqDqwbFtln+27LGMaeHeZ2PfVuDkx/BPXDJReWR8p1j7bnv+/62dl2cqRB6riOPT+
 Yzu0/fRLT8RC5DsS5FHymOJOWkFDV0ZK3T3Y0pgEvyY1WL5GSTDprsyhjo9aRA3Pii50
 SfECmLAsQuJDU7EgwTLOVE+/GU2Hi3vTciKRCLNkN3dmmxUpZnmPGgslHl7phfhxrE9x
 Qo9stTwYM++QxvZ4yd6R6BzdbQQeJGz6Cx+EWPbFyZ33u/pWRXyyYBq3BsMilycJl3O3
 P8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TO+tC7fWacYRsyaMhXsAdQ88u5H88kvpQVp+NFQh548=;
 b=jWidZv8TS/yZFwtG4u3uYqWXudHFcxLpyoHl7NiVZvSEuQLf9eZExmzjUwzZuOdHfz
 xsnUIVdrMHgm10w/7giA8cvy2oIOG5SivpkYHJUPaG/sVqxBiIM9q59D8CdQXvlFbHg/
 24oD6Y1Da8SzUZsWyFRFkQDCzNaJD8HKGLmIsJPE+YTcQcUxfCNW6makS24WKiMP1F6C
 8u6m4r85i7O8wP3TsqHvXUmI0FMOXRwzMODvQ23Ya33PhGqB53SThhLK+eehnMUz1mix
 E1M4shpqdkKMMIr53JccqWA0QddY1Na1jnNvI2Hr4+4F4aUjPYkRAXdM5v5BxcnNMb9f
 H25A==
X-Gm-Message-State: APjAAAWXqUiyfpvAl6qt87AENuJITMyio4QdIq/p1c7HE3RLaps4xNSc
 ArDe3hxKH9tDmNvh9JzkqAJOsA==
X-Google-Smtp-Source: APXvYqzp193xcZ1DXAoc8s8Qwn8FldnWiAZPOrOiUlzFVU21d9JnxhQ1Lfqlh6J4gMVli5EEUZD6xA==
X-Received: by 2002:a5d:43c9:: with SMTP id v9mr33358901wrr.70.1559918181755; 
 Fri, 07 Jun 2019 07:36:21 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t63sm2999829wmt.6.2019.06.07.07.36.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 07:36:21 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 0/4] arm64: dts: meson-g12a: bluetooth fixups
Date: Fri,  7 Jun 2019 16:36:14 +0200
Message-Id: <20190607143618.32213-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_073623_728284_022039D3 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches :
- adds the 32khz low power clock to the bluetooth node, since this
  clock is needed for the bluetooth part of the module to initialize
- bumps the bus speed to 2Mbaud/s

Changes since v1:
- removed the invalid Fixes tags
- added the reviewed/acked by tags

Neil Armstrong (4):
  arm64: dts: meson-g12a-sei510: add 32k clock to bluetooth node
  arm64: dts: meson-g12a-x96-max: add 32k clock to bluetooth node
  arm64: dts: meson-g12a-sei510: bump bluetooth bus speed to 2Mbaud/s
  arm64: dts: meson-g12a-x96-max: bump bluetooth bus speed to 2Mbaud/s

 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts  | 3 +++
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts | 3 +++
 2 files changed, 6 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
