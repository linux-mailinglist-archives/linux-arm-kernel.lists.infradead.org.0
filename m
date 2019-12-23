Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B91F1299B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 19:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/QDSdHHgzfnXfxYfNi5x/A22YN8uINx1qaGtqyhYcg=; b=mGWV6EKo7lz5+y
	djaVP25hhh/s3wzYhKawtiK7oLs8sLB2j54dBWnKq5LJz94G/A5PkQFoil/V3vM4QMna97o2H4sZX
	1Sr8JHvRgfzX3XSytDFCAjPatPtbZ/CmfB9a++ha+4m4A8PbhRddaAG1W0ZXG/VbO6xvmSSkWrr8t
	zpdkYHRHVL83nihvg9OM9B3jZF2NCGbquJtJINfosAoiOImGdH+ZHWhP3+SRoYpg/Gyzd86JTHZGT
	wrvcFhF8GpfrqAXULfXTy8d1oY1vcdhSFIJCEvepY/ToG9HgzlmSTOUfsqhyZP3fShDxocUKb1rGI
	IzP/Ql2fpN9wtTBLIdJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijS29-0001cM-Vx; Mon, 23 Dec 2019 18:02:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijS1r-0001bP-Me
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 18:02:04 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2627420643;
 Mon, 23 Dec 2019 18:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577124122;
 bh=MLg4g5Ofa/wkZ1A5nGhyBam3JNTaXHswT+qU5Xu90d0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DDBWmD15tYJKGCh8E1rW4nr88u8YLoROxnQz5Hv9+/1+xNjhYJjDOn83dhC0u4ZBs
 AYk2iSXaNzDmzIaq9FQ7GEgiIVseqIC2eL8oWQnldtz7b9MFCYkFdyKc++VLcg0qFO
 FiFmvLk4Iu2v3KVty5JNpy2O76CjLGGcWbEKCmB0=
Date: Mon, 23 Dec 2019 18:01:57 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: iio: adc: convert sd modulator to
 json-schema
Message-ID: <20191223180157.49b971f0@archlinux>
In-Reply-To: <20191218223032.GA8641@bogus>
References: <20191206100058.26767-1-olivier.moysan@st.com>
 <20191218223032.GA8641@bogus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_100203_763769_41AC3BBD 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 Olivier Moysan <olivier.moysan@st.com>, pmeerw@pmeerw.net,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 16:30:32 -0600
Rob Herring <robh@kernel.org> wrote:

> On Fri, 6 Dec 2019 11:00:58 +0100, Olivier Moysan wrote:
> > Convert the sigma delta modulator bindings
> > to DT schema format using json-schema.
> > 
> > Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> > ---
> > Changes since v1:
> > - add additionalProperties
> > - remove unit-address in example
> > ---
> >  .../iio/adc/sigma-delta-modulator.txt         | 13 -------
> >  .../iio/adc/sigma-delta-modulator.yaml        | 37 +++++++++++++++++++
> >  2 files changed, 37 insertions(+), 13 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt
> >  create mode 100644 Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
> >   
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
Applied to the togreg branch of iio.git and pushed out as testing for the
autobuilders to play with it.

Thanks,

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
