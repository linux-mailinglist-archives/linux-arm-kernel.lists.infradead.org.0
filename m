Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10B1132D66
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:48:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=67eDgSfm7g/MvZkH4p5p+3aBBfbprRAcnx1TagqE6NY=; b=fXKypp9+GOgZtJ
	5pPk2qsOMj1qprZ0itRntkmEJZxQagHkKMIpCTd+5iqjeeUlF163QmZpRmF1Kr5CaRwBFcRKAqPZs
	TAc3cK481m0stYyeCtJRn1JMTw8QXjaTXRQ6OlZyHVgPZCVwGzkrT0IcxDIqR0j8vvwJBk71cgG9B
	IqNbcflbDBii3HYStXOXN66bUSG0kGIUEmC0hfg5oPRclXFoL4PdpOXwEnoNOJFnOVWHi6MyKzoNo
	HOmid7zp4/YhKEBDlPHQrw8qMDYFMyl0AmVvPfCZvg5Mqa/IpUWVvpdOFmbMU2y8zzoIFZfdvV8ao
	eBUjHZFARZ71MtthxTgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosxo-0006dz-GV; Tue, 07 Jan 2020 17:48:20 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosxe-0006ck-Kq
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:48:13 +0000
Received: from localhost (p5486CF8B.dip0.t-ipconnect.de [84.134.207.139])
 by pokefinder.org (Postfix) with ESMTPSA id D79E72C05BA;
 Tue,  7 Jan 2020 18:48:05 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 00/12] i2c: convert subsystem to use i2c_new_client_device()
Date: Tue,  7 Jan 2020 18:47:34 +0100
Message-Id: <20200107174748.9616-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_094810_827868_6FFB5DEB 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.5 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series converts the I2C subsystem to use the new API. Drivers
have been build tested. There is one user left in the SMBus part of the
core which will need a seperate series because all users of this
function need to be checked/converted, too.

Except for documentation patches, the conversion has been done with a
coccinelle script and further simplification have been applied when
proofreading the patches.

A branch is here:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git renesas/i2c/new_client_device

Looking forward to comments...

Wolfram Sang (12):
  i2c: cht-wc: convert to use i2c_new_client_device()
  i2c: i801: convert to use i2c_new_client_device()
  i2c: nvidia-gpu: convert to use i2c_new_client_device()
  i2c: ocores: convert to use i2c_new_client_device()
  i2c: powermac: convert to use i2c_new_client_device()
  i2c: taos-evm: convert to use i2c_new_client_device()
  i2c: xiic: convert to use i2c_new_client_device()
  i2c: i2c-core-acpi: convert to use i2c_new_client_device()
  i2c: i2c-core-base: convert to use i2c_new_client_device()
  i2c: i2c-core-of: convert to use i2c_new_client_device()
  docs: i2c: use the new API in 'instantiating-devices.rst'
  docs: i2c: use the new API in 'writing-clients'

 Documentation/i2c/instantiating-devices.rst |  8 ++++----
 Documentation/i2c/writing-clients.rst       | 20 ++++++++++----------
 drivers/i2c/busses/i2c-cht-wc.c             |  6 +++---
 drivers/i2c/busses/i2c-i801.c               |  6 +++---
 drivers/i2c/busses/i2c-nvidia-gpu.c         |  6 +++---
 drivers/i2c/busses/i2c-ocores.c             |  2 +-
 drivers/i2c/busses/i2c-powermac.c           |  8 ++++----
 drivers/i2c/busses/i2c-taos-evm.c           |  4 ++--
 drivers/i2c/busses/i2c-xiic.c               |  2 +-
 drivers/i2c/i2c-core-acpi.c                 | 12 ++++--------
 drivers/i2c/i2c-core-base.c                 | 13 ++++++-------
 drivers/i2c/i2c-core-of.c                   |  7 +++----
 12 files changed, 44 insertions(+), 50 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
