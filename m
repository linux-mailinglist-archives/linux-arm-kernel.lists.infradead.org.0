Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E11156555
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 17:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RtTKrmv4ysU7kn+UZSQ/3hvKKe7uWkyly3LyC2rRV4=; b=Yq/5EuGshfo8rY
	TtMjoqt55GX+bqrXbMSjuSALGfOO56UnUqcX4Y0yQRYFyibYHCHVN8nb+6TBJZ32vI72DrDAkdiW7
	QzNa2gImmouyh9zAnhBEdFQdCSuDA0UP2UtIDRNT1Wh3Ivr+sIecfpiwClDlN+e65ksWtfb5cwd8K
	r/QZ7s1EywbCpCdoYnnoAXCqul292Qv1ngOz3ehXU5V5LYwxcyTOFbnmtQVtfCIXSysnW1lA41wbk
	QKD7Vq3kexwdIijqldOAw9vBYvMgfAoAyUK4IfPT8H+tsxQTxDNTv8Drbx+B1g/pTIv7AFhQNQeg2
	Oa+F6kF6vAu7NY6GCaFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0SbZ-0003BR-Ph; Sat, 08 Feb 2020 16:05:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0SbL-00038E-Pk
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 16:05:00 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CB8021775;
 Sat,  8 Feb 2020 16:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581177899;
 bh=Euyw5YRT5MdLDsoMxRjF1gQchnvFaODdk1aaTO+peYM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=I+IdUU7oB1pSPUncTKinXOjnafiCdiuY0GQwjCJZdsn0treXSpxmi9pPMiVZkZXsa
 uKtTbctn0wx59Zg4drSSoyQBLngCXC+wraY2H25POLakUFeA1rFaeWSLeLebfvblHA
 c4ui79vD/0uKZwhsZnNdadb4UAW3APjn4E+N8gQM=
Date: Sat, 8 Feb 2020 16:04:54 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH 1/4] dt-bindings: iio: adc: sd modulator: add vref support
Message-ID: <20200208160454.0f153bfb@archlinux>
In-Reply-To: <20200204101008.11411-2-olivier.moysan@st.com>
References: <20200204101008.11411-1-olivier.moysan@st.com>
 <20200204101008.11411-2-olivier.moysan@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_080459_849519_1DD50EFD 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Feb 2020 11:10:05 +0100
Olivier Moysan <olivier.moysan@st.com> wrote:

> Add vref supply support to sigma delta modulator.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>  .../devicetree/bindings/iio/adc/sigma-delta-modulator.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
> index a390343d0c2a..2afe0765e971 100644
> --- a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
> @@ -8,6 +8,7 @@ title: Device-Tree bindings for sigma delta modulator
>  
>  maintainers:
>    - Arnaud Pouliquen <arnaud.pouliquen@st.com>
> +  - Olivier Moysan <olivier.moysan@st.com>
>  
>  properties:
>    compatible:
> @@ -21,6 +22,9 @@ properties:
>    '#io-channel-cells':
>      const: 0
>  
> +  vref-supply:
> +    description: Phandle to the vref input analog reference voltage.
I note this in review of patch 2 but in general I'm not sure we should
be introducing this for generic devices.   It's fine if we have an
explicit compatible but there is no reason to assume a generic sd-modulator
uses an external reference.

Jonathan

> +
>  required:
>    - compatible
>    - '#io-channel-cells'


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
