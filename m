Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E28211230B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 22:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Pg6eN2ZrJFhen6sJjPPk4vQ3/pGlK9JKJWT1Suwcfc=; b=SknaynQKGtYIEJ
	XSN+Z1qR+ECD7IbrL1Cx/iAet6Tkvfre2ZLLy5ZmxYjJdqwyaJHDkqNzr0a/FR77o5gvFSxsMtlfH
	1KpwudygFjdeXsL0/jMxsCd2V9DTiVMIuwLwSqgqWWU5gIZwcEkOX3r+EBEJDYRljbAs1tBxSeRhB
	NXNIDn2BmVRQVJKLxRuZyeBjBlitex9udSdJ039tiSjzwUGaSSjZlk79Vt7YSDNntsKssTCQ0P3vZ
	d7oFqVEGFtTpjmCewnvrBU5RyQkJsZesviA1rZbCs+mDzFU8ac6hjyZqN91aZTdxGuRqKThWLup/l
	IqdMsVhoqDXs4vo1i5JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMI7Y-00015z-BE; Thu, 02 May 2019 20:15:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMI7R-00015D-Gq
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 20:15:51 +0000
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8609D20B7C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 May 2019 20:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556828146;
 bh=zRxoyURQKaIiT7crP80AuPIZsgXFZ/JEMXTtFf2j0Rg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HgR9EGv2AamK+gZAJYsuOyK66VNso2+jrjJ0znjMqgHbUMH8Ya9aP+6ogolNBc1Ox
 OSHm2fsO77nAjn8ZJyeU3ZleOn0vAoYQ/g60xHR8m7rwSlnZ0+VfshIkm9c7x/Aa5o
 n/3FhxDFr+mjjqONXDAaHgy9qIMaVdFDko8SgnLY=
Received: by mail-qk1-f180.google.com with SMTP id d5so2313067qko.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 13:15:46 -0700 (PDT)
X-Gm-Message-State: APjAAAUwbYrXjpdb+fvUIEXwjD8ISuRIc1H9uRdeoNCB14hiInYN2trA
 MvLH6oLYhio/+wy6vdPBcS4RsXrbwpTh2/ZHtA==
X-Google-Smtp-Source: APXvYqw5GzLdFMOydWWcI7Vtz2kWP9mL44UCoBhvg9xM001jIZ9hNWRsOoc9oDvi/bnDFT/mrU5onhhUYKrYHAhsiI8=
X-Received: by 2002:a37:ad14:: with SMTP id f20mr4646875qkm.147.1556828145727; 
 Thu, 02 May 2019 13:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-2-git-send-email-dragan.cvetic@xilinx.com>
 <20190501194738.GA1441@bogus>
 <BL0PR02MB56815DFC139D65D46D5DFF50CB340@BL0PR02MB5681.namprd02.prod.outlook.com>
In-Reply-To: <BL0PR02MB56815DFC139D65D46D5DFF50CB340@BL0PR02MB5681.namprd02.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 2 May 2019 15:15:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLhmtqUdUd8OPdx-390imegzouAJ43JOhYr16w87afS-Q@mail.gmail.com>
Message-ID: <CAL_JsqLhmtqUdUd8OPdx-390imegzouAJ43JOhYr16w87afS-Q@mail.gmail.com>
Subject: Re: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
To: Dragan Cvetic <draganc@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_131549_598773_D18ACEF3 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 6:04 AM Dragan Cvetic <draganc@xilinx.com> wrote:
>
> Hi Rob,
>
> Please find my inline comments below
>
> Thank you
> Dragan
>
> > -----Original Message-----
> > From: Rob Herring [mailto:robh@kernel.org]
> > Sent: Wednesday 1 May 2019 20:48
> > To: Dragan Cvetic <draganc@xilinx.com>
> > Cc: arnd@arndb.de; gregkh@linuxfoundation.org; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org;
> > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > Subject: Re: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
> >
> > On Sat, Apr 27, 2019 at 11:04:55PM +0100, Dragan Cvetic wrote:
> > > Add the Soft Decision Forward Error Correction (SDFEC) Engine
> > > bindings which is available for the Zynq UltraScale+ RFSoC
> > > FPGA's.
> > >
> > > Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > > Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> > > ---
> > >  .../devicetree/bindings/misc/xlnx,sd-fec.txt       | 58 ++++++++++++++++++++++
> > >  1 file changed, 58 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt b/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> > > new file mode 100644
> > > index 0000000..425b6a6
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> > > @@ -0,0 +1,58 @@
> > > +* Xilinx SDFEC(16nm) IP *
> > > +
> > > +The Soft Decision Forward Error Correction (SDFEC) Engine is a Hard IP block
> > > +which provides high-throughput LDPC and Turbo Code implementations.
> > > +The LDPC decode & encode functionality is capable of covering a range of
> > > +customer specified Quasi-cyclic (QC) codes. The Turbo decode functionality
> > > +principally covers codes used by LTE. The FEC Engine offers significant
> > > +power and area savings versus implementations done in the FPGA fabric.
> > > +
> > > +
> > > +Required properties:
> > > +- compatible: Must be "xlnx,sd-fec-1.1"
> > > +- clock-names : List of input clock names from the following:
> > > +    - "core_clk", Main processing clock for processing core (required)
> > > +    - "s_axi_aclk", AXI4-Lite memory-mapped slave interface clock (required)
> > > +    - "s_axis_din_aclk", DIN AXI4-Stream Slave interface clock (optional)
> > > +    - "s_axis_din_words-aclk", DIN_WORDS AXI4-Stream Slave interface clock (optional)
> > > +    - "s_axis_ctrl_aclk",  Control input AXI4-Stream Slave interface clock (optional)
> > > +    - "m_axis_dout_aclk", DOUT AXI4-Stream Master interface clock (optional)
> > > +    - "m_axis_dout_words_aclk", DOUT_WORDS AXI4-Stream Master interface clock (optional)
> > > +    - "m_axis_status_aclk", Status output AXI4-Stream Master interface clock (optional)
> > > +- clocks : Clock phandles (see clock_bindings.txt for details).
> > > +- reg: Should contain Xilinx SDFEC 16nm Hardened IP block registers
> > > +  location and length.
> > > +- xlnx,sdfec-code : Should contain "ldpc" or "turbo" to describe the codes
> > > +  being used.
> > > +- xlnx,sdfec-din-words : A value 0 indicates that the DIN_WORDS interface is
> > > +  driven with a fixed value and is not present on the device, a value of 1
> > > +  configures the DIN_WORDS to be block based, while a value of 2 configures the
> > > +  DIN_WORDS input to be supplied for each AXI transaction.
> > > +- xlnx,sdfec-din-width : Configures the DIN AXI stream where a value of 1
> > > +  configures a width of "1x128b", 2 a width of "2x128b" and 4 configures a width
> > > +  of "4x128b".
> >
> > Perhaps append with '-bits' and make the values 0, 128, 256, 512.
> >
>
>
> The suggested will require the extra code for converting from 128,256,512  to 1,2,4, as HW is configured with 1, 2 and 4.

A simple divide by 128.

We generally prefer DT to use real units rather than register values.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
