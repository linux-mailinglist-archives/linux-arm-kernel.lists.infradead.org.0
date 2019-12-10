Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99267119360
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cf5TSox/o8i9d3MlW24KHnzSBskY9dTT1w/fv++OYyY=; b=RA2I025ScdCIgF
	5KIiEDz9hq1WmaMfLKUhzUeS/Oj0EpFGaPqdoFNGOGiE1ROaEJIJ+cna/1tDuCqLHrFcfG+rKXR6H
	D9fywv+zn+YuyzPF4AoaDBiO6ofumhGzq1YPzofJFnsjwbDtaGeEOjlKX8OCN+n0AYP47wPw6oFvg
	b99wTAquqYs3aokP6FH5JOZTO8o1vDEHLbFNOMJ4V7cqjaUzE+71y2gIUB2EK204sSkFDBxIaellm
	qctUqp7YeRw2/atv6GLxv3xnGYOsoYeMgMBH6LGm2EJmVR8eQXysowSbJ5P9kJTquoLDmbPY9gJAS
	2dGYM4h/vm/5VLNTyF5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemmQ-0004ah-Ob; Tue, 10 Dec 2019 21:10:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemlb-0002nr-OV
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:10:01 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECAAF24697;
 Tue, 10 Dec 2019 21:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012199;
 bh=nJjxZ3v9wmrwDnBeiXGpCiRnrVNSOeGRf7PFqaBXu44=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BkHh9fneaIvWIabO8pqnvxjOOn6v7iWNPXIagxMu5Qjl+rEODwD360gIgCQ2KACoS
 5bmuanpX3Zpgnd2BoLolEF/uGHCL2KbwaTHHlgsIh1BB6+7rvYwmb1EGQYEnz1LkB3
 sw6kJ5UnxZ9uTWAtUVAfN1jHEB5AEOf7OyJCYp8I=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 152/350] media: aspeed: clear garbage interrupts
Date: Tue, 10 Dec 2019 16:04:17 -0500
Message-Id: <20191210210735.9077-113-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_130959_898211_D6A8DCB0 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jae Hyun Yoo <jae.hyun.yoo@intel.com>

[ Upstream commit 65d270acb2d662c3346793663ac3a759eb4491b8 ]

CAPTURE_COMPLETE and FRAME_COMPLETE interrupts come even when these
are disabled in the VE_INTERRUPT_CTRL register and eventually this
behavior causes disabling irq itself like below:

[10055.108784] irq 23: nobody cared (try booting with the "irqpoll" option)
[10055.115525] CPU: 0 PID: 331 Comm: swampd Tainted: G        W         5.3.0-4fde000-dirty-d683e2e #1
[10055.124565] Hardware name: Generic DT based system
[10055.129355] Backtrace:
[10055.131854] [<80107d7c>] (dump_backtrace) from [<80107fb0>] (show_stack+0x20/0x24)
[10055.139431]  r7:00000017 r6:00000001 r5:00000000 r4:9d51dc00
[10055.145120] [<80107f90>] (show_stack) from [<8074bf50>] (dump_stack+0x20/0x28)
[10055.152361] [<8074bf30>] (dump_stack) from [<80150ffc>] (__report_bad_irq+0x40/0xc0)
[10055.160109] [<80150fbc>] (__report_bad_irq) from [<80150f2c>] (note_interrupt+0x23c/0x294)
[10055.168374]  r9:015b6e60 r8:00000000 r7:00000017 r6:00000001 r5:00000000 r4:9d51dc00
[10055.176136] [<80150cf0>] (note_interrupt) from [<8014df1c>] (handle_irq_event_percpu+0x88/0x98)
[10055.184835]  r10:7eff7910 r9:015b6e60 r8:00000000 r7:9d417600 r6:00000001 r5:00000002
[10055.192657]  r4:9d51dc00 r3:00000000
[10055.196248] [<8014de94>] (handle_irq_event_percpu) from [<8014df64>] (handle_irq_event+0x38/0x4c)
[10055.205113]  r5:80b56d50 r4:9d51dc00
[10055.208697] [<8014df2c>] (handle_irq_event) from [<80151f1c>] (handle_level_irq+0xbc/0x12c)
[10055.217037]  r5:80b56d50 r4:9d51dc00
[10055.220623] [<80151e60>] (handle_level_irq) from [<8014d4b8>] (generic_handle_irq+0x30/0x44)
[10055.229052]  r5:80b56d50 r4:00000017
[10055.232648] [<8014d488>] (generic_handle_irq) from [<8014d524>] (__handle_domain_irq+0x58/0xb4)
[10055.241356] [<8014d4cc>] (__handle_domain_irq) from [<801021e4>] (avic_handle_irq+0x68/0x70)
[10055.249797]  r9:015b6e60 r8:00c5387d r7:00c5387d r6:ffffffff r5:9dd33fb0 r4:9d402380
[10055.257539] [<8010217c>] (avic_handle_irq) from [<80101e34>] (__irq_usr+0x54/0x80)
[10055.265105] Exception stack(0x9dd33fb0 to 0x9dd33ff8)
[10055.270152] 3fa0:                                     015d0530 00000000 00000000 015d0538
[10055.278328] 3fc0: 015d0530 015b6e60 00000000 00000000 0052c5d0 015b6e60 7eff7910 7eff7918
[10055.286496] 3fe0: 76ce5614 7eff7908 0050e2f4 76a3a08c 20000010 ffffffff
[10055.293104]  r5:20000010 r4:76a3a08c
[10055.296673] handlers:
[10055.298967] [<79f218a5>] irq_default_primary_handler threaded [<1de88514>] aspeed_video_irq
[10055.307344] Disabling IRQ #23

To fix this issue, this commit makes the interrupt handler clear
these garbage interrupts. This driver enables and uses only
COMP_COMPLETE interrupt instead for frame handling.

Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@intel.com>
Reviewed-by: Eddie James <eajames@linux.ibm.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/aspeed-video.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
index 84e0650106f51..096a7c9a8963b 100644
--- a/drivers/media/platform/aspeed-video.c
+++ b/drivers/media/platform/aspeed-video.c
@@ -606,6 +606,16 @@ static irqreturn_t aspeed_video_irq(int irq, void *arg)
 			aspeed_video_start_frame(video);
 	}
 
+	/*
+	 * CAPTURE_COMPLETE and FRAME_COMPLETE interrupts come even when these
+	 * are disabled in the VE_INTERRUPT_CTRL register so clear them to
+	 * prevent unnecessary interrupt calls.
+	 */
+	if (sts & VE_INTERRUPT_CAPTURE_COMPLETE)
+		sts &= ~VE_INTERRUPT_CAPTURE_COMPLETE;
+	if (sts & VE_INTERRUPT_FRAME_COMPLETE)
+		sts &= ~VE_INTERRUPT_FRAME_COMPLETE;
+
 	return sts ? IRQ_NONE : IRQ_HANDLED;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
