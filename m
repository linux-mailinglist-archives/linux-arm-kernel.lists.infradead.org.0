Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEACCD167
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 12:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k4oORP9kjLoq1vheNyYs95OLijqtLsMnG1xrnpNKv5Y=; b=d5PQLayivF94rV
	vngiztG5WvSSJu0XQ/eW6GCs0sA8X2fdwhcbE4izSaTTg79mdwFZ7sduwE7SVfZVbSTjCOaEl5LZQ
	ZRJIN3sYBf1BI1fBzZvFiRWY/SMKAohVgb8bXV30aq+nZs/b7MJxhVSnqSphiJWOe+oNm2C1eX2q/
	ToKNoHaowtcJEfPrgTmYvk6/NKf5vQbad6PmWkrrsMRKYxOd/8IG6DtGHsb1nzDUqAZi7HwVCUBYu
	XgUITbAwBhmDxz1nTCvgDO09miESkH4ZBNp03N+4ZbdYiOv4ATlLhD2n/Ub/7i2otIgS3y1GbMW2M
	rHeI6UOcjoLAm3qEGUpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH44C-0005WX-W4; Sun, 06 Oct 2019 10:47:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH443-0005W8-2b
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 10:47:00 +0000
Received: from localhost.localdomain (82-132-217-85.dab.02.net [82.132.217.85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66D232084D;
 Sun,  6 Oct 2019 10:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570358818;
 bh=5F1vOMzribkWPxS/i0/IDvYHGJESKxSllK/Tnob7QXY=;
 h=From:To:Cc:Subject:Date:From;
 b=xQlAvOWUndDfG+W9cFUCIMRr1I1Cp8uID0IDvLC6gmS8Y6pIi8kJYXLoYh7HYL3cD
 LC8H8dKP2tMYEGIMPAwrR/ssMZxpyd0ctFBtf+TbFXMYaCjl6nDMp1RD77NchJx70P
 V78sQp7xBgsYCEjDFcg62KQhDwSESd5erSE+aY44=
From: maz@kernel.org
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 0/3] KVM: arm64: Assorted PMU emulation fixes
Date: Sun,  6 Oct 2019 11:46:33 +0100
Message-Id: <20191006104636.11194-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_034659_136248_DA1A593E 
X-CRM114-Status: UNSURE (   8.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <maz@kernel.org>

I recently came across a number of PMU emulation bugs, all which can
result in unexpected behaviours in an unsuspecting guest. The first
two patches already have been discussed on the list, but I'm including
them here as part of a slightly longer series. The last patch fixes an
issue that has been here from day one, where we confuse architectural
overflow of a counter and perf sampling period.

If nobody disagrees, I'll send them upstream shortly.

Marc Zyngier (3):
  KVM: arm64: pmu: Fix cycle counter truncation
  arm64: KVM: Handle PMCR_EL0.LC as RES1 on pure AArch64 systems
  KVM: arm64: pmu: Reset sample period on overflow handling

 arch/arm64/kvm/sys_regs.c |  4 ++++
 virt/kvm/arm/pmu.c        | 34 ++++++++++++++++++++++++----------
 2 files changed, 28 insertions(+), 10 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
