Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742A2E4241
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 06:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=svv4GYG6bORf5X8yUyMEBtBDbSGqK2bW3XtZ9sVuPGg=; b=tTWFWUX3ajWc/r
	ki2JWWvhZA46s32AaDORsaDmj/y9XplEq2UzP3yGEPhZM9xbi9wBmYyXonwf/hZp+mVHIGHM0xOHq
	mUXeFPHKNGFANr//89h0NBaj/ghSqFtMwdwp/zCcWQryuPb4O5xERpGCwcGa95t2HOew5aGtWDT6e
	BeyVrnA8GOSLdre4MpdFQZEM4QfVflabtC9fkJfzd1nxqEK/JMypBspmBFv3L94qE4iNrjA9oMJ+q
	Z9JEdSx7ncsmXXUDCn1Kne69USmN36kJvHOrclC1Ay6ieJrLJKTdRWdD+lm3Z28laFwZVUqpcmVqW
	7AXIiyX2MjtoPQPSgmRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqn0-00021u-Ek; Fri, 25 Oct 2019 04:01:26 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqmX-0001p4-8y
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 04:00:59 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id B8820891A9;
 Fri, 25 Oct 2019 17:00:45 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571976045;
 bh=Tq0G6BXEV9u9sOsaMOO6+wqkFsrQMUbTTIlX9eRpw7w=;
 h=From:To:Cc:Subject:Date;
 b=f6XJBxQCWkPpzphCN0m1GxktBRaiK9H6p0o2eYW88aONK1aUqDQGxbU68wpFnpKZn
 z26RYI9Y0A5MITzymDqZ4WwA0hzt/u31rP+Aa8/kqoMopo9FIY3rr9tc3Xj7IB+JHu
 4Ns+phO94LtwzKkkQwcqC27+DP0HLUD39TLLh/QxAe0xm/t2NCG9fkX7sCyPbkBqZn
 YTw2kHWB6pniER2qZ8kOZ9xseIcE59Rt1enTUgNAz0UzzD0nUYzIhfu89KdQ8mQLOQ
 Y77HWjilUv2khtVWPHfEg3Tp+gWLEk+f03bliwKtqivojHSH+2fRHhw43UKIpkUQax
 eXH/6uEYuaASQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5db2736d0000>; Fri, 25 Oct 2019 17:00:45 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 6B80313EEEB;
 Fri, 25 Oct 2019 17:00:49 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 7E85F28005C; Fri, 25 Oct 2019 17:00:45 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: robh+dt@kernel.org, mark.rutland@arm.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linus.walleij@linaro.org
Subject: [PATCH 0/2] ARM: bcm: nsp: gpio improvements (hopefully)
Date: Fri, 25 Oct 2019 17:00:39 +1300
Message-Id: <20191025040041.6210-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_210057_674003_DBA21083 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'm working on a platform using the BCM 58525 SoC. I noticed that some of
the peripherals were being deferred (not that that's a problem) and debugfs
was complaining "File ':axi@18000000:gpio@20' in directory 'domains' already
present!" which is more of a sign that things were not right.

The debugfs error was because the manually created irq domain was not
cleaned up on failure (or deferral). The deferral was happening because the
pinctrl node had not been probed.

These two patches take care of these problems.

Chris Packham (2):
  pinctrl: bcm: nsp: use gpiolib infrastructure for interrupts
  ARM: dts: NSP: avoid unnecessary probe deferrals

 arch/arm/boot/dts/bcm-nsp.dtsi         |  14 ++--
 drivers/pinctrl/bcm/pinctrl-nsp-gpio.c | 105 ++++++++++---------------
 2 files changed, 49 insertions(+), 70 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
