Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 058BC4D4A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 19:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=peK2KH7Q9NA8pHxstR711BtiX41owz/GRLeWlj5y8GE=; b=EZGCFcj8BV9NT4uDsdHXUD7L0n
	2amtcveApdztlnthoZiB5WJ7GCCtCrfD4bNC+oywGNwCIxUbNQKUrozMHZWCK37k6vRP5uMgjMjdx
	rkpPRNPLZwLT/N020mkFPXZYq92HebxoEGCA1CMbFEd4pzzPc058CLiYmEKVnG5SPPkAZKPfBZMyv
	cpDMcsHgG7F98OSXE7LMtR5hgvaB3VmfXjS1AKW7x5wiAeK39d7729WTxrpIgACFeGBCdWAdjiXVP
	ffUlq754wOaXzN+r/xlpG/jcQtdVIVA/Q2Qy/0xFLMib16XijlzFo8aW89YFfwb84vXXBe1cvoyjA
	NBiUvLCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0bq-0003s2-Sn; Thu, 20 Jun 2019 17:12:26 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0bb-0003rZ-Dt
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 17:12:13 +0000
Received: from tarshish (unknown [10.0.8.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id BC234440209;
 Thu, 20 Jun 2019 20:12:05 +0300 (IDT)
References: <20190618212229.32302-5-robh@kernel.org>
User-agent: mu4e 1.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: Convert Conexant Digicolor board/soc
 bindings to json-schema
In-reply-to: <20190618212229.32302-5-robh@kernel.org>
Date: Thu, 20 Jun 2019 20:12:05 +0300
Message-ID: <87a7ecqize.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_101211_693534_C3EDC03B 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Wed, Jun 19 2019, Rob Herring wrote:

> Convert Conexant Digicolor SoC bindings to DT schema format using json-schema.
>
> Cc: Baruch Siach <baruch@tkos.co.il>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Baruch Siach <baruch@tkos.co.il>

Thanks,
baruch

> ---
>  .../devicetree/bindings/arm/digicolor.txt        |  6 ------
>  .../devicetree/bindings/arm/digicolor.yaml       | 16 ++++++++++++++++
>  2 files changed, 16 insertions(+), 6 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/digicolor.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/digicolor.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/digicolor.txt b/Documentation/devicetree/bindings/arm/digicolor.txt
> deleted file mode 100644
> index 658553f40b23..000000000000
> --- a/Documentation/devicetree/bindings/arm/digicolor.txt
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -Conexant Digicolor Platforms Device Tree Bindings
> -
> -Each device tree must specify which Conexant Digicolor SoC it uses.
> -Must be the following compatible string:
> -
> -  cnxt,cx92755
> diff --git a/Documentation/devicetree/bindings/arm/digicolor.yaml b/Documentation/devicetree/bindings/arm/digicolor.yaml
> new file mode 100644
> index 000000000000..d9c80b827e9b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/digicolor.yaml
> @@ -0,0 +1,16 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/digicolor.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Conexant Digicolor Platforms Device Tree Bindings
> +
> +maintainers:
> +  - Baruch Siach <baruch@tkos.co.il>
> +
> +properties:
> +  compatible:
> +    const: cnxt,cx92755
> +
> +...


-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
