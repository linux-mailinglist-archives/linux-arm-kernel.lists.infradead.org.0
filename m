Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD4315D611
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:51:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29+7byx58voTLwfcOVM3O8RAdmRSgH+GTgxC+fVp78A=; b=tcG6IrJEVLYLlp
	cBip2IWZYTWXmlQAvYp+sfAbBK7pHix6uBUtE6Xj0T7hNGR14pn61K4L0frrpPTvNtro7uAAdGMrl
	hDcBLFsJdmp/I8AJRKqNNeHanzffJGX8HCQRhRBx0XKLM/p8MagntQUX5W2jAOX2ze+XJrkK9WqPb
	L3fJlZFzYy5Imzu5IdEOihtPs+6N5/5hxbGllMoS7TqrrQyRB8Z/8t6ChIK6qPjlMrVW0KT9Hewjp
	dUfbaqks/rUsi4PJD2BEHuCu4nRNrakybGSGXuv9Y62vK786pzpnQaXYoQSbOwMSc81c4CyxEm2Jb
	SQRBQEtnaV5lDWUwBlYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2YZ8-00056C-V4; Fri, 14 Feb 2020 10:51:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2YYx-00055N-9s
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:51:12 +0000
Received: by mail-lf1-x142.google.com with SMTP id r14so6453298lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CR6bHnHZoiHbW3grDbPXu+tcCdPNxFUy7DMGVKDxrdU=;
 b=ZB/WaJEEHKN4vlxH4Q77+OOPAi+yH8uvWMar/Wo92sc05nEqDy1nHiHv81sCC4R5HR
 zTc4dktstCFOctS7NkFCXjG+Ipo/IDcXN9dbAhdXA+B2L199AvWrW6QOtw8hJOD90GWm
 F1Q/Jj6J4kTXfQoaifWXQg25FyCdxlrApHVxhQ+t3RBpoNRuL8PfBf7DEe1OUc/5qAi9
 Ah5TKSHu2uHQjeQJyaw1GaOiOWzQ3ogpcfBf4wBNsZG/Wfe0llzLv5cMm0evS8OofkAo
 ud43w92m7GJDNyF7Lhn70lpUJLD4Gd11c5o0rSba9R9yAHy/hlq9rFPX7p4Zfnzd7K8o
 EhXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CR6bHnHZoiHbW3grDbPXu+tcCdPNxFUy7DMGVKDxrdU=;
 b=jgC+BpOy1NAUYUYkhYHQXLM12ovCbtk28Yy99VvPiL7iBv6WXW1Z8FI/r8A7TWci/O
 qUdY3gr1NBHNOfk7JCz7NxmkzgZopc4ziZursDnyEZX9YofOKxv3HTfhES0QP67jP4sV
 xwalpVkyib2CZjZjM00/ee/r0yfTV9vkx+Er2/ISGcUfIgbgJDNXpk/BhDd9oXUJvnQ7
 cLXheV5ia/Rw3YnXEhcQ1/DvVXCjVv2Nh4Vfx8Tw2KOzaw/xGISLtAja5MnGalAdRA6B
 UfgmJXQRGnFTCLg4O/32RlKFSZ7aHPtCjibDFfQC5HLnPeve8vVP408+/fqPEIh+WJ1k
 jnQQ==
X-Gm-Message-State: APjAAAWSWwuOAPPX17KtwZ1LiDT2qdeOmt47DclZfHYSFghXpA31SK9F
 ml+iZcAeN/dvEQgTnxepdmbJf3YGHgSUTXS5Ik92XA==
X-Google-Smtp-Source: APXvYqxkkMaDIwfsdOgCTxqXpmc37h41kvnDJyCa02wuDmWXS8mAwsvAa4bQZ7hGMY56bSP/KNt/TUd5+tIUbXiS0ig=
X-Received: by 2002:a19:dc14:: with SMTP id t20mr1374192lfg.47.1581677469885; 
 Fri, 14 Feb 2020 02:51:09 -0800 (PST)
MIME-Version: 1.0
References: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
 <1581166975-22949-5-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1581166975-22949-5-git-send-email-stefan.wahren@i2se.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:50:59 +0100
Message-ID: <CACRpkda1M_B9VXjsTPmcR3zG=xS0uVQMPPYJ5H-BAj3=fQk4eA@mail.gmail.com>
Subject: Re: [PATCH 4/4] ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels
To: Stefan Wahren <stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_025111_343648_045CF6B7 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 8, 2020 at 2:03 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:

> This adds the labels for all the SoC GPIOs on the Raspberry Pi 4.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this through the ARM SoC tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
