Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2AA753F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xx7H8V1ijK6thiTQhT/YFeEHzIz6Y7VDXU/cNizxoV4=; b=LpeM/DrNdtP0Uk
	mOI/WDZbaRaXlSV9U0kviYEpEfB4Nj3VBa3gvo3dGCsLjtDX9n7m1YUFfPCyWKcfU1zFQrXOHc2oc
	XB68knCxNeRm/KlnuLwKy7tgFri3dgNCNZmEAw1bZFBuwf5v/1Rb65UWrKAJZNyzerd91YVQFXHsT
	KmIjaw7d4CQCrcCEv9928mBiAwWoAEyrg6rRURP2AcphudQgwcQaEAYzflspXVXiCKK4cRduZQT7W
	PhMpQEnnFZNGT3x2d8rbov9Y4OHwjIasFru+3OWXH9F5MkS6NZptMYJXDMswXrmo9UJeQP20AjXX0
	+MXjsaXGt2qhNuuPEIIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgaW-0003g7-Ae; Thu, 25 Jul 2019 16:27:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgZt-0003Xz-4P
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:26:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so17076073pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E85E3sDx7QmmDk1Qya6eXBYlrdWHNfL1kHhjlDR1b/g=;
 b=nc35E9AiCxeMN6103rkz1HbVehimcAIsRv5kmqeNqFtBzLYzuF5GKi8GybaCFRfkBw
 GYgFDUxn1tiZXm7chrKpcUqt7R5JlpnRHkXa3MVtg9JXROBE0lleyygvEPEhhm5Uu1eg
 GX65gtCZw958XOITkmgt9flz9uZzXjFiqfXyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E85E3sDx7QmmDk1Qya6eXBYlrdWHNfL1kHhjlDR1b/g=;
 b=l1x33hQYrThozTk/4rPsU1CgmSpnWEXjFu0lNze69S7tWuHvpIVJYjhXMW9uBMVYwW
 r8VGtZhTRZUsusW1AJ8sMFo10K+fs85jG9bjtiW+/tjuWE9tbM9OJ5RJoeUFssNLAcTO
 NQD6sy1QjARudX3VMvlokquSElGymfxQeZfUlMeB0iEhyizd5KJl7VelllH8GThuFxoI
 /pRuntYimgTjfPgV0HWWt2NmcoEC0OUMZAXLO+meqbwv6HihE680lHb6D1o4GgJOaNEn
 3WA2ISEWc4hcaTpUVX3H4DE++h9uJd2pTLQSDCFjQfgf0qdm4OcI3XvzDNRUto7TkgQz
 Qd7A==
X-Gm-Message-State: APjAAAUOFyvbVSHWTRoLNrXIVZ4lOkcUPy/E0HEq7G3Igb06PN3b1QEd
 WRIjrZp7dfKiCyRI3iUZOh7kJQ==
X-Google-Smtp-Source: APXvYqxXCKBHc8/5JBlcotEIfAlJsGQkxesUvB8hvVKuLAmWzu2UryLFWJCi0O9Qp+rvx6/yEIiT3A==
X-Received: by 2002:a17:90a:f491:: with SMTP id
 bx17mr95823296pjb.118.1564072008342; 
 Thu, 25 Jul 2019 09:26:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id o128sm55953582pfb.42.2019.07.25.09.26.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:26:47 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 0/5] Add veyron tiger and fievel boards
Date: Thu, 25 Jul 2019 09:26:37 -0700
Message-Id: <20190725162642.250709-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092649_201407_07B8972A 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds device tree files for the veyron tiger and
fievel boards. It also reorganizes display and backlight
settings for veyron devices, to avoid duplication.

Previous versions of the series didn't have a cover letter,
v2 can be found at
https://patchwork.kernel.org/project/linux-rockchip/list/?series=144987

Matthias Kaehlcke (5):
  ARM: dts: rockchip: move rk3288-veryon display settings into a
    separate file
  ARM: dts: rockchip: consolidate veyron panel and backlight settings
  dt-bindings: ARM: dts: rockchip: Add bindings for
    rk3288-veyron-{fievel,tiger}
  ARM: dts: rockchip: add veyron-fievel board
  ARM: dts: rockchip: add veyron-tiger board

 .../devicetree/bindings/arm/rockchip.yaml     |  30 ++
 arch/arm/boot/dts/Makefile                    |   2 +
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 115 +------
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi      | 173 ++++++++++
 arch/arm/boot/dts/rk3288-veyron-fievel.dts    | 299 ++++++++++++++++++
 arch/arm/boot/dts/rk3288-veyron-jaq.dts       |  55 ----
 arch/arm/boot/dts/rk3288-veyron-jerry.dts     |  58 ----
 arch/arm/boot/dts/rk3288-veyron-minnie.dts    |  52 ---
 arch/arm/boot/dts/rk3288-veyron-pinky.dts     |  17 +
 arch/arm/boot/dts/rk3288-veyron-speedy.dts    |  58 ----
 arch/arm/boot/dts/rk3288-veyron-tiger.dts     | 125 ++++++++
 11 files changed, 647 insertions(+), 337 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-edp.dtsi
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-fievel.dts
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-tiger.dts

-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
