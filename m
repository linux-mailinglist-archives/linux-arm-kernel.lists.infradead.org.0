Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496DF10D6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 21:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7hyR3u5+/CDf5JIAXlvEayRqhG/zupksoSs1M1k8nM=; b=F7Y3OQb6mvIKCM
	gzbXDCSVIPKqGAh2hRBeHOV0QL4PAi2wIiSz9GVzt2TKn/l2JlDfZhvOHeNtW0QjHa0PnpjQ1kOkE
	jC9pQvTkdfJVUV+M9GpmUx//ToeV+APAOKtR4t3UmdtfbkG6Ad6oLYEXvfwZ2SFF8SdLV543KiLAR
	kNwjPyy8bYjCVlFAJhC9CFc0cepjXxLAE2QFH7l1/cyK3/DhFIB+iP7kasI/dsoTw4MiidEP54/hc
	7B/e9oxw8/z74MoHLNXfeSjmHBJHJhzC4rhKmt1La/w21BbR1EkvUjCUXgP/2+VxfpY/81heJAiLg
	tRI7wLPeQBqnx2Cyy/Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvCr-0003Dd-Pl; Wed, 01 May 2019 19:47:53 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvCf-000364-DC
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 19:47:44 +0000
Received: by mail-oi1-f196.google.com with SMTP id t70so9067918oif.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 12:47:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/rP/lNM5/74azub9ypQhSMTgulpgACEtFJzuhj9hr+M=;
 b=cz7ONPdd69tHd+E5Lw/2YcaeLtsGgM5xUwL7V+bVf7cRrzqcV1seS9O75HiffzbYTj
 CnPbz+c061t0g/9/r/U9gLRilLYLocSBqiy7JqyDqAHAT6msYbVbbJrALys7GxGeJQ9R
 0+TFCdkK7ivMmU9dxDcNH9VFwuws9/e20Ml62KPgk4DmcABUdUblN3RfWzff7Be37Eww
 mM5G1ZObNRnTuFPe4Le94cECZgGthmfBylM9tqFItIsgSZUclzmIh7oePbptwAc1U8iN
 GAhkgSyfOBWYeN2fIAivIZJwTM33+FMpUeLESjiu3Qoi1VTuh52gC6lxPKkDszuCJaBj
 +5EA==
X-Gm-Message-State: APjAAAXER0mC/dLVcjRhRR9C/7GTfIS4WgZHb81xlH1NPMBSGDW4F67E
 gqCf92C7n1x+CzriE2ocjA==
X-Google-Smtp-Source: APXvYqzKu2OdM8V4p7AhuWx35gRXw+/3vWvjzzWmgsp3fZyd5zjaR7rA2ALyP2DVqY8d/wCbpqyDOA==
X-Received: by 2002:a05:6808:cd:: with SMTP id t13mr22306oic.66.1556740060253; 
 Wed, 01 May 2019 12:47:40 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s124sm16982906oia.24.2019.05.01.12.47.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 12:47:39 -0700 (PDT)
