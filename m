Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C751F1BE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ls+l6vftCh/cmhk+Vn/ds+7n61vWTSChq13XDj8Rns=; b=PbHZMSQRSaNIbK
	g9QUmsSGPu0B4xKn9Zk9AHp8xcbR2/Bu1YVozhDhgKau91Ygv21/LqEYgxZ0SlaKvBhKqY5bn0c6G
	KiDJW/8vhI0t51feOHTA+CZIC0MMzGnowJy+iO4yKL/hXFAxufeklZizlp1RMXQBGsfYlk5K1Pa71
	pcV4anKf/dvSRGCqvWf07D25rWU5ipp+VKJxJIRSMKwtl6hRWlfCWLOzJ+dwtpxbPM17E/eQXdvdY
	1QGKa9QZIKXpILC3B6iJ8xFAn38fhJrnlivDJ5QDickzBNOEtS50Es3tU5eO0qEQzyrSXSO1ynH5X
	9JhWg1kWi82NxeRxs08w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJX9-0007A4-Da; Mon, 08 Jun 2020 15:17:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJWs-00074j-JI
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:17:40 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EAFF92074B;
 Mon,  8 Jun 2020 15:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591629458;
 bh=Ny5i86JNHb2JrfgvoHzy6RFfNKJ3tbWvSq/XAKgkm08=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PvI3QXx8W2L0h8pF0A8QH45i43twi6umaI2taBWcBNgfeyrWFUp1y4QNznuyGNAAA
 EqNYyBmpeHlUFxziOpaZeUH4Vvgcq9DN9bGvs6LhWrbagwIZx5qvFGjwqyPjCWtUfE
 9RL+2w7SJQbnYPz3mcB/qhro8Yvk658sjG2IPX7g=
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Joe Perches <joe@perches.com>
Subject: Re: [Possible PATCH]arm64: ftrace: Change CONFIG_FTRACE_WITH_REGS to
 CONFIG_DYNAMIC_FTRACE_WITH_REGS
Date: Mon,  8 Jun 2020 16:17:30 +0100
Message-Id: <159162750580.200319.6583744463210432522.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <b9b27f2233bd1fa31d72ff937beefdae0e2104e5.camel@perches.com>
References: <b9b27f2233bd1fa31d72ff937beefdae0e2104e5.camel@perches.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_081738_687447_1AC347F8 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 06 Jun 2020 12:25:50 -0700, Joe Perches wrote:
> CONFIG_FTRACE_WITH_REGS does not exist as a Kconfig symbol.

Applied to arm64 (for-next/core), thanks!

[1/1] arm64: ftrace: Change CONFIG_FTRACE_WITH_REGS to CONFIG_DYNAMIC_FTRACE_WITH_REGS
      https://git.kernel.org/arm64/c/91970bef48d6

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
