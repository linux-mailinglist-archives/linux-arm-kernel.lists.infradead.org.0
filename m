Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DDB13A411
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4L/bZxCKR9xX36yoF65k+SZJf8hbNIJHdbON7rIju5E=; b=YL6HB/PgH86YKz
	+u+PZfop3nYSR5YngHfkt++IoZNMNjUkVxaoHFiDgnB69M21jk8HN3D8z4xRLGedi/9KqL2zmN97S
	HUU20huN+mNPeefznE8yBiKkIrapeZTsIDP+OZC4F0C8KgKG8LLa4TDtUSjp2CctYDz/lxEVec5iO
	DyN4fHKbhkiT352TuglpsYgNJ+EYe7GsZ8IsGMKbrjW8B1F8HPN44PEp9rCGjebmBz7E0UuCjFYyz
	e5KBXqHoRMYXBR+whyBGJvrCpMDzdaloYX78byKxcPsyiZid4KNDR1f09gvAQTbmkTeJUtGN6gkRY
	rLoyKVZH+kBwXdV1Xbsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irImC-0007hN-5z; Tue, 14 Jan 2020 09:46:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIlv-0007g9-4o
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:46:08 +0000
Received: from dogfood.home (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr
 [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5FCE24670;
 Tue, 14 Jan 2020 09:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578995162;
 bh=oXoVf5FYzK2l54ZMTKBmt/diqvZDokYRd/mYU7Iuj7w=;
 h=From:To:Cc:Subject:Date:From;
 b=ofFAsr0yMlwqOasIzmRJEYHG7eCD55Tw4XqWV8py/NHRxsNvvsm9h+vw/whb8uWXZ
 6LhHsk/1b5w3U50AnfJon2zQ7Jyt2wPN4kOL/cG/Zp7TOb3w8YUjBw6r0CpUS/O3kn
 t7N/DVvu3lAy41/P2bAc+9c+6VSwH5DisAhMffX4=
From: Ard Biesheuvel <ardb@kernel.org>
To: jarkko.sakkinen@linux.intel.com
Subject: [PATCH 0/2] synquacer: add TPM support
Date: Tue, 14 Jan 2020 10:45:03 +0100
Message-Id: <20200114094505.11855-1-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_014603_208064_D1AF8DDD 
X-CRM114-Status: UNSURE (   8.66  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, jgg@ziepe.ca, masahisa.kojima@linaro.org,
 peterhuewe@gmx.de, linux-integrity@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for driving the TPM on Socionext SynQuacer platforms
using the existing driver for a memory mapped TIS frame.

Ard Biesheuvel (2):
  dt-bindings: tpm-tis-mmio: add compatible string for SynQuacer TPM
  tpm: tis: add support for MMIO TPM on SynQuacer

 Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt |  1 +
 drivers/char/tpm/tpm_tis.c                                      | 31 ++++++++++++++++++--
 2 files changed, 30 insertions(+), 2 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
