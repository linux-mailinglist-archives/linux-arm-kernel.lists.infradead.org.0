Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE239DAF16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZT0iPHrg1b1Ao48zqDht3vAwqMbHdwBRwnZz91RLHQ=; b=RLasVpBYEV/NDS
	wgx8HbTAXeHBFDV65/a2D+PpwsUx0C2LKhesDZj4Hr286zkQj5hzdHFmjyab6qCu5r911Q1eM1a9b
	uE7LZG6Ryv2t0ysY8YxtSeesB9DKjj+75tyuPD2a+VstEJaHMK+T6dCC9KXfhYTeaC+JlZFo41aNe
	42PL8rjYvx7CTjvTyrfe+s3sokwFyb6hg0yrvsdohvZKZhP/ZGS8qFQ1LQMDqOu4V9A/21ha+/Oab
	B7ASwDVm2TLofe4c16UrI0xvk5BKDPRUFvlstCsykCmmO/DGzrN63xf+PfNMf4LQ9NilahwM3UrD1
	XBABRf5O1FeAWfJZK8Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6O5-0001md-5C; Thu, 17 Oct 2019 14:04:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6Nv-0001lN-Od
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:04:13 +0000
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com
 [209.85.219.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B97821A4C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571321048;
 bh=Q+CIbW5hWN6LU9dHP1eWy5eKT4TsIQ0X62levLVmljg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=B3STYhDzZ4yKr8riMTRMxdXQ18ObBJlcjzutrorC5ZT6vGzaADCEN3oTnBA962ooX
 RJ0Dfvgi2HxIEflMVaNQ33N2DhCDnOI23So8VfH1iS5DQW5p3Umhe0CwIJVl0hnlTX
 GZSuTcMxvr3TtpzFXPtsycB2zTUR7B66JewywZ/o=
Received: by mail-yb1-f177.google.com with SMTP id q143so716019ybg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 07:04:08 -0700 (PDT)
X-Gm-Message-State: APjAAAXYCc8YkGtORDdih+6FviId4GE4M38NjCehog//kZm8Nn4Z6Jmy
 Xu8KaUpZ/qVXiyjC5uq64iUvvU88Arya9UPclQ==
X-Google-Smtp-Source: APXvYqzYYUwsLXd2V5tk8mtnPoKQ8x+6MZmaA0AJXKDmtcnA6M7HsmYniLbbc+lpFZSkPNZkHf/TXCYoC1rvAZLN5TU=
X-Received: by 2002:a25:3ce:: with SMTP id 197mr2185522ybd.255.1571321047509; 
 Thu, 17 Oct 2019 07:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-8-peter.ujfalusi@ti.com>
 <20191010175232.GA24556@bogus> <ef07299b-eb43-d582-adb8-46f46681f9a5@ti.com>
 <d53f3bd7-d331-33c8-5232-c8f3cc9ac708@ti.com>
In-Reply-To: <d53f3bd7-d331-33c8-5232-c8f3cc9ac708@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 17 Oct 2019 09:03:55 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKWVLMa=AJ+SNHjMRFpCk6cM=UPBgmmHVonOQ03a_zxXQ@mail.gmail.com>
Message-ID: <CAL_JsqKWVLMa=AJ+SNHjMRFpCk6cM=UPBgmmHVonOQ03a_zxXQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/14] dt-bindings: dma: ti: Add document for K3 UDMA
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_070411_845611_F45AF7C1 
X-CRM114-Status: GOOD (  24.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Vinod <vkoul@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 12:29 PM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
>
> Rob,
>
> On 10/11/19 10:30 AM, Peter Ujfalusi wrote:
> >
> > I have already moved the TR vs Packet mode channel selection, which does
> > make sense as it was Linux's choice to use TR for certain cases.
> >
> > If I move these to code then we need to have big tables
> > struct psil_config am654_psil[32767] = {};
> > struct psil_config j721e_psil[32767] = {};
>
> After thinking about this a bit more, I think we can move all the PSI-L
> endpoint configuration to the kernel as not all the 32767 threads are
> actually in use. Sure it is going to be some amount of static data in
> the kernel, but it is an acceptable compromise.
>
> The DMA binding can look like this:
>
> dmas = <&main_udmap 0xc400>,
>        <&main_udmap 0x4400>;
> dma-names = "tx", "rx";
>
> or
> dmas = <&main_udmap 0x4400 UDMA_DIR_TX>,
>        <&main_udmap 0x4400 UDMA_DIR_RX>;
> dma-names = "tx", "rx";
>
> If I keep the direction.
> 0xc400 is destination ID, which is 0x4400 | 0x8000 as per PSI-L
> specification.
> In the TRM only the source threads can be found as a map (thread IDs <
> 0x7fff), but the binding document can cover this.
>
> This way we don't need another dtsi file and I can create the map in the
> kernel.
>
> This will hide some details of the HW from DT, but since the PSI-L
> thread configuration is static in hardware I believe it is acceptable.
>
> However we still have uncovered features in the binding or in code, like
> a case when the RX does not have access to the DMA channel, only flows.
> Not sure if I should reserve the direction parameter as an indication to
> this or find other way.
> Basically we communicate on the given PSI-L thread without having a DMA
> channel as other core is owning the channel.
>
> What do you think?

Seems like a reasonable solution though I don't really follow the last issue.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
