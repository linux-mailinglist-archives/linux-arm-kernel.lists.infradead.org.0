Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E828214D182
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 20:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afq/y/vZYfFAoxCN/PRsvTLVpVykRRhG+cxAXH9RFEI=; b=oNike8381JUGGD
	5DmoaaIc88I0KMzUc+igSrZzh26SJl2Ewra++TAHHM68CTR6TxMk3Lzf6A+vVYW/GPmwJoTbZpDT2
	3YjUhJ+lkSWTUxsq7pH4+oOX6Yto4bhCWibknqMEWHaskuSlfXNzSMlLgzhZhZAnVIqpna6I8KZlN
	kbvI8a9rF1bA5nqBg1OpaazqE5jEIqTvEUSnFr4I0sLsKierS9Rh3gH17nj8g5W8cfcRjZxjFxeqs
	o8GK0q0n9nI35CXrWotP4eUeL/uaXjoy53GCF5G+Vb8f73i2bt+JPgyBR+Eiaq3BSO0IlCLk33VRr
	0xoJWdKbElsZqJ1RQM5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwtRL-0004Zh-I7; Wed, 29 Jan 2020 19:55:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwtR6-0004XI-T4
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 19:55:42 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A37912071E;
 Wed, 29 Jan 2020 19:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580327740;
 bh=fwWGUU+gCrYf5nvq9LL1bXiyrYuy3gLMO1C6gOKMELw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NKAFWRMXC5sFkVi9wSEqhp4wSayQhd4uCHnel0IrA3KHEABvPqvWs2Ey8MtKgKCqa
 aLuwMBtpyNXQpdgFqhEB8MENWERbBoZYRvEVoYzSOV1I3SCpPXz2VV9FLKcFVsv7Zx
 AxVfYAHuqsnLp/AhkYSTeZryoQamIpGe5OMTbuWM=
Date: Wed, 29 Jan 2020 19:55:34 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: iio: adc: stm32-adc: convert bindings
 to json-schema
Message-ID: <20200129195534.63a20b21@archlinux>
In-Reply-To: <20200121231309.GA17359@bogus>
References: <1579095941-18648-1-git-send-email-fabrice.gasnier@st.com>
 <20200121231309.GA17359@bogus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_115540_960333_1715C606 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Jan 2020 17:13:09 -0600
Rob Herring <robh@kernel.org> wrote:

> On Wed, 15 Jan 2020 14:45:41 +0100, Fabrice Gasnier wrote:
> > Convert the STM32 ADC binding to DT schema format using json-schema
> > 
> > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> > ---
> > Changes in V3:
> > - Fix minimum and maximum syntax for uint32-array properties as pointed
> >   out by Rob.
> > - update example to better show this syntax e.g. st,adc-channels = <0 1>;
> > 
> > Changes in V2:
> > - Take almost all of Rob suggestions (removed reg generic description,
> >   added minItems, maxItems, st,max-clk-rate-hz range, drop some pipes,
> >   simplify clock-names, remove unneeded allOfs)
> > - For now, keep all in one file despite there are lots of if/thens in the
> >   bindings
> > ---
> >  .../devicetree/bindings/iio/adc/st,stm32-adc.txt   | 149 -------
> >  .../devicetree/bindings/iio/adc/st,stm32-adc.yaml  | 458 +++++++++++++++++++++
> >  2 files changed, 458 insertions(+), 149 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
> >  create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
> >   
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
