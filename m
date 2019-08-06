Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6EF829EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 05:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WBRlmZBXMB++A5bC+sbb11wHM54VkimVJoacRy6Xm0k=; b=cYF0BPa+xpeHnU
	ZodQdBSvO+0HJ9N8iA+qaDV4A8r9I/8NXhLXE1R4jO+5js2mMmg0mBC29YXImJ27OTbfKFc8ZEfTu
	W9Ufyh1gSpr0HtScnrOTIcvf8seH1DShQ0XF4Cq6nrcBiyjqckdahh0Hq/Nwq3E4tk4u/7IIcqbxS
	1Qr3jlwlmvJXDPnkHI5fsc+1JZNzyGNDUpUa/EuSEoDzkq/yab4MzeztaSVzKdLqwazcPWYm4tDDs
	uVTIkUTCTTHeH7detRVVbCzOW8EswGoQD1AJvX3VNrW2HHW18M13G4QEvCphHp15gZE1cXv2toXoq
	0c0IcqVc1ctWkyvWyBpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huppg-00045X-RQ; Tue, 06 Aug 2019 03:08:16 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huppY-00044n-AP
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 03:08:09 +0000
Received: by mail-vs1-xe41.google.com with SMTP id v6so57421059vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 20:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iMT+gT6D225+qp+FOpL46f/S7PPq1vz7DseBHSVYmg4=;
 b=bW3Z8KnWBEnHEkaAOnQu1G1oz1vEnFHUV44VZgEk6A6RyTeiTbPcVF+5RVXkXiFZ7N
 0P0qobpRriowWkEQ95AQxs1wnYa3+e4oiAwlkFD1eUjMKCB8mlX4zyK4nXMnDf+WgI+b
 aPw1WUONRkQxd+hKEbjV3ecd7u+DmTSj58r4tZ+0NhUlenskHHa9eIQ7kHj3uZr52lA0
 6JmY6LOhP4eAuxTURl98Oa6Mn+4TIyG2VrBCGKhpt/ugSm+SZTyGsFafeoPnakX1AJd7
 a50cwiwqoQhcQZQ2bw4tRG5On+C2gPCl55D9LrRtLgdYn0zDzvvsU4b4KJyarJIRO1X+
 mVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iMT+gT6D225+qp+FOpL46f/S7PPq1vz7DseBHSVYmg4=;
 b=U40ksGJJCq75UfqMlP6MxB9oohhioIiLfPma1MilIIFGwUFOUv0qZXJaKuMswP8ch6
 PK6h6AwuUj5DDa6hAoCLq/igxC4yeftIGOcXiYP8qsIr3+XBX3UKir+8nUeDrM9RAr6V
 A2IN3G+NuT5+fRCmYPdR1rn1OojXA8VarPNNuhwS+TW2RTj3qgzuCjQXppcjLwBe2DJv
 SJP/NjLf15ICHrvtG/UEvuM4kUGuKwa6OhSx/g/m0pKB2uK6UHIQM0PULGniXfyEeROn
 xCST1diJhWheSsjTFVx2dFVsYhGcGfdRP0vq+jnRcmCuw3mZ3o/H5IzxdhRNFL+YOpBD
 IHqQ==
X-Gm-Message-State: APjAAAUKs/gIeAUyLcBwRdeDS5akL7FuCx5fXMrbLtt6LKmfTvAOqtF1
 ldmiJ99Oeeidzln+zFmC6OxvX6G6ATo=
X-Google-Smtp-Source: APXvYqyQhSa41qyKIL5M4jJigx57/1DGGRJ0WESsNgcXpaf1vNoLqbRgtkVv9vmQZX05GnjCZCqW1w==
X-Received: by 2002:a67:f8d4:: with SMTP id c20mr853660vsp.239.1565060886854; 
 Mon, 05 Aug 2019 20:08:06 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.46.249])
 by smtp.gmail.com with ESMTPSA id v190sm22683156vkd.37.2019.08.05.20.08.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 20:08:06 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: linux@armlinux.org.uk,
	michal.simek@xilinx.com
Subject: [PATCH 0/2] ARM: zynq: smp improvements
Date: Mon,  5 Aug 2019 23:07:16 -0400
Message-Id: <20190806030718.29048-1-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_200808_381669_B4B6C098 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Luis Araneda <luaraneda@gmail.com>, linux-arm-kernel@lists.infradead.org,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for kernel compiled in Thumb mode
and fixes a kernel panic on smp bring-up when FORTIFY_SOURCE
is enabled.

The series started with the second patch as an RFC, and
the first patch were suggested on the review to complement
the fix.

The changes were run-tested on a Digilent Zybo Z7 board

Luis Araneda (2):
  ARM: zynq: support smp in thumb mode
  ARM: zynq: Use memcpy_toio instead of memcpy on smp bring-up

 arch/arm/mach-zynq/headsmp.S | 2 ++
 arch/arm/mach-zynq/platsmp.c | 4 ++--
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
