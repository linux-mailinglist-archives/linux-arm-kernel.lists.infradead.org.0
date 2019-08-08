Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5485785BAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 09:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k3qZMpdK8Pbhm/YArNdWMNEXBR4JJ3LD1MKpC8iYjrc=; b=pWPMZOa6W5DdkN
	RNNd1v6Pk4MaJeK6xS8xl3HYvNZr4p92kOLlLhAzygNtExAORzULRPKUd1/WJKH+7G1qpDLiTzTnd
	i+abd+7xQi5MiBLpKYYA904p4tLqwiquK763vSGWSmuzFJecVSaFy97pPIDtv+bAf02Sllbqtm1o0
	hPVdwb4LOY0TJARoeBTIvxXuwH82QY/Jsy67K9mSYsXrK6hBXsgWyurcoUJbmHwQE3OktgHejJDkR
	lwS4KURKdu5OOQna0hcxXTBA/LRv9xz5rYGEq5TcFnSl0+bisHEeiuOGTyhdeJcpZ0XDY9gOhBexp
	d5KkljUN7Qr4A5zsSHOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcyz-00057v-AP; Thu, 08 Aug 2019 07:37:09 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcyb-00056f-9h
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:36:46 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id E731D5C272F;
 Thu,  8 Aug 2019 09:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1565249802;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=Zy6Uzd6l5OJmJXTm+7aNmEIadfLxQF9rxUaxchDTEdY=;
 b=dRjDcw61o/wsHpZTWyPCyzcoEiez3wKiJa5IUILKRGarRA5Lem3xgjUCFtCvAJCDQYWLbn
 5ykS5R0t5lEfdD4Jn5QcRex7eTidqxyFv/9G4I3HNOSM46E20WQSu/qt5vGIIQKceh3IUw
 4VZmYbwFnjA7JBca/dnMYObCc8Ka6jQ=
MIME-Version: 1.0
Date: Thu, 08 Aug 2019 09:36:42 +0200
From: Stefan Agner <stefan@agner.ch>
To: linux-arm-kernel@lists.infradead.org
Subject: Detecting AArch32 support from a AArch64 process in user space
Message-ID: <ffbb92107af81971c03ec832cf25116c@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_003645_507972_DECFCDB2 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, ynorov@caviumnetworks.com,
 will.deacon@arm.com, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[resend this time with the correct mailing list address]

Hello,

I am trying to detect whether an ARMv8 system running in AArch64 state
supports AArch32 state from a user space process. The arm64_features[]
in
arch/arm64/kernel/cpufeature.c lists a CPU feature "32-bit EL0 Support".
However, afaik this CPU feature is not directly exposed to user-space.
The features do get printed in the kernel log, but that requires
privileges and only works directly after boot. There is
system_supports_32bit_el0() which is used in various places in the arm64
architecture code. One of the instances where I can make sense of from
user space is through the personality system call. One idea is to call
personality(PER_LINUX32). It would then return error code 22 in case
32-bit is not supported in user space. However, if successful this
changes the personality of the current process which might have side
effects which I do not want...?

I started to ask myself what PER_LINUX32 actually changes. From what I
can tell it only changes the behavior of /proc/cpuinfo? The personality
seems not to be applied automatically to 32-bit processes, so this is a
opt-in backward compatibility feature?

To be on the safe side, I was thinking about executing the system call
in a separate process. However, at that point I could also just execute
a statically linked AArch32 binary and see whether I get a "exec format
error". I guess this could then be either due to missing AArch32 CPU
support or the kernel not being compiled with 32-bit compatibility.

At last I was considering reading directly from the CPU. But from what I
understand the register used in the kernel to determine 32-bit
compatibility (ID_AA64PFR0_EL1) is not accessible by user space (due to
the suffix _EL1).

Any advice/thoughts on this topic?

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
