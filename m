Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A78102FC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 00:12:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VeFs3/KVpLRv4rciHpu+CD/jTsy22VeqoLahNKgzjI4=; b=Ol9
	T0jh3mokbtH3RhPFdxPEhTU+nLQ957Zhp/49mXUYpByhzjzUxDpn6WSR3TFFW2cNtqGsz2is/gd4c
	fIi7WxFFiEnGAWpPl9IkMTWEznZTBy1+3asB/WEOLHs/Ss6SKrTp3CKQ+o9t/dcqpeHH1AXIPGd0I
	qVYPM0+MGvdKMh+sf9cmgf3/PYwWOUBE1QUjwTB5dB8Ip0jqoAak4FXnfCcCNwOWPabDw/rWyilE1
	3CQrWr9YVffTMEeqwpXpsKfoRYsQLUE+PYbQWNR1FNrF+3cZXnoJL+M2kTqJ4GeqFlz9/GKhregrZ
	jUUq0VyBrnNo38zRZV2tWzG7r0A4Cwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCfx-00055m-Jm; Tue, 19 Nov 2019 23:12:49 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCfn-00055D-KQ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 23:12:40 +0000
Received: by mail-qk1-x742.google.com with SMTP id 15so19552766qkh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 15:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=s+wJpK98WvgOdsaCKBBI6HOq71znkgyq7cc/DXPzl7A=;
 b=W87bu6GiyfqyCbFB88ZQz0jOK/1jw/n1dD/bV8mV97sq4k/qaGVSrcL6fvvtXG3VZs
 LJnCI05D5UzWCzRmstfxeeGa8TpIxJi4wygvLKDmK9ANta1zBAB8dzskgU0f3ojQwdm9
 KxT67sweb0yVU9nN/ADDi0c6ek3zoZ6+TNo3cLPNKCuVnMpqTWTLOfyGlwFyQ4439Uaw
 mr2a/HfJLc7f5Z+3vKN0MYLm6Mc/h/XCfbcMcWtFZmPnM2wN9Dw75CPXtjrTn+2Jhe9J
 AzOsNV97Kf6BdwevscBRgQJaka9WXNmllK0AGLVCqwsaMUrIBlReWbGgNueq9BqOmhWR
 eF3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=s+wJpK98WvgOdsaCKBBI6HOq71znkgyq7cc/DXPzl7A=;
 b=PcQKkrhLCroEptNoEjFWwCl4e1jQVASgxjne77W+mbsaiOPbLNB76EPUhPPTTXzEeP
 Z9Kz8djFZBinq048JUB9u3os7GWKD0lVgE5dv7v+QU9KhGXKWMB602L5h5Bu69I4Flsn
 xxYvNfyQRBpNJW62j2FcilRSoNV0n+2D75UsO99gFXmBslqyONdgOCmYUutYQvjb6oRV
 ITSxVp4wzg8/G+lyS+5rq3DOB9R+GsGhdGSIV8hxP8J324FUQaVw2mtO1l6qoc11vnJt
 IyxTk6GHc6qGk+AeiSLcXS2mx0Ni8hmlpTGPbmi8WPx4zAyvbRIuBspBr+UYqngCDY0M
 H1tQ==
X-Gm-Message-State: APjAAAUvHKfBnvH7XuQwul5yu8PMLSsZe95rKMEeYmX/jBH3uMa6fP5t
 pNIsD4yPKGslx0ppaWlaPdsLLLp17evW+q11yfp7z9at
X-Google-Smtp-Source: APXvYqyyTodGhnCu2tQ5DzFWkI1OorMtcOZ/ExooKPDtYKdwjfP6TN7NBrUq4svWU4qufRpKtJ/ojEq3SRElsinUVGM=
X-Received: by 2002:a37:4549:: with SMTP id s70mr101736qka.259.1574205157902; 
 Tue, 19 Nov 2019 15:12:37 -0800 (PST)
MIME-Version: 1.0
From: event <event.riga@gmail.com>
Date: Tue, 19 Nov 2019 23:12:26 +0000
Message-ID: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
Subject: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_151239_669639_0D5CAFA0 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (event.riga[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far only a CPU selected with top affinity bit was selected. This
resulted in all interrupts
being processed by CPU0 by default despite "FF" default affinity
setting for all interrupts
---
 drivers/irqchip/irq-gic.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
index 30ab62334..e6c6451ea 100644
--- a/drivers/irqchip/irq-gic.c
+++ b/drivers/irqchip/irq-gic.c
@@ -331,25 +331,30 @@ static int gic_set_affinity(struct irq_data *d,
const struct cpumask *mask_val,
 {
  void __iomem *reg = gic_dist_base(d) + GIC_DIST_TARGET + (gic_irq(d) & ~3);
  unsigned int cpu, shift = (gic_irq(d) % 4) * 8;
- u32 val, mask, bit;
+ u32 val, reg_mask, bits = 0;
  unsigned long flags;
+ const struct cpumask* cpu_mask;

- if (!force)
- cpu = cpumask_any_and(mask_val, cpu_online_mask);
+ if (force)
+ cpu_mask = mask_val;
  else
- cpu = cpumask_first(mask_val);
+ cpu_mask = cpu_online_mask;

- if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids)
- return -EINVAL;
+ for_each_cpu_and(cpu, mask_val, cpu_mask) {
+ if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids) {
+ return -EINVAL;
+ }
+ bits |= gic_cpu_map[cpu];
+ }

  gic_lock_irqsave(flags);
- mask = 0xff << shift;
- bit = gic_cpu_map[cpu] << shift;
- val = readl_relaxed(reg) & ~mask;
- writel_relaxed(val | bit, reg);
+ reg_mask = 0xff << shift;
+ bits <<= shift;
+ val = readl_relaxed(reg) & ~reg_mask;
+ writel_relaxed(val | bits, reg);
  gic_unlock_irqrestore(flags);

- irq_data_update_effective_affinity(d, cpumask_of(cpu));
+ irq_data_update_effective_affinity(d, cpu_mask);

  return IRQ_SET_MASK_OK_DONE;
 }
--
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
