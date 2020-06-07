Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D4A1F0B90
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 15:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=//1jQoRd44FBczYtGw+QdhCiw1F4CAEnlBGJJn+G63s=; b=e2jbc180t5P5pA
	jsRl+0pjCvmRG2byhAUK3eEgnyDxa9K6wouy8vlc5Swh4P2cWUVyK+YyAp3pZ1zm5cE/zw6mzwmOa
	YWaj4IEgg8LGoHRfpchPNVtgbtE6Is4WI0rHQtDKw9VWxdDqFZV+8JnVfeO/QcEcz8sT3NjlkCiEx
	3fyvOJonYHll8weypW9HVpatKvhDZhzMBS4CTOMGmruXqZN/1Vl+hK7PRdAokgfx/QsEmLxxeIkSZ
	HtnxM0wa+niQr2iAYSzv16vI39eExFRdMEqZ0102mNbdYJ066nBbYSYd44pdO+90WmG4qItwoW6Zg
	oXuGJ0TXAiP84hlwzcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhvpC-0007ti-UP; Sun, 07 Jun 2020 13:58:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhvp5-0007rE-1r
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 13:58:53 +0000
Received: from dogfood.home (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr
 [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDB3720663;
 Sun,  7 Jun 2020 13:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591538326;
 bh=kQo6hsNrluWIYjLBJA/GB7FOOAsY0HPaIOIhhqRewug=;
 h=From:To:Cc:Subject:Date:From;
 b=gcNyI7E60YmnU4u+cUGSDPlSjJYoQGq6+fsDZXc/TuMpkyae+98+i1MONNVIE7l+y
 zQuu/u9481F8XdgojaYSugyK6/2szPa4Mea9fNiSzUeqziHzYpq/Z47ElBQNyjfO6x
 s5oBoPXc/8zlAIEa+CQLi3U0L+UNjSaCvXehnA2A=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 0/2] efi/arm: deal with HYP mode boot
Date: Sun,  7 Jun 2020 15:58:32 +0200
Message-Id: <20200607135834.898294-1-ardb@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_065851_118222_89BDF5DC 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Ard Biesheuvel <ardb@kernel.org>, maz@kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, xypron.glpk@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some changes to make booting in HYP mode via EFI more robust.

Changes since v2:
- Use the correct register for testing/disabling the HYP MMU
- Don't pretend we're in SVC mode for the HYP+caches case, but set up a HYP
  exception handler for HVC instructions issued from HYP mode*** BLURB HERE ***

Ard Biesheuvel (2):
  efi/arm: decompressor: deal with HYP mode boot gracefully
  efi/arm: libstub: print boot mode and MMU state at boot

 arch/arm/boot/compressed/head.S           | 61 ++++++++++++++++++++
 drivers/firmware/efi/libstub/arm32-stub.c | 11 ++++
 2 files changed, 72 insertions(+)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
