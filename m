Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F237E4C100
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 20:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zpEYXXJfu6YiKANXp+xLO9OYtrfsmdVBWo/QFW9FwCo=; b=OUn
	JS248rsYSGRtDlJOwq0YWx9J2I0jbmip6PC3a7JK4lUwUYERy8sAaXKYzdNfqx5rPPbWB78gVyGNa
	ghp7Wcj2uN6Nsct/BUm6V4xFaOJgQoNKMSxppRm2QGjLwtYr2PXfICY3nbIY2GJvfkE8Mu6EqoELm
	F1NrNLda8eZet6BVyW02Lelg6YJS3KSR6Lo0x/+gXoNONWfnS8Q78KDFhbT07owxAxkTs+TVsNrKd
	aHF/tDffQDbdxNDnSCAIGBWolTs/iMA2IY5jO+Loume5YTUzT6BxTep3Dc3meujWcfifOSoaSc6yk
	gr9e9F2oRTJyW3XqkcMCp4yC48+a2Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfbL-0001K2-2k; Wed, 19 Jun 2019 18:46:31 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfb2-0001IX-Pq
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 18:46:14 +0000
Received: by mail-pg1-x536.google.com with SMTP id 145so164415pgh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 11:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=wfp+JNfOpWcussOrqkZIVASVmRCNfV7M2rs/9KC1uF4=;
 b=Q6etSWEvJMEFdoBH8SAp5/73koMIP/pwSWp4SmBb7bZ/GSZw8IBZ008EVkjZGbc7yW
 qb3QbhUL18xB4YlAJ7beCmvQ7mFnXV2kjZuKXTLr0Oj8OBoOFDdrFe4ikTyFKfNguKqH
 +kZZD9rqy+kU0kXt4fN/Pk5DJGpfpcixTT0dv6e6qolnoSZdbIERZchSONnXoHjjwqEg
 2rPvxe2+SBL7Tsxd2lVE1/fUSkFkdC+aqqY5Zpy80Li2lVvaa0+oJ6pRWAsWMFNRK/Ov
 dqAE9ifTonuvUp7u5fxNEupcOmzaeV7RGBi4T+JF5PrOfLtfv09xSOBwWyOhcthg/GxD
 7jmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=wfp+JNfOpWcussOrqkZIVASVmRCNfV7M2rs/9KC1uF4=;
 b=QMhKVf2JX/5YOIxwsuVSVT1S2pg/rjIfSfuhkW5T6k+3+32a70aS1rKBd8EFiyPuwU
 e9F9fA8QknzRElN+3b4yHXPgE36ATYmaAgVYRGYuFawE5YV9w0fHgTPGjsFNx+xQZD8u
 lzb+bubkVQMbqYyHWxQQJ0JIBEHe2VxqS333kalJaA0a3yJ159EzZnO8ACtZueeQ2G9z
 oN7H/+v0fO+BDQ0yE4YKzFBCoeqqHbcxkcb0OxhECipYBhQymlLaOAWwBAqGthfMqrE5
 IJsCAsf+MquAauAplyiUHSDJXdEN7QlffkGFCWw+w8pKWDCLDAfv1HSY8FpdOwCbvO4r
 gSJQ==
X-Gm-Message-State: APjAAAUfoLpaJ6ptLlNhP20tlj1ZWXLewQl6h4Oq69tuOqZRkN+3GnuY
 FIb1QTXjGCRp0ShZQBf6kMEOd5tYl/8iaxxQtgTFgiP6
X-Google-Smtp-Source: APXvYqyy5o5OnIS43Af6d01LBalG0Vty5sR6St71JIyhRGW9irgTnmCzcoGb/4G8SZ74DP1n0GO/PgNwxj8dtKzUfJM=
X-Received: by 2002:a63:4d0f:: with SMTP id a15mr9199858pgb.101.1560969971318; 
 Wed, 19 Jun 2019 11:46:11 -0700 (PDT)
MIME-Version: 1.0
From: Zhi Li <lznuaa@gmail.com>
Date: Wed, 19 Jun 2019 13:46:00 -0500
Message-ID: <CAHrpEqT_34eNK-EzRgs-ocDD6pfLzD=FU8n83HgSQVsimJRxPw@mail.gmail.com>
Subject: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance monitor
 nodes
To: Shawn Guo <shawnguo@kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_114612_888968_CDE39CC5 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lznuaa[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ddr performance monitor

Signed-off-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---

Resent without base64 encode

Notes:
    No change from v9 to v12

    Change from v8 to v9
    * put ddr-pmu under ddr_subsystem bus

    Change from v3 to v8
    * none

    Change from v2 to v3
    * ddr_pmu0 -> ddr-pmu

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 0683ee2..a33e08c 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -378,6 +378,20 @@
                };
        };

+       ddr_subsyss: bus@5c000000 {
+               compatible = "simple-bus";
+               #address-cells = <1>;
+               #size-cells = <1>;
+               ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
+
+               ddr-pmu@5c020000 {
+                       compatible = "fsl,imx8-ddr-pmu";
+                       reg = <0x5c020000 0x10000>;
+                       interrupt-parent = <&gic>;
+                       interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+               };
+       };
+
        lsio_subsys: bus@5d000000 {
                compatible = "simple-bus";
                #address-cells = <1>;
--
2.5.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
