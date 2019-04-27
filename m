Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F4CB34B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 14:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bM/rPcTZPNooAm8t0G/PPWVWTnPzLj3Awn6W+BAKb3Y=; b=O1B9l/ew8nmBWO
	HS8TFnSk8JcVWXe2s9U6ghN+q9417ggwllVRMZPmbcU7Ea1LRmFn4kS7edCMYleR9EkzYbJGdHUwg
	23HI9lmxGsZczVJWLm7fzX1/tcZ9WYm1oR8Hhb70Ix4Zmmd8F/sn1cg3TbYz+yVHvKOB+v2pcMroJ
	s+HMJfegZoJajyUhUrorwPDXK/AshIySd7MnNObSTdZfyWxn4soA//7dpgl4kwf6WEZj/J/GmXDKe
	+yD0dOuVtWwEX1748qE8NXv3JV4LIORcZwBLVz5r8T2WW7/XFgm/uI2+zhCRRxxji4iRY6UlN1+xa
	krtEqhPEsX3tEAt2C7Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKM50-0008KM-N3; Sat, 27 Apr 2019 12:05:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKM4s-0008Ji-Al
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 12:05:12 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DDC42087F;
 Sat, 27 Apr 2019 12:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556366709;
 bh=oAHaAhoZlU7Ls7SSxem4adPJlZlmqEkOxmiIQLImcjg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y/Em9WZzL5XOBdZ33LTaddLnTc0PFizG4InZtdAogsU8TrpSXhiqCLGIs82PgU21j
 POsIyN9eXyCNZvqeFN4w5yfMpjTftanqwO8trC9OQ7qWWi9wNUdzaAWF1+GQ+EoUNF
 zzWFSgkQessxYM7tGpF4Cix3SdxNojN+jvmzc8Dg=
Date: Sat, 27 Apr 2019 13:05:00 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 1/3] dt-bindings: iio: adc: Add Xilinx AMS binding
 documentation
Message-ID: <20190427130500.7b695b33@archlinux>
In-Reply-To: <20190426193309.GA9084@bogus>
References: <1555943870-15353-1-git-send-email-manish.narani@xilinx.com>
 <1555943870-15353-2-git-send-email-manish.narani@xilinx.com>
 <20190426193309.GA9084@bogus>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_050510_411451_04B4231E 
