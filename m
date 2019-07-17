Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E586C27B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iyr3pGsV8pcZ00c98uObaR/srNyfY0OE2wPdV+AXr0o=; b=ekcyvpz/HECTT6zdJ71vG23L0E
	0SqnzZqPfVFSaHbx/XNBEeRmhJgn6DMQ5w9AJB2WYGyxTsIyOn1/4SWx30ohA4O1UNsrda8adgjzL
	eKV7DQ9obdpdULBwHyhB5x2AlJMt9sKNqsozwdbOmAiiLR1QD7fSO1AwgEyA51EQqpMwKYgQ/YRsa
	atjEjl3Z9PKy0iSBhPaqfKA8L+7D1k8qHuaJjDXzDwnwA9LkPW1Pphpi7/TfkZV9Tu2oW6C02ZT4/
	TrbdwMEjm5coHnM0CYdHJSDE5l4QcrLfea8sGfiOq8aLPu7ys+bPuthBGJidP9c5pTfqWEQsvh+U7
	uNkMhqUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrJE-0001ep-9V; Wed, 17 Jul 2019 21:17:56 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrIN-0001Dc-Cv; Wed, 17 Jul 2019 21:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563398203;
 bh=LTN0HSSI5O84aRWQCFFBZShgiwADaHIgqZLGgH80QLk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IfokEAObdk3cmA8JOXpKQ31t7znZlysWMfUoeDS/qY5kP8JF39w+w3XY+FcBC4ULQ
 yRdFWGdDiLC/q1eaUHR/IgiQHiW7hg9TI3MWAlSSqYCdZsLpCFCYk6xjDT/7AawBh1
 ODtPHE4tqrDMGooUvbW+wXRllr/9gzrNP0t4UDKs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1N7zBb-1iZNn61ssF-0150mi; Wed, 17 Jul 2019 23:16:43 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 16/18] dt-bindings: bcm: Add Raspberry Pi 4 B
Date: Wed, 17 Jul 2019 23:16:02 +0200
Message-Id: <1563398164-2679-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:d/yZbsOlzSyZBTRlB2M8Un8gpglFVFFhS8Ez2Z9E7G3aHPy4yZy
 25F5MiAFimkxSvzbrqSXAW13A0xtKSXgnRGsE+ejT/PTByXeWdcjcZmaKbhi3mr6zu9Wd4t
 qL10gp/+b0jT1Um78HTCjhqpcvIyP8t6LDtoBKJxesxNavfe14QLv8W0hYHYSOPQo9iEQd+
 Pge/9p6voMMO59FcmyjjA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iXIF18yLKcM=:hE9gMbXNL9kLJHHqhUTcOa
 6pNJs3Y2HotB9qAl+9bpwZBh5c+tpeTW0bPaw9fD5xMxe/jXSXkASH1Ogr0Fi+GM2PTkSJF+n
 WpPCwkddDv7KKAojOFLRPerTUb7mlh0d/8M+V/FliM5KJU/LxtyyvnPzQht9yWBiZMUWgVxyU
 rOzyE2LLRlHQWIVghEXo+5+sMkduOs3X4AYW70IYYxnTg4Nkm8XaDxcNynr+hDwkmVKr5ku+c
 /iMAbca9Rh95rdpEW5en/RByGioKHa4fzux7V9lw8jCyWY8nrf5Z3inU7Yq1LmR2IZSGD/TNi
 bs+cl0v1MQEvreK+ccQzVE0VddYLNJu9N/3jtUChW1tICsmqFGJpGhzBGejnZ1yzaxMioN2UK
 YcPzk4TGZUsSxzLb9aHMuh06KG/BeIP3LJYZNeSWKEI6yZiALnk0WA2EX/OEy4cF6+kPbd47v
 mLp9T/VtmS74o/hOVgmSCxNm9EYijPncnS9T5ofaxyxULpuArHJZzMW9YzGM2aSskgNEZhV67
 I4zwsc9i3TnB7U3/7jAP0oInEnVMl1SFz+A/O9AZjK76qO6wgQtJQOl8Drs9sa0CkvP6uVmBK
 VD+RcE6VnIfpm0vHyknS/3w5O37fCPLRKMGvDcAxiyZQcSbFrQUWOa+peJHJgfADjLJazz9pA
 3NoYQfalEGVQUvK7wnqixjg82hcNFSXPbUdt33MbMIgmBWM+/GQU+T+2a52I3n49xobHZNHIQ
 4BCWut/+43n2/IV79rTdRCZGP3kFBmVi88DK557vryk4mn6Ats1JwX6K6hmhfdOu3i/nHR4qo
 z2+BnrJLwBMl68g2csici2cqSEpASaL/JWJ5U17Z9+RZ4RJuFKemXb1h29Ah82uCIwMTgbvI7
 e10UzxE997F9CFZRxKoSxXpki/1E0frrxmGJtJDFrEM9Dncv+mnAuiXtcGHo9nN2qmDUnlj9y
 qp0NWwqz2Fj8kv7RRXc4fo+dxtiqHol3a47d7tILlGxGaQcvExesKZxIJZ4ropktCq0NyGJby
 REGuwEfIJvOaRZpANSibg8f4aC+Zna9IAINkOJDpfcU46d76LHqmcdJt991ogmpNrqYXlDRKR
 pHHDytPhBdzy30=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_141703_763468_E254F02E 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the root properties for the Raspberry Pi 4 B.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
index 245328f..d031e10 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
@@ -54,6 +54,10 @@ Raspberry Pi Compute Module 3 Lite
 Required root node properties:
 compatible = "raspberrypi,3-compute-module-lite", "brcm,bcm2837";

+Raspberry Pi 4 Model B
+Required root node properties:
+compatible = "raspberrypi,4-model-b", "brcm,bcm2838";
+
 Raspberry Pi Zero
 Required root node properties:
 compatible = "raspberrypi,model-zero", "brcm,bcm2835";
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
