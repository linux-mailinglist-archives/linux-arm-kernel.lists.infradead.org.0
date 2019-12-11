Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 966E711A68A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:14:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SIDXMXA9yold+Jpu+8qXGeYhR3XnQpbxRjAtMP7icnk=; b=Cxn
	h5aGNRFTkFVcXFGb3LJEtsTRwDg6KbXR/0B0SkaBxiqXJb0eb+bIGuXLvv7qBhJYhYZDSpoiOC+ve
	AGgcDuKcMJwTeL7WDBDO2KDj0e6Dq+a0EPP0T2DpQiZiPuzF/p65AFvDV1Y6fziTbn7bUJ1VPG0jO
	CE+irzJp58UfYgoDA9MX+m0+L/TLxD7PcvkBvyi+UMVL4DrFKEjLM57Qbnyqzs73DGppqoTx0hHoM
	rln/U8Dgw5BHa1lKXIcfJArH734xEvPV/FkFAusaBCo4HzUguF2N9gEVSrvzRAgkeotkNROPxHgu6
	tscAn07+PeejOSrBQ3Bj9NOLnvEUUKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iey4D-0000jc-6X; Wed, 11 Dec 2019 09:13:57 +0000
Received: from a27-187.smtp-out.us-west-2.amazonses.com ([54.240.27.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iey44-0000hy-Mm
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1576055625;
 h=From:To:Cc:Subject:Date:Message-Id;
 bh=42yNDIrjy8vmTGZpCOEq/aiq1nTIM3d9+rZoTsv/drQ=;
 b=JbDsSTFUOspNEL5NWIb5nHIiKdWGey4DnSZRJceOIczzM1VnXEiEZ3rPGbAibXrR
 31fOezRtYffjMT6Vk48BhWGq5m7EzA/RZbX/zIzqeHTCrDnbTkbLqMKdnfDTJFXSNhR
 l6l9H65HYeEdnGyPB9Y3rtMyXOQkPVTR/hIQxJ/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1576055625;
 h=From:To:Cc:Subject:Date:Message-Id:Feedback-ID;
 bh=42yNDIrjy8vmTGZpCOEq/aiq1nTIM3d9+rZoTsv/drQ=;
 b=Bc7K3y/PSGohVafLyS3A0BeQz7AmYVA14oVNFD4vntjQHqVsIEmgwTwQxkrPJ/VW
 EpXOZbmfBPInNuqRne0AdD7JAO6xMC/AwRA29XLmo0nvm+HaWx8fVLBhXPIsu3+AkYB
 9h6aX8Rw5BHk1XlbOFZagtuNWuGX/+JTTSf53m1U=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4B186C4479C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=cang@codeaurora.org
From: Can Guo <cang@codeaurora.org>
To: asutoshd@codeaurora.org, nguyenb@codeaurora.org, rnayak@codeaurora.org,
 linux-scsi@vger.kernel.org, kernel-team@android.com, saravanak@google.com,
 salyzyn@google.com, cang@codeaurora.org
Subject: [PATCH v2 3/3] arm64: defconfig: Compile ufs-bsg as a module
Date: Wed, 11 Dec 2019 09:13:45 +0000
Message-ID: <0101016ef43c5629-fe6d95bf-cca1-4e31-9383-447998cdb9fd-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 1.9.1
X-SES-Outgoing: 2019.12.11-54.240.27.187
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_011348_781826_8116824D 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.187 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 "moderated list:ARM64 PORT AARCH64 ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compiling ufs-bsg as a module to improve flexibility of its usage.

Signed-off-by: Can Guo <cang@codeaurora.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8e05c39..169a6e6 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -227,6 +227,7 @@ CONFIG_SCSI_UFSHCD=y
 CONFIG_SCSI_UFSHCD_PLATFORM=y
 CONFIG_SCSI_UFS_QCOM=m
 CONFIG_SCSI_UFS_HISI=y
+CONFIG_SCSI_UFS_BSG=m
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
