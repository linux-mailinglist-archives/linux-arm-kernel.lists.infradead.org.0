Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E19ED44F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 20:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAlTSDk9J2w/qw6giVU5zp4dvONv5WMLL9m77wz8T7o=; b=bYBeT+qvlPErLS
	VD9Yg7RDlBHQAMYgePNxr26EerT/wioSRGRkeru9ndfNm5wrEUHUdRmQPWCG1XZEFyJWezo/nm/SC
	fyixfNyYnztU09R32Q7ayK7n7hx5hxihqx96QWLUryxRBj+qIR4hwzhJJZ66fXKOf7hZ9/UrqJCUp
	BgpwpJBp2GcQIB5mE7KPK/pjYv+D9HB6K63DpioC9mC1P5VWtg1q5BcKcmnj3Sc6oDiecaAXk47CT
	+54dlJDAHfZF+/6afG8rqPejxhMa84lcvZCbU2NiBKzz9GDuyubu5inDAgO/Y14LS4FJU+rwDvbbk
	N34hgJ8aBWja3eq5lYRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRLJH-0000lz-D9; Sun, 03 Nov 2019 19:13:11 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRLJA-0000jl-JB
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 19:13:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id y23so14851361ljc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 11:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UiW/0WHLJskoRcE/9uKEsyk5EFZYescblroVQb5zKlE=;
 b=uyMDuND3S2NyktyEGi6EMW55IECsFk6yKS5/4mMGMJYNW+HDwn0jsKQvxlE05BcE7T
 EFttc/eMyUsVg6WRFPpBUxsdQdTTokWkIONMbX4QHQJYNIZ4K4Xh2phOthgb0NF0PU9h
 VsaoAIqfA0Lv3RImklSTDc4BEROwJkqraKG/fU3BXxvrzT6fpWqMtoupE1NzFn9RbRto
 SXk27Ud+PmV1GeBwBnFf9sBHft3bCK+Z5z4LygP+el6DmjiD/yiKcP2BCQEC4su6PATj
 J52yNjimfedpRmm+T7U3k6Srk+Y26z+wxWsWUywHXSNl4u3N293TUJkKO+EoUANRcS29
 Hk8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UiW/0WHLJskoRcE/9uKEsyk5EFZYescblroVQb5zKlE=;
 b=hnKnRQXuKKfsImYBMQknDPrwfoNziU3TTHgVRl7rf+Fg2kFcPmMoYHidBgK34biHVi
 ZntRjNXBPANAuSm2hxkFudmzHSTRRagRUVNj6kXYgj+ElwU1d6MV3PWbJkWa3zKtq+uB
 XnMr7FPMYbQfdjCdCec1ftN1eccuyL4scuNNhFDqXJMCjsq6Ztz9Ohzv0WjA2odh8fAI
 BZPrZCRyOOL6cbWSb0tboT7y6IJ6GlvwrhtbCuAUNTboMPUSo72BIzRb4CnyzlK9xMky
 +f7O8SWiIUkuRwBQ/GOo6izY5UBQ0lVFfjpKWcfVs7rmLYb0xVwCoQWcYxWSUpfQCot/
 85nw==
X-Gm-Message-State: APjAAAWTXBMDSMPvj8DQqZYNeGodJPV87FWLBkecdVZsQPvujFYK9XvV
 YHXebtZibTidD0PDhhLcuJvF0sbZ0hOQx6COXkRjvA==
X-Google-Smtp-Source: APXvYqy73yfbuGgDPFc4FBM6JZGP/U7k4Gi/uo9VBKWono9/2nIhaCedCnD+8RqzMifRM5Br5pU2EVluL5emOXee0Xo=
X-Received: by 2002:a2e:a0c9:: with SMTP id f9mr16191510ljm.77.1572808380560; 
 Sun, 03 Nov 2019 11:13:00 -0800 (PST)
MIME-Version: 1.0
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-7-robh@kernel.org>
In-Reply-To: <20191028163256.8004-7-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 3 Nov 2019 20:12:45 +0100
Message-ID: <CACRpkdYzH5TCBxSCyYKeu3KUqMzDi44H7yOuXkU6ZBWNG901Eg@mail.gmail.com>
Subject: Re: [PATCH v3 06/25] PCI: faraday: Use
 pci_parse_request_of_pci_ranges()
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_111304_751814_46A49D8A 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>,
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

On Mon, Oct 28, 2019 at 5:33 PM Rob Herring <robh@kernel.org> wrote:

> Convert the Faraday host bridge to use the common
> pci_parse_request_of_pci_ranges().
>
> There's no need to assign the resources to a temporary list first. Just
> use bridge->windows directly and remove all the temporary list handling.
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Remove temporary resource list

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
