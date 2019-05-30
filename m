Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8905D30522
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ExigyIYC2xemyjzvgUuWv2SB2u9np4QmdgRihjxRRjs=; b=Jpx
	P82PFO5RnGTJ0e0Ob4xCX3E92uNdT0wcqTcTEhfOvuPkl00vL5pQCS3G5RGQEjS46eYYkKJCUMDfz
	deeAGpiJDWQs2Ax2Q/tAGnh1P4y/8yhRurikv3poIz6XjQy9ffX3WGpgUiZL1DWuDc9OFLDdZI55v
	rHzy4JDJiRgKlNVPMws+Qzc4DwSg/h4zbGLpcELb1nC0t1HBtdIh5Yq+SWeJR6BKzJxvSWS82FBV7
	VSjV0IrIUxVVVdHuKdxz5o4mcm4LbbGFMet6lywjGa7WAWTigzrddkKCKTsF1pU+pqgC2QGuzbV2S
	5drZ0DRthnM2jBT0xVPBhrtmBBjWIFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWU79-0002SO-NR; Thu, 30 May 2019 23:05:39 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWU72-0002S6-E9
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 23:05:33 +0000
Received: by mail-ed1-x541.google.com with SMTP id b8so11455299edm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 16:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RMNTEGnjljyZAjriCMOY9IejLkj2W1fVjZma/THgYWM=;
 b=Ug25Zi4io4lNYmvN0FjHQCoGTHi0tfCmeeYI3Nty3xemOLb4nnkC6nb1zjtP1ekZnF
 2ehiYmhQJCb1q766r/PDkBL3cEtv226HPGfusj2FWZz+XJlQKwSUkv9rhKxNQG+Dnntb
 NJM1I19OUoAlMHsnqcNsPXWnzlZ1MWogxq/QZMzEeF+Y+hxK8HJB4n8BELa7eqkK5FfI
 FY3oJB9/MtSk1bKWFJU6zkJ1EQzHZ0TyecM4PVhbIR8wpNON7CwcxaI+1K4I7IBDt2Ko
 25RkGSCtgcKMcyrLnp3/Axn+95ngviupi4EbaPCSC8N/hcR3lzijUjKd8A0MbbRz50PV
 TQsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RMNTEGnjljyZAjriCMOY9IejLkj2W1fVjZma/THgYWM=;
 b=jw1ZKqRsRUyz939Fpg3NpGAMD93AbtWG65MRKMDDmmJVbQ+fMHjl1NdobjznoA2Ewd
 1fTEOXH7fwqMtJaPVlRZEVEfnEsVIaIt/aL4Vl8nKHFK3f6IE2bcm2xN/vHsnsmXjl5F
 RxHXMGtengsl1TTcgEmKQaQ+i1yDoP6Gmw8F7jp83ChSde5PUOEhwax3i2ShKQgitPkj
 y/wCMj0/3oXt2xQ3HatTBMyMI3wuVa81UhTbc1jxyqYQ1oSk6xe1L8KPIpP0ZmhBC5DA
 mfj1wn3FAqdJBz5doISHjoEwWVbbNvmq9lTfyZcu0FX22lLO5EAKGT/+kmIR5TH631V5
 WgRw==
X-Gm-Message-State: APjAAAUTSn8lJ6PT04tb1MG0CJPd1Q81HPMpXeWckSSX+WWFZGk+L/a0
 Iex62j/cjPvtK3/PWx2MadU6dZdL
X-Google-Smtp-Source: APXvYqyTfAAv3mftVSrbrGSG+M230SItvNnMHvOHywfs3HzbRf5qS0cWXLFOho9rWKuZyFMblzaPaQ==
X-Received: by 2002:aa7:d617:: with SMTP id c23mr7661762edr.74.1559257530214; 
 Thu, 30 May 2019 16:05:30 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d22sm640338ejm.83.2019.05.30.16.05.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 16:05:29 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: smp: Include smp_plat.h from smp.h
Date: Thu, 30 May 2019 16:05:16 -0700
Message-Id: <20190530230518.4334-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_160532_501178_AC9F7728 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, marc.zyngier@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM64 maintainers,

This patch series aims at enabling irq-bcm7038-l1.c on
ARM64/ARCH_BRCMSTB, this driver makes use of cpu_logical_map[] and in
order to avoid adding a CONFIG_ARM64 conditional inclusion of
smp_plat.h, instead smp.h includes smp_plat.h, which is in turn included
by linux/smp.h.

If you like the approach, I would suggest to carry that through the
Broadcom ARM64 SoC pull request for 5.3.

Thank you!

Florian Fainelli (2):
  arm64: smp: Include smp_plat.h from smp.h
  arm64: Enable BCM7038_L1_IRQ for ARCH_BRCMSTB

 arch/arm64/Kconfig.platforms      | 1 +
 arch/arm64/include/asm/smp.h      | 1 +
 arch/arm64/include/asm/smp_plat.h | 1 +
 3 files changed, 3 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
