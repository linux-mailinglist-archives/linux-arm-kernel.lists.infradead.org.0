Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73A8187BE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 10:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vPG56f9xocFw6feuEzj96lbgSY12eLl/+I9yET6veRA=; b=RYyA66lgSnxc/thsov1pBBpCys
	m7B04uQjmQLk1RS/iBCK+SOhN0hb0k7dLd9xnncZD5W442LRyJ41uxWDn50hVbj5YeOQER1RHWEEd
	S2Ch2R70h9xdnkC34WQhKqdtsptHHMEaqqhdLcPZaWBtdufu7BIoDrhD9F7A6+iQTDiMrf5D4WjZF
	PjbLoSzTHckkEuWLI0E8B9AqWiuk7nauXppdgwFwIbAfxXlbq3Z+pzmVQ3+K1yAXEdx6fVPkGWR5n
	MA6ItwLch+zpcnUvoqczfCuVJPiD93Vr8mvVt42rWrzHok7FELdabHw3mPo8mCeenvBg1+dlxRSb0
	WEBVU1Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE8Nd-0003XS-Pu; Tue, 17 Mar 2020 09:19:21 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE8NT-0003VX-Q8
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 09:19:13 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D2CBE40217;
 Tue, 17 Mar 2020 09:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584436750; bh=i644QpwR/Pj8qreHw+wBacaYLXNNUovwNW3FcT/AZtk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=OfZq2MZzAWJUiBUpabfvxRyce94+M7ijQWQWeKEUhxtu9YWe2XammtdJgjX/k+gpN
 opuPMxZKaZxEKAzNp3ufX54v74LfXi30TjuZbQdcuUrCeEVMF/ITbPDbdHLGSAkFaO
 jWXiTfoPbE4a6eV4FnWJMy+K1cPue227m8lK166/BkqVjOH0N7ZVa+gcb2MDA4R26l
 tsLpqH9i1syLaHaUbrhnzSt5muB48RABT18pmZJzEg2A42WlYdXCbufa1ryCMypL6v
 eLsCjC2uDjAKG2wYcokZ1pdEsU0B1hHpvZkXkpASDq3zw/f5yuioZ35pAmX8WX+m0L
 6axOiJyx8CTdw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 644BDA006E;
 Tue, 17 Mar 2020 09:19:08 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 4/4] Documentation: networking: stmmac: Mention new
 XLGMAC support
Date: Tue, 17 Mar 2020 10:18:53 +0100
Message-Id: <b036ffbc3649297c5b08860c5b6776af025570a4.1584436401.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1584436401.git.Jose.Abreu@synopsys.com>
References: <cover.1584436401.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1584436401.git.Jose.Abreu@synopsys.com>
References: <cover.1584436401.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_021911_859240_2BF3E390 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Enterprise MAC support to the list of supported IP versions and
the newly added XLGMII interface support.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-doc@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 Documentation/networking/device_drivers/stmicro/stmmac.rst | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/device_drivers/stmicro/stmmac.rst b/Documentation/networking/device_drivers/stmicro/stmmac.rst
index c34bab3d2df0..5d46e5036129 100644
--- a/Documentation/networking/device_drivers/stmicro/stmmac.rst
+++ b/Documentation/networking/device_drivers/stmicro/stmmac.rst
@@ -32,7 +32,8 @@ is also supported.
 DesignWare(R) Cores Ethernet MAC 10/100/1000 Universal version 3.70a
 (and older) and DesignWare(R) Cores Ethernet Quality-of-Service version 4.0
 (and upper) have been used for developing this driver as well as
-DesignWare(R) Cores XGMAC - 10G Ethernet MAC.
+DesignWare(R) Cores XGMAC - 10G Ethernet MAC and DesignWare(R) Cores
+Enterprise MAC - 100G Ethernet MAC.
 
 This driver supports both the platform bus and PCI.
 
@@ -48,6 +49,8 @@ Cores Ethernet Controllers and corresponding minimum and maximum versions:
 +-------------------------------+--------------+--------------+--------------+
 | XGMAC - 10G Ethernet MAC      | 2.10a        | N/A          | XGMAC2+      |
 +-------------------------------+--------------+--------------+--------------+
+| XLGMAC - 100G Ethernet MAC    | 2.00a        | N/A          | XLGMAC2+     |
++-------------------------------+--------------+--------------+--------------+
 
 For questions related to hardware requirements, refer to the documentation
 supplied with your Ethernet adapter. All hardware requirements listed apply
@@ -57,7 +60,7 @@ Feature List
 ============
 
 The following features are available in this driver:
- - GMII/MII/RGMII/SGMII/RMII/XGMII Interface
+ - GMII/MII/RGMII/SGMII/RMII/XGMII/XLGMII Interface
  - Half-Duplex / Full-Duplex Operation
  - Energy Efficient Ethernet (EEE)
  - IEEE 802.3x PAUSE Packets (Flow Control)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
