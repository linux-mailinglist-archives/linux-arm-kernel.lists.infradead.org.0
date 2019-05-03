Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BE713138
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S2gpIW5uk4Ac3iVeZJv8PRmchAAPXt1NMxbI58eK7DI=; b=cHuJCW6nvTjSyd
	ph2SWq4+6A3QdFOFzOW5m6pUrdpix8MK7lYv7qVT2mih0ZUZgqP0ouaQbC5QTJNXlzf9D0mtUEqwC
	DjelDopTQhAPRFdGXwbBBjSv0Jv8SCUPkKQaGKXLbGQlam55NWZZW7Ts1kZvHtYVg5hozvXUTjYi/
	/vTb0BFR5RrjOCi/nb4OHXjbu1+6g+cvMdKaYviX3BsEtsAzmAAJ4bhFOAI3sCN8v8yHF0yTdTkli
	DdgpabLuh/3VX3xtTjyOYrRVEaPanZO4uKLM08lbdvghBdVnmNrvaANUKunEZ6sHXbi2dqzNq1AfX
	ZGTbRps7HUDg239ip2jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaAq-0002qu-3n; Fri, 03 May 2019 15:32:32 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaAN-0002T4-RS
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:32:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB976374;
 Fri,  3 May 2019 08:31:57 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 80C323F557;
 Fri,  3 May 2019 08:31:56 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh@kernel.org,
	tomeu.vizoso@collabora.com
Subject: [PATCH 0/4] drm/panfrost: Misc. fixes and cleanups
Date: Fri,  3 May 2019 16:31:41 +0100
Message-Id: <cover.1556195258.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_083203_901486_391D3F7F 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

These are a few trivial fixes and cleanups from playing with the
panfrost kernel driver on an Arm Juno board. Not that anyone has ever
cared much about the built-in GPU on Juno, but it's at least a somewhat
interesting platform from the kernel driver perspective for having
I/O coherency, RAM above 4GB, and DVFS abstracted behind a firmware
interface.

Robin.


Robin Murphy (4):
  drm/panfrost: Set DMA masks earlier
  drm/panfrost: Disable PM on probe failure
  drm/panfrost: Don't scream about deferred probe
  drm/panfrost: Show stored feature registers

 drivers/gpu/drm/panfrost/panfrost_drv.c | 12 +++++-------
 drivers/gpu/drm/panfrost/panfrost_gpu.c | 19 ++++++++++++-------
 2 files changed, 17 insertions(+), 14 deletions(-)

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
