Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCAC13A41B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFiiLmmK6nlRfWEPVoqnEc4y61nxwSnSjW1vMU0kKVo=; b=FCzK05W23H7OTk
	GTH0c1a6lMQrQmNTLN+sxKMYEGmgozlar8ZDLFSdbixXXSibusgWvSQdwY//+MbLmI8fTRLIKhTxK
	mznd7tU3NFtr5zttPCkJm2ChQ1Avz6zy/JB8YjT/o/SMWdNAxOhyavKU94VGNe0ev101R6ejWHki/
	nKZb8MglKeKz0OVLbuXjnqyW2wT1S2zlmg1qhM6mP1XpBN5S5lq4encPmTXnF3+T2DqpXq54N5x6q
	Ic4NUu3h1qfzxnp/oCBgq/4WJKpHHP6aChOYKyTT03oe+QEsjyGCe/s8eSGqx2mpo84fo5SElWhTV
	djIM4AVGg3oqaPbDzBnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irImT-0007s6-2E; Tue, 14 Jan 2020 09:46:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIlx-0007gL-3H
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:46:10 +0000
Received: from dogfood.home (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr
 [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E582124673;
 Tue, 14 Jan 2020 09:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578995164;
 bh=q26RMnhv4e6vnyl7On3dw2ZS7Ofbxt7I4hTv9fYgiXc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XyydpypudDBcz8etUqufb5GnphOu22iRcWN0zlHbwPz1qgMRTO4QEmBwLSmlUsMHV
 bZ/08I5PIoeMSmQhF2KQBhtfiwa9+uSxaLiBQf3k79JorHQ8QE7jq4xfPsn949mILa
 Qzv+Yg/4y2fJdcgoxzQveBdcZQn63pqLSHcrRt6E=
From: Ard Biesheuvel <ardb@kernel.org>
To: jarkko.sakkinen@linux.intel.com
Subject: [PATCH 1/2] dt-bindings: tpm-tis-mmio: add compatible string for
 SynQuacer TPM
Date: Tue, 14 Jan 2020 10:45:04 +0100
Message-Id: <20200114094505.11855-2-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200114094505.11855-1-ardb@kernel.org>
References: <20200114094505.11855-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_014605_153412_35E3EE8C 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, jgg@ziepe.ca,
 Rob Herring <robh+dt@kernel.org>, masahisa.kojima@linaro.org,
 peterhuewe@gmx.de, linux-integrity@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a compatible string for the SynQuacer TPM to the binding for a
TPM exposed via a memory mapped TIS frame. The MMIO window behaves
slightly differently on this hardware, so it requires its own
identifier.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt b/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt
index 7c6304426da1..b604c8688dc8 100644
--- a/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt
+++ b/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt
@@ -12,6 +12,7 @@ Required properties:
 - compatible: should contain a string below for the chip, followed by
               "tcg,tpm-tis-mmio". Valid chip strings are:
 	          * "atmel,at97sc3204"
+		  * "socionext,synquacer-tpm-mmio"
 - reg: The location of the MMIO registers, should be at least 0x5000 bytes
 - interrupts: An optional interrupt indicating command completion.
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
