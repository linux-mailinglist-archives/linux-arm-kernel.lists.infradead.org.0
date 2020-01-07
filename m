Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29F41323DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RD3PWAC20bKhxXdUXNsqAl5SO2nZuR4S/xTTGTzIEPE=; b=feOWNkrVpBPLsrSMP04j2wHrw2
	ZutSHCSNLWRmzkmLrnhVW+JTMBUs7SVPcb58IEbRWCcqCs3evQnX6+EZsZiBXEcywzpJZver9G71L
	SVjCPbZbn+yiVKEX/pFmeBHzFx/3eMs10n8zY9Rbmio/+iHSuByglcMran/edHb3bNfsdd6Md5f4Z
	YQ+PR1MagaNOZckkgRDGoBYtm5vDff2Q+rfZp1fMhSrG9rHfLqppSzV7TfATouMom7LWKPpyIza1d
	P8BCcHuJ+pZ2wi8Kt9yW4zutBrNc6E2nOtcWKhJbrWGSJzeSj9enK/sBpgsjmBMb5aC+LFVgVANOv
	3KRveZlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomHD-0006OW-4A; Tue, 07 Jan 2020 10:39:55 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomGS-0005wC-QK
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:39:14 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B3FCC4064E;
 Tue,  7 Jan 2020 10:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578393548; bh=8ebY43sEqsPi9vuO9uvvE6clQNPWn1m8uaijybDWhlk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=BlKiC61+/3wHd6sDHKzRECoAPKXBbmk4ns40/KjZh5c+ghgv2mKqNWdIYoclPyejA
 S2/Tcv+GOCRr9x7g7ebT4qGYgnXFEguQ690OS0to9m3Eg8LWEO635hGFjkzBFDvqGv
 Tr7UfqkMPXBHn/EJfkcfjwGYMsxCN5y0odrbxH8J5ylQmzpUzjnEn2EvQTjDPCSFHm
 8e/6UUMeY//NBDAqUwzbn/FqnaDwa6bNKbY3bCI1WEFd8MClMI1KCye6TZeTSpIZUU
 zAg/8SgRdDhf2+EkGJCMXrrt9uMw7O28Moq6y89GY5H3XPZmG6L4hMofpRaUrN8PNh
 xmAADlUm/EU+Q==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 50DB8A0062;
 Tue,  7 Jan 2020 10:39:06 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 1/3] MAINTAINERS: Add stmmac Ethernet driver
 documentation entry
Date: Tue,  7 Jan 2020 11:37:18 +0100
Message-Id: <68dea4828bf6326be6ca4ecae07c32f9ba682faa.1578392890.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578392890.git.Jose.Abreu@synopsys.com>
References: <cover.1578392890.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578392890.git.Jose.Abreu@synopsys.com>
References: <cover.1578392890.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_023910_940703_E7326DBC 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the missing entry for the file that documents the stmicro Ethernet
driver stmmac.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-doc@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 34de47832883..66a2e5e07117 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15777,6 +15777,7 @@ M:	Jose Abreu <joabreu@synopsys.com>
 L:	netdev@vger.kernel.org
 W:	http://www.stlinux.com
 S:	Supported
+F:	Documentation/networking/device_drivers/stmicro/
 F:	drivers/net/ethernet/stmicro/stmmac/
 
 SUN3/3X
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
