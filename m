Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C94494A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 23:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SIo1PAGsCllsBkB0vBFeJBbbxzvXZO3VXuu/JEW2Gj8=; b=cHoOUGvrWqzfK7
	3KoCqz0aTY0hJjP+C6APprzJk1BtSCRfK5p6pcR/1aoIRhGjqpJxZ3nof0W/dHqfQs7BTkIz1P78D
	4mHsiQ/LTPuiKkIhCHqbrd6uYdwZbe1vvnifnyhiHAhkjwPzlO7VYkevTxwaolc7Eo6a0Ro897gug
	l+JjxmScqLV+McOZkNMN2KBvFfiL5q8HhYGxTW1NyOnAmGfPYmM138DWh/bxiOqFGB4ruAZhNLbOL
	G7X4ljB4nMiLU/mIlcpMOc9SD3OfQBas1COS9zcVazabCD0VUqw37SlbNhQM6mWkFyB9kiEk3puGd
	KjrFTEMBRizPSs3JsSJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczbY-0003BM-0f; Mon, 17 Jun 2019 21:55:56 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczaj-0001Uv-KL
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 21:55:09 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 16968891A9;
 Tue, 18 Jun 2019 09:55:01 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1560808501;
 bh=hMGkfofcp3Y5IvOC7/IuqFMk2ddLSIWy+00ffvgz630=;
 h=From:To:Cc:Subject:Date;
 b=Ke/V8OCav3k/c2C8Nsapp1G5nBaMhbwDz/3rdEVmHvCe4W+iQbODyVYuCUG/ALlVy
 T97hrgA6uJy5xCqOD2xrhMg3w7kkav0befvCHDW9GfqInRG6oMNMBR7USkhU54mjst
 iT/cMHX2ecy0abrfvGf9+Hbj+tDWGxWBSMvk9XnMI/bZNx9CHpmuy5utfVJ3LZSQ94
 JRJMEBzjuNLDWlONcfuJONmRQDJvFlVBk4JtsK+NnZaGYhKuJGo2Jq1Z+J821JgCcH
 K3rYmjg2T+WDWjaTjaFDEN1Mte6r219q4tlPwGdcVUzGXvCqlA7WY09itzA96rnq4u
 W/JUP/10Tbhdg==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d080c340004>; Tue, 18 Jun 2019 09:55:00 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 35BA413EF89;
 Tue, 18 Jun 2019 09:55:01 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 0B8B21E04F0; Tue, 18 Jun 2019 09:55:00 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, linus.walleij@linaro.org, jason@lakedaemon.net,
 andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] Add support for Marvell 98DX1135
Date: Tue, 18 Jun 2019 09:54:54 +1200
Message-Id: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_145506_080274_E22BB91E 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Marvell 98DX1135 is a switch chip with an integrated ARMv5 CPU, it is
similar to the 98DX4122 with differences in clocking and pin control.

I haven't added a separate dts for the SoC since it would be so similar to
kirkwood-98dx4122.dtsi.

Changes in v2:
- Update description of mv98dx1135-core-clock
- Collect review from Andrew

Chris Packham (4):
  dt-bindings: pinctrl: mvebu: Document bindings for 98DX1135
  dt-bindings: clock: mvebu: Add compatible string for 98dx1135 core
    clock
  pinctrl: mvebu: Add support for MV98DX1135
  clk: kirkwood: Add support for MV98DX1135

 .../bindings/clock/mvebu-core-clock.txt       |   1 +
 .../pinctrl/marvell,kirkwood-pinctrl.txt      |  44 +-
 drivers/clk/mvebu/kirkwood.c                  |  17 +
 drivers/pinctrl/mvebu/pinctrl-kirkwood.c      | 576 +++++++++---------
 4 files changed, 357 insertions(+), 281 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
