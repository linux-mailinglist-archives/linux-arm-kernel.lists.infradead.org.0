Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF9F33EC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5XgWOXZDPJty3xkS5Br1ljuWwk5PPTEbyoiSITo7ENE=; b=T1tI6NIbjolUBK
	O+3i6VUzInAdy3wYmWVonoM0N/g0e6lldB/bVxcqzfBUw10RTw3C9FfTDyFctMjMvzeTiWy0nWIAk
	i+uvI6ezMOUVcVecuzVFKrozf0J9MDgMzTCrcTMdEbdwcWyX+P6KGAuCW2X57uLwC6hTg5wc3oByF
	pVI5FG02K9scrXgkdIKXiJz6R0kfExBo3IDwB+pE+dKVzQt3b5uUDLvipzuq29JsnfmcEsW6bLCIH
	Wmd6FxqhNs5SaCmknlmggJQ8UQa1Ui4TkvF0Oa6GPfHnNdVnvkQ5Bqaa7cIi+eWEquHX35jjltNoK
	M65vnyzjoWL2SOiA3waw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2dG-0000CB-H4; Tue, 04 Jun 2019 06:09:14 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2d9-0000BI-6q
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:09:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5468vdG114243;
 Tue, 4 Jun 2019 01:08:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559628537;
 bh=vpolFfzSu3TNGG8dxBjsDUMOZVsketQ0r9/5AvjnH0g=;
 h=From:To:CC:Subject:Date;
 b=L4qL5KK5RuoQnp47XzrhElmEDFDtgfFWhER1w5gk507jkqhSD21efG6cr23lSnt8t
 Cwj3G29uOn51f5xT6TYWBzV4nE+2yM4+nX+FhTdrgBL1IgCzR5jIW95B1+RCfQYzVd
 p2YfnqXy7mrGAZ5Jid6COYafx9G/6wJ2QbAf5BBQ=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5468vsI034671
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 01:08:57 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 01:08:57 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 01:08:57 -0500
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5468pYx049516;
 Tue, 4 Jun 2019 01:08:53 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>
Subject: [PATCH 0/4] Add Support for MMC in J721E
Date: Tue, 4 Jun 2019 11:39:10 +0530
Message-ID: <20190604060914.10886-1-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_230907_312609_F34DA43F 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, ulf.hansson@linaro.org, robh+dt@kernel.org, nsekhar@ti.com,
 adrian.hunter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following patches add driver support for MMC SDHCI interfaces on
TI's J721E devices. The 8 bit and 4 bit instances have phys which are
different from the am65x interfaces as well as different from each
other which leads to 3 different compatibles and a bunch of flags for
indicating the differences.

Depends on Nishanth's initial J721E patches here:
https://lore.kernel.org/patchwork/cover/1077382/

Also depends on my fixes for AM65x driver here:
https://lore.kernel.org/patchwork/cover/1079924/

Tested with: j721e-evm and am65x-evm.

DT patches will be added in a separate series.

Faiz Abbas (4):
  dt-bindings: mmc: sdhci-am654: Document bindings for the host
    controllers on TI's J721E devices.
  mmc: sdhci_am654: Add Support for 8 bit IP on J721E
  mmc: sdhci_am654: Add Support for 4 bit IP on J721E
  arm64: defconfig: Add config for MMC on AM65x and J721E devices

 .../devicetree/bindings/mmc/sdhci-am654.txt   |   9 +-
 arch/arm64/configs/defconfig                  |   1 +
 drivers/mmc/host/sdhci_am654.c                | 257 +++++++++++++-----
 3 files changed, 204 insertions(+), 63 deletions(-)

-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
