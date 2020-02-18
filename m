Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEA8162D04
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:34:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nywuRiYI1p21WI7Wrl8cwfO0jSP9v7driixZX3WVzF4=; b=iPoHrPRqVRhjAK
	b9zzbJWshSZbFaN5Uh/HslQuBm0gRy/sbKCDCsWIFJMa4N2P/pCu563B82pfez5cWWF/fMSGxK64s
	j9LV4glwOBsn8aaWzuO76gpWNihODg8iA2g4RSqP9ntVAAOu9GbeUZ7Lrb8DC1xloTNnTW60ihBU0
	bwXFC9DONAni4ndH4d4jlvX1zKjr916WfEeRoh9IdOTOrBC+VlX65RU7/maz4PXCyEyaMn2W3a46v
	j/JQ6laTdTMr+NS7/Ju8y209CK7attdlC4S28Y3UMHMm328P9g3wVyHgAf1J1iRBpMpDeSMgSt4zI
	WUZCohXK8GdZEnO7FoxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46kt-00067Y-H4; Tue, 18 Feb 2020 17:33:55 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46kk-00066D-AX
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:33:48 +0000
Received: from zn.tnic (p200300EC2F0C1F0014C3F76BBACA8B76.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0c:1f00:14c3:f76b:baca:8b76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 97C341EC0CE8;
 Tue, 18 Feb 2020 18:33:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1582047219;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=RQeBvXI621OpNJABJKZKVWpEMPbJNSTe+fCxB2Fm/Vo=;
 b=NVQltzJcnErUiTBnCebDnivFmAdUN1V2AohuWTMn272uhHsVO5AZK/O6ZHJRkwej6+Pjtj
 lcIebZUtEpSiNP6fNloDnVP8/5nrBYHAr+mmwFcbARu9bY65pbsJKv6ZG0jSJDQJnQOq9J
 qrcXwykORCUc99KOOqWRygFDieMasww=
Date: Tue, 18 Feb 2020 18:33:40 +0100
From: Borislav Petkov <bp@alien8.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 05/11] EDAC: Remove Calxeda drivers
Message-ID: <20200218173339.GL14449@zn.tnic>
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-6-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218171321.30990-6-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_093346_515523_A0A42929 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Langsdorf <mlangsdo@redhat.com>, kvm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-ide@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org, soc@kernel.org,
 Joerg Roedel <joro@8bytes.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 linux-pm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Alexander Graf <graf@amazon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Matthias Brugger <mbrugger@suse.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 11:13:15AM -0600, Rob Herring wrote:
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Tony Luck <tony.luck@intel.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Robert Richter <rrichter@marvell.com>
> Cc: linux-edac@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Do not apply yet.
> 
>  MAINTAINERS                     |   6 -
>  drivers/edac/Kconfig            |  14 --
>  drivers/edac/Makefile           |   3 -
>  drivers/edac/highbank_l2_edac.c | 142 -----------------
>  drivers/edac/highbank_mc_edac.c | 272 --------------------------------
>  5 files changed, 437 deletions(-)
>  delete mode 100644 drivers/edac/highbank_l2_edac.c
>  delete mode 100644 drivers/edac/highbank_mc_edac.c

I'd obviously take patches like that any time of the week so lemme know
when... :-)

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
