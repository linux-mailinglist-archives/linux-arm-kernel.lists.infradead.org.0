Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D3D19E573
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 16:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHbLcBuGpFfERkyDEuGQAV1z8HPJDL6enPttaylXrEo=; b=Rf6IYrqB7Xmpzl
	ywoVS9Fjv/qNb/XGyRF7Ngt/SYq0oSE7j/92vcqutaChzbar9hWtm77XCL7l+MIZUneUz6dwfoAl4
	wQ7tlVxloBWjIf0XbnyHGxyb0yVSoM6zZM2pkbqLVrhufv9a1lFYbRoVwaebAEzB4ZdhDTgSVG26n
	lV/MZkoFCwGr92ZL+6nWyV2kH9mFhS7MjZ2Dh9Ofgf22x88lEeq5MJobJ0kuJ5j+eW+uedigBHjIV
	YcsEOuDXspX43l6LC89jXiDcYhzoZT+kGtDSjlDmbp+fviBDVgoQ3r7CXvw5+qP5riDPUDz+5ILVn
	7T1Jn6uuMoJ6mAAEQPfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKjbE-0000Im-Gc; Sat, 04 Apr 2020 14:16:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKjb8-0000IQ-Ox
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 14:16:35 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C91A0206C3;
 Sat,  4 Apr 2020 14:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586009794;
 bh=jYh8ojEfBjWhcionJm7bLgdtcMaLtTKw3IPbO1FXFv4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RqPr8qa75t3W6KS03U5hHpDlF4XP2X6lqAjJCAFU6vIZPD1LrQ++H9BcAGdjGxrPr
 DUkJVaLa15/fM9zucspy/AP1uQhw2WVq2t6qELZKy1M8Dge7qhAnEHiD845ewQntin
 poTmrHUrLuGuNa17buSgeJ0Jyk7IBoylskKvq704=
Date: Sat, 4 Apr 2020 15:16:28 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: iio: dac: stm32-dac: convert bindings
 to json-schema
Message-ID: <20200404151628.52576e43@archlinux>
In-Reply-To: <20200330232040.GA16570@bogus>
References: <1584639983-31098-1-git-send-email-fabrice.gasnier@st.com>
 <20200330232040.GA16570@bogus>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_071634_828929_6C1ED53E 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 17:20:40 -0600
Rob Herring <robh@kernel.org> wrote:

> On Thu, 19 Mar 2020 18:46:23 +0100, Fabrice Gasnier wrote:
> > Convert the STM32 DAC binding to DT schema format using json-schema
> > 
> > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> > ---
> > Changes in v2:
> > - Fix id relative path/filename as detected by Rob's bot
> > ---
> >  .../devicetree/bindings/iio/dac/st,stm32-dac.txt   |  63 ------------
> >  .../devicetree/bindings/iio/dac/st,stm32-dac.yaml  | 110 +++++++++++++++++++++
> >  2 files changed, 110 insertions(+), 63 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.txt
> >  create mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml
> >   
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
Applied to the togreg branch of iio.git and pushed out as testing for the
autobuilders to poke at it.

Thanks,

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
