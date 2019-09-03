Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7799A6C6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 17:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/z1g7OL95mkk4srYF849VNBvouNqdWSThsSGVjc7q4=; b=YH9GTa2fEg1xY3
	LGUXR+fW9G7za2SSRUh0gDitmWAMSu4HvLM5ajC4INPsRc4USqXoWS1amUPpRRufr8a29K7+sOsnt
	HHBLIZkAXPqL37jmNO0udcK4sDbS3LJShBGKF0xVmSzCdGFJ3o+Kz2Li4t+f3XGWIg0PeKB2Rlpgg
	MSYr9t6GG/2iZbHpizBoisEy5+E/bbjmoVisUygIQwVSpPxlRUbP+sgU8exYSlAd2BwosVGAQqESy
	Bc8c9TNdWLVHjfSH9yb00j4+i/B++a4L55ZI5Ty0fRNPjboi1xbfZUR2baPFVdkRC00OXC+HHWBX8
	NEq1ruGz4LuAm+90ITfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5APu-0006PC-Ab; Tue, 03 Sep 2019 15:08:22 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5APk-0006O6-NJ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 15:08:14 +0000
Received: by mail-lj1-x242.google.com with SMTP id l1so16360855lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 08:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h2yAjc2hJCjjaepN2ZkdwcHMrEZsiJoFozFvDMefoRw=;
 b=qtrVEo5hiEW35+KHBeaMmVNP+7Pnoux7SAr+dyV7tNyctOLt0hM5XqWoYPZZAosKMI
 ujnpolv8ByO91hPnZoRt+YWHlIUkQ2u6/6VjKlmhzdkIm1sgCit0OGgmOzsuH+PhZFUN
 oJC0gsIhqSEQ4sl0+ZbfG4zHMuIEyQj8ZZEsQ4ApjqeVnKOmrp3jQqmSxchD7PA6YekT
 FF8nlVXY10LaZFbVioK8GJ3bIVnbNhubmxqaMJROiKkgRe5kFzb0X3peWRlm8c4Pez6a
 Qkzbxs/8bH4vGVU1vD00OoGGnuZVseGxwWA2ITQ25bYTNpqqOtM18qDObGrQ1QKjECus
 n/rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h2yAjc2hJCjjaepN2ZkdwcHMrEZsiJoFozFvDMefoRw=;
 b=ZTWk1lKo8jwTaxPLHHAlMR0aF1wWaEqk5L6JuQDR5mewjQL2wscBuC8x9BkbrX+Qax
 WHNag9tQ8Zlr1oO7r4boc4N8IBM9nf8Ih5FBCOyef/7wMTuplBnIX+0OraL2A1CyG+HX
 LkyDDGuyjR2TytFHKynsW2XjL+mBvBQ0g2KcmeOtJ1+EafUPI1oq9dIgQhNVtNYGzFLp
 wwEq0MaqAZuuMO5cjvMplyiMBFGwcbfcRxfTAGyAiRwrXFQzEf+NKjaI6gPJYnllTUJd
 5bb/ncn4UKUEy+gis/O3Syw5DLHBZVJN0BbhUvdw3Gy7BDWGH6xac6DrsfCYetJlRZuL
 dVxQ==
X-Gm-Message-State: APjAAAVOtZabgdoeJ37SWk30slD8zT2w3IdQKGRY8M86BL7/Xg8hdGNJ
 oWDszTT84xps4QnyRhnDeUoQg8kaQ25dl3PnFC/kwg==
X-Google-Smtp-Source: APXvYqzHTJ4rXh88bRtnP+VcBH4Tx2ddUfKifZ8gVfeGmMwa3ovSQrn97zqTmcBfvcoIoTIQ1izbtNDwn6zYYGzgiKY=
X-Received: by 2002:a2e:884d:: with SMTP id z13mr13192354ljj.62.1567523291209; 
 Tue, 03 Sep 2019 08:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190903141215.18283-1-dinguyen@kernel.org>
In-Reply-To: <20190903141215.18283-1-dinguyen@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Sep 2019 17:07:59 +0200
Message-ID: <CACRpkdZOn+P6R3RmQEyk-LQ9-g-ng-mVepghS6+Cic-6xMrNjg@mail.gmail.com>
Subject: Re: [PATCHv7] drivers/amba: add reset control to amba bus probe
To: Dinh Nguyen <dinguyen@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_080812_766276_CA63FE9D 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Tony Luck <tony.luck@intel.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Kees Cook <keescook@chromium.org>, Rob Herring <robh@kernel.org>,
 Anton Vorontsov <anton@enomsg.org>, Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Colin Cross <ccross@android.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 4:20 PM Dinh Nguyen <dinguyen@kernel.org> wrote:

> The primecell controller on some SoCs, i.e. SoCFPGA, is held in reset by
> default. Until recently, the DMA controller was brought out of reset by the
> bootloader(i.e. U-Boot). But a recent change in U-Boot, the peripherals
> that are not used are held in reset and are left to Linux to bring them
> out of reset.
>
> Add a mechanism for getting the reset property and de-assert the primecell
> module from reset if found. This is a not a hard fail if the reset properti
> is not present in the device tree node, so the driver will continue to
> probe.
>
> Because there are different variants of the controller that may have
> multiple reset signals, the code will find all reset(s) specified and
> de-assert them.
>
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please put this patch into Russell's patch tracker.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
