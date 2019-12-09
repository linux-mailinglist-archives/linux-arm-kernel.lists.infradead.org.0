Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DAE1168E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVey44RuDlTgIrkEii0Nhj+OFEO7m87zP/cJ52jWCw8=; b=sEU3k4VRzcsYaf
	qcKjis9lEuf+lNADDxzaRTfr8ulfl8RedR9LnqVe+O67AjTKzzOwcSmbO+E5CM1tLu873i99+LWry
	/GiF8RxmgYp0zkX98YNXvWJYnzXeIrLwzlKY58K4AomOT7Iy0VAsIohUealk+vWS9B59gMS74xz2d
	3m8zBjy4Np6anzfhloLncEAQtEHLzRdgnqi1axxNB4v7tuTSxvJ4l9yRW2hyUwEFtsxDBYxJwAaL2
	9EMJ4TALn/lrCQnRc3/6pjGvKZ2u649NpZ00bxKnrz1U6YvpZwCnTsDPdHj+iIXjs3ukVU4ryeySR
	dBvHeh9n8xfwMJr3XeSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieF2O-0004LL-2X; Mon, 09 Dec 2019 09:09:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieF2G-0004Kn-Nx
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:08:58 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EEB82072D;
 Mon,  9 Dec 2019 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575882536;
 bh=QAsy6KYtyWoOffL4NFS3+5/Zh44sQt9mMpY2XhbERdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fJr+YRMo1Rnw0+vTxF6gPpMdzFTFrIfbdML67vLN6jbyh5McznFgrIX0BjK9CA7iK
 dYFz9iFC0H8+/ml50izL4yc8S1EpANPnuREKYX0eAc4PdGphLzymmVskHnzECr1+Mu
 /+hwKeGGPVnWAKfkdb21nDvtwNEbJop3/VDxkcus=
Date: Mon, 9 Dec 2019 17:08:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>, Alison Wang <alison.wang@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: put SAIs into async mode
Message-ID: <20191209090840.GL3365@dragon>
References: <20191129210937.26808-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129210937.26808-1-michael@walle.cc>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_010856_799478_3BD6C6DA 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Alison Wang

On Fri, Nov 29, 2019 at 10:09:37PM +0100, Michael Walle wrote:
> The LS1028A SoC has only unidirectional SAIs. Therefore, it doesn't make
> sense to have the RX and TX part synchronous. Even worse, the RX part
> wont work out of the box because by default it is configured as
> synchronous to the TX part. And as said before, the pinmux of the SoC
> can only be configured to route either the RX or the TX signals to the
> SAI but never both at the same time. Thus configure the asynchronous
> mode by default.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Alison, Leo,

Looks good to you?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 379913756e90..9be33426e5ce 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -637,6 +637,7 @@
>  			dma-names = "tx", "rx";
>  			dmas = <&edma0 1 4>,
>  			       <&edma0 1 3>;
> +			fsl,sai-asynchronous;
>  			status = "disabled";
>  		};
>  
> @@ -651,6 +652,7 @@
>  			dma-names = "tx", "rx";
>  			dmas = <&edma0 1 6>,
>  			       <&edma0 1 5>;
> +			fsl,sai-asynchronous;
>  			status = "disabled";
>  		};
>  
> @@ -665,6 +667,7 @@
>  			dma-names = "tx", "rx";
>  			dmas = <&edma0 1 8>,
>  			       <&edma0 1 7>;
> +			fsl,sai-asynchronous;
>  			status = "disabled";
>  		};
>  
> @@ -679,6 +682,7 @@
>  			dma-names = "tx", "rx";
>  			dmas = <&edma0 1 10>,
>  			       <&edma0 1 9>;
> +			fsl,sai-asynchronous;
>  			status = "disabled";
>  		};
>  
> @@ -693,6 +697,7 @@
>  			dma-names = "tx", "rx";
>  			dmas = <&edma0 1 12>,
>  			       <&edma0 1 11>;
> +			fsl,sai-asynchronous;
>  			status = "disabled";
>  		};
>  
> @@ -707,6 +712,7 @@
>  			dma-names = "tx", "rx";
>  			dmas = <&edma0 1 14>,
>  			       <&edma0 1 13>;
> +			fsl,sai-asynchronous;
>  			status = "disabled";
>  		};
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
