Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE8A132384
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tre8h9B7PxjWm4rlFHtUdGYDDiC2OYsqWhRfzZibBZ0=; b=Kxth7teOjFDAC/
	GR04q1R2vvCiZwgNiYcNrXRGMyh1SY7z5H3Eck/TM7PVuUY7YDBzLqgwgH2P3t9jnbSAhE9IjuyHI
	jfAiaih5x1msbWsTov8br51hH3YtnCxYNIcf629SW6TldpqH0dsY6yd1ZtRw9kgeyiezPZU2XvvU2
	2wa1CjAOfkmNylFZtzPTPQZGtzjfNoRg4TL0OgjNI9TGemczrxX7cL8elV0H9eS/A8wT6n+TGIDty
	mo9Qw6G6GNv2oW0rTMLJh3nF0F8wRmjb9Rp+ARmGmZMR1nhi6IA6gyZhTvBL6F4Mr8S6uE/RZ5HRW
	u9HWNDECax4UPW9kk9sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iom3X-00005e-08; Tue, 07 Jan 2020 10:25:47 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iom3B-0008Pz-Es
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:25:26 +0000
Received: by mail-lj1-x244.google.com with SMTP id y6so46117494lji.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 02:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=izkQdpFTUaZ8mivzHGq4ICUrxmuFazGHcwlx1NAdeSc=;
 b=qnJZFP7xmmTFBd6vI+/32Kl5V8BNirWnSab5gFzZceh0IoY+v2Gns93cnzy4CPzYWg
 doaAdXZ1LTsoTH4XmVA0+6hZJPu4DiGtCoR5/oR+SxfT8Qwi6AthJEEfWDvI2xj17OAr
 oVluVMO1xHctozp33EYg1FTeYjsobbPMuLZlDKOHmjVxycPvRiT+/9NkCstUg0k59Ixg
 u6K8QWf4S6s1VdN7Ns3a3xt/HPVv0f95sKkZTk91U8+4UX7dVVB28FyIvzD3xrrn24Tv
 PfiMS5lmbQ03otYuDdM4yS7Rw37XtrfsHgynTQxS3zpLEtSbe79k+FX/FBa1K7SRI8sN
 JhvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=izkQdpFTUaZ8mivzHGq4ICUrxmuFazGHcwlx1NAdeSc=;
 b=Kgwhsxi0QABPLe5h9j23WtxeVBETSBaOT04Kui2KybNY7GdihXe22fFW9WhsHxZK5i
 HG/vlLwceP4m5d8oArMSvst9E1WCvZu0szgGBHrMAInScG5G2Ik+EpmvVRiDYnYQIubf
 A8M4yHGCq19KUOLR7gQCRmWrjcrYMUCmoLvxq836HAZvXkdxAbTkDqjrjvAb7g8eWjYe
 lRFDR/AcbGY/lfrAZJd/MVphY0QbL0z7xGumpkwfVrCi0Rylu6sS0H+GKe++DyZNcdq8
 F0YdkS/5Msoj/mWOQD3tXHHL5KTW++UiLolehclbRYocm+uJLExC/Rhk+LpEHIqdhSrK
 pQww==
X-Gm-Message-State: APjAAAXZ2nswOoSNXq/6/2BSpXtLQCqE6blfyjJQld2PjA9Wh6bQ4f4U
 A9vnxXcC0y7B/A2EKy/RzRYFKVMk68HB+ZviTwe8cw==
X-Google-Smtp-Source: APXvYqxf447vgBZ6Ekf31Ne3QDBNnbDxra2GBTMOfyXxg/zNohD7uD4phbH7VRO5zCLqP2dAWg+gaYiElNCf9+fF5OI=
X-Received: by 2002:a2e:a0cd:: with SMTP id f13mr25923166ljm.251.1578392723253; 
 Tue, 07 Jan 2020 02:25:23 -0800 (PST)
MIME-Version: 1.0
References: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
 <1577362338-28744-2-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1577362338-28744-2-git-send-email-srinivas.neeli@xilinx.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 11:25:12 +0100
Message-ID: <CACRpkdYTz7hFiU-JfopNBVzfpaYBj86DF1w0=6egdBY2fY8Mzg@mail.gmail.com>
Subject: Re: [PATCH 1/8] gpio: zynq: Fix for bug in zynq_gpio_restore_context
 API
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_022525_556491_001E89E6 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, git@xilinx.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 1:12 PM Srinivas Neeli
<srinivas.neeli@xilinx.com> wrote:

> From: Swapna Manupati <swapna.manupati@xilinx.com>
>
> This patch writes the inverse value of Interrupt Mask Status
> register into the Interrupt Enable register in
> zynq_gpio_restore_context API to fix the bug.
>
> Fixes: e11de4de28c0 ("gpio: zynq: Add support for suspend resume")
> Signed-off-by: Swapna Manupati <swapna.manupati@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>

Patch applied for fixes.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
