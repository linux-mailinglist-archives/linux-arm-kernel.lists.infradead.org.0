Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44BF3C6AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6SO+/n0tQlYPm9HRmnMYcHx3yJbCvJS4iYvoF8HCfY=; b=jwI0ZrEVMuvTao
	zUN3h0UuIQUAwNPxJDEv2nm02Vvejt5V4VqXyFOYcKJRYwl2T820IOnRDmCcrVxyanv0n6S5Rfu8g
	HI8PQOgkDQ+qn0/iotnykep1OD071eFRCn2RfEqsZBTSztKX82EF1Z9BLA5/f1EXwsqJlp7CfNW/z
	xy4D5FHBoT1hhPt9PkeZssP80xEe8f9MHiOTarVvQZEP9GzBfa2UPMI44t1SLedRVqOAYOyMHT/wi
	6NWeNYIAeJPwjfa+dT0WdsTDNYc38/Nnuz9DVMfOhM+iSeNjlEoJZ6Dr/SNelhEOCuQEKLFMlcPs/
	2szp+RGY52qJvbcTbjvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacZH-0003YY-1q; Tue, 11 Jun 2019 08:55:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacZ0-0003Ul-Hu; Tue, 11 Jun 2019 08:55:32 +0000
Received: from p508fd648.dip0.t-ipconnect.de ([80.143.214.72]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hacYz-00019R-5b; Tue, 11 Jun 2019 10:55:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 3/3] Rockchip soc32 updates for 5.3 round 1
Date: Tue, 11 Jun 2019 10:55:28 +0200
Message-ID: <6757963.JBp9oB5bj2@phil>
In-Reply-To: <3004130.oi6ZuZy1Zf@phil>
References: <3004130.oi6ZuZy1Zf@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_015530_937490_7A618D7E 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-soc32-1

for you to fetch changes up to c2af88f1a0cdf4cbe94b51fd93e52a3f55606a13:

  ARM: rockchip: fix missing of_node_put calls in smp code (2019-05-20 01:00:41 +0200)

----------------------------------------------------------------
Another missing of_node_put

----------------------------------------------------------------
Wen Yang (1):
      ARM: rockchip: fix missing of_node_put calls in smp code

 arch/arm/mach-rockchip/platsmp.c | 12 ++++++++++--
 arch/arm/mach-rockchip/pm.c      |  2 ++
 2 files changed, 12 insertions(+), 2 deletions(-)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
