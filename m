Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0942298679
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbsPRULHsWonWG4CgVnZYABjcWOa9NEJHZ254oXAYjk=; b=oUbCpk1Wr/vZhA
	NIliW0JiFvCQP7DZ7sDEo1cwfSJlWG0DyUbjBS43psRqXIh3NS+DZ+5XtelnvzDqj+yslNrkbJ1db
	6RfwPg8YDa7V0dZpEsfqSVcJ1U85nVlbXJLud9kOFWQmy3J9bdovr1ceW1bDm1rt8SMnpfg+TLQjv
	ONJNoYLCG3IW+9lixvmji289KMloOVZuetYdYMVjvbWaNXyktezi4f+ISoRAYC5ijsmV/yIgGcbzb
	ow2vdJiFgtqVQue+xZuCSgL8I/N1vYWjtf5GdEMqaHTfMmYUtwS7q8AFTIS4mnmLXtjXmEoUfb2xY
	y5BzEoaL/bPmWyfEpRqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Y0J-0000ZJ-BH; Wed, 21 Aug 2019 21:18:51 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Y0B-0000Yz-Nh
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 21:18:45 +0000
Received: by mail-ot1-f66.google.com with SMTP id z17so3416933otk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 14:18:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0BysGlcLSnXeBZ1pv0mPCj6ITlGQ3QNXjoyF2Ap0RJY=;
 b=iSo0IF5Cqw3Km/RyCGzkdj95AKOKRRnqgVqPmqFOOnD4I0fvHLVELbjtet7uWmlWY5
 NCZQ/u5s6y7896MExtgabOclr+MClCZhT7W15sc8J+haOPwkIU9oAxQuIXy5xJg7cTQu
 4yahJHgSW22Ceway2zeefVUtoZCL6C/hUahb4llxNRCZHpXnIQfMl9LlgnYfi3rOXmzB
 5n/BmbyO0XK8RKl6VErqB6x+DUOpW7JeNyWpcsdo23W7EVFmWuTjmdOPH2FXyphP9lak
 yGRY+PKmz7SOrbefaRCn3JjJmSsENnOJNn2e75I73kmiX2IoyK3ZoTYzf4E7E8cKiH8+
 Ci7g==
X-Gm-Message-State: APjAAAW+anjTGcsuvS38T0rCH8aTdJU+8GkHnsR/gPsaWXDSr9LiZL2W
 yQ1jF9pSnBEwQIiqzVXSjQ==
X-Google-Smtp-Source: APXvYqwyCdp9o8YTLQuqlTyT5OIepCOx0aazVgW8orqSC0e9+vmRZf4pQjus03+ay0tw1yhN7gQitQ==
X-Received: by 2002:a05:6830:54:: with SMTP id
 d20mr25800639otp.225.1566422322638; 
 Wed, 21 Aug 2019 14:18:42 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o26sm7711687otl.34.2019.08.21.14.18.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 14:18:42 -0700 (PDT)
Date: Wed, 21 Aug 2019 16:18:41 -0500
From: Rob Herring <robh@kernel.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v2 4/6] dt-bindings: serial: Document Freescale LINFlex
 UART
Message-ID: <20190821211841.GA16627@bogus>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
 <20190809112853.15846-5-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809112853.15846-5-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_141843_769032_BFF428E6 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 11:29:14AM +0000, Stefan-gabriel Mirea wrote:
> From: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
> 
> Add documentation for the serial communication interface module (LINFlex),
> found in two instances on S32V234.
> 
> Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
> Signed-off-by: Larisa Grigore <Larisa.Grigore@nxp.com>
> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
> ---
>  .../bindings/serial/fsl,s32-linflexuart.txt   | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt
> 
> diff --git a/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt
> new file mode 100644
> index 000000000000..957ffeaca9f1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt
> @@ -0,0 +1,24 @@
> +* Freescale Linflex UART

Be consistent with the name: LINFlexD?

> +
> +The LINFlexD controller implements several LIN protocol versions, as well as
> +support for full-duplex UART communication through 8-bit and 9-bit frames. The
> +Linflex UART driver enables operation only in UART mode.

What the driver supports or not is independent of the binding.

> +
> +See chapter 47 ("LINFlexD") in the reference manual[1].
> +
> +Required properties:
> +- compatible :
> +  - "fsl,s32-linflexuart" for linflex configured in uart mode which

LINFlexD?

> +  is compatible with the one integrated on S32V234 SoC

Compatibles should be SoC specific. Is 's32' specific enough to account 
for any differences or future bugs found?

> +- reg : Address and length of the register set for the device
> +- interrupts : Should contain uart interrupt
> +
> +Example:
> +uart0:serial@40053000 {

space    ^

> +	compatible = "fsl,s32-linflexuart";
> +	reg = <0x0 0x40053000 0x0 0x1000>;
> +	interrupts = <0 59 4>;
> +	status = "disabled";

Don't show status in examples.

> +};
> +
> +[1] https://www.nxp.com/webapp/Download?colCode=S32V234RM
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