Date: Wed, 1 May 2019 14:47:38 -0500
From: Rob Herring <robh@kernel.org>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: Re: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
Message-ID: <20190501194738.GA1441@bogus>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-2-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556402706-176271-2-git-send-email-dragan.cvetic@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_124741_662622_53A5B93C 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, Derek Kiernan <derek.kiernan@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 11:04:55PM +0100, Dragan Cvetic wrote:
> Add the Soft Decision Forward Error Correction (SDFEC) Engine
> bindings which is available for the Zynq UltraScale+ RFSoC
> FPGA's.
> 
> Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> ---
>  .../devicetree/bindings/misc/xlnx,sd-fec.txt       | 58 ++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> 
> diff --git a/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt b/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> new file mode 100644
> index 0000000..425b6a6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> @@ -0,0 +1,58 @@
> +* Xilinx SDFEC(16nm) IP *
> +
> +The Soft Decision Forward Error Correction (SDFEC) Engine is a Hard IP block
> +which provides high-throughput LDPC and Turbo Code implementations.
> +The LDPC decode & encode functionality is capable of covering a range of
> +customer specified Quasi-cyclic (QC) codes. The Turbo decode functionality
> +principally covers codes used by LTE. The FEC Engine offers significant
> +power and area savings versus implementations done in the FPGA fabric.
> +
> +
> +Required properties:
> +- compatible: Must be "xlnx,sd-fec-1.1"
> +- clock-names : List of input clock names from the following:
> +    - "core_clk", Main processing clock for processing core (required)
> +    - "s_axi_aclk", AXI4-Lite memory-mapped slave interface clock (required)
> +    - "s_axis_din_aclk", DIN AXI4-Stream Slave interface clock (optional)
> +    - "s_axis_din_words-aclk", DIN_WORDS AXI4-Stream Slave interface clock (optional)
> +    - "s_axis_ctrl_aclk",  Control input AXI4-Stream Slave interface clock (optional)
> +    - "m_axis_dout_aclk", DOUT AXI4-Stream Master interface clock (optional)
> +    - "m_axis_dout_words_aclk", DOUT_WORDS AXI4-Stream Master interface clock (optional)
> +    - "m_axis_status_aclk", Status output AXI4-Stream Master interface clock (optional)
> +- clocks : Clock phandles (see clock_bindings.txt for details).
> +- reg: Should contain Xilinx SDFEC 16nm Hardened IP block registers
> +  location and length.
> +- xlnx,sdfec-code : Should contain "ldpc" or "turbo" to describe the codes
> +  being used.
> +- xlnx,sdfec-din-words : A value 0 indicates that the DIN_WORDS interface is
> +  driven with a fixed value and is not present on the device, a value of 1
> +  configures the DIN_WORDS to be block based, while a value of 2 configures the
> +  DIN_WORDS input to be supplied for each AXI transaction.
> +- xlnx,sdfec-din-width : Configures the DIN AXI stream where a value of 1
> +  configures a width of "1x128b", 2 a width of "2x128b" and 4 configures a width
> +  of "4x128b".

Perhaps append with '-bits' and make the values 0, 128, 256, 512.

> +- xlnx,sdfec-dout-words : A value 0 indicates that the DOUT_WORDS interface is
> +  driven with a fixed value and is not present on the device, a value of 1
> +  configures the DOUT_WORDS to be block based, while a value of 2 configures the
> +  DOUT_WORDS input to be supplied for each AXI transaction.
> +- xlnx,sdfec-dout-width : Configures the DOUT AXI stream where a value of 1
> +  configures a width of "1x128b", 2 a width of "2x128b" and 4 configures a width
> +  of "4x128b".

Same here.

> +Optional properties:
> +- interrupts: should contain SDFEC interrupt number

The interrupt may not be wired?

> +
> +Example
> +---------------------------------------
> +	sd_fec_0: sd-fec@a0040000 {
> +		compatible = "xlnx,sd-fec-1.1";
> +		clock-names = "core_clk","s_axi_aclk","s_axis_ctrl_aclk","s_axis_din_aclk","m_axis_status_aclk","m_axis_dout_aclk";
> +		clocks = <&misc_clk_2>,<&misc_clk_0>,<&misc_clk_1>,<&misc_clk_1>,<&misc_clk_1>, <&misc_clk_1>;
> +		reg = <0x0 0xa0040000 0x0 0x40000>;
> +		interrupt-parent = <&gic>;
> +		interrupts = <0 89 4>;
> +		xlnx,sdfec-code = "ldpc";
> +		xlnx,sdfec-din-words = <0>;
> +		xlnx,sdfec-din-width = <2>;
> +		xlnx,sdfec-dout-words = <0>;
> +		xlnx,sdfec-dout-width = <1>;
> +	};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
