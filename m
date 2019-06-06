Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FA2379C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0wwj1o9US07YJ2/eIoHXrgrZ8aMmprmoTT9IE3p8Oo=; b=XZ+zKa/ic3tj+b
	BxHtA1OF1eoYHmsvrmtw7rMAxRRZ71U0CVpUNGdgYhpzrJI5SSd4YXbEGsdxhhgRCK2BkAzrAeen6
	Uya9yjw5sL/OiA9c9APXnuMEr32N0KFUYzqtGH9Sh2YjIGLAo+o4ShtFnuUSLGvbmiD7LSAIYqB2O
	h9Mzj9aXxFBMNU1hrnu+ZCpGHqry+VcJdd275O5Ha6boclONErPL0jIlZnS08eyjC3YPmvF/j0c/7
	81EUv1Y7dUUaceMZ5Wg17zFbXmCdA66pfm6t8MuoieUtWJZLO9GBAwF/X7I1i5f8tPlsVhA1MAQOf
	IKjrphdvJo73LWUUHa/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvK2-0000h8-Th; Thu, 06 Jun 2019 16:33:02 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvJ8-0008A1-01
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:32:29 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x56GW32H064811;
 Thu, 6 Jun 2019 11:32:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559838723;
 bh=vve9U+wzc4vCwKL4B0UU+JLqKTIC0YBQuBU2TPamO4Y=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=dJwaayArfJ8bsC3MRaRqoyl0uJugrygIEQ9F6wehuBIPzmW6hDLAQR7xRGHlYYhDA
 DVT90EdiDCF3yV3ydP5kc8Fu3uYa+FeHScZoRmb00AvSSLNDuGQCVlV35tMusCIZTe
 2OlD906SZgbUVU5xWiBmZcPVx8h8d/xXomt/i1fE=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x56GW305083755
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 11:32:03 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 11:32:03 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 11:32:03 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x56GW2J6056400;
 Thu, 6 Jun 2019 11:32:03 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Santosh Shilimkar
 <ssantosh@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH net-next v2 10/10] ARM: configs: keystone: enable cpts
Date: Thu, 6 Jun 2019 19:30:47 +0300
Message-ID: <20190606163047.31199-11-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190606163047.31199-1-grygorii.strashko@ti.com>
References: <20190606163047.31199-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_093206_706376_DFC59962 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Wingman Kwok <w-kwok2@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable CPTS support which is present in Network Coprocessor Gigabit
Ethernet (GbE) Switch Subsystem.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Acked-by: Richard Cochran <richardcochran@gmail.com>
---
 arch/arm/configs/keystone_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/keystone_defconfig b/arch/arm/configs/keystone_defconfig
index 72fee57aad2f..0b2281407ecf 100644
--- a/arch/arm/configs/keystone_defconfig
+++ b/arch/arm/configs/keystone_defconfig
@@ -136,6 +136,7 @@ CONFIG_BLK_DEV_SD=y
 CONFIG_NETDEVICES=y
 CONFIG_TI_KEYSTONE_NETCP=y
 CONFIG_TI_KEYSTONE_NETCP_ETHSS=y
+CONFIG_TI_CPTS=y
 CONFIG_MARVELL_PHY=y
 CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
