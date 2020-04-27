Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91521BA4E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=THwSpDnkBNe+1RdAwLT9BxQJG/khe3J2o5Jdks5tGus=; b=LuwYyN/rS3ATBl
	LS11C+ZMwRbRpkHXyj1ds5V8zM07+MektltpdR4stdiV0haFEXY8YK1yXhWFA0v+Lv5GPg+o/EOfs
	rztkCVrbKb1I3gXHVfJoVlmmKTG+zXKPgeXMDhdJepM90jblN0yXEZNgefehfChvlkBQswDCe1kyX
	NtOgq6s4oth4InoK18Pe2W0qF0jfjqu6d4K5ZO653q+fTjpkZVPpUYHZdNpnkegJg44jqiU4NaZ1w
	7lnmeCkOf7de/3JUxDjctpslSHhAn7c90zE/uDIjNWxsZxs3x4JyDQBp40fBFX7gDDh7eIp/G1NIe
	a7NhUmYrpQ793jrqmrrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT40I-0003xK-Qw; Mon, 27 Apr 2020 13:40:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT407-0003vQ-7t
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:40:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id s10so20628619wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 06:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MUIBi3Kz2bkUUb92RvvcEHJTqtbaNXF9Y7EBsbD5L0c=;
 b=OLMul7nbDDFYBho4Kvdud4pdceB9b7aPn9ASElp5wj7Km258hn12H7ulg8+XahVHqS
 D5Fnw57KJvloRVSjNdDwOpBQkCaHDgQvQoyRyeSI0t4nj3NT1ce392dR8cfqHfOuMFK1
 Ek6mnuui/vgFuGVnDI/LUgFz3HW6ExBq3gMeaFagEdQjxzxTy/PC5RaIMz3iYJaeSmRZ
 KXd9PT1YvkNTowH/b49ZVIWbdqwVKUloM0jaUwQceeWVl11LF8ep1KXqbqrgYo/hyuPy
 QJTm285KkTQQ8jsfSE8RWweLyNK7EMWFzTx9Ohhs/tb6/C0TgoLvj+75ZTK7IqVpSHSE
 mviA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MUIBi3Kz2bkUUb92RvvcEHJTqtbaNXF9Y7EBsbD5L0c=;
 b=GQOHC9MIYeCPmxOpQPPPPC3L5evX1Y+ikcO7F2Vml9WfVsUKEnb5Rjv6o7o6/FFh0w
 MO+yNUr7iNYO56f2cV/E7rzHNeKWn7uJi4+cIhxWoyW+Wm820sTesO7+H5kXgfhAt/fU
 P/hgnTx0IC2kjAmWmuCyfxDdeP5QOacBICBNa0zp5H/MZS2UAOwZpzxVgGwVM/PzZoXr
 IIIpy2H8CCjl5Sn0g/pelK6RXkDMykcl5M+oF+LJeZjZdu2yKjuRSSoQVNt+CD9lHsF5
 btuVm7wyg0fDUUsefeE+ifL+EVIm8zOI2pl5TpFamqwvRMXby5sHKLhXelIsm51sXGij
 pIAg==
X-Gm-Message-State: AGi0PuYxUinCT4B3HL9WJE6IF0W+yD4b7eKd6ugUmvBwzofkf/KlaGeK
 yitH86wb8twwKEi17PzBftg=
X-Google-Smtp-Source: APiQypJKb7lCTqNXQgytbzzPh7skR1WCcEpQCoDe8IIwh8BbQCBr+FlamFIWRbPLZVeRq/pA585TTA==
X-Received: by 2002:adf:84c2:: with SMTP id 60mr26971075wrg.65.1587994845296; 
 Mon, 27 Apr 2020 06:40:45 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id g186sm16290640wme.7.2020.04.27.06.40.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 06:40:43 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>,
	soc@kernel.org
Subject: [PATCH v3 0/5] defconfig: fix changed configs and refresh
Date: Mon, 27 Apr 2020 15:39:58 +0200
Message-Id: <20200427134003.45188-1-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_064047_312770_A3709669 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Li Yang <leoyang.li@nxp.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Three configs have been renamed, added and/or, changed behaviour.
Clean that by using/add the new config name.
With the name change to DRM_SIMPLE_BRIDGE the related
DRM_DISPLAY_CONNECTOR got introduced, enable that additionally.

Then refresh the defconfig with make defconfig savedefconfig.
The refreshed defconfig does result in a not changed .config, all removed
config options are selected implicitly and part of .config.

IMHO, patches 1-4 are bugfixes meant for 5.7 while patch 5 is a cleanup
targeting 5.8.

Applies on linux-next/master tag: next-20200424


Changes in v3:
- new patch: added 'arm64: defconfig: add MEDIA_PLATFORM_SUPPORT' now
  needed for some enabled drivers or these drivers will silently not
  be built.
- add reviewed-by tags
- dropped 'arm64: defconfig: PCIE_TEGRA194: follow changed config symbol name'
  similar patch got applied
- as requested by Arnd, added suggestion on where to apply, 5.7 vs. 5.8.
- as requested by Arnd, amended commit message with info why some configs
  are no longer in the defconfig.

Changes in v2:
- additional patch adding DRM_DISPLAY_CONNECTOR as recommended by Geert and Laurent
- add reviewed-by tags

Max Krummenacher (5):
  arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed config symbol name
  arm64: defconfig: add DRM_DISPLAY_CONNECTOR
  arm64: defconfig: ARCH_R8A7795: follow changed config symbol name
  arm64: defconfig: add MEDIA_PLATFORM_SUPPORT
  arm64: defconfig: refresh

 arch/arm64/configs/defconfig | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
