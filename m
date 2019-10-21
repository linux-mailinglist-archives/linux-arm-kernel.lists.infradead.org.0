Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0933DE183
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 02:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4NnAOsUk1aodjogZdwytSrusIA46+3attc14mbBvf4=; b=sTzbQBDV8HormL
	lupojobsBXYM5G+LWEs6BwJyggNAekT9Mc533SdNjMVkkm5Kh4MRhClieKl9fT/ErOcVvQcbnY7I6
	B13qTzvgzSFBgjx75JEFiJAmo+U0wr/+tP591End0gGeBX+O8CAyzvjF88PNjVr7gUS2pHrqfLqLk
	1BN/yRjYHk6mzaNX6wn71zifHCMZHmM3V/tvDorTmCnpE7isD1QsWG2WfG3lC7wWq+wVBV3VLdocJ
	Jz8z9p3jkCGtISMt3MDGbzkAdlvRh4lcHkehWs08QuM2GmzhJI+P/XidEo1Yse9ytfZFDI825k27B
	U/UM75ZLONxLFMHjhRgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMLjT-0001BK-2u; Mon, 21 Oct 2019 00:39:35 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMLjG-00017A-Rb
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 00:39:24 +0000
Received: by mail-lj1-x241.google.com with SMTP id d1so11342067ljl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 17:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9FExjd8Mw+5S7YMEqY/A4+by9kWereoTqCBatm9VlSY=;
 b=bKfda/5lV6mWSWAiZpVxxNgMPBVwZY2DPWmhX6/nmnzg2UVxlImBP+/CfiJfb0DiYB
 w9AfDMSY2xb7TJKWzJ0+yMgQCi8J1xBfKrV90PGs/IEDPvEiqamNKpZqVWxgVnPWKGYm
 VN/CkYJn3XGCMykhmOivjJ0NuoUfJFVlSmhq7Xl76tAXV8UZroBJtxN4TpJwd1ySaSUC
 AaUBJg36OCzkyyf51aFEd1O4z9D+UjGo/4Y2R/zIT6yqBY2hyQ2lWAyh03UyWv4Mk6X2
 lSmCEqBEonc5NP58z1JO+HSpRadEiRVD11I6IW2n1nbWguPbe6WtLVRLwW/8m44zqXMN
 cG7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9FExjd8Mw+5S7YMEqY/A4+by9kWereoTqCBatm9VlSY=;
 b=GOMUM6oY+X+u+hEbhKkJq4ksTgKHQmyq2S7WV39nneEvZR3buymvHK6PZBHH+PNt5U
 ag1xTwLStPQg75PRie13Fo8c3ZUJpRG17o6Hxqh3BgnOuTcAec4gFR/wo56FGiEoDMHQ
 z+QdlHes8R6BktuhA9FQfABLxX/4vOUCRxwI6tpVRR/logIya/krgCP6ANvmuS7tnZDJ
 iP+kwrYQgIz8Tv2YzNC3MjVVl7fPZNzAJwjnOefp96ea1XXdTFL8/W58nOBpxTePQSBk
 BzpsRru70Au52VLZBPZfZGQqPeBgTzQQbeL+RacBi5DSUbRFozKvw1zu9ou6tLHDlph9
 4/8Q==
X-Gm-Message-State: APjAAAXbqUpS235zlTlNSisxqlMPKrGv1aApwG2Dcl/YuifBi3t1ATan
 y754qHLIrDeV9jLRdGYVw/RQ1ILudy7rscs2xadbyw==
X-Google-Smtp-Source: APXvYqzWOeDq45DqnffOCq2/ChHGoqMhScnvErLh5JbufOO4hYwyRCMdCCsjftBVaXnakQZF8XtaUFolXzMPZX14iKU=
X-Received: by 2002:a05:651c:1202:: with SMTP id
 i2mr6489156lja.218.1571618361501; 
 Sun, 20 Oct 2019 17:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-17-robh@kernel.org>
In-Reply-To: <20191016200647.32050-17-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 21 Oct 2019 02:39:07 +0200
Message-ID: <CACRpkdYjY0JZCCfb9r9A2GKmO03hHXNCqGmy6qqBkLfOdZZdEQ@mail.gmail.com>
Subject: Re: [PATCH v2 16/25] PCI: versatile: Use
 pci_parse_request_of_pci_ranges()
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_173922_892641_2F413F8C 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 10:07 PM Rob Herring <robh@kernel.org> wrote:

> Convert ARM Versatile host bridge to use the common
> pci_parse_request_of_pci_ranges().
>
> There's no need to assign the resources to a temporary list first. Just
> use bridge->windows directly and remove all the temporary list handling.
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
> - Fix 'mem' initial value to 1
> - Remove temporary resource list

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
