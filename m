Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FF41D5AEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 22:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Erp8IAnyrcAM8cnQDq9PaePAoxeO8HxhK4IZVHxRH18=; b=kpmv5DaEpLmyRM
	esZtuXnws3yItUUREqvGoTKW/4Z7GryP5VHJ7VGDOGjk7tk2TcIVr1+BCsZBEutR9ax2jEP3o9NVT
	vmEGo3qW/4kYb8JvrfEf3gEYi8BZiftX/8u0bGRsII+gnj6j45rbpmbrrwgfp/xq/WemWm1VoEv4r
	/+q5Z1tEixpjJ92xe94mf30/0+R7JmbmxCC8u/U5Yos9BpjacVu27YUUyzje7iy7MvXpcKZ/gkkGh
	fuxwm67QHz4y2Yaw4FwKkkmupKHarSc+5V9aI1lawvMlNiNYV2FKNI8uMKVDc8uwGYXHk6xls2mX9
	0rS1xTM286Y1BgjaJs+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhFQ-0006sP-R8; Fri, 15 May 2020 20:48:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhFA-0006pf-Jm; Fri, 15 May 2020 20:47:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id l18so4996354wrn.6;
 Fri, 15 May 2020 13:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pDplOVA3qSkGjsB6Sd3N1JzIKO5RkayeKsEDfAMl5CQ=;
 b=rJjsB9nhOn9Hxwm+bxXcGYq9CQgEC/ZcMrFgxs3tkMUpq3BlJzZEiqrQ5+uINouauH
 y38NA2yDoZrVi16c0MKXj5pxr0ln5+yyb0Pt7ZgpudG+IxTb2wYg6BVGthn60LbffL8I
 O4U2CQVqSdKeoST9Fv+7UP6btjOqof9llAQa33zqOFYPkWqgp1ldwdhbLA7msBCAxEzX
 ShDQBclglSqUOpCPaePZpkE66AiGUJQQpGtru5KgIk0bVsmRZTY6K/Og1cLohh9AK6sC
 Hs+Fup9AXMJdW7CRo0xcdZcq/5RVsGYPpgZkVy+3q99uP0jE8EufEIG9rHwhhJmsM032
 ie0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pDplOVA3qSkGjsB6Sd3N1JzIKO5RkayeKsEDfAMl5CQ=;
 b=JCpR4PKmQO/ubjGLjro2Xm+XMn/tkB1UhpUMMZTDhV5Cnnzt9dC+seOnGhy6PeO2/N
 kDS8CfWGu8HmkLAY8yx/lb54iEmLIGNZuyfaZG9bCOzXllNEZbCIUuxqzT3OzecJhx7p
 emr9ynTqEv/Vy4GVHNOTIvC3W6YHfQGsd6TotMnJrXFgpe/ZbSlVZHXiBa2p+3l7G6mk
 Wp4dsZ0JZ/XxT9lbcIAMOvQHXAjvV/dlBDDoTxZ6UV6/k+y5LNfu6MNf//+wvMtLIYvL
 z53c0H5LV0qXYl456DCcbzfX+VDa9u8+OnbeR3LUHxgf7Nx3D6c89Q4iuL2QNhm2osXk
 o3FQ==
X-Gm-Message-State: AOAM5308QKFYNBpZE2LuDDpAiFNPCR0w5CvzbLv/RqQEln/cVYigiHNb
 qxtzpoSb1dnzmGzvjpL7hgA=
X-Google-Smtp-Source: ABdhPJxFKXDlog1adLXGbI1UurJEAGEouTAVJ+JR8QmWLAwwKobBc19vqEgGtEo4w5A7H3mtF998+g==
X-Received: by 2002:adf:fb0f:: with SMTP id c15mr6529849wrr.410.1589575662939; 
 Fri, 15 May 2020 13:47:42 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r11sm5296211wma.35.2020.05.15.13.47.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 13:47:42 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: khilman@baylibre.com,
	linux-amlogic@lists.infradead.org
Subject: [PATCH v4 0/4] meson-ee-pwrc: support for Meson8/8b/8m2 and GX
Date: Fri, 15 May 2020 22:47:05 +0200
Message-Id: <20200515204709.1505498-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_134744_666545_4766A346 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for all "older" SoCs to the meson-ee-pwrc
driver. I wanted to compare as much as I could between my Meson8b EC-100
(Endless Mini) and the Le Potato board so I added support for GXBB, GXL
and GXM as well as for the SoCs that I'm actually working on. I will
send the ARM64 dts patches once all of this is reviewed and merged.

I successfully tested the Meson8b part on EC-100 where u-boot does not
initialize the VPU controller. So this the board where I have been
struggling most.

Kevin, I'm not sure if this can still make it into v5.8. If the
series as a whole can't make it for some reason then I'd appreciate if
patches #1 and #2 could end in v5.8 so I can push the .dts patches for
v5.9.


Changes since v3 at [2]:
- added Rob's Reviewed-by to patches #1 and #2 - thank you!
- add a GX_ prefix to AO_RTI_GEN_PWR_{SLEEP0,ISO} and add new #defines
  for MESON8_AO_RTI_GEN_PWR_{SLEEP0,ISO} based on Neil's suggestion.
- rename meson8_pwrc_mem_eth to meson_pwrc_mem_eth as suggested by
  Neil (thanks!) because it's the same for all platforms
- rename gxbb_pwrc_vpu to gx_pwrc_vpu as suggested by Neil (thanks)
- added Neil's Reviewed-by to patches #3 and #4 

Changes since v2 at [1]:
- don't remove the "reset-names" property from the main description
  (only make it optional and switch from items to minItems) to fix
  a dt_binding_check found by Rob (or his bot) - thanks and sorry!

Changes since v1 at [0]:
- rename PWRC_GXBB_ETH_ID to PWRC_GXBB_ETHERNET_MEM_ID. Spotted by
  Neil, thanks!
- update cover-letter since Neil confirmed (thanks!) that the "dvin"
  reset really belongs to the VPU on GXBB, GXL and GXM
- removed RFC status


[0] https://patchwork.kernel.org/cover/11489163/
[1] https://patchwork.kernel.org/cover/11496013/
[2] https://patchwork.kernel.org/cover/11499791/


Martin Blumenstingl (4):
  dt-bindings: power: meson-ee-pwrc: add support for Meson8/8b/8m2
  dt-bindings: power: meson-ee-pwrc: add support for the Meson GX SoCs
  soc: amlogic: meson-ee-pwrc: add support for Meson8/Meson8b/Meson8m2
  soc: amlogic: meson-ee-pwrc: add support for the Meson GX SoCs

 .../bindings/power/amlogic,meson-ee-pwrc.yaml | 102 +++++++++++++---
 drivers/soc/amlogic/meson-ee-pwrc.c           | 112 ++++++++++++++++--
 include/dt-bindings/power/meson-gxbb-power.h  |  13 ++
 include/dt-bindings/power/meson8-power.h      |  13 ++
 4 files changed, 214 insertions(+), 26 deletions(-)
 create mode 100644 include/dt-bindings/power/meson-gxbb-power.h
 create mode 100644 include/dt-bindings/power/meson8-power.h

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
