Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A225CD2EB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1lAzNcuOFphgW9T4X4QGsKkqlX/GGIC3BYJJVUSiEM0=; b=O2UGvvRc4/+Gf/vw749fenfagI
	aHb/6Ggsj4TNiZzAeM1sf5qe/YBRTKpnn0c/jA0mRoWD7OWMl8uCBWffKo/ASW2hA40iaFYJgasCe
	Rya3oQppnYf4lBhEotktVZkmgFfiwTk7zDLnxq65cwRuQagzKfxNOj0/h8coPEF4+EKDCX3yV4NpJ
	KhhBp00NzKf/uCazoDn7xHzqwyezA1XkE/+Rys9gjYxGBNITHiyPnhmUK5Zdoag9uGRadHr1nSNZM
	KUu426g9QaEN5g/AbsVpZueN5EbbDhNO3d7mCBzpFWjUJ6aQJ4p/ay2AvoR71Vm6fPeHjRmNCofZx
	PFsVi8Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8WE-00033n-Eb; Sun, 06 Oct 2019 15:32:22 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T8-0007sL-20
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375739;
 bh=64/G+U7l4YOPgIxQpEDvRKVpp256aIf2sojAAfNasOc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dqiIxaTIzqDRObfmAZ3/di2XK9+3OEU2JonFN9ey/Laoq9Fxq/w+Srur/TtdXnQ7X
 y10p0KEzOJXYkCSMQB5O9Lc+natucVioJjmup7AAEsqEbJOaMZkriL5RbqeZNXbVz5
 2Rv+6Ws8hwLt0GMlm4cd8vA3SfGoqgJHNie0IctQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M5fIQ-1i9zqz26w6-007E7Q; Sun, 06 Oct 2019 17:28:59 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 06/10] dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT
 schema
Date: Sun,  6 Oct 2019 17:28:24 +0200
Message-Id: <1570375708-26965-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4tpMAFC283UicsXToFZeNTvuWl+GxKSv5sw8It1QDxTanTbHnJk
 COfkxhnv4HIrsDOQmGmeQNt97Qo0MHKklc3acFM90R6aqWcRsGQ++2msOWgh3EfA541+2hj
 FjV3dRDOXeoKadgMsQg2FAmpxtKgx887qCpb8QJkDq4AcQT1xI7ltJpAVx9CbWXqOXdbux3
 zR3QJXFd3PnlKSJuNPlQA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tJ+R1OyxgUg=:7zg9roUbN/AXkyc1NHRX6j
 6mRU1cV9Nr9/RpjcIkOlaO1xfVwxSf+Y4g4CAACLDTwvko4kWOKiHllg6ru6skg/HPYtlJuUv
 oCDCOPVIYcEi4UGVx+KfdXSjLvI3u0eZGjaQnK4BncuHJrA7L8N6p/R7PlEVT+3X6QLZzHZpM
 oteHlhQAT+RVJRI3hSEPVJPNMGbgQQUdk2wCp0jG1XYSswoS/0JjziGiERRVWti4UgrsyUzhl
 qWQhb1b2fJmkx3Rku6OMnSsImHuRztqUI326DZRKB+obslXgKQ4dY0JxGSS0WnZtYJ6w8JbXD
 9JdN2c5n52fWBDn14pKj/W+sD+/03D/NWXcR9GsNU+XEzmFx9pFZKxTV/4a65vTEgRg8Xi7ZY
 ea7TWlPwYXX6R0JbGsm9tKzfBBN2fYK66ThixOoRjpd0yZGtM+w1oWF8JXdi9Gdwasm91br8a
 Y6n7lIdVF8wK/c0z/NxuNV7JssNE/pc9cb3c987tZluEY33slN1lFdisWTxfGHE529IWdvZ3y
 pt/QvRgMGYSuvPdjoIWKFzADbbfWEuQQQXFuOUi5Gol2Bc7PDAtP812kpXMqa4LO8extUAqAJ
 bf2eeQKvEzvit0UHOFTP9IInB1xlmBd1mbME+m8wUBNHFy++NKaK2gtkt8tUQAl/HkYw89X4l
 sP4g+UwGfLMlv2heGbVR6uKqeieLrV3b+jN2eQeLfbbum6C0q6eF5eKoMwXRHqFBzFJgkErBo
 ATQfwftGGZ6U4m1/KcUf3v8rRzNn+X5KLuXGVnC7iNtladPQpkxCJSD9bto+u6P4iO1g5Qrjz
 KEJLraZX7ns0QDn79am7dA7O4jHxU4hefcgw0a8B0TT9vMKqOclLwKkYlA5yJsmKrZBvmovJs
 Ri+u7YUbIw4QJrZBt2tsltoDJSlbhGZrJBW07N3npTRs2U31ghu1mgGEKDD0Wondc/+9dpuYa
 cHeN58YgKLomhzymojOQAMDoUw6npCs6dGlsobae7xJW+Rqo45AUwWhMJ05swNl+DBmvr7H21
 h9s1bsu9/i4WT4bwoub0vg16tcjGGvOqxlnp5KHd8YzFYNg0viLdJ1ptCB/q45/o2vpzdsV8h
 LIKcgm5RjRN/xqlERB5XX+Ze8JaQGP1pYviPoe5PQYcM/a8xdsWta0zyjvXKLjkoahuioUUm+
 oUyOYZ6H/VNu9ZltXWsMt280DQLMiJGliyz4gmFb7gOLNfEcs0xGPvVN+uOhl+jZLaC/usN9l
 gzzDp40ViDlZYVO/tBWsFUmno7ycCLw/MQHwhHQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082910_393356_E1D1F5E7 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new Raspberry Pi 4 to DT schema.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 67bf9e2..dd52e29 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -15,6 +15,12 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - description: BCM2711 based Boards
+        items:
+          - enum:
+              - raspberrypi,4-model-b
+          - const: brcm,bcm2711
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
