Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0581A2457
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 16:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QnC5tEDFoxsh/yFbGt1qOIHWrV0K2Ze4aSlItBHY9QY=; b=OsRc41nI+fMtXC
	k9tCKIVg2lsl0GRJDDVy3gt7QH/DSg2a6vT1/uRRzaJSBPqihE4hQlCiUEYyTUP+L6EDvSx6trJaY
	cCyRCpubX0oyOoRmHDLq1vDbPtxkr3NwRnLEkHjXa5Dd8g9XUEDMPbHeEOrMUeb5W226JRyRJfjH0
	9egkv/+TF62OjU8yFR3pa8HT0Lm850m9sAdz6IjxaxACIfDOaQLB9l8eQABbNfOYEQnZVb9mhY8+4
	22+2fXP+WB96En0Z0g5Qrwto2iNq7NjPHc2PvYnejOyiB37hBlvB+amrCYQI7zgRwDQN6lnsOMqRn
	bwV0IuFmvNexeCVU6xYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMC1c-0004I8-LI; Wed, 08 Apr 2020 14:49:56 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMC1Q-0004GZ-PQ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 14:49:47 +0000
Received: by mail-il1-x143.google.com with SMTP id t11so6951300ils.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 07:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=wR8J2b+VadqJ7co3OXe203kY2wp7FcU9y3rU2x1X2Lc=;
 b=Q+okMJOrmu46BVJ4W897WB0ETPT3t230J2V2WVuN1/vb7TaiudSsP+hEQ/JozXtrOW
 R1ztXk5Cw3tZTb3XoHG1FR0jjl8KxjUPbb5BNvT2T7HOJEu9zrwzLv0M0dgTuxuHyqJ0
 jJEdM3BAsaFEppMhxtx44mFHxADRksXNpTLBbOAyTc15ilmMjkeb5qoKAcN4684MpcQq
 tKwWbtlxJ9HWA1FEGDmdvTMBIxXl7+z5fu83MOOEqkX/LwR5g480QdV580w9qOu00m2k
 yVd2bbtESxEQYeD97+4DAOIN5FPh1qqljXORgyvC1CbFN1mJV1LmxR3ZJXTFNKvxuwIs
 0L8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=wR8J2b+VadqJ7co3OXe203kY2wp7FcU9y3rU2x1X2Lc=;
 b=YL/1VGiuBo0akytG3cJYGvLZ8depSGHxfvDNi9N1JLm4XXgpufMH8n8bvSNIwnG0WS
 mtF540UoIl51hxXK/7y/pUy67c3gOB5UXXfwhiCCTDVf7WFQQeV+uPok/fyO795Z9KUg
 lEb1kEnAF6suxscD/P9ZA7wVpGh3RjXXuj8MTyshEjUG2lKcHExacM9zq01T5tTNeNDS
 gOqzJCbXFba5MS34xrxIiWBxFMhFaHlWN147QQ8PFur42YJjAYFF8oeuGqJX40hRGa4/
 T2ojqtsjBz++SqTnhrOmAt7LmevCtmwZ280JKBitbUdw1Yv5mUXu01A6QN7YMImPsubD
 tuwQ==
X-Gm-Message-State: AGi0PuaP28zWhljU7/t+Iuz6Q9GcH65hLw+8e82w/dC9mr2wOLv/zcmH
 tBt/9HlW5aHr/6G2em3z6y53APsYw/NSU1r5b30uX0X7aig=
X-Google-Smtp-Source: APiQypJTukjCEgjULDIFs6A7jB6rTECx/YYSMuVLIZxT5C2Nr1PoDVcbeJGiz6RbTEHkbww7NSGEWi6jO1USaLjjOtU=
X-Received: by 2002:a92:3c56:: with SMTP id j83mr1986756ila.37.1586357382979; 
 Wed, 08 Apr 2020 07:49:42 -0700 (PDT)
MIME-Version: 1.0
From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Date: Wed, 8 Apr 2020 17:49:31 +0300
Message-ID: <CAJs94EYHsjEoqydJX6hYFg_Y=T7nVKjpJ5n85mvhazb6xNSg0g@mail.gmail.com>
Subject: zynq-zturn: macb: Could not attach PHY
To: linux@armlinux.org.uk, Michal Simek <michal.simek@xilinx.com>, 
 nicolas.ferre@microchip.com, Anton Gerasimov <tossel@gmail.com>, andrew@lunn.ch,
 f.fainelli@gmail.com, hkallweit1@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_074944_847365_ABD1612F 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matwey.kornilov[at]gmail.com]
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
Cc: netdev@vger.kernel.org,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I am running Linux 5.6 on MYIR Z-turn board and see the following issue:

[   38.485960] macb e000b000.ethernet eth0: Cadence GEM rev 0x00020118
at 0xe000b000 irq 28 (a6:78:9c:86:65:d3)
[   42.990885] macb e000b000.ethernet eth0: Could not attach PHY (-19)

Setting 0x3 for ethernet-phy address in zynq-zturn.dts fixes this issue:

[   23.445231] macb e000b000.ethernet eth0: Cadence GEM rev 0x00020118
at 0xe000b000 irq 28 (5a:77:b7:82:c4:b3)
[   27.843706] macb e000b000.ethernet eth0: PHY
[e000b000.ethernet-ffffffff:03] driver [Micrel KSZ9031 Gigabit PHY]
(irq=POLL)
[   27.843726] macb e000b000.ethernet eth0: configuring for
phy/rgmii-id link mod

However, I've found that there are at least two Z-turn board
revisions. The first one has v4 schematics as described in
http://www.myirtech.com/download/Zynq7000/Z-TURNBOARD_schematic.pdf
The second one has v5 schematics. I've found v5 schematics PDF file at
DVD disk supplied with my board. I am not sure whether I am allowed to
attach it here.
My board seems to be v5 schematics. The only described difference
between board revisions is that v4 has Atheros AR8035 PHY at 0b000
address, and v5 has Micrel KSZ9031 PHY at 0b011 address.

What should be preferred fix for this issue? I have not found a way to
specify a list of PHY addresses to probe in DTS file.
u-boot has similar issue with this board [1]. While it can be
workarounded by PHY auto scan for u-boot, in Linux
drivers/of/of_mdio.c, I see that auto scan is generally not
encouraged.

[1] https://lists.denx.de/pipermail/u-boot/2020-April/405605.html

-- 
With best regards,
Matwey V. Kornilov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
