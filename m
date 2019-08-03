Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D26680631
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 14:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KunE5+2rXywZc0FECYd2Kwla0Ne27IGbRgO0V+++TAE=; b=G1uMK6+MUgLcEg
	3Q2ikTqMX0KdEhC8VQqArmN9trIb2KO+XuZL1lEawIrj2n2n3JQ9o6B1yPxjBAJ2GU6IwTs6ehSJQ
	7TepuslEtFwdPsq5lt2zz1FzxaoMcNQ+gntzH9KfGWj8J8q+74u6UNzhG+DeoAIymul6UxcttBRH+
	6YWSfe3QYt85awaHApu0vp/jNHgLX/ZT1mjswFQ30gfBTdgl6NZbSgZdzugIo+SrCMQzKzUL+Jttn
	udqnbcunTpsJPKt55ku96539AN545SZ1ulWR6TxgRVoiYkaoEakowgoCCXnRHApkAEomfcFEWau6T
	rkBPih4UXZDhkw1wldPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1httOt-0002oS-Pb; Sat, 03 Aug 2019 12:44:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1httOZ-0002o5-KH
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 12:44:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so37414613pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 03 Aug 2019 05:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=/KXUXdt/9btHlBLAQamQWkg8OX4vcmApFONZR9Kwrr8=;
 b=WBTSX9bX8SGco4dHhLKt56bfBa1AiHxe038mr81f/MyV67gQae35jZyfxetaTZd8bh
 9lKD36ZGkql0Vl/k+wyEbIKLL/zP1wHzk1/4mXyOPsxKoc2qLXTKz3FLA6nhamMjtqTR
 udLdWePDhdTfvJcd4+MSzrrV4e8Q55xfCYSBzs7J3iFMdlt0uG7rfzUCAyOH/i6UVa9b
 Z6Jqcm7lZPckuZyKmbISWI8UpMnrEx0Vs52UXmKW43Zk7uM/icUCSCpwZqyEtAGLtCMQ
 iZhtKS4BPByyei6AlVcY2NtBG/vid/Feae9h5FDS4yKUOv/WcN0ykGOT1posROzZhmxW
 orqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=/KXUXdt/9btHlBLAQamQWkg8OX4vcmApFONZR9Kwrr8=;
 b=Ef0wUm01kay+Sw+gMtC7OTo6G0jE5YMfJchB0A29lyL2Q518958es7j6PRsRaZ3lrU
 4xD7T7FTFZeBmI9DdeussIj8EMlYWGU0Di5mqaIIdw99y/357xoXjmeSyZZZnoxwcSlA
 Cja0e4ZDaw9SgD+aXGb41UeGaWhLhRrwD+TcwK+7j0FSaXUDSXpmQB9BBew3vdR9kaI9
 ASntwcaidKj5QV/v1B9pQ48blsPChjsK7pw0AO7u2fo6DZ31WRBsfJXB+3tQIwRZPOwM
 /2nTM1hRydx+0Z+vxDOt/tOdnx5GUPshKpiBH5oCATc4nYHp4oaGC/X4uGJ9ESH34626
 GXaA==
X-Gm-Message-State: APjAAAX07e0/zmfOvORZ/Ql5ludG5tXHi1Z4K3kp67PjAQ1qyOZc0Au3
 1x8O4gAfTOywN8D/n22kOVLMS0fP2Q==
X-Google-Smtp-Source: APXvYqzgGMKhI5dMkhA9Kx8/zVBJCaRvV0XPuqjF+jCZW+RHoJDZuH/eSprExdux2nZtFBiZuucreg==
X-Received: by 2002:a17:90a:32ec:: with SMTP id
 l99mr9230514pjb.44.1564836260997; 
 Sat, 03 Aug 2019 05:44:20 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:618e:61ce:f0f1:2151:3036:855b])
 by smtp.gmail.com with ESMTPSA id 10sm91185313pfb.30.2019.08.03.05.44.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 03 Aug 2019 05:44:20 -0700 (PDT)
Date: Sat, 3 Aug 2019 18:14:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: arm@kernel.org, olof@lixom.net, arnd@arndb.de
Subject: [GIT PULL] Bitmain changes for v5.4
Message-ID: <20190803124404.GA11140@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_054423_697204_5DD4A665 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof,

Please consider pulling the Bitmain SoC changes for v5.4. These changes
are supposed to be pulled in for 5.3 but I was waiting for the common
clock driver to be reviewed (still not), hence missing the timeline.
Details of the changes are in the signed tag.

Thanks,
Mani

---

The following changes since commit 609488bc979f99f805f34e9a32c1e3b71179d10b:

  Linux 5.3-rc2 (2019-07-28 12:47:02 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mani/linux-bitmain.git tags/bitmain-soc-5.4

for you to fetch changes up to ca33f735b1195e9bafaa66f24dec40ea666e9840:

  arm64: dts: bitmain: Modify pin controller memory map (2019-08-03 17:51:21 +0530)

----------------------------------------------------------------
Bitmain SoC changes for v5.4:

Most of the basic infrastructure is completed for BM1880 SoC except
common clock support. We are still couple of patchset away from
booting a distro from eMMC/SD with mainline. Below are the changes
for this cycle:

- Added Reset controller support to BM1880 SoC based on reset-simple
  driver.
- Modified pinctrl memory map for BM1880 SoC. The initial pinctrl support
  included the PWM registers as a part of the pinctrl memory map. But this
  turned out to be useless as PWM registers are not handling any pin muxing
  at all. So removed the PWM registers from pinctrl memory map.

----------------------------------------------------------------
Manivannan Sadhasivam (2):
      arm64: dts: bitmain: Add reset controller support for BM1880 SoC
      arm64: dts: bitmain: Modify pin controller memory map

 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
