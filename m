Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA108BE64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gGwI4SxSwu129621OsEjJ6NDAjeKHDi2+9o6+XSFw3A=; b=ks5EkkbZpUMi7vN77FaRSxjfqn
	ZHJ4YXxoB1nneHIDPectzNVyRcPBt+hJr0hyc3VBFgcjkiIWBsnXO0u+sxYRdsE5yHEfCkld6Ef+Y
	5IaWqz/x1203riwQPojnENE77qzvy4gzA1QRfSKsXVEliVkpQtRN6NNbHFsQZ+w2daWZ+/KqextUo
	2n0dcxSr+7Sv4usdQl8asNRpDubJSetTPMbBtdBdNTyc4G5sq8UFyDqh33bu3KihNZbnnniplhh3G
	MZWHCY1fHtsI9nz9Ti+t+SiEMe7JHSV+uUvJO7VYGfDdLA8917auTAsVf9dbJZPMlCu9zD/FtHK7E
	8o6+zijQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZak-0002Cj-Qk; Tue, 13 Aug 2019 16:24:10 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXn-0008N3-VV; Tue, 13 Aug 2019 16:21:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713261;
 bh=Tog8MR549dxeaXAammAwAidG+XtuOysLRumT+/w95sk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=L/eBvY4AYW2K0JNCMA8b0o9l7cCAPZtfyVK6cfdCldUYaOL7LOA2whNVDK3lQBJMy
 rs4+IUH0RKe88nTd9XLjl7LfTKOZ3vtTWO0hi69S7CFOd3j9w81CLaew22cLcdeYI5
 0vLSKq28ACUD2vBNb1ZXjcCZXhIdt780o2Q9EsHY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MuUj2-1iEPfj20WI-00rXwk; Tue, 13 Aug 2019 18:21:01 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 10/13] dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT
 schema
Date: Tue, 13 Aug 2019 18:20:45 +0200
Message-Id: <1565713248-4906-11-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:npR3UJkhcDl4Lun93ftjDmmmRittMWdFbbCbLAdC+Bwi8P2kMrE
 GZiz3OavvpVS78sDhZeguCPtxFNFCgE54zcbOqs0QL74yD/hHNYI4bnMOo5rwmxaQOx+7Sk
 mGmIeTFndJWRDrOYVCam777KxsgFsb8eHlDAFWhwbJgGcuxtDOaf2dxBgjcY78k0GuG9Bwz
 ytMrfyvOwsP8PAtSqLJrg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:loX9HJrMuYk=:Cvg3Qtj6UooChF9sEh6l+8
 ac6FCzBEBZbr8/4141/Mr6O/H1OlcU3YM+9SoXhzLocJ8knyk1vDJgF9jWzVP2ZOICTatZosN
 yDP/UWJl5fXrsmo+n1Or1PS+SCz70q7BRji33nAKzF0TsMVAN4fqtD1CRvhADCU+XNnUBByZa
 caG1UVyXV3RPtZURPvipxMHZwvWrl2EHos2At9sPE4C8NAoqcCbzU7G4SDTuAFLC1REueggwZ
 jTm/SEXlM9h06M5nyZFAHv9/D2eZgiKwIMYszzVWvPVmLHd0TpfeBwFSVIExhAxRU5JqDfgfN
 b/HLXmHqcbz2ykc4yXqcJpNYquvuMXpp8L/gn0tkvTrYcmoyuJWX402sqbp+Sms4PCeV+FoYg
 XOFUbsMQTLSoY50QzEeTbq8oQpHrP+dKjAdn1kXDQ8gyZ9FHUknetOclK6fUqBCJr15eS+kFw
 wB3VOnRs38YcbQBQr0m+HvBqlbqitzar6s5TBtdGcmyHaPGlnUoJJcb+i5TKLg9STeFgI1yDB
 e7XfGW8EW6rywA7vlTQIErlJ7s1tHIfBhxQpAcw0DrIoqhgOQmRgPh4zq6Az36G5Tnvc1clw/
 zmHqWpvft9w49Ej0IoVgIr1lJYjt7a40pEA/TjnztUFG2yYRGZOF5CrDWoq9BShjLqoe3ltRP
 /dQpWSez8W9H4dKg4SJVKLgljMFI/Ij8OGd7TfQ5TykSa7e1K2b/apSfszVWRXyZfwfz4F6xL
 0M+uToxk8K2zOqcdFyIoFmRXhSUGsDcnAMBpea27zzE9oLktUtIlUdijDY+lWZhtY/L9pIIpr
 4MgkCZdCkfAfvZNGDmQ46bPHyECT+PrJWpKuu0JdcWcKSaN3dYc+DkErU99KQNG1M3WBwBdHm
 uyLk0oaLA8ItfCRCsy9n70eOrgDmfEDGlUbr/Nl7wIII+wk9/DVF7fkAAzs/+LWPaGWgFTaY9
 Zmv6QlhiCUFvDNC+yMxhluTcTgOUS4VODLneDCPFMkm7bkLnM5Wzb02ejZ7TAfR2XAGSaKU9x
 9B00ZcJSYD/OO94bqhvgU2LdwUkWVC1CBsevCPEhS/xexmULRc6h9UGhU97/tYh/wrqZ+cOFA
 ZFcCfTwgwNWPf2g9EFVaFq0Q+JsPbMNS69JCt9VONdvOQDHIgOeV3N8Dg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092108_302424_33445862 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new Raspberry Pi 4 to DT schema.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 1a4be26..8c3bbad 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -15,6 +15,11 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - description: BCM2711 based Boards
+        items:
+          - enum:
+              - raspberrypi,4-model-b
+
       - description: BCM2835 based Boards
         items:
           - enum:
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
