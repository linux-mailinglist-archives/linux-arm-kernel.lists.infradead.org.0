Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AFB162CE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfxEtNln5PxRN7TvU2ckB0Af/jI/qctCqAl9TF0JquQ=; b=PCKUy4Z6ebZ1W3
	vhV6Mlll8mYpHvw0OP06vWz8O7pg0dmpG+lQ4I3uaFGv15FYgMF2fNpXRwFhydEP06EPQw5+htyIn
	3nvUJbejIHjYtx7NYEqIe1/rVXzea3LRWC/IViYzkjdYk6TM0dFD2vu7Y4GnQTWknLkG6ILoAbYqZ
	rMTj3bT1Ra4SdMrATUoVD8aiAHsROyUekPN8pDOzID/4FvMy5NWEGO1Ftj4NSDBoKoEl0L5Ip7YiS
	cYyPv1qpAbcyp8RDpWuSK4fff5te0AVukRv2g7nucwA6q6rbZeJueOf734RzmaMvmcyaupxOsIaU9
	gycBnfVjjOEoa0ZUAjIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46i0-0004V1-WB; Tue, 18 Feb 2020 17:30:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46ht-0004UU-Bh
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:30:50 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94BFF24656
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 17:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582047048;
 bh=f24u0w8tQoL2c68hjjz5dANYHmhosIHGEhO+odsYIr8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T6Skmi1JCrTd0r3/G9yHqfgDHp7hISOOYSjf1yT/GR5p+tYFwRVbw/iSb5LWEArGF
 mZS9hbe10oSvt3Ig1ua9xVU5nZsJCKy9EBaj34hkBoXOshnXt7negsGf1praGgRXnT
 gII8dIhJZp8j5HtUc/Bcr0QjJfcwsoKEc2tOv7OE=
Received: by mail-qt1-f179.google.com with SMTP id l16so10423136qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 09:30:48 -0800 (PST)
X-Gm-Message-State: APjAAAVA84l4m7pEyhPnDwyxLcViPMztlFeyq7xwy3gwuQRSwthM1jwG
 KhZCjkNbrGb50YcplnNVForv/Aj4DqvGoKUpwQ==
X-Google-Smtp-Source: APXvYqyKj1XrrS2dTlNVqxYWIJKezDSkWldRHC5sXeMDLgXFrTGaR+gYe9EBl+bwCy+V5saC7oDA910oSACmfefPodM=
X-Received: by 2002:ac8:1415:: with SMTP id k21mr18731255qtj.300.1582047047680; 
 Tue, 18 Feb 2020 09:30:47 -0800 (PST)
MIME-Version: 1.0
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-12-robh@kernel.org>
 <20200218172255.GG1133@willie-the-truck>
In-Reply-To: <20200218172255.GG1133@willie-the-truck>
From: Rob Herring <robh@kernel.org>
Date: Tue, 18 Feb 2020 11:30:36 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJtdJmbWtwV00sa_A2tv-jy-JpKWUfco-LU4Dt2pTvHeg@mail.gmail.com>
Message-ID: <CAL_JsqJtdJmbWtwV00sa_A2tv-jy-JpKWUfco-LU4Dt2pTvHeg@mail.gmail.com>
Subject: Re: [RFC PATCH 11/11] dt-bindings: Remove Calxeda platforms bindings
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_093049_440104_95E28DCF 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Langsdorf <mlangsdo@redhat.com>, kvm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "open list:LIBATA SUBSYSTEM \(Serial and Parallel ATA drivers\)"
 <linux-ide@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 soc@kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 Jon Loeliger <jdl@jdl.com>, "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Alexander Graf <graf@amazon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-edac <linux-edac@vger.kernel.org>, Jens Axboe <axboe@kernel.dk>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 netdev <netdev@vger.kernel.org>, Cornelia Huck <cohuck@redhat.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Borislav Petkov <bp@alien8.de>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 11:23 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Feb 18, 2020 at 11:13:21AM -0600, Rob Herring wrote:
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../devicetree/bindings/arm/calxeda.yaml      | 22 ----------
> >  .../devicetree/bindings/arm/calxeda/l2ecc.txt | 15 -------
> >  .../devicetree/bindings/ata/sata_highbank.txt | 44 -------------------
> >  .../devicetree/bindings/clock/calxeda.txt     | 17 -------
> >  .../memory-controllers/calxeda-ddr-ctrlr.txt  | 16 -------
> >  .../devicetree/bindings/net/calxeda-xgmac.txt | 18 --------
> >  .../bindings/phy/calxeda-combophy.txt         | 17 -------
>
> You can drop the "calxeda,smmu-secure-config-access" from the Arm SMMU
> binding doc too (either here, or as part of the other patch).

Glad someone is paying attention. :)

Will do it as part of this patch.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
