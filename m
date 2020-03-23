Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F10218F876
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 16:22:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MDAurhVU2MrI9GMo4cU0SyrpQ3ghGmJ3jUblG4VqWFQ=; b=Y2eltwIfZRFkmR
	OUc3NXCN8DjAd2Jmojo8RL+KuUijDzM5dJQYISeZljD9Vu9PZt898Cu7uzES5a4h87ewA6s0mqojN
	6jEiJO+aqjaHZcdazqdeOFXqLMqJokS3c6c3+GfefsirBMiEylcKaNI5jcKCOQP/bY6LuxsKp9VIZ
	2AoDagxCWhVMXt7LVC/pNfh13JgrtR4m/dCtQTcNxLOu1IWWyuuYBoNV75WzlEhlmIvBm/S46yDy7
	lbwl1y7SXwDmmlwJtb7eziEX7xtufR9snD1E9Sr5o5ABNOF0jBemv2kMJuRatGG/YX8+9QPZpAjAk
	T594/Ti+oxxZ6ptHQp8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOuL-0002wk-1A; Mon, 23 Mar 2020 15:22:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOuD-0002vy-Cr; Mon, 23 Mar 2020 15:22:22 +0000
Received: by mail-wr1-x443.google.com with SMTP id t7so12897801wrw.12;
 Mon, 23 Mar 2020 08:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=bncEk+EpLmv9ZY8xJL78D4hkIi57iyy3GsMYnyuavO4=;
 b=qxaGiEDAW6ztaAHexshNvQtpr1QKMkRGljCQsS9T2Od9JzbEa4D7AmbwwJEGWDQglc
 FYWVd0Ti3JQ/5nr1RqQKoXOaEqFAizkLm8TEtg60WWaF/AT8l+80vWcO6h2dDiPK/gRR
 1hXlWnfrxYCvJl/1FLqFzmWe88geQ5TrbWm82tdXz6VIDL2QWVw9VzcQ1pf0+U9Pnz/j
 eODN+XaNQsPM8H9b/KSZUd33A3hykMnhvgVSzaiYtcehnl9t4C4g9pE0YXfsGk8NTSNa
 RCRrr/Iw/E+pbz/KNuyB0aXs9GcX09Xq+vnRnt3cJfu+5kjyndSQoKn11x+FH39ZrvmY
 FvNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=bncEk+EpLmv9ZY8xJL78D4hkIi57iyy3GsMYnyuavO4=;
 b=V93JeUIgcpuQXM4vsBOuE9+ku8+kgjqoyjlAZMBLGyYijvsB+PEBOJdsUtZ21xThND
 MsmNeHtSNY898no+t7aMLEMM5X3Hc0xux4+40uVuoTEvuDK4FitJmPWjjz5LANkMjT6m
 JGhPB2zOn/M1fgUai+/Ph5DQcgL9s1Tox1TwrXG/iA+VM4nBVlJ8yUEGkLndqyALmAxj
 rp6fkYvM/ymoNrU60pUYljp3Ky/ksD2bJfqPCKSmW7fTJWvvt1Tq1Dafnc5fcf1jLaIr
 BCVS1jUjN6IzBaFHy5jZ3LuLtJVnixQRmEE1Dv9+UgkW17cc4OXk6utJiyDHjjeym2T2
 sMMQ==
X-Gm-Message-State: ANhLgQ1PJdndVelnjAztC+wnjMw4hoqBlWGnQgZuSaQsOfhIk+uGGPAt
 1qJG+YzsWDE1i7Y99gnzbg/4W+dTTqjMUE+J5ccc690p
X-Google-Smtp-Source: ADFU+vsU/rl4EDgJVLLbr1Nu4MVjX6+uamUg9STL/ByhvnRYILvL1J+HRV1XL8iDTqymEL54RNZ971b6NsVLOJ5Q/fs=
X-Received: by 2002:a5d:6044:: with SMTP id j4mr28959169wrt.232.1584976937505; 
 Mon, 23 Mar 2020 08:22:17 -0700 (PDT)
MIME-Version: 1.0
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Mon, 23 Mar 2020 20:51:40 +0530
Message-ID: <CAJ2QiJLbFGbmrFP9EEyAWJWf4=SQxEe_J4bqwYw0EXqBkL5xZA@mail.gmail.com>
Subject: arm64: Getting continuous PCIe "CmpltTO" AER from network card in
 kdump kernel
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 kexec mailing list <kexec@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_082221_460945_06B5774C 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bjorn Helgaas <helgaas@kernel.org>, Bhupesh Sharma <bhsharma@redhat.com>,
 will.deacon@arm.com, Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

I am facing issue on Marvell's ARM64 Thunder X2 with kdump kernel.
Here network card is continuously giving following AER error
[  100.839168] igb 0000:09:00.1: AER: aer_status: 0x00004000,
aer_mask: 0x00000000
[  100.846463] igb 0000:09:00.1: AER:    [14] CmpltTO                (First)
[  100.861491] igb 0000:09:00.1: AER: aer_layer=Transaction Layer,
aer_agent=Requester ID
[  100.869400] igb 0000:09:00.1: AER: aer_uncor_severity: 0x00062011

This error is not 100% reproducible. It happens 1 out of 4 try.

This error goes away in following two scenarios
A) Set iommu in bypass mode via bootargs iommu.passthrough=1
B) Wait for ~100ms in arm_smmu_device_reset of  drivers/iommu/arm-smmu-v3.c
        if (reg & CR0_SMMUEN) {
                dev_warn(smmu->dev, "SMMU currently enabled! Resetting...\n");
                WARN_ON(is_kdump_kernel() && !disable_bypass);
                mdelay(100);  <-- Added delay
                arm_smmu_update_gbpa(smmu, GBPA_ABORT, 0);
        }

From A), it is clear that it is related to IOMMU
From B), looks like during boot of kdump kernel, network card is still
active and it has sent some request over PCIe.
as GPBA_ABORT bit is set, no response/completion coming to PCIe
controller hence "CmpltTO" error.

Ideally before setting GPBA_ABORT bit, there should be some check for
active transaction. if it is not possible, a wait should be done to
assure that no more pending transaction left.

why any such delay has not been considered?

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
