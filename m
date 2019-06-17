Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E038A47D48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MVHTzfVBDa/fDLZWZ9EACTlunDS/+lXZ754aZvLOQhA=; b=swC
	1MT5NhbREDPHGOXV27XF43B9G60IxjnKoGp0U7Zpq3GhbaXrrxLDeB4ejfEgewwZ5GCSYXoDUH14U
	zO4uUL3tIOyehq652ylC20KKJewKrbrqIXoCUoMXMd+5C6AkuV7/F9D+TewXVcoR5Z74Qe4zDO6lE
	wIEqoQvUnkF2rNTSpV0vq8PeCa6SuoVHktuJrIhQF4oD65DjZjXVprgl63yS1fzCqdulU4fwIWYoi
	swz3WqEx5duKz6OByjDMFoPxv7svdt/1wVC2onPhkFP8xZ/kCwO52k/Ein8J2ZslxDMSKr/QWsRJw
	aUHiq/gFi+AAUD1v7zpoomF2s/S1GsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcn9B-0004lc-3g; Mon, 17 Jun 2019 08:37:49 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcn8o-0004e6-Tk
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:37:28 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 68BBA25AED3;
 Mon, 17 Jun 2019 18:37:23 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 683DE94024A; Mon, 17 Jun 2019 10:37:21 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 0/2] arm64: dts: renesas: r8a7799[05]: Add cpg reset for
 LVDS Interface
Date: Mon, 17 Jun 2019 10:37:02 +0200
Message-Id: <20190617083704.3941-1-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_013727_407763_AD51B136 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Magnus Damm <magnus.damm@gmail.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this short series adds CPG reset for LVS interfaces of the
R-Car E3 (r8a77995) and D3 (r8a77990) SoCs.

Changes since v1
- only add one reset entry per group

Takeshi Kihara (1):
  arm64: dts: renesas: r8a77990: Add cpg reset for LVDS Interface

Yoshihiro Kaneko (1):
  arm64: dts: renesas: r8a77995: Add cpg reset for LVDS Interface

 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 ++
 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 2 ++
 2 files changed, 4 insertions(+)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
