Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDF920049B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vmt/g6MWOMeoo2NH+wUH0fZNtluKAqRc5iRdJeSDPBg=; b=F62ekToNS66xF/
	vUevacr1On6IHj+RHbnfOKk7q316aXUsGSm6psLoxXLaXWS1WdMVDFhthnkYOMWmA3ORy/RZXkzE3
	z7XXHRxgaN5itEuDREkX4v36TN++wbNfPGrDX8o7IRbu/3sx83MXQcoXpu/iXmHHQ0vr82JfIXssN
	v84x5yAU3UX3gVhfhLyJI+X0RkMhluuEzN8CSxGOW7E9mPHuTlD2lwWLw5cfb2TGAXyIpxP9cPoiw
	bnn96kaM1khpte6cuyGH02Nn3T4hUkBXS7q0a5bEA0Tc30tQue07vG8Zy8F4p3LbtEQyI0G9bv3Fo
	KHL7HX33bbmbQwx1jReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCzF-0003jV-RK; Fri, 19 Jun 2020 09:07:01 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCz4-0003iS-4b
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:06:51 +0000
Received: by mail-ej1-x643.google.com with SMTP id n24so9433270ejd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 02:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HvGH7Pv4foao4L50irRdHfsqjrsvjQfU69J0IADDQqk=;
 b=P80z4dP158kR74roWZEYDQTGhtpYz6jZRYW/KrObAPurFivXZAr0jRWDh4vGLGQlVP
 BGoJN72IF1ztehvJlOH7VQ5lRuSEsczEAAdkVSTrMtvhFteZ6dncfBdUxz4pjtc/Dbp4
 iwRulvaJGMhtYWLXNNhVhPYbglLZLC4oprRohBrrGqWAzNXkCUIl9bbmlCCP/gUukUEf
 To9rjqcP1jeXGrI6Q2X7VrMWbWIOU2IMo68c3V/JrFPGLyUzP+vZJlFuc64eARetUsZk
 FoQdlw3xxGAfH8nUlwlcD1xshgLsWakRySyu9qVdkyXg224zO3HRfHoI8KsTp0iDEVoB
 Fh2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HvGH7Pv4foao4L50irRdHfsqjrsvjQfU69J0IADDQqk=;
 b=dbzveY/OPI/eWq2S4Q+nFF7jP5WBWBy+IF8O4hgqNa7Rz1fo2va+GLFcQYaWhk8H63
 6qi3pPkAZoaH3ttK90fdXmdlJrkj5w4lv2r8WA38Ax+xkKI/BFYZcystFy7201FIXOvX
 wDEGy0o+VSN9wxRvPYjo5a505306/4G6e0Y9ayHutPdOuNMBkUcHE0fqAwMNJAfDl6Z3
 Py7T0Q9qc825IPbHS4LKSWjy0KJ+nNXtYkcHOfpO3HwrYnTSUZEYU1VtvI+R60reZWPm
 P5XV/AK/WWimLwj7A0vaAFWUWqKGuUq7+XKql9TsKKaQD7im8F4tjR8c4zfYKrorO5Gb
 /VqQ==
X-Gm-Message-State: AOAM530abIJNFRB5lmbdhv0grwbKJByPpLNvTjNVguNZn2AwjB5hGjtb
 +6KweQwRZj+kMJEf7UHKcUpvTw==
X-Google-Smtp-Source: ABdhPJzYJAW/a3AmTwbnULTmzoFTpukWQQAUa1C0VYxyzK6eiXdwk67c0W3bjz/BfvoRWLinvzdfAQ==
X-Received: by 2002:a17:906:fc06:: with SMTP id
 ov6mr2795189ejb.184.1592557608029; 
 Fri, 19 Jun 2020 02:06:48 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:16b8:5c68:7901:5c06:6064:338b:4004])
 by smtp.gmail.com with ESMTPSA id dm1sm4653650ejc.99.2020.06.19.02.06.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 02:06:46 -0700 (PDT)
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, devicetree@vger.kernel.org,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>
Subject: [PATCH v2 0/3] pinctrl: single: support #pinctrl-cells = 2
Date: Fri, 19 Jun 2020 11:06:05 +0200
Message-Id: <20200619090608.94948-1-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_020650_204006_953A2AFE 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Drew Fustini <drew@beagleboard.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, pinctrl-single only allows #pinctrl-cells = 1.

This series will allow pinctrl-single to also support #pinctrl-cells = 2

If "pinctrl-single,pins" has 3 arguments (offset, conf, mux) then
pcs_parse_one_pinctrl_entry() does an OR operation on to get the
value to store in the register.
    
To take advantage of #pinctrl-cells = 2, the AM33XX_PADCONF macro in
omap.h is modified to keep pin conf and pin mux values separate.

v2 changes:
- remove outer parentheses from AM33XX_PADCONF macro as it causes a
  compile error in dtc.  I had added it per suggestion from checkpatch
  about having parentheses around complex values.

Drew Fustini (3):
  ARM: dts: change AM33XX_PADCONF macro separate conf and mux
  ARM: dts: am33xx-l4: change #pinctrl-cells from 1 to 2
  pinctrl: single: parse #pinctrl-cells = 2

 arch/arm/boot/dts/am33xx-l4.dtsi   |  2 +-
 drivers/pinctrl/pinctrl-single.c   | 11 +++++++++--
 include/dt-bindings/pinctrl/omap.h |  2 +-
 3 files changed, 11 insertions(+), 4 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
