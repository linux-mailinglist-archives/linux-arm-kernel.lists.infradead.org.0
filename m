Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC65105E9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 03:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oSBZs7enwWu+y97hf0hTO33UGItwAWUlWUUk5UeCQ5Y=; b=o96IKFYmUwgc76
	q9/snH/BHb52Rs4ZLXR7i+wI7NghsUYFKZUCFaNRK1Zlq6d9sgrEsIVF55IwX/1gxu1VoxF1hpTX2
	jrAIvJy444+sQW3TpPK/Z/WdsMFCrTCjCMeZQ4djTuSy11SK9tQ1EvtiPaUuAnAiBzxcOqUebj8vF
	Q7eas8+cOzHfWPLhbVZU5TV5jG5paoDLe677UozT8hykF2tvl3fTSMP3VsSC6aXM/nmhmjcRLiOvc
	oTuws5/sQg7YAkS3fpvsXZh8vu6vBN3o7ftyufCQZU7SsUaGJ+Lh8j/FT50zR/1UnxyAWlnj4ZMOt
	psuWGyNd+5eaOC+Zu9IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXycU-0005XW-N4; Fri, 22 Nov 2019 02:24:26 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXycH-0005W4-W8
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 02:24:15 +0000
Received: by mail-qt1-x841.google.com with SMTP id n4so6151785qte.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 18:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hiLKK1+r4xrwDMfPVXvgdsqsmhpmz4wcDPltvr+YiPM=;
 b=juXdHl2/OTY1JDCI2WvisMRYkfyhCB9wL5baTK6u4p7eMyINED07coapH0Tt+jhDTZ
 pz0mU0Dl+9ZUlwgPMIllUSSMrvSNJvxM84FAxwu2TdgV95+/uj7U9npfrofHN2Vg2xBP
 AL/4MLKTSwV+OsUlPJVCLv+WEepm6sWacJ59AsPA0mIGJA2xvMttUK5wpHc2hbzSQDGA
 Hj46YAtBseFmPmD9OBoVcmsLYh7euLUgyIjHTJMMYCHNUy/Sp8SMj+4SiYqsNdkrb6yL
 lVFlX/JTHsJV+gxQz41tqhZFB+XZlGdmcR2A6yIShk049QI7rcWL1R1ea6zARZaR/6qg
 IrBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hiLKK1+r4xrwDMfPVXvgdsqsmhpmz4wcDPltvr+YiPM=;
 b=HfmoSlQb1CCsv4Da1J9iBBC3aIiReFJbjzyRk8Y3HIP9DnTM1VjmqCX0pHdvDaq0Pe
 bOUCTdddsNqjysCQpYkRfqF3gzFCOssEmjlPzJDSB//UX4C+rgwmO5ls5crX6rbLRD0E
 o9YgHLKcBnzKU73Yj1WuoK7E+IXItjEr0uUomyvi2iBDN06Lv5gok3OdFG4+euMN8mN4
 ouWdDnQ2/hd6eL2Hp0j0XaEUj8BCwpiokcKhznS7eVaI38H/1/ABrfqBi6T4YITDXPz8
 UV2pwJFuIfWlnmIPbLQ99+g0Ig7UB01kLviQKVa4MHHAhfOZosmv4vzM7KvLf3Vjf8TF
 TVwA==
X-Gm-Message-State: APjAAAVCN0IEY+WLCnct50Gtwv2sKeFLqRBZobMnCFJSXTzMbagsEUDi
 fyH/UzE8W2N6jYq08IKdgSbtHw==
X-Google-Smtp-Source: APXvYqzgQzCnz8RAyDKTprcdXtRBKBNV8pw9G0OGoEv3raFUYmGZAJZFgHjMZtF26RBtdnjCSFPUmw==
X-Received: by 2002:ac8:51c3:: with SMTP id d3mr1690299qtn.14.1574389448532;
 Thu, 21 Nov 2019 18:24:08 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id z5sm2609801qtm.9.2019.11.21.18.24.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 18:24:07 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com,
 sstabellini@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 stefan@agner.ch, yamada.masahiro@socionext.com,
 xen-devel@lists.xenproject.org, linux@armlinux.org.uk
Subject: [PATCH v2 0/3] Use C inlines for uaccess
Date: Thu, 21 Nov 2019 21:24:03 -0500
Message-Id: <20191122022406.590141-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_182414_043158_291521E4 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changelog
v2:
	- Addressed Russell King's concern by not adding
	  uaccess_* to ARM.
	- Removed the accidental change to xtensa

Convert the remaining uaccess_* calls from ASM macros to C inlines.

These patches apply against linux-next. I boot tested ARM64, and
compile tested ARM changes.

Pavel Tatashin (3):
  arm/arm64/xen: use C inlines for privcmd_call
  arm64: remove uaccess_ttbr0 asm macros from cache functions
  arm64: remove the rest of asm-uaccess.h

 arch/arm/include/asm/assembler.h       |  2 +-
 arch/arm/include/asm/xen/hypercall.h   | 10 +++++
 arch/arm/xen/enlighten.c               |  2 +-
 arch/arm/xen/hypercall.S               |  4 +-
 arch/arm64/include/asm/asm-uaccess.h   | 60 --------------------------
 arch/arm64/include/asm/cacheflush.h    | 38 ++++++++++++++--
 arch/arm64/include/asm/xen/hypercall.h | 28 ++++++++++++
 arch/arm64/kernel/entry.S              |  6 +--
 arch/arm64/lib/clear_user.S            |  2 +-
 arch/arm64/lib/copy_from_user.S        |  2 +-
 arch/arm64/lib/copy_in_user.S          |  2 +-
 arch/arm64/lib/copy_to_user.S          |  2 +-
 arch/arm64/mm/cache.S                  | 31 +++++--------
 arch/arm64/mm/context.c                | 12 ++++++
 arch/arm64/mm/flush.c                  |  2 +-
 arch/arm64/xen/hypercall.S             | 19 +-------
 include/xen/arm/hypercall.h            | 12 +++---
 17 files changed, 115 insertions(+), 119 deletions(-)
 delete mode 100644 arch/arm64/include/asm/asm-uaccess.h

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
