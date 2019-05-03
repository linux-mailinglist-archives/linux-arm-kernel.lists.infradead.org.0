Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396991328D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uMiBZ7YGy/uLGdSRyC6CkR3Ixgs3MHn+dZfATxJnD+8=; b=NU+0rO9l589LLq
	85Jsuav+/wvg5ZxK0J41JrFGICK7G81+cQkfSJZu8WLPdxxfdCCwCJ0rdI4WlzXXuZLj732A0SGZ5
	b6350OsHlCyjpiMMa+QRSA0HM4/RV+kcc5/HHCOs/qB8Qz98pZs1shpjCPZKagQhYgbzC1IZFdV/m
	rJQq3Hj4IJi8HCXULnX0GeYclngRhU8s2SO1y1yIEnloGBNUP6bgJPw17QZRCaoi52VwqjOule4tR
	SgHvhDnS/P0cXq7gDinOwVum6uiOyH+XQKIuewKvca3eu+g36pg1wA6LbhRrgS8UN197J+E1p5rA2
	dfcQW4kHifK9TrgqQY8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbRo-0007zi-3x; Fri, 03 May 2019 16:54:08 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbRT-0007nY-I4
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:53:49 +0000
Received: by mail-ed1-x544.google.com with SMTP id m4so6766654edd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 09:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2AXsO3p3XUOOmEOW3jRK4tuWsEU6SSZDBzlNLxQJuMU=;
 b=wkVjK/gSjX4MySF1NCzYupRTUFLjtYQV9SaFTglc9wSA+nkRWLvtBg0xwv4eW5cAlY
 vcpfjWHs4mcdk0jp6RUNqGuHAnI7aY4Nsie89PlRMHpXGKRw9Up/XOLHDKI0BGCnHpQC
 cT7PUe4NPDtxcJ3AO/kT1HmxEKMp6z+hvaH4rZGXVLKloq8APDd6/rOD/zXRJF9e4ONI
 J4vJRPmVpKl0OgiHJ20BrjM77FZwxY3JhnCbL9/CvZLcMx4Z/pNujgU4m7ZBwMpjkt6O
 9W7PLmO3Hbc/6l9ce5pJ9pbz8ZI7ZRXqxAF2WFo8+zmbU1+fbRHNN2hIW2g3JlM4hYbG
 qKuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2AXsO3p3XUOOmEOW3jRK4tuWsEU6SSZDBzlNLxQJuMU=;
 b=UoKipeQrEdfdyfiZoQhhVshZny5LW7HYbjXr80gb097TSQowZfSJzMmwXwIO2gs72+
 TCwFsiuG6xUQmk10zu2VXyhqCk1qQRm6rn2h86ZHTaDpvS7h6Q9nJYRNA6KI0/roUoSB
 U7qOvE+Y2kRk2EbZAqN934OOZvho/ljUF0MS4MzC2/6kY16Z4YHx/Uz+xcS8rIczCmFe
 jYMed1NxVHkM0o8ubhI/2DxWfLopdcMfIU/pnw3g5bVQ9dfgHjzqr6PIXPqfNPsDVQko
 OejSqtq3jsLKGR2ezFWgxgA6PE/paaCjvB4BFuCEsFuUJNsXa4I2Qss+pOSAfzm4gxDT
 uVow==
X-Gm-Message-State: APjAAAWH3TjpuC2Ukhdojr/rAMbHFe6KjHnx9jMnGrkMZvdATdiBpJdP
 gG2/h7Nub4vBPwLL6ypZEE6XTA==
X-Google-Smtp-Source: APXvYqznu+dw1Grq076eKc24OB56ZD8jrVot65g+y4tMEPBdS1clOnUBiCr/w9GC71Y/gWnsR9JnDw==
X-Received: by 2002:a17:906:e10e:: with SMTP id
 gj14mr7324252ejb.285.1556902425262; 
 Fri, 03 May 2019 09:53:45 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:44 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
