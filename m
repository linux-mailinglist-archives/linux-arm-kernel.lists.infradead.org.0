Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD70CC05C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cdo72DucZZnirI1e0zpf4fo1jOL00INF1XS906lvexc=; b=ry6XYLIOcdsqF8
	maJbA1grVGGEFxJxAOUJJSGAxEB2nYN3yJDvqunZzIJllQxx21snWBFidiDCYVrsHbAiFmDrPGiFK
	nVwkHasQH9IWsD29ufULLeE4s6JeiWcZHSikCRkN3LR52HSfHWi2Ow171lyd2/st6o6zBzY1ZwMma
	3Ukktz19HO6nuPkX2sV/StbNIKvOsOT1L79Nzq+Ykj8tjuyQ1fhVfoehpgZT6uTesrd3Rp+J4ClY8
	OoIj3xwW2PY94IILV/ACGzbz0UXzBjbbiBZL2BjN1lmnVhkqIxA8rggNgR1C+nJQ2oGc+cNNjndTw
	Dfi70LIp/S6ID1eSx8ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQHs-0003Rw-5u; Fri, 04 Oct 2019 16:18:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQHk-0003RL-Ok
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:18:30 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7750F20873;
 Fri,  4 Oct 2019 16:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570205908;
 bh=UoQ1ww8PIJpk0xmOR9f8QWpU6QAti8ZQPMjess4Wl04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QaLBSHhvmvJGsM2YN9Cx0Fsm/UWt0/IlVRYTSAHH0ckuw4hC2hL+yvN8dy5YiMdl8
 COwQFOSU86fbSoauwCNrl+B2y/4/mfnbEKX77EvbusMCRHvLFEDLXIAPs16YU7ChzR
 kzDPLndVv6cfzSbINKCVAfJlXAHOIac46GOLjhgA=
Date: Fri, 4 Oct 2019 18:18:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH 1/2] dt-bindings: firmware: Add bindings for Versal
 firmware
Message-ID: <20191004161825.GB854302@kroah.com>
References: <1569613206-20189-1-git-send-email-jolly.shah@xilinx.com>
 <1569613206-20189-2-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569613206-20189-2-git-send-email-jolly.shah@xilinx.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_091828_826714_DCADCBB9 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: keescook@chromium.org, ard.biesheuvel@linaro.org, matt@codeblueprint.co.uk,
 dmitry.torokhov@gmail.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com, sudeep.holla@arm.com,
 mingo@kernel.org, linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 12:40:05PM -0700, Jolly Shah wrote:
> ZynqMP firmware driver can be used for versal also.
> Add versal compatible string to zynqmp firmware driver
> doc.
> 
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  .../bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt    | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt
> index a4fe136..18c3aea 100644
> --- a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt
> +++ b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt
> @@ -11,7 +11,9 @@ power management service, FPGA service and other platform management
>  services.
>  
>  Required properties:
> - - compatible:	Must contain:	"xlnx,zynqmp-firmware"
> + - compatible:	Must contain any of below:
> +		"xlnx,zynqmp-firmware" for Zynq Ultrascale+ MPSoC
> +		"xlnx,versal-firmware" for Versal
>   - method:	The method of calling the PM-API firmware layer.
>  		Permitted values are:
>  		  - "smc" : SMC #0, following the SMCCC
> @@ -21,6 +23,8 @@ Required properties:
>  Example
>  -------
>  
> +Zynq Ultrascale+ MPSoC
> +----------------------
>  firmware {
>  	zynqmp_firmware: zynqmp-firmware {
>  		compatible = "xlnx,zynqmp-firmware";
> @@ -28,3 +32,13 @@ firmware {
>  		...
>  	};
>  };
> +
> +Versal
> +------
> +firmware {
> +	versal_firmware: versal-firmware {
> +		compatible = "xlnx,versal-firmware";
> +		method = "smc";
> +		...
> +	};
> +};
> -- 
> 2.7.4
> 


For new dt bindings, don't you have to cc: the dt maintainers and
mailing list?  I can't take the patch until I get an ack from them.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
