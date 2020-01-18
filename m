Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23D0141840
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 16:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YWowejNAXGVHj5p67A5norZF2/EzJZ9H5yoWmhGZv+c=; b=LMIkWCkHuBV8Oy
	f7GEZjYC6c8YHFZUeeyGllNxwyShbqJdQ+AqFEcY7NvPXw0XJWZrt8MaSxe8X3jKtQ0HR/RbRIzOa
	LIOxXQXqMoxG2HsS+80jNXvmh/Q8chohKC1TMXlmSLgdZwXdpfxsZFIGr4N/iN6wppRfV0ikFtpMm
	BFtu+6rUj8p0m3A/gY/Pssq6mg4gSCEJWZ6sqAEVtUE3Sbl7y+YHLawB7t3mZfi0k5T0u/Tl4+1Sq
	p9XhBzr6GPDIhUBbwB3UCJJs3MpaCEwnwmJiL98Vl7s5BnoQ3BFZ2ivMGj9ufkVQWltUC1fYPev9T
	X8ADm6wFZtbIY6D7o+/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ispnY-0006j7-61; Sat, 18 Jan 2020 15:14:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ispnQ-0006hy-RW
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 15:13:58 +0000
Received: from localhost (170.143.71.37.rev.sfr.net [37.71.143.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5373E246A0;
 Sat, 18 Jan 2020 15:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579360435;
 bh=JizgUxPOV8ApLOBjUUOna0yNd3afjjdsV7Xgq5JnIyw=;
 h=Subject:To:Cc:From:Date:From;
 b=CIBCKL2EeCy1EA2PWoqXeEYgoTZyo0Y1m3L0H+TR15AVErNQBZujDdPs5JHChcg8/
 2Za168yuH27W6aZLrxkXCXuSIsyAeHSfwjf6jpCH9fMkrzWTR/+YG4Hj5QYe/UEYKi
 TmKY4B9C2mCNPX1EGjw4bxtDhhgDgtvpTdMJDKYc=
Subject: Patch "ARM: dts: imx6q-dhcom: Fix SGTL5000 VDDIO regulator
 connection" has been added to the 4.19-stable tree
To: festevam@gmail.com, gregkh@linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 lzenz@dh-electronics.com, marex@denx.de, shawnguo@kernel.org
From: <gregkh@linuxfoundation.org>
Date: Sat, 18 Jan 2020 16:13:36 +0100
Message-ID: <157936041657235@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_071356_909154_AE78E3D2 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    ARM: dts: imx6q-dhcom: Fix SGTL5000 VDDIO regulator connection

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm-dts-imx6q-dhcom-fix-sgtl5000-vddio-regulator-connection.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From fe6a6689d1815b63528796886853890d8ee7f021 Mon Sep 17 00:00:00 2001
From: Marek Vasut <marex@denx.de>
Date: Fri, 20 Dec 2019 10:11:24 +0100
Subject: ARM: dts: imx6q-dhcom: Fix SGTL5000 VDDIO regulator connection

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
 


Patches currently in stable-queue which might be from marex@denx.de are

queue-4.19/arm-dts-imx6q-dhcom-fix-sgtl5000-vddio-regulator-connection.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
