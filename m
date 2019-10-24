Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAA1E2955
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 06:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QPYyNbKPtTKJJJngIs6WiN3+Y4nWlUZuLHE6u0ZSXIQ=; b=jMb
	0NZqFrh16U3V4ti1voUyYCGAiY9fIzL5MUst47Ee3TX4VMnGBUn4mNSRG0AYC3dMNwFm8NNgTrRoh
	OJn13ccpcJ9NY7Gem+QjSedCra8WCg+rkD1MGZzwMMtw0K4sN9B4/uuldYV8TN+gumpONWtutit9a
	rtMjr0rB03HBu/cilQuAwuCn06AR0DT0HAEOsfl/ws6VsxSda+juteDTSfiZX70/tFAH1DXZ5a/UD
	zrcHzVPHudbO+OHwNBEsBjWzKamNPSZ5nbKDPEi82c/kzQtF037NAEaVVjAGyRfJ2200ZIVSRyVeD
	p5VfDNP+J5/1pjX0t4kZVqcTS6Bwtdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNUYf-0003nn-Fe; Thu, 24 Oct 2019 04:17:09 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNUYV-0003nO-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 04:17:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so13401963pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 21:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rVoSkEoiW0A02D0b61rQ73aC77BYCFQlHEVry3ikvFc=;
 b=g+n1iyfw+Cj4Ge3KENXHS8LUtclvNu9BYcMuS+trEG/Mf7o5IiYpjVr1S9FMRaYuV6
 4SgJ4BdScwFK/uOytJ1/1kws+kg6WrVFt3Gp3yZEoEnh98XFlr23+eLVBQ7dH4G2iyWJ
 bBb1HUCcBtE4E7qOhY5bJjdwlIxA/E03uPI00nciG1EB+/mUDVh97VKz9BVI1+CGjJbE
 VdiscP5Ml+em9K2O6GuEv3trXMSurC+DnzUlhgz9I4NZ2u9sZezGL7Fxaat1QHsLEwyl
 tnnzPXr+i+k1gljr1papZ/T5YcKyT/JFtiAOOAkvtlT/NXJJH2/lDM1ZFqigHYh9G2QJ
 RjuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rVoSkEoiW0A02D0b61rQ73aC77BYCFQlHEVry3ikvFc=;
 b=dzjtSywjTa8/8CSv6OyijzuaO+spjsB9KPCSxp3HI3YMkqV0H2fyLtl2/VCx4Edd5s
 UmJyHE4w5mP1RX1yQS1wAsoG+y4HkJyQejGNH6ZK26Z4LPZFkQQy8snxISrg8fkdDyPP
 k3W6eKZenrecRPMm8AcULFts8mIvn3gPXlQvg2h68MRaV2uI4mAQbbSRpGxJq5y+DXXx
 RhOCzBZ9uXsbDXFy0nONiEvesGNUKtBX8UhCraX2ywDRbzMruHOOMit/lpkm0rX+52jA
 v3J43v6an/MIKab5P4Vszqbtg7nHkDU/mS0Dn4BQ6TnGqWTbeaGBP5VawpDYbaVJ2zDH
 Qsmg==
X-Gm-Message-State: APjAAAWj0fqZPx6s+zvVsHcw8YEjwVaQzBnEAmvnIgJKqYnX2arKHjF/
 RaZBbvxuBk15FhvCtQfxJmI=
X-Google-Smtp-Source: APXvYqzcoRUdWKivEoF/gsoSPH7gGle3fBIKK1M80qJyLyEdwxYJmcOa9W2CV8Kj4vka6PZlgkF56w==
X-Received: by 2002:a63:4e13:: with SMTP id c19mr7366884pgb.225.1571890618395; 
 Wed, 23 Oct 2019 21:16:58 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.60])
 by smtp.gmail.com with ESMTPSA id d69sm27351979pfd.175.2019.10.23.21.16.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 21:16:57 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: 
Subject: [PATCH] dma/zx/remove: Removed dmam_pool_destroy from remove method
Date: Thu, 24 Oct 2019 09:46:23 +0530
Message-Id: <20191024041623.24658-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_211659_936012_BF9D74C5 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sst2005[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sst2005[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Jun Nie <jun.nie@linaro.org>,
 Satendra Singh Thakur <sst2005@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the probe method dmam_pool_create is used. Therefore, there is no
need to explicitly call dmam_pool_destroy in remove method as this
will be automatically taken care by devres

Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
---
 drivers/dma/zx_dma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/dma/zx_dma.c b/drivers/dma/zx_dma.c
index 9f4436f7c914..7e4e457ac6d5 100644
--- a/drivers/dma/zx_dma.c
+++ b/drivers/dma/zx_dma.c
@@ -894,7 +894,6 @@ static int zx_dma_remove(struct platform_device *op)
 		list_del(&c->vc.chan.device_node);
 	}
 	clk_disable_unprepare(d->clk);
-	dmam_pool_destroy(d->pool);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
