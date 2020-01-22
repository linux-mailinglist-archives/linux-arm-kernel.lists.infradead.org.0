Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D01144FDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 10:42:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gxq1ieL4TIXv04TBIUMn5GZwYuilbH3T2lSvlnkOWEE=; b=SmkHqL7MDIDxOj
	f9J3wFDT5NVXL+5q9BZvnj8YJ0DnFa4pKXm3KKbj91GhQjw0B4uNsA4rtrZNNBUsBJthVZ8Fz6W6Y
	t+u9ZQR/bby8DMUQggz6wtcQ09NemskeEsgcFwvGageLMphF15O5zUiYsTUptdB98tODIjpDW9Nkn
	/b0GkuMd3jI39rWNnsajKYkiGMH9vOqHddOWhRU2l0wXX7ZTOiA0LHJCGEitbnbSmALIkMTAEO8L3
	g23oC7RTbqhdyttCxHaZXI7ikL0MzWn7r2GLeuqmll73nEpux0bG18Rdd8mm9JH7jDC4rhonXSI+H
	JDjzqmwI2oKShdudL9Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuCWR-0004F8-Nd; Wed, 22 Jan 2020 09:42:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCWI-0004En-OC
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 09:41:55 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB2362467B;
 Wed, 22 Jan 2020 09:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579686114;
 bh=Dbo3v6EsEkfvHSpCRZHRDxdBfN5Pfp/DqXmhD8DDa1g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CZNjcDQc5CJMKJFfindnnkg+vYkyZDoiAt2vzcVHLhMM2RLufLUZITBoxtsdsfNfL
 GG9Ts0fJgTxSnWbxA4ZwjTLHrb13U9sD0VsCBoFrLSrArDkkuws8/IREksy+oaISg+
 6wyiSJYPQWogoRbGEQuvRE3ZV5/LvnMMLp4Fp2eI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4.19 022/103] ARM: dts: imx6q-dhcom: Fix SGTL5000 VDDIO
 regulator connection
Date: Wed, 22 Jan 2020 10:28:38 +0100
Message-Id: <20200122092807.087052160@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122092803.587683021@linuxfoundation.org>
References: <20200122092803.587683021@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_014154_812083_C284005B 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Marek Vasut <marex@denx.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ludwig Zenz <lzenz@dh-electronics.com>, stable@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Vasut <marex@denx.de>

commit fe6a6689d1815b63528796886853890d8ee7f021 upstream.

The SGTL5000 VDDIO is connected to the PMIC SW2 output, not to
a fixed 3V3 rail. Describe this correctly in the DT.

Fixes: 52c7a088badd ("ARM: dts: imx6q: Add support for the DHCOM iMX6 SoM and PDK2")
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Ludwig Zenz <lzenz@dh-electronics.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/arm/boot/dts/imx6q-dhcom-pdk2.dts |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts
+++ b/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts
@@ -55,7 +55,7 @@
 		#sound-dai-cells = <0>;
 		clocks = <&clk_ext_audio_codec>;
 		VDDA-supply = <&reg_3p3v>;
-		VDDIO-supply = <&reg_3p3v>;
+		VDDIO-supply = <&sw2_reg>;
 	};
 };
 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
