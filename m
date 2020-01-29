Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4629A14C435
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 01:50:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=udi0fJhmgf62LAPqngS81QQ+kMbfDVCXbeooMUWye0A=; b=iAvLsokUc8+3LMiqyBhTKhc8V6
	OvGPgQIRDMvT4o/BDkLUlgISV/mvwzwOtBZ25cKjYd/YCo9XG3uyBJUpzw0CulBh+CKJr0+xgivBT
	wlb1wS58DzZvusKWHNOMsc+aiCy9Z1J3Flm1Rl0qAbEjmJIgRumJ9NZxWugmJFi6N1T4njFUbbdWT
	p37w/YCsj7gDdvgQgLlVG/heD6XnevpK8pS5wGffCFv5Fje33RaZCWbrxjFYL6CnpeSK148YixZbh
	fH8rlz4zucNIVsxTB8V0/WYhitm5+GrNA9M3h8yo9QhZcqR0EbgLGGjJS0qsdA+nHhsVQN3SK15EK
	NIgB0inw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwbYx-0001Pg-RN; Wed, 29 Jan 2020 00:50:35 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwbYj-0001Og-6x; Wed, 29 Jan 2020 00:50:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id y5so4478281pfb.11;
 Tue, 28 Jan 2020 16:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EtNwsIz/W7qDWOcJUjaKUjRqPUfUXvWolVXPNlG9RVA=;
 b=KKASxA8DV59bYBHWLr+QfIA98DhVmF8ENqWpGyZs6PC4FcVE2tsQhCwNoVpqfw85G1
 7Cw1lfplMY0S9jhrGHbkKHbqijvUljIvoF8VIr84Xe1/yYF2WP5KzEMMfuyOruPhYLIM
 +fK6XIhWw3YZ0osJCdhT9z7ECP1tlvwqoVy42afX7WPSNPkjw4rwyS01B3EUVhSPIshg
 JON7Zi93g2SiagUuO4moB86rQWOwj+NpTOJRvAf12BbTa/i1W+fmF2gTI2jZ7i4c98Jt
 9wIUfHHQ348fJeA4hcytg19DWfKl5NpfekYdEb/xcx3Rvr85TgYrOgdndEsmFoPvEAsn
 VHyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EtNwsIz/W7qDWOcJUjaKUjRqPUfUXvWolVXPNlG9RVA=;
 b=dZjlYYGbfXhMhWGBCVBSUwk9tFGszwlSCBzqgAGzUV0XxhDGCcyO4x+5YhqgDipCk2
 8i1uMUV6ssnNehXLsxiIW8yxIZCVZEWHJdMECiQJq/dXTCK2clUjJCXprMAkwLatXuyG
 CVV4L6Nblb4X753G6ENc+qudBy1cWiU+3aB2RVtkES7qKGvnBpI840rYLAnxJQcVgbRL
 FfBXhP/HGzFyHaCE3i1UbJWUMyXjUfyC6OCkE+QMehWTs3M1Efyk3DLs8tbfQB3mhOJI
 zv8lkqmMXInp6obCfxrRDW7LEkEDeDzWA1aKnN8zei1AJfujQQ9VLdiTOBA2RMHe2DQW
 196w==
X-Gm-Message-State: APjAAAV7yEW8SQyZDPzNCLD6BfEOKQvwfVRW2z+W64U2h1TMpTlt/hkA
 qrGBTcSfoyZ3mE2yZ4Ijbq4=
X-Google-Smtp-Source: APXvYqyLq2pM76s+frdyhsQcfVDzxyDq8fqVKpN4RKXM8hwRvWFpAAEtQqU5CSpm7aBjHASwQMKrxA==
X-Received: by 2002:a63:d041:: with SMTP id s1mr27779718pgi.363.1580259020135; 
 Tue, 28 Jan 2020 16:50:20 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a21sm259688pgd.12.2020.01.28.16.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 16:50:19 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH for-next] arm64: defconfig: Set bcm2835-dma as built-in
Date: Tue, 28 Jan 2020 16:50:18 -0800
Message-Id: <20200129005018.10729-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200124111700.29910-1-nsaenzjulienne@suse.de>
References: <20200124111700.29910-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_165021_276117_A88B0DA7 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 Jan 2020 12:17:00 +0100, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> With the introduction of 738987a1d6f1 ("mmc: bcm2835: Use
> dma_request_chan() instead dma_request_slave_channel()") sdhost-bcm2835
> now waits for its DMA channel to be available when defined in the
> device-tree (it would previously default to PIO). Albeit the right
> behaviour, the MMC host is needed for booting. So this makes sure the
> DMA channel shows up in time.
> 
> Fixes: 738987a1d6f1 ("mmc: bcm2835: Use dma_request_chan() instead dma_request_slave_channel()")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Applied to defconfig-arm64/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
