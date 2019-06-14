Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1322B4619A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b+7X6T9m3EVvcr1fQ5Q3SCQhWytT+oaSMM2mfOkXjwE=; b=RnxoZbk1gN4Ev4
	KFXlxNh6sDWdqWT92YWBqO3flho3ZYrXMSli55KwhMKtfwWnd198nuRKxorAn4zaemLVSZ5i4A+aP
	g5YGIRK4rkGaFK+PfGVApSyYTWq65p6wpfQts/IckmBMq6F4Y+XabMhmqV8SjAP73OyGg4fwi9sH+
	sLQ+mn35qok/3igA6K5cbEfMl+NNELvfFNLo3Ht5wcP7y8XPmwLUElsXHp6qbYgXZb54JXi/5v70U
	LwTg10eLl3v3k5SeR67r0UALcUg20/wD7iu+bMNB+9ce4UnQPFsoRp5J59wEdSBpKbGTIeUtIpzKm
	9gMbSS1cmZzl5nG4QRZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnXv-0005Ge-Bn; Fri, 14 Jun 2019 14:51:15 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnXM-000517-E8
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:50:42 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EEocgQ002127;
 Fri, 14 Jun 2019 09:50:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560523838;
 bh=EXfhPcFaIaxEGirPlOMLlvJONPINRLrpN2ItCnY7h9w=;
 h=From:To:CC:Subject:Date;
 b=HjU1k+gdV9A/ERarYaC9LbaXuz4FH2rckbjRr27jGtId8udJbbPtbpKUBA379OZiI
 +zi9NfvbpCkmg40uwHAun3LvyALJiuM76GiGWQIEmJ0S7lXuzDwrI1ZdSdKjFBf+Fr
 InjLCGZtFPcXVvnBSMC++6e7QJjgcI9GrVjlVrxE=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EEocbj020922
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 09:50:38 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 09:50:37 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 09:50:37 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EEoYCv029549;
 Fri, 14 Jun 2019 09:50:35 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 0/2] arm64: dts: ti: k3-j721e: Add interrupt controller nodes
Date: Fri, 14 Jun 2019 20:19:59 +0530
Message-ID: <20190614145001.9598-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_075040_615527_489DBD31 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds dt nodes for interrupt controllers available in
J721E SoC.

Depends on the main nav intr node posted by Suman: 
https://patchwork.kernel.org/patch/10969399/

Lokesh Vutla (2):
  arm64: dts: ti: k3-j721e: Add interrupt controllers in main domain
  arm64: dts: ti: k3-j721e: Add interrupt controllers in wakeup domain

 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 23 +++++++++++++++++++
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      | 11 +++++++++
 2 files changed, 34 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