X-CRM114-Status: GOOD (  29.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, charles-antoine.couret@essensium.com,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org, xc-racer2@live.ca,
 stefan@agner.ch, max.krummenacher@toradex.com, lee.jones@linaro.org,
 tmaimon77@gmail.com, marcus.folkesson@gmail.com, lars@metafoo.de,
 contact@artur-rojek.eu, ricardo@ribalda.com, michal.simek@xilinx.com,
 geert@linux-m68k.org, stefan.popa@analog.com, devicetree@vger.kernel.org,
 smohanad@codeaurora.org, dmurphy@ti.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, amit.kucheria@linaro.org, dinguyen@kernel.org,
 Jisheng.Zhang@synaptics.com, Manish Narani <manish.narani@xilinx.com>,
 knaack.h@gmx.de, olof@lixom.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 26 Apr 2019 14:33:09 -0500
Rob Herring <robh@kernel.org> wrote:

> On Mon, Apr 22, 2019 at 08:07:48PM +0530, Manish Narani wrote:
> > Xilinx AMS have several ADC channels that can be used for measurement of
> > different voltages and temperatures. Document the same in the bindings.
> > 
> > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > ---
> >  .../devicetree/bindings/iio/adc/xilinx-ams.txt     | 183 +++++++++++++++++++++
> >  1 file changed, 183 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iio/adc/xilinx-ams.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/adc/xilinx-ams.txt b/Documentation/devicetree/bindings/iio/adc/xilinx-ams.txt
> > new file mode 100644
> > index 0000000..cacb6d4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/adc/xilinx-ams.txt
> > @@ -0,0 +1,183 @@
> > +Xilinx AMS controller
> > +`````````````````````
> > +The AMS (Analog Monitoring System) includes an ADC as well as on-chip sensors
> > +that can be used to sample external voltages and monitor on-die operating
> > +conditions, such as temperature and supply voltage levels.
> > +The AMS has two SYSMON blocks which are PL (Programmable Logic) SYSMON and
> > +PS (Processing System) SYSMON.
> > +All designs should have AMS registers, but PS and PL are optional. The
> > +AMS controller can work with only PS, only PL and both PS and PL
> > +configurations. Please specify registers according to your design. Devicetree
> > +should always have AMS module property. Providing PS & PL module is optional.
> > +
> > +Required properties:
> > +	- compatible: Should be "xlnx,zynqmp-ams"
> > +	- reg: Should specify AMS register space
> > +	- interrupts: Interrupt number for the AMS control interface
> > +	- interrupt-names: Interrupt name, must be "ams-irq"
> > +	- clocks: Should contain a clock specifier for the device
> > +	- ranges: keep the property empty to map child address space
> > +	          (for PS and/or PL) nodes 1:1 onto the parent address
> > +	          space  
> 
> empty is not what you've done in the example. Non-empty is preferred.
> 
> > +
> > +	AMS sub-nodes:
> > +		- ams-ps : Used as PS-SYSMON node
> > +		- ams-pl : Used as PL-SYSMON node
> > +
> > +
> > +
> > +AMS PS-SYSMON
> > +`````````````
> > +PS (Processing System) SYSMON is memory mapped to PS. This block has built-in
> > +alarm generation logic that is used to interrupt the processor based on
> > +condition set.
> > +
> > +Required properties:
> > +	- compatible: Should be "xlnx,zynqmp-ams-ps"
> > +	- reg: Register space for PS-SYSMON
> > +
> > +
> > +
> > +AMS PL-SYSMON
> > +`````````````
> > +PL-SYSMON is capable of monitoring off chip voltage and temperature. PL-SYSMON
> > +block has DRP, JTAG and I2C interface to enable monitoring from external master.
> > +Out of this interface currently only DRP is supported. This block has alarm
> > +generation logic that is used to interrupt the processor based on condition set.
> > +
> > +Required properties:
> > +	- compatible: Should be "xlnx,zynqmp-ams-pl"
> > +	- reg: Register space for PL-SYSMON
> > +
> > +PL-SYSMON optional sub-nodes:
> > +	- xlnx,ext-channels: List of external channels that are connected to the
> > +	                     AMS PL module.  
> 
> Why not just get rid of this and move 'channel' nodes up a level?
> 
> > +
> > +	  The child nodes of PL-SYSMON represent the external channels which are
> > +	  connected to this Module. If the property is not present
> > +	  no external channels will be assumed to be connected.
> > +
> > +	  Each child node represents one channel and has the following
> > +	  properties:
> > +
> > +	Required properties:
> > +		* reg: Pair of pins the channel is connected to. This value is
> > +		       same as Channel Number for particular channel.
> > +
> > +		    'reg' value		Channel Name
> > +		    -----------		------------
> > +			30		VP/VN
> > +			31		VUSER0
> > +			32		VUSER1
> > +			33		VUSER3
> > +			34		VUSER4
> > +			35		VAUXP[0]/VAUXN[0]
> > +			36		VAUXP[1]/VAUXN[1]
> > +			...
> > +			50		VAUXP[15]/VAUXN[15]
> > +
> > +		Each channel number should only be used at most once. For
> > +		more details on channels, refer to the table given at the end.
> > +
> > +	Optional properties:
> > +		* xlnx,bipolar: If set the channel is used in bipolar
> > +		  mode.  
> 
> I think we have a standard property for this now.
Yes, in the meantime we introduced a standard binding for
child channels, including bipolar.

Documentation/devicetree/bindings/iio/adc/adc.txt

I haven't totally thought through how it maps to this particular device
but from a quick glance, it should be possible.

You will need to be more explicit with the pair of channels, rather
than basically using an enum though.
Have a go and let's see how it looks before concluding if that
binding perhaps needs further extension.

Thanks,

Jonathan


> 
> > +
> > +
> > +Example:
> > +	xilinx_ams: ams@ffa50000 {
> > +		compatible = "xlnx,zynqmp-ams";
> > +		interrupt-parent = <&gic>;
> > +		interrupts = <0 56 4>;
> > +		interrupt-names = "ams-irq";
> > +		reg = <0x0 0xffa50000 0x0 0x800>;
> > +		reg-names = "ams-base";
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		#io-channel-cells = <1>;
> > +		ranges = <0 0 0xffa50800 0x800>;
> > +
> > +		ams_ps: ams-ps@0,0 {  
> 
> unit address should be '0'
> 
> > +			compatible = "xlnx,zynqmp-ams-ps";
> > +			reg = <0 0x400>;
> > +		};
> > +
> > +		ams_pl: ams-pl@1,0 {  
> 
> unit address should be '400'
> 
> > +			compatible = "xlnx,zynqmp-ams-pl";
> > +			reg = <0x400 0x400>;
> > +			xlnx,ext-channels {  
> 
> Needs #address-cells and #size-cells. dtc should complain here.
> 
> > +				channel@30 {
> > +					reg = <30>;
> > +					xlnx,bipolar;
> > +				};
> > +				channel@31 {
> > +					reg = <31>;
> > +				};
> > +				channel@38 {
> > +					reg = <38>;
> > +					xlnx,bipolar;
> > +				};
> > +			};
> > +		};
> > +	};
> > +
> > +
> > +AMS Channel Details
> > +```````````````````
> > +Sysmon Block	|Channel|			Details					|Measurement
> > +		|Number	|							 	|Type
> > +---------------------------------------------------------------------------------------------------------
> > +AMS CTRL	|0	|System PLLs voltage measurement, VCC_PSPLL.			|Voltage
> > +		|1	|Battery voltage measurement, VCC_PSBATT.			|Voltage
> > +		|2	|PL Internal voltage measurement, VCCINT.			|Voltage
> > +		|3	|Block RAM voltage measurement, VCCBRAM.			|Voltage
> > +		|4	|PL Aux voltage measurement, VCCAUX.				|Voltage
> > +		|5	|Voltage measurement for six DDR I/O PLLs, VCC_PSDDR_PLL.	|Voltage
> > +		|6	|VCC_PSINTFP_DDR voltage measurement.				|Voltage
> > +---------------------------------------------------------------------------------------------------------
> > +PS Sysmon	|7	|LPD temperature measurement.					|Temperature
> > +		|8	|FPD temperature measurement (REMOTE).				|Temperature
> > +		|9	|VCC PS LPD voltage measurement (supply1).			|Voltage
> > +		|10	|VCC PS FPD voltage measurement (supply2).			|Voltage
> > +		|11	|PS Aux voltage reference (supply3).				|Voltage
> > +		|12	|DDR I/O VCC voltage measurement.				|Voltage
> > +		|13	|PS IO Bank 503 voltage measurement (supply5).			|Voltage
> > +		|14	|PS IO Bank 500 voltage measurement (supply6).			|Voltage
> > +		|15	|VCCO_PSIO1 voltage measurement.				|Voltage
> > +		|16	|VCCO_PSIO2 voltage measurement.				|Voltage
> > +		|17	|VCC_PS_GTR voltage measurement (VPS_MGTRAVCC).			|Voltage
> > +		|18	|VTT_PS_GTR voltage measurement (VPS_MGTRAVTT).			|Voltage
> > +		|19	|VCC_PSADC voltage measurement.					|Voltage
> > +---------------------------------------------------------------------------------------------------------
> > +PL Sysmon	|20	|PL temperature measurement.					|Temperature
> > +		|21	|PL Internal voltage measurement, VCCINT.			|Voltage
> > +		|22	|PL Auxiliary voltage measurement, VCCAUX.			|Voltage
> > +		|23	|ADC Reference P+ voltage measurement.				|Voltage
> > +		|24	|ADC Reference N- voltage measurement.				|Voltage
> > +		|25	|PL Block RAM voltage measurement, VCCBRAM.			|Voltage
> > +		|26	|LPD Internal voltage measurement, VCC_PSINTLP (supply4).	|Voltage
> > +		|27	|FPD Internal voltage measurement, VCC_PSINTFP (supply5).	|Voltage
> > +		|28	|PS Auxiliary voltage measurement (supply6).			|Voltage
> > +		|29	|PL VCCADC voltage measurement (vccams).			|Voltage
> > +		|30	|Differential analog input signal voltage measurment.		|Voltage
> > +		|31	|VUser0 voltage measurement (supply7).				|Voltage
> > +		|32	|VUser1 voltage measurement (supply8).				|Voltage
> > +		|33	|VUser2 voltage measurement (supply9).				|Voltage
> > +		|34	|VUser3 voltage measurement (supply10).				|Voltage
> > +		|35	|Auxiliary ch 0 voltage measurement (VAux0).			|Voltage
> > +		|36	|Auxiliary ch 1 voltage measurement (VAux1).			|Voltage
> > +		|37	|Auxiliary ch 2 voltage measurement (VAux2).			|Voltage
> > +		|38	|Auxiliary ch 3 voltage measurement (VAux3).			|Voltage
> > +		|39	|Auxiliary ch 4 voltage measurement (VAux4).			|Voltage
> > +		|40	|Auxiliary ch 5 voltage measurement (VAux5).			|Voltage
> > +		|41	|Auxiliary ch 6 voltage measurement (VAux6).			|Voltage
> > +		|42	|Auxiliary ch 7 voltage measurement (VAux7).			|Voltage
> > +		|43	|Auxiliary ch 8 voltage measurement (VAux8).			|Voltage
> > +		|44	|Auxiliary ch 9 voltage measurement (VAux9).			|Voltage
> > +		|45	|Auxiliary ch 10 voltage measurement (VAux10).			|Voltage
> > +		|46	|Auxiliary ch 11 voltage measurement (VAux11).			|Voltage
> > +		|47	|Auxiliary ch 12 voltage measurement (VAux12).			|Voltage
> > +		|48	|Auxiliary ch 13 voltage measurement (VAux13).			|Voltage
> > +		|49	|Auxiliary ch 14 voltage measurement (VAux14).			|Voltage
> > +		|50	|Auxiliary ch 15 voltage measurement (VAux15).			|Voltage
> > +---------------------------------------------------------------------------------------------------------
> > -- 
> > 2.1.1
> >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
