Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58171467D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 13:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBiMKjIV2Q7LMClm4I7492MuymOzQlSzpW6iiEG0Fa8=; b=qYysqUNKIyo2E8
	U9S9k23Y5jBiGL/CjtY+3HLaA2mo9+rq7UTm5Jj+Z51MKP9ESFlIev6Dq/7OgrUVKeheXUrG5NU2A
	wORZh/CTj1UMRVAh140cu16+jJlN8i6ovDLiMx0gEgmSSTITDwfxEAK6ZlpHM4cwOM6cYMp+gNrkx
	F0ZPpsGxDFVc0VWh2PjaPswKEg253/W7L7E+vYIq+yxYMlREyG0ckk8bJ11b4Bd0zIXchXUTfRTbq
	MdAWxVzeVU8rwnG8QzoQJlnWA6TeKWSypiSngEQfyu8M5JZ0STUKlinIdmmezxKrnOnINlvBDC+YX
	rHIzd+dsL/UShaUOLFYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iubVF-00019e-TV; Thu, 23 Jan 2020 12:22:29 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubUy-00018R-IX
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 12:22:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 04:22:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,353,1574150400"; d="scan'208";a="220650513"
Received: from wkalinsk-mobl.ger.corp.intel.com ([10.252.23.16])
 by orsmga008.jf.intel.com with ESMTP; 23 Jan 2020 04:22:06 -0800
Message-ID: <0effdeeeccdb9544cc69f185fd23cd06828ae8fc.camel@linux.intel.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: tpm-tis-mmio: add compatible string
 for SynQuacer TPM
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Ard Biesheuvel <ardb@kernel.org>, linux-kernel@vger.kernel.org
Date: Thu, 23 Jan 2020 14:22:05 +0200
In-Reply-To: <20200114141647.109347-2-ardb@kernel.org>
References: <20200114141647.109347-1-ardb@kernel.org>
 <20200114141647.109347-2-ardb@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_042212_657833_148E6CD3 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, jgg@ziepe.ca, Rob Herring <robh+dt@kernel.org>,
 masahisa.kojima@linaro.org, linux-integrity@vger.kernel.org, peterhuewe@gmx.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-01-14 at 15:16 +0100, Ard Biesheuvel wrote:
> Add a compatible string for the SynQuacer TPM to the binding for a
> TPM exposed via a memory mapped TIS frame. The MMIO window behaves
> slightly differently on this hardware, so it requires its own
> identifier.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt b/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt
> index 7c6304426da1..b604c8688dc8 100644
> --- a/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt
> +++ b/Documentation/devicetree/bindings/security/tpm/tpm_tis_mmio.txt
> @@ -12,6 +12,7 @@ Required properties:
>  - compatible: should contain a string below for the chip, followed by
>                "tcg,tpm-tis-mmio". Valid chip strings are:
>  	          * "atmel,at97sc3204"
> +		  * "socionext,synquacer-tpm-mmio"
>  - reg: The location of the MMIO registers, should be at least 0x5000 bytes
>  - interrupts: An optional interrupt indicating command completion.
>  

Acked-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>

Someone else needs to give reviewed-by as I am not expert on DT bindings.

/Jarkko


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
