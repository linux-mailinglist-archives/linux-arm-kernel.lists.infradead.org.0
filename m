Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DC3FFFE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 08:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Message-ID:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vLAuC0khVmgTCxVSiGhYp3ixoqh82rprHUo1zZ7m0iw=; b=lXolnBIXcVJkuI
	SUOCeJIUoskPnjxhx/l1hV0Mm2ZF5k/yj9NutgDsBuPXMfjQhlzNA5FyWuuRCNghianKcaTKQsSJ0
	4CltqAHBYqCbKZFz4TaIWdhdaQg3ACN/t+5aqsvaSGaNB+Z1hE+cOUrH8n7CLQjluBw3znNI7J0JS
	8kXl0OWdLfyFnf0uCFfSKslz/uoRYzDlw8UiOYtApGLg1Q6doC9ZggqKN6MeuQQLMXLQTBnGmv0wq
	NzhZ5TPH/gG9raHFRI4Xhl2CKdkzevugBZMLc0Ip/liYbxDKK6UP37TsWtpNCwqPSVfek849XJ/+0
	sVvA9sz2a/4hFCTr7/xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWbvs-0000Az-Rx; Mon, 18 Nov 2019 07:58:48 +0000
Received: from sender4-of-o58.zoho.com ([136.143.188.58])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWbvk-0000AO-6t; Mon, 18 Nov 2019 07:58:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574063907; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=n6ZjxkhAaCYdVbmonyMT0gX8EtdaPseXqA8EVlamRr14hEIO4ZIPQuN3Th/p0tFNLHSlK0iQPaeUNip2/ohWm6MW33vHSoZ8IApAVOQIUs/MnLyAmyCGwuy+TxYLLPjaae5BLQKRdxtJDCJH2s7X/k8ykW64Ep8D6sw3BosQ7Vo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574063907;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=QaA7BDbSdX9jfQDBkM/kSQl2g+5tNndLUXgFesI8JtU=; 
 b=jmPe8liHwyhc+lisp/S0bh1t+B/fnJYcuQwzN8exNKgyt763W7UA2QDkcB0YIXqYdZP724iOHuTAWbTEgokonhFpAR8+R3CJ3hbz++aoUvpH+k/CEUtL90JKiK/zQeSqkPFDIR1eT0g2D+pDGxtrrOLKMVv6uafy8nWU5fnaKXM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574063907; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=864; bh=QaA7BDbSdX9jfQDBkM/kSQl2g+5tNndLUXgFesI8JtU=;
 b=gGcgYyBnfcHlRSvkWvOyaMKlDuqnVHD02oQQ6lKwfw9HdpqJzHZ64areSk9yJro2
 nRfGp4wk4iw8ICXEKmystIxgKJ/3oXMM4LdHyCDYkiJc4VeNVGxcZTnm6KBK6RT5grj
 kNawSeC6tTY81TexVMAwtRyTvFukohJOqFzW4xmU=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574063905483664.0921926369589;
 Sun, 17 Nov 2019 23:58:25 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191118075807.165126-1-stephen@brennan.io>
Subject: [PATCH 0/3] Raspberry Pi 4 HWRNG Support
Date: Sun, 17 Nov 2019 23:58:04 -0800
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_235840_338783_0796C842 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matt Mackall <mpm@selenic.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series enables support for the HWRNG included on the Raspberry
Pi 4.  It is simply a rebase of Stefan's branch [1]. I went ahead and
tested this out on a Pi 4.  Prior to this patch series, attempting to use
the hwrng gives:

    $ head -c 2 /dev/hwrng
    head: /dev/hwrng: Input/output error

After this patch, the same command gives two random bytes.

[1]: https://github.com/lategoodbye/rpi-zero/tree/bcm2711-hwrng

---

Stefan Wahren (3):
  dt-bindings: rng: add BCM2711 RNG compatible
  hwrng: iproc-rng200: Add support for BCM2711
  ARM: dts: bcm2711: Enable HWRNG support

 Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt | 1 +
 arch/arm/boot/dts/bcm2711.dtsi                              | 5 ++---
 drivers/char/hw_random/Kconfig                              | 2 +-
 drivers/char/hw_random/iproc-rng200.c                       | 1 +
 4 files changed, 5 insertions(+), 4 deletions(-)

-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
