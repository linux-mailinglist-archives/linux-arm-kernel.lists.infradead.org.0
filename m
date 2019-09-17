Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1038B492A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 10:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WOsPqrTRTAmSLq8zpCKFyHVFitpBKwACL0wo6qws05A=; b=c+T5NiarXzZ4Xx
	hXDZxIgXdqsoZW33oK10z4ZKtVPkr/8W3fibo6rF/uIcnChiewtMtlCZZWKLz7uVVCPMId1H00lyN
	xLcufjsk6l2D03Hr0XkV+Fd+wPLWCUPLyDTUEEQf4Xm9odriZvaibRelko4KwQS5NHMMQPc9tGVdE
	k9BS1PamZ8ysYuF7pxmEU2eWjIgiJe8RxqcuBgdP54v1GFWrqrUvLrufRkKx0ASf00s3Khhxh9I2u
	cXOQ981axs+Ip1+Ia44hfGroEwcwxlcLv1PUhs9WUsqG/4zPF7glp8xxklCke26uy9qY7/pxE8OUV
	n75g8h1AqkZ3jqqe3zYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8iU-00071O-Gm; Tue, 17 Sep 2019 08:20:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8i8-0006zs-6b
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 08:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Fth2nxXRWyjF9gPjPNW9zvAWjkUJUEuCZC+A1qY0Vo=; b=YKCdabtXYu1Ki0UHQEzU93mIt
 l6NYw4ccUxF+eDRDs1l1N/RKfSeH7jpYMQhvGz8ycpkbJVWY/BU2DBTV4ryd2gIQmmCko9G87raI3
 Olux7lJqMro1wum3sHCN1xFQNNp4VwwCcPKpLFcy7hrFMXJD2G6D3W4Aw81oegfB8bdUpFFTlNBCx
 zgb2Sl0nd0R33H376zY8yrMrb/SVS5aq4dJFBcFHPIJC+6885fKoY/wBp6HSt4FrvXMZTehHUV8Zl
 Jj1D6/LjUrnBXW8hYjhU1/RaMqLFB8DynPOVEWFWpwTpt8qoKm9GEUj2OKUahq9BZ6f1sU1BJwH7v
 5XQVe4J5A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44678)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iA8hx-0000Mm-Lv; Tue, 17 Sep 2019 09:19:33 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iA8hv-00018B-OD; Tue, 17 Sep 2019 09:19:31 +0100
Date: Tue, 17 Sep 2019 09:19:31 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190917081931.GI25745@shell.armlinux.org.uk>
References: <20190916171509.GG25745@shell.armlinux.org.uk>
 <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011945_193744_CE115FB1 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 10:06:12AM +0200, Marc Gonzalez wrote:
> On 16/09/2019 19:15, Russell King - ARM Linux admin wrote:
> 
> > The platform has an iommu, which is in pass-through mode, via
> > arm_smmu.disable_bypass=0.
> 
> Could be 954a03be033c7cef80ddc232e7cbdb17df735663
> "iommu/arm-smmu: Break insecure users by disabling bypass by default"
> 
> Although it had already landed in v5.2

It is not - and the two lines that you quoted above are sufficient
to negate that as a cause.  (Please read the help for the option that
the commit referrs to.)

In fact, with bypass disabled, the SoC fails due to other masters.
That's already been discussed privately between myself and Will
Deacon.

arm_smmu.disable_bypass=0 re-enables bypass mode irrespective of
the default setting in the Kconfig.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
