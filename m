Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568B832E1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xdgvSsY4aiASOx66LIAtplEz8ZhLMAR5FBpfxmdFdAU=; b=odP
	m8+Gv9SIPS+VYLxxvXZRqa/XqjdLgSKvd5bGkv92cAOV40yR4zpdgJCU3KzvOsE2QscV8+SuyOfAQ
	HQTGuzys8P0IX8+ODmLMV1apPZ3TKZwiONpQbmos7itoS0zvGyZrNYWxWbDmv9n0VnmX2P8X9fzgY
	C3zefoUHnBqFKUCjrUoCRZN3mQI0D6fkeLixi6ZhnfbB7uO8SYMtpiMlcXMCN0eNs5lgsgOFx4oYK
	/muRKV0G5WEDvBL8fgw3glu4f8P8/MmccPgbl1/y+Iaw9CmHg1l57feJ+YyqNiWOx96DV6p6sYmJJ
	PTAf68qcC751l5RsQModE2qAgT5jnbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkfk-00046H-Vo; Mon, 03 Jun 2019 10:58:37 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkfd-00045k-5N
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:58:31 +0000
X-IronPort-AV: E=Sophos;i="5.60,546,1549926000"; 
   d="scan'208";a="7665930"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 03 Jun 2019 12:58:11 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Mon, 03 Jun 2019 12:58:12 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Mon, 03 Jun 2019 12:58:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1559559491; x=1591095491;
 h=from:to:cc:subject:date:message-id;
 bh=W9GQMQ3nEmL01MlgBQ683CPdonwLrFB8qrhTZhg3YNw=;
 b=jXTnxI2NcbxsldYXEqjnpH16mc0K29vGBYKrtdwRiTYt1qVA6byxqnqb
 QT/5J2fK0vhpWv8bUzKzn+4nubKl1fDaZPM1VUTsztEbgcb0It5P8//L2
 Mtc4VxfIWBhCPcqr34rTtcn61qXZxoS5GImvPGlOek1tD5JtfnjfTgg/N
 vN4CMfWQ0tHNTYmMzYqdUwLyKbNTBuomp7lyjj/XPDzRllUL+wr4F1X66
 EHcsK6cUDrjkHA8Y6nhGZEdI6lC9KLqizs9YidCamoiOLmAOtk7mK2Pfg
 O6CW4funJEgBcGVe6wgjYKZSyNV1dfsnn4L8vu+OsU0i73+l/SGR7qJUH A==;
X-IronPort-AV: E=Sophos;i="5.60,546,1549926000"; 
   d="scan'208";a="7665929"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 03 Jun 2019 12:58:11 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 5EBEA280074;
 Mon,  3 Jun 2019 12:58:15 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Russell King <linux@armlinux.org.uk>,
	Jessica Yu <jeyu@kernel.org>
Subject: [PATCH modules 0/2] Fix handling of exit unwinding sections (on ARM)
Date: Mon,  3 Jun 2019 12:57:24 +0200
Message-Id: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_035829_663281_235EA4E7 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.157.118.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 linux-ia64@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some time (050d18d1c651 "ARM: 8650/1: module: handle negative
R_ARM_PREL31 addends correctly", v4.11+), building a kernel without
CONFIG_MODULE_UNLOAD would lead to module loads failing on ARM systems with
certain memory layouts, with messages like:

  imx_sdma: section 16 reloc 0 sym '': relocation 42 out of range
  (0x7f015260 -> 0xc0f5a5e8)

(0x7f015260 is in the module load area, 0xc0f5a5e8 a regular vmalloc
address; relocation 42 is R_ARM_PREL31)

This is caused by relocatiosn in the .ARM.extab.exit.text and
.ARM.exidx.exit.text sections referencing the .exit.text section. As the
module loader will omit loading .exit.text without CONFIG_MODULE_UNLOAD,
there will be relocations from loaded to unloaded sections; the resulting
huge offsets trigger the sanity checks added in 050d18d1c651.

IA64 might be affected by a similar issue - sections with names like
.IA_64.unwind.exit.text and .IA_64.unwind_info.exit.text appear in the ld
script - but I don't know much about that arch.

Also, I'm not sure if this is stable-worthy - just enabling
CONFIG_MODULE_UNLOAD should be a viable workaround on affected kernels.


Kind regards,
Matthias


Matthias Schiffer (2):
  module: allow arch overrides for .exit section names
  ARM: module: recognize unwind exit sections

 arch/arm/include/asm/module.h | 11 +++++++++++
 include/linux/moduleloader.h  |  8 ++++++++
 kernel/module.c               |  2 +-
 3 files changed, 20 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