Date: Fri,  3 May 2019 17:53:37 +0100
Message-Id: <20190503165342.30139-1-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_095348_009522_591603A0 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, Bryan O'Donoghue <pure.logic@nexus-software.ie>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V6 RESEND:
- Adding Greg to sender list. Greg looks like you are the right person to
  apply this.

- Adding devel@driverdev.osuosl.org to sender list

- History:
  https://www.spinics.net/lists/arm-kernel/msg723454.html
  https://www.spinics.net/lists/arm-kernel/msg723321.html
  https://www.spinics.net/lists/arm-kernel/msg722655.html
  https://www.spinics.net/lists/arm-kernel/msg722449.html
  https://www.spinics.net/lists/arm-kernel/msg722441.html
  https://www.spinics.net/lists/arm-kernel/msg722350.html

V6:
- Drop BV_ prefix from u-boot timing defines
- Add RB Leonard

V5:
- Adopt u-boot method of calculating timings.
  On the basis that the OTP registers have a programming time that is not
  related to the ipg_clk rate specify the various timing inputs to the
  RELAX, STROBE_READ and STROBE_PROG as-is done in u-boot.

  The wait time to burn a given OTP fuse is not documented anywhere except
  in code in u-boot.

  The ipg_clk then is used to clock the registers in the OCOTP block and to
  tell the OCOTP block how long to wait for programming to complete and how
  long to delay before doing an automatic re-read of the registers.

  Tested on the i.MX8MM-EVK

  relax = 1 strobe_read 6 strobe_prog 670

V4:
- Change the RELAX fix to drop subtraction of -1 for all users - Leonard
- Expand register definition from the 60 documented OTP registers to the
  entire 256 registers putatively in the address space*
- Add Reviewed-by as indicated - Leonard
- Added Suggested-by where it made sense - Bryan

* Dumping the expanded address space shows that there are indeed OTP values
  present that can be read back from registers that are not formally
  documented for i.MX8MM eg.

Bank 20
        0x55000801
        0x00014d14
        0xd503201f
        0x55000801
Bank 21
        0x00014d20
        0xd503201f
        0x00000000
        0x00000000

V3:
- Fix commit log for the expanding the ADDR field i.MX6 uses seven not four
  bits, which is why the existing define says 0x7F not 0x0F - bod

V2:
- Rebased to linux-next/master to align with i.8MQ work
- Two patches dropped as a result of rebase
- Added patch to expand OCOTP_CTRL_ADDR to 8 bits for all users - Leonard
- Makes sure nregs = 60 not 64 for i.MX8MM
- Tested imx8mm-evk, imx7s-warp7

V1:
This set adds support for the i.MX8MM.

When adding support for this processor there are two interesting gotchas to
watch for.

#1 We current do not preserve the WAIT field for i.MX6 and since we are
   reusing the i.MX6 set_timing() values, this would also affect i.MX8.
   On the face of it, it appears to be an inocuous error with no real side
   effects.

#2 Secondly the i.MX8MM will calculate a zero value for the RELAX bit-field
   when programming up OTP fuses.
   This is fine for programming the fuses but, it introduces a strange
   failure state with reloading the shadow registers subsequent to blowing
   an OTP fuse.
   The second important patch here then is ensuring the RELAX field is
   non-zero to avoid the failure state.

Bryan O'Donoghue (5):
  nvmem: imx-ocotp: Elongate OCOTP_CTRL ADDR field to eight bits
  nvmem: imx-ocotp: Ensure WAIT bits are preserved when setting timing
  nvmem: imx-ocotp: Change TIMING calculation to u-boot algorithm
  nvmem: imx-ocotp: Add i.MX8MM support
  dt-bindings: imx-ocotp: Add i.MX8MM compatible

 .../devicetree/bindings/nvmem/imx-ocotp.txt   |  1 +
 drivers/nvmem/imx-ocotp.c                     | 48 ++++++++++++++++---
 2 files changed, 43 insertions(+), 6 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
