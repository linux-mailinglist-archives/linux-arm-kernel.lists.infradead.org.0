Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C152D96E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fP/vApJlavzKnPuD8pE+Qm/O8VcuHhThHjLnUt+Vm6A=; b=JstH5hCJAhKyIX
	XODmTtLOW7C1e4eM9139ua28GtfqSuilg4nmLkk4K/5m2wHmu17UvirwxpKL36gjs/wrrAlx/ePrQ
	pF26/EXT+3HOHCu8Qg2pq9Iw2H5EtHR64tecdfaiAEfyhXy46JwzCTGIWbEca26Ed5iRJRfbcHdc1
	5LQ3cPM7pauAOFU7rLTYV333XyHPhc4K/N+z7rTA33+UZFQxceQ7ghsp5ERl93LuM4OcvzkpfTa0n
	NzHVihQuyHDnJi+g/mFVoaU6U/tAxJBOmxDGpR8rOqSWkoh8fKr6yo1ENQGMN0QcdU9EFRvYWjnCl
	ma7nEF6EeUKm2CU2Qvnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKm0s-0004XK-KQ; Wed, 16 Oct 2019 16:19:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKm0h-0004WO-Gr
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:18:52 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6BE621D7C
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 16:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571242731;
 bh=4COz89P1zpzTlupxFFQQGh+6woY2hW0X2gsI1bc8HjQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xwM3DTxgTRrC9GLPoyMIVyLVBPvVCnMIYci5oDwuIfmHMX1amrkAZRVTHxCv2wXtc
 iN9BRwPh3p5AIcva79D+7Ov7/Jet8aumvERgrxkZ9IfryBELEq9tQ6GTaGWHZTJSpO
 FvlLYzakgxBw3HbEL7engUbcO4kAnu7OK4vX8AWM=
Received: by mail-lj1-f182.google.com with SMTP id 7so24644603ljw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:18:50 -0700 (PDT)
X-Gm-Message-State: APjAAAVMUVNeKQeP05/iZCKw1xQlyU1VJ/FLzauvTwJFBIhgNyAbbJaY
 F6YlyJJ2xOAGAyrJKp1+YRxtaQwXJm6HUZu3fXA=
X-Google-Smtp-Source: APXvYqzu0RRV4q5pmM2b1sIMqFIXCTIwcolo7Dbv37lXTeqNkqpQA3nPxoPmIeAXJmVDW5spOsl8eEkJOiSX9IsOuoQ=
X-Received: by 2002:a2e:9ec2:: with SMTP id h2mr23068539ljk.85.1571242729071; 
 Wed, 16 Oct 2019 09:18:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191002164316.14905-1-krzk@kernel.org>
 <20191002164316.14905-6-krzk@kernel.org>
 <20191014113240.GN12262@dragon>
In-Reply-To: <20191014113240.GN12262@dragon>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 16 Oct 2019 19:18:34 +0300
X-Gmail-Original-Message-ID: <CAJKOXPccVj3KJTzzxvQpzFeBYHX1onoh+DfApr8AA-QxvPzWLg@mail.gmail.com>
Message-ID: <CAJKOXPccVj3KJTzzxvQpzFeBYHX1onoh+DfApr8AA-QxvPzWLg@mail.gmail.com>
Subject: Re: [PATCH v3 06/10] ARM: dts: imx: Rename "iram" node to "sram"
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091851_582485_1B76A1E6 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Tony Lindgren <tony@atomide.com>, Thierry Reding <thierry.reding@gmail.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, linux-tegra@vger.kernel.org,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 at 14:33, Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Wed, Oct 02, 2019 at 06:43:12PM +0200, Krzysztof Kozlowski wrote:
> > The device node name should reflect generic class of a device so rename
> > the "iram" node to "sram".  This will be also in sync with upcoming DT
> > schema.  No functional change.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> Acked-by: Shawn Guo <shawnguo@kernel.org>
>
> Let me know if you want it go through IMX tree.

Yes please, I think each of these should go through soc maintainers.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
