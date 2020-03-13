Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF35F184BC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fy/iSBTxv8oGwT4L/tRVEeGTOOZJtQfxCvM6smPxJAw=; b=jNifmmHR19C9m7
	dBWondMaHJavNwcvBYd+BxqOFoMyfG74hfnduLhAxP3uQcrfvQdX4YGk5MZ9jTFzvFZ8OkqWlI5HE
	aLeIsLeM2bsTuddW/FCGt4jTR4dFbmv4ewYlnnV86IoOZ2tvLoDQCXoQuGBBZupvDVgmvAvwtwkG7
	3OhzYNrCaGRMpUO26eOWCa4X5TfJFqiU77jY5OyzlJwWL9iVvWf2swfoSyC5kvuxINE41YjmD4fid
	BAe5kalc2pOR6CVknk/A1sJ0KGeqp1M2h0aWvsW+DD4eguQ4iK1X+Sl/NKv3e3QvRhAURSW6/a5r9
	itNRdJq0UFoXkKWdTQAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmcl-0006bE-Si; Fri, 13 Mar 2020 15:53:23 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmWX-0008HJ-BM; Fri, 13 Mar 2020 15:46:59 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02DFkpMx111156;
 Fri, 13 Mar 2020 10:46:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584114411;
 bh=0dMsf4DYliKZ83tWSPvhlqALpn5mL3GmCMMJqyYrE8c=;
 h=From:To:CC:Subject:Date;
 b=c3p903BlIQnmIPf6Gbg0hmBbYhHR9P1okNG6qelJVOkU77Zz2soQEE/cvVUcqBnOp
 +jTPOYkYtXJ1Y6AcFwP/u+oRfBnvXSJ94PMdm0Gasj1ZphgYjSCw5TISkrYTpTIVyC
 bZXfEnhqQ/tlhUOW8k7O6a2JIqnj85nxxAq5uR20=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02DFkpes126450;
 Fri, 13 Mar 2020 10:46:51 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 10:46:50 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 10:46:51 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02DFkkSE034352;
 Fri, 13 Mar 2020 10:46:47 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>
Subject: [PATCH v3 00/12] mtd: spi-nor: add xSPI Octal DTR support
Date: Fri, 13 Mar 2020 21:16:33 +0530
Message-ID: <20200313154645.29293-1-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084657_476638_AA10E5D2 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 Pratyush Yadav <p.yadav@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series adds support for octal DTR flashes in the spi-nor framework,
and then adds hooks for the Cypress Semper flash which is an xSPI
compliant Octal DTR flash.

This series assumes that the flash is handed to the kernel in Legacy SPI
mode. That is why there is no tracking of the state the flash is in.
Ability to detect the flash mode and then run the SFDP procedure in that
mode will be added as a follow up series.

Tested on TI J721e EVM with 1-bit ECC on the Cypress flash.

v1 can be found at [0]. v2 can be found at [1].

[0] https://lore.kernel.org/linux-mtd/20200211133348.15558-1-p.yadav@ti.com/
[1] https://lore.kernel.org/linux-mtd/20200226093703.19765-1-p.yadav@ti.com/

Changes in v3:
- Drop the DT properties "spi-rx-dtr" and "spi-tx-dtr". Instead, if
  later a need is felt to disable DTR in case someone has a board with
  Octal DTR capable flash but does not support DTR transactions for some
  reason, a property like "spi-no-dtr" can be added.

- Remove mode bits SPI_RX_DTR and SPI_TX_DTR.

- Remove the Cadence Quadspi controller patch to un-block this series. I
  will submit it as a separate patch.

- Rebase on latest 'master' and fix merge conflicts.

- Update read and write dirmap templates to use DTR.

- Rename 'is_dtr' to 'dtr'.

- Make 'dtr' a bitfield.

- Reject DTR ops in spi_mem_default_supports_op().

- Update atmel-quadspi to reject DTR ops. All other controller drivers
  call spi_mem_default_supports_op() so they will automatically reject
  DTR ops.

- Add support for both enabling and disabling DTR modes.

- Perform a Software Reset on flashes that support it when shutting
  down.

- Disable Octal DTR mode on suspend, and re-enable it on resume.

- Drop enum 'spi_mem_cmd_ext' and make command opcode u16 instead.
  Update spi-nor to use the 2-byte command instead of the command
  extension. Since we still need a "extension type", mode that enum to
  spi-nor and name it 'spi_nor_cmd_ext'.

- Default variable address width to 3 to fix SMPT parsing.

- Drop non-volatile change to uniform sector mode and rely on parsing
  SMPT.

Pratyush Yadav (12):
  spi: spi-mem: allow specifying whether an op is DTR or not
  spi: atmel-quadspi: reject DTR ops
  spi: spi-mem: allow specifying a command's extension
  mtd: spi-nor: add support for DTR protocol
  mtd: spi-nor: default to address width of 3 for configurable widths
  mtd: spi-nor: get command opcode extension type from BFPT
  mtd: spi-nor: parse xSPI Profile 1.0 table
  mtd: spi-nor: use dummy cycle and address width info from SFDP
  mtd: spi-nor: enable octal DTR mode when possible
  mtd: spi-nor: perform a Soft Reset on shutdown
  mtd: spi-nor: Disable Octal DTR mode on suspend.
  mtd: spi-nor: add support for Cypress Semper flash

 drivers/mtd/spi-nor/spi-nor.c | 692 ++++++++++++++++++++++++++++++----
 drivers/spi/atmel-quadspi.c   |   4 +
 drivers/spi/spi-mem.c         |   3 +
 include/linux/mtd/spi-nor.h   |  73 +++-
 include/linux/spi/spi-mem.h   |  13 +-
 5 files changed, 702 insertions(+), 83 deletions(-)

--
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
