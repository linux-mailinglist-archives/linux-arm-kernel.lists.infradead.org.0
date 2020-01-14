Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D0313AC10
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GOv3ChlNMtywId3m7Rh5lXDREJnOVZfsBzsIAKRTQaQ=; b=Sr5rhJhFzoJN77
	pjjq0Z32CBtyCW0L/txnQK4QxR3UacQ3ZsxTETptyjnJ2M/ySjnVX6INaa1Xl24HxwCf36Bmg9Gk+
	YbrzP93OiRvjOabZGTDkJl3Pd1dU8JFg6MQO2hBmdCSljIAR3RpsGOL7Ivmz5yKVAljwVXQSE/oQk
	UmNyXp9+YoztnSULQchYNlEHgtjN/Tz9xrhM0o+r9plvCELGLkJYXLcU0Hk9W3uqG1gkyLeLeVqw3
	+oOrWJt3J8OIsC6dIIqqTUDOGpiA2rPax2O4MPIU+eDkKH5VyU7/xocynbG5x3j4ef/hizyS9lbLU
	rC8eetIWCDXFyqJosWuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irN0O-0000I0-6X; Tue, 14 Jan 2020 14:17:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irN0C-0000Gx-3K
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:17:07 +0000
Received: from localhost.localdomain
 (aaubervilliers-681-1-7-206.w90-88.abo.wanadoo.fr [90.88.129.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20F7D24680;
 Tue, 14 Jan 2020 14:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579011423;
 bh=Vs5vp9Q0pO/rYvjiF2G3gSvq89rNmL0cw1LbNBbTuZk=;
 h=From:To:Cc:Subject:Date:From;
 b=zAfYuw+DRSckBl1J8CDfyssuIGNNADGPIq+IlafAMdRa9CDb5ylpO4WgVUI0AO0in
 2pbR/6QA2Pj1MJkrUn/6keNgeNff43d8N3FWlV6rQ4aUzYoVbaCtyO+I/6lYQF2Mk0
 rq69AeBDAi3s5AA45dz3dOpNSuRUOT61cyjvwzkM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] synquacer: add TPM support
Date: Tue, 14 Jan 2020 15:16:45 +0100
Message-Id: <20200114141647.109347-1-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_061704_159398_72AA5256 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, peterhuewe@gmx.de,
 jarkko.sakkinen@linux.intel.com, jgg@ziepe.ca, masahisa.kojima@linaro.org,
 linux-integrity@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for driving the TPM on Socionext SynQuacer platforms
using the existing driver for a memory mapped TIS frame.

v2:
- don't use read/write_bytes() to implement read/write16/32 since that uses
  the wrong address

Cc: jarkko.sakkinen@linux.intel.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: masahisa.kojima@linaro.org
Cc: devicetree@vger.kernel.org
Cc: linux-integrity@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: peterhuewe@gmx.de
Cc: jgg@ziepe.ca

Ard Biesheuvel (2):
  dt-bindings: tpm-tis-mmio: add compatible string for SynQuacer TPM
  tpm: tis: add support for MMIO TPM on SynQuacer

 Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt |  1 +
 drivers/char/tpm/tpm_tis.c                                      | 50 +++++++++++++++++++-
 2 files changed, 49 insertions(+), 2 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
