Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A59118978
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 14:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u9Mou1Bb799SC5Y8KQUB1Dx9x81XEhpmlBvkN0Zn6Ro=; b=Zoi
	xttm0a6nI3N1lz7R5JSTnoIt8KT7zUxV25MgYGG77mmcrYtH3QAXgjwH9ETM3+kT4hUpwfKtk6O+R
	JgvmWWkn0XH03/g/Z/mRprD+NzP7vNLNcKoDLPy7cR7/eoWIGzeo7BpjMXXhKibbXopBYv5A6eAlO
	d3zgAxOF3iUsQuu0yBKrLGzFmLEQNgcY2Jk8QqOkqxNWnYVZamHoKJmB2V4ltZdhKnjKZ+Mn+PBsz
	cfaq+TTX2zQHSD8PJ2vVRrUlIdpGKKmL5Q6vNVI1mzzTHk3kPk8/jneVhBrzwccBB8u6Fq0s7/SXi
	APQLw2OajmGj3yxBOu9lNzZoCcMzUMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOhpM-0002oG-JW; Thu, 09 May 2019 12:07:08 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOhpE-0002nX-QW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 12:07:02 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id C777925AD6F;
 Thu,  9 May 2019 22:06:49 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id CD3E09403F2; Thu,  9 May 2019 14:06:47 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH v3 0/2] arm64: dts: renesas: r8a7795: Add IPA support and
 dynamic power coefficient
Date: Thu,  9 May 2019 14:06:39 +0200
Message-Id: <20190509120641.20001-1-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_050701_012378_8E768F6A 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1) Setup a thermal zone driven by SoC temperature sensor.
   Create passive trip points and bind them to CPUFreq cooling
   device that supports power extension.

2) Describe dynamic power coefficient of CPUs

Changes since v2:
* Break power coefficient changes into separate patch.

Dien Pham (1):
  arm64: dts: renesas: r8a7795: Create thermal zone to support IPA

Simon Horman (1):
  arm64: dts: renesas: r8a7795: Add dynamic power coefficient

 arch/arm64/boot/dts/renesas/r8a7795.dtsi | 54 ++++++++++----------------------
 1 file changed, 17 insertions(+), 37 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
