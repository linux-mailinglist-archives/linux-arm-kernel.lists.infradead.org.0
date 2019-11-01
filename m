Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E46AEBBD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 02:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+PV/UCh2p6U4IormdjYL9z+uKR+3m/TYJoqj7cDKC5I=; b=SJ5eBn2y3sSjB2
	RLLZf4/aNIDNA77wd/PHzp96yU/1+CQTaXOm/cz7ETLTv1umOzmuccUHORq4jAttPmWgCBwwSiddp
	qnl7m3lqniy4jhrd21HpN5/pFqp6JPL+OXbCIxPXCkd1phyzS0yfqyAsQpIYnn44r8MYbQcHLEVbo
	2Z1Oesih7vIVad9b0Pa4jViEFJydrH+LTMXFOBoBUBeh8xlt4qKE5Ap5y8zvbj7qbAoxD2A/cbEr8
	BkTEklc+M70RKO7OA6OM6YkV42IdJWBeXEtfnWPh+cuLDVKHi/XAy27gdvJDHKaGmGXO9LEq5dJ44
	XQX+Nu1Pcn+Oz/XAzucA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQMBO-0006Gm-Mr; Fri, 01 Nov 2019 01:56:58 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQMBF-00062z-Hf
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 01:56:51 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id EAE758365D;
 Fri,  1 Nov 2019 14:56:25 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1572573385;
 bh=HiEdNYNi8oKqRVwMtkU4iyatNl5LZzujdzu2zDPjPIc=;
 h=From:To:Cc:Subject:Date;
 b=az3h7bW5EzvCriUtcnu51s90I3bkQVYItBuGPcQhMt3feWD6WjxO+Ihk6RnIKaMm0
 4EantzP+U5lt5NvECSkMQzIDzYkNp/b7npkFy27EUDUnBYL9KzpmNFKvOBYSgPr0I+
 GyrZDKbWewKiNAtR2nlBN+ShAgBwjR8hv47P3akilvEoP1QbrWQ0d7gT1Yw7DzGEPt
 SwmcrJrq8i4Zlry/KXcd066tu0snRhxZ4ZizjCME89KgA7/yg0a/yOfz00eiTSRzyI
 7PbHyiH1uUYPo7PbckDNvapW6OCrjQDyaee4A39qOO54vhypk4zg1FHkqTZ69LvyeR
 ScEnByGsviEDQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5dbb90c90000>; Fri, 01 Nov 2019 14:56:25 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 4B2F413EED4;
 Fri,  1 Nov 2019 14:56:25 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id AA07A28005D; Fri,  1 Nov 2019 14:56:25 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 0/2] pinctrl: bcm: nsp: gpio improvements 
Date: Fri,  1 Nov 2019 14:56:19 +1300
Message-Id: <20191101015621.12451-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_185649_757105_214BD877 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'm working on a platform using the BCM 58525 SoC. I noticed that some of
the peripherals were being deferred (not that that's a problem) and debugfs
was complaining "File ':axi@18000000:gpio@20' in directory 'domains' already
present!" which is more of a sign that things were not right.

The debugfs error was because the manually created irq domain was not
cleaned up on failure (or deferral).

I've dropped the patch from this series that changes the order in the
device tree. I can probably live with the deferrals.

While I was debugging another issue I noticed my gpio-hogs weren't
showing up correctly in /sys/kernel/debug/gpio. At first I thought I was
missing commit d95da993383c ("gpiolib: Preserve desc->flags when setting
state") but as it turns out pinctrl-nsp-gpio.c didn't provide a
get_direction function so the generic code assumed they all started as
inputs. I've added a new patch to address that.

Chris Packham (2):
  pinctrl: bcm: nsp: use gpiolib infrastructure for interrupts
  pinctrl: bcm: nsp: implement get_direction

 drivers/pinctrl/bcm/pinctrl-nsp-gpio.c | 119 ++++++++++++-------------
 1 file changed, 56 insertions(+), 63 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
