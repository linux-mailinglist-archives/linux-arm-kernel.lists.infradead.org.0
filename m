Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAAE50941
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N/em4jDWCIQ0tVlDYCZoRtX02mFzyeZ1JIW/n0oqffA=; b=Qus
	PkU86z3jQx+/5JUfE9GIljlRkGlam39i3ClWuAbsksJzMuscG6nn7T5ZVptEq3omivpJSHVf3BsaA
	Qkmz7I73CphFL3Dksg8YSJmDCNYCiGEuSlvjGVIrsQry5k109ki8wE2Pt+LW3PcLTKq92jC2uHVct
	oLxdddd3hp/+YnIWyLuugLEbzJjVwKcBzDH+zjK5WVCapWHTVa0fQnNMoRy4F3L+twnM/lSWeN6rP
	3o6k50nNKoYNyvmM/Y1LR8tykdGPRLFxlDQsH8/VkycIJ7xDK0Kdi+odIjtQcCAx6TvBFEF/ej6PW
	P/GfmRvfOuH49h0eizqs4FX9+TuQEAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMb4-0007bb-4z; Mon, 24 Jun 2019 10:53:14 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMae-0007UF-Jz
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 10:52:49 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 3B4F825B775;
 Mon, 24 Jun 2019 20:52:42 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 085DFE21A80; Mon, 24 Jun 2019 12:52:40 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 0/2] arm64: dts: renesas: r8a7799[05]: Add cpg reset for DU
Date: Mon, 24 Jun 2019 12:52:22 +0200
Message-Id: <20190624105224.23927-1-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_035248_798088_FF9AD9DF 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this short series adds CPG reset for DU of the
R-Car E3 (r8a77995) and D3 (r8a77990) SoCs.

Based on renesas-devel-20190624-v5.2-rc6

Changes since v2
- rewrote changelogs

Changes since v1
- only add one reset entry per group

Takeshi Kihara (1):
  arm64: dts: renesas: r8a77990: Add cpg reset for DU

Yoshihiro Kaneko (1):
  arm64: dts: renesas: r8a77995: Add cpg reset for DU

 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 ++
 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 2 ++
 2 files changed, 4 insertions(+)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
