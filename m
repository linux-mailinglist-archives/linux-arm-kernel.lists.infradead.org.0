Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB928B0517
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 23:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/ninjslyM1HxqjatfccSmA7sjjrhMEzDN1gkQitZow=; b=AbPMcU4bC3oDUC
	/IYNs8Fd2pG79IZm8Pt8T73yrisrPx0+OUW8l+gDXmlwdXVpUAZQfsVQ2t8o+9GKI77Lutj6hM38O
	d6fKgsLDZRO7+RRS5M/IKTt7o0PSGLu1YzcyAhtOaSVEwM39+PMxHN8ZdUCRsJYU89ubgBwIrJHWm
	p3nhuAcKFQd8YasiKaIxb1IeKvNGjUOqr2SDW+D35xOcPdhmnyle0tirpsSgHAxSZ/JPSC2emEDwz
	jFxhy/i43N0k2iiUKGdNzV9iOBJaM53/fjaukZjH6EeB/Gf1entsLPnYVSQoL2sr/nSE6bk3SDc++
	n/l34H12ZNOvQykxKFQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i89q8-0003VL-FY; Wed, 11 Sep 2019 21:07:48 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i89pv-0003TT-Jl
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 21:07:36 +0000
Received: by mail-qt1-f195.google.com with SMTP id u40so27075619qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 14:07:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AFuB2QpmFZeeFcW1/wDZ3Q3qc6SL3R+R31YUNn2vg8g=;
 b=j9zgxHU4Gt8EAMGOUsKd+sKMYjmpJTAlvRDGeAq0h3ZiWOFKtY2A68np2nFz27v6Mc
 IjXei4wISPtMcGFbe/rhONPH8RynIi9rGXducM19yyRIy6JLxa4JnuEQxSKtzLmz6tsH
 +wj5d7tjq4q6zipghImvA8Koe+U/sd8jxPMfsInDllr++fkBPLnzq/BS7NRbo8q40z1+
 gWBm23/WKjbiQC7KCQGzTNSdmI7kliDF2NqwEQbkyeE5KRBPeXrZPEZioZTlGT2OEc/h
 lSjeiQYaWx54xZx2xlJ2a8f/5Gv4rP2eHlKHVJHxnLtKp9BqxHpgFPmt7qQ4yv37aplf
 mTPA==
X-Gm-Message-State: APjAAAVV8oH+Kzso9xupomnbPG3/p4KjOi/FPYCxxsYvpBtFu+f0Kroy
 1fHrzkwN6e2wFEzWaNKgj6j2z4iEmvW0153PV8A=
X-Google-Smtp-Source: APXvYqxmXppy4+77gx+LlXeaQMHszT42JLyi2myisyPCzAxn3WpjRosxEgQuBtMuYRI4gv0BJqTsq3M7LCuPPknqN5Q=
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr36952783qtb.18.1568236053461; 
 Wed, 11 Sep 2019 14:07:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190911183632.4317-1-krzk@kernel.org>
In-Reply-To: <20190911183632.4317-1-krzk@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 11 Sep 2019 23:07:17 +0200
Message-ID: <CAK8P3a2pBV+fh0rHitZ30Zz61QNRLfNSD-nhnzq4ZtxSh66F1Q@mail.gmail.com>
Subject: Re: [GIT PULL 1/2] arm64: dts: exynos: Pull for v5.4
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_140735_651750_149B100C 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: DTML <devicetree@vger.kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 8:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Hi,
>
> Unfortunately the patches were applied right after closing the linux-next.

Hi Krzysztof,

I took a look at these and am not convinced this is right:

> 1. Fix boot of Exynos7 due to wrong address/size of memory node,

The current state is clearly broken and a fix is needed, but
I'm not sure this is the right fix. Why do you have 32-bit physical
addressing on a 64-bit chip? I looked at commit ef72171b3621
that introduced it, and it seems it would be better to just
revert back to 64-bit addresses.

> 2. Move GPU under /soc node,

No problem

> 3. Minor cleanup of #address-cells.

IIRC, an interrupt-controller is required to have a #address-cells
property, even if that is normally zero. I don't remember the
details, but the gic binding lists it as mandatory, and I think
the PCI interrupt-map relies on it. I would just drop this patch.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
