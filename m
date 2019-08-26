Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4097F9D4BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 19:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u/B8Vyy4iIzGIIf5ndOjtSCdNON8kp8ZisGWVyU856Q=; b=lO8
	zxLYrhqQ9icsRrhuMO/wNLWfnXAXYrMrYIQfbxvkOYuwHSK+k+ZCWg4zrHXaH9l8AwHXLVDmp12O4
	zDR7ni4SJkPhxoJkzAU3im303rGsqbmcGnSqTvp/MgUNepdQNYdS2UrMDwfpx14l+VQsolRlvrj06
	FYLrEzNc3p6J3+AXoRe8AooIOpQt0TyzkjBZPrYRKEELyx/WHeJO4BJxRHqQ3hE4Od97cg6msL4on
	lSWSjuyKsMosBOX0F5FJBnrzp4NqXCY0D2FWg7XGvM8g82Pc0iN75U18YbbKAIRRO1M8qdVSxtpnY
	B/9KJa4SManl4XfAA1ExspG+JLtnYbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2IY1-0005wb-UN; Mon, 26 Aug 2019 17:12:54 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2IXo-0005qd-8A
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 17:12:41 +0000
Received: by mail-pf1-x42b.google.com with SMTP id q139so12170633pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 10:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=QH2K8ZAI902p76XZ9KgmVmALuoFpqTkgimqoZuazwDs=;
 b=R1dTI/jGPiXTuR4ed7i39rA1/ht/mDDhJLexuKiCSk09hlbs430579ehL8j8Ku5NYP
 IyeRlULPUJCF5pGcIH758eSFHO5CBGguxEg4OowUmCuK/sOvlgLQcIWiRxlvkL+pXd+l
 kz7Hpwoh/GG0/hqqcy9R0PYOisTbP8RXUIQ7idxN2S3X1oXJYd/6sWp6zHcKDHFIvlyE
 /i/1IMTgrtZR1c07xF6ucXm80hNynLxZ/ce5v4bFAM8/sxjX5JqiyyrUhUUX3QyQxLuh
 HVRg+cOIBfX0x/GoWh8bb6eVq1gqtbxPCwgf5iiPm8csjbISqDnYYzwys7iIbl83Poah
 gg9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=QH2K8ZAI902p76XZ9KgmVmALuoFpqTkgimqoZuazwDs=;
 b=M6DTdP4KWHOzHCHrZtRiQES27qhEkXtuG4IYo3HgnkNpFBZOBd4me5DFeVMhO1b3NJ
 4jSlCN5IIUp0Yy71ar+1ooTVecke0UFIaerIzkTfnkVHyDrAEWVeb6M37eVRnkypBhjY
 8K53r2vviD6XFRJ6Qly+Q20IztL8Dk1/JdfwKEEbL+BTiwqe2268MjIZZbEBxOPC8liI
 x0Vl5o92bodLDyL3Tv4dkoer93iuCjWORyS/CZbdx7vEmWX7or4AUMfQcIfeIHA4ya7c
 e0mw/7/YfMueic4CyHBqvBU7/snUgvrxGh2Og+eKOwyhNq+HxFdyXhZiZTTrCeZTWKGi
 adnw==
X-Gm-Message-State: APjAAAVfnWanY67v96MUKOrvhtFt6+Hh/0e2RKKrEVLRzj52rdKk8fAI
 trHwe01nZMWOMyw3T4wtMMLOQ3Z05Z7X7NUiheD4UA==
X-Google-Smtp-Source: APXvYqxm2LSFHAV8mssFNpz83pew6vyfqponmEDayItcRpAA8f1rhuLEh34JdRJQ2Ux117e0fzhq0oLEL/fwNj6q/mY=
X-Received: by 2002:a65:6846:: with SMTP id q6mr17580639pgt.150.1566839558972; 
 Mon, 26 Aug 2019 10:12:38 -0700 (PDT)
MIME-Version: 1.0
From: Noam Camus <noamikong@gmail.com>
Date: Mon, 26 Aug 2019 20:12:27 +0300
Message-ID: <CABhetiwRF2Gq3HeG_QNT6t3GtCNJzedeenn6vQC_0FYr5Ee+mA@mail.gmail.com>
Subject: Changing default kernel load address
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_101240_303296_5C55BCE8 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (noamikong[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I wish to change an arm64 machine kernel load address and I hope this
forum can assist.

In my current setup the KERNEL_START macro (_text) equals 128.5MB:
KIMAGE_VADDR=128MB
TEXT_OFFSET=512KB

I wish to change kernel load address to reside on my internal RAM
which locates beyond 4GB.

Since CONFIG_RANDOMIZE_BASE uses only 16 bit I find it not helpful.

Can someone tell what changes I need to do so kernel load address will
be above 4GB.

Note: I use FIT image to provide U-Boot the kernel Load address.

Regards,
Noam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
