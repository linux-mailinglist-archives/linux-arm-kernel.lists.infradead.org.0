Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADF71059EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 19:48:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FtTPSM2+XpXEQEkX7YfksaV34QGt6xqlT/pxOhOhJm0=; b=c/pvVjOPn13eEF
	quc7X9soEU+h83aEMRBpMCreoUtcN12CjAuTOjRpOM6RbXer6L1kXHcKFTFMbQQ1pWqeU7iXwsGBn
	lOSGwX4QzBIVL8mF/jWrRPKfgWQ0GWCQ41p5Z8lh72HfeyCcEpQTqmptJM7DuyrRchKoPujZnjAFG
	Tb3wktyfra8keHPBqs3bVt8BvZKGOGyr4OguZt3XCmCZmwbNdwOwZU2tchoolD+sFU2VJ860JxM9P
	Ig8ngrkZoOPdjkDxvHYKsJxuXC2EpJdFZAFZ0XobthGHuwXyvbghZ2Brt4Q4b0pzVe5kuHa2yKBy6
	UO2HorWuya/vBP1Javqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXrVG-0000VT-5R; Thu, 21 Nov 2019 18:48:30 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXrUv-0000Ul-B2
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 18:48:10 +0000
Received: by mail-qv1-xf44.google.com with SMTP id d3so1828327qvs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 10:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c8nVRzgB0YDtJ+y9FNkA3x/d530+qZE+NnYikZNbCrY=;
 b=Qd5DOiTEUKkAbvWWBA600R4XlxLwFyDaJa4sle8qP7489uHD80RxMqUwg5kGz940pO
 Uy/pT7lJTR4GjlFlbX7dHMDtR211secMJRkotfPvB3o5DKTw1xv6+vrmxKW2htfMcNZX
 g98vk8RHBl+DeicsPE+4EaSyMYG2IvzwUx8keHJ3qp1ecHMWoDc07wiL++XC9dFUC0uh
 07RFJvQGvxdBHY09cPELbIbfaaty+SNFMSSt86Yd256lMjQTqyMjWc/5tY2oblfPJ/m+
 EgTVEXpzneOCRxHOBITpWNP/bgT484K6eQDsihDtqabDvyYJu/4Vl0nQYvaEC/PFgMOd
 GvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c8nVRzgB0YDtJ+y9FNkA3x/d530+qZE+NnYikZNbCrY=;
 b=bzzC57dQChKP4UTJVSkGLip363MLyB4UAcQg0rQhdJRMPJ4FQ2ko9yNPeMeoF36WOE
 4FA1TiRZPQKMOtuVsG6E825SaUhWoVkQH6iRshMIDtZruTPHlp8ffxnUzgB+P6TTBY/L
 re5r7PdRE0hH54B2cEVeYZxR/W9EpZ+8tcPape3ERT1ahJ9n6tTvWyZON9E91a/vsEZM
 X1G3SgSjqmFi1ImrPGbMIpBG6TpX9gx3P2LOAq+dDgIX3u/uUzDo5Cd9fQxV6kE3TCmI
 Tur5r3/OQD3HASi/2mPMOccJc6zESgJUBtnyO5JVxkMWWxXn9HVGPZ7qXnzKTFWSPX0w
 hyQg==
X-Gm-Message-State: APjAAAVHMbl/hwMI1zmaeHiKkyqIEq9/CaId/29RBtk1UQ7Obgdc3IVk
 B0beJV9rYbn5wLgxloblp/tkHA==
X-Google-Smtp-Source: APXvYqwZjCYx8RRyhAGY177FzvhWk79OzV7zKnj87grfXziN6cxCQV8PczfcjMpEI7opQBzRuRrwkw==
X-Received: by 2002:a0c:f787:: with SMTP id s7mr9663802qvn.12.1574362087643;
 Thu, 21 Nov 2019 10:48:07 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t2sm1811634qkt.95.2019.11.21.10.48.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 10:48:06 -0800 (PST)
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
Subject: [PATCH 0/3] Use C inlines for uaccess
Date: Thu, 21 Nov 2019 13:48:02 -0500
Message-Id: <20191121184805.414758-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_104809_560662_B35B6983 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Convert the remaining uaccess_* calls from ASM macros to C inlines.

These patches apply against linux-next. I boot tested ARM64, and
compile tested ARM changes.

Pavel Tatashin (3):
  arm/arm64/xen: use C inlines for privcmd_call
  arm64: remove uaccess_ttbr0 asm macros from cache functions
  arm64: remove the rest of asm-uaccess.h

 arch/arm/include/asm/assembler.h     |  2 +-
 arch/arm/include/asm/uaccess.h       | 32 ++++++++++++---
 arch/arm/xen/enlighten.c             |  2 +-
 arch/arm/xen/hypercall.S             | 15 +------
 arch/arm64/include/asm/asm-uaccess.h | 60 ----------------------------
 arch/arm64/include/asm/cacheflush.h  | 38 ++++++++++++++++--
 arch/arm64/kernel/entry.S            |  6 +--
 arch/arm64/lib/clear_user.S          |  2 +-
 arch/arm64/lib/copy_from_user.S      |  2 +-
 arch/arm64/lib/copy_in_user.S        |  2 +-
 arch/arm64/lib/copy_to_user.S        |  2 +-
 arch/arm64/mm/cache.S                | 31 +++++---------
 arch/arm64/mm/context.c              | 12 ++++++
 arch/arm64/mm/flush.c                |  2 +-
 arch/arm64/xen/hypercall.S           | 19 +--------
 arch/xtensa/kernel/coprocessor.S     |  1 -
 include/xen/arm/hypercall.h          | 23 +++++++++--
 17 files changed, 117 insertions(+), 134 deletions(-)
 delete mode 100644 arch/arm64/include/asm/asm-uaccess.h

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
