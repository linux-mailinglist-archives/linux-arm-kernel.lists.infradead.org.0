Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD631FD639
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 22:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/sJPR+5q7itF9oELexkiV2Pk70lP+WOMa8J4itH6So=; b=b2mgVXkOEflH3Y
	ty/i6tWKjHFzIT7oSuaa08eEW2bNCt/SmZ3SEE4qnjJy/jLgNwg5nL4KMmhkqPhNjmd8/cvbIsHcr
	kaLOx36ldNdKInjNC8aWJg/75MMbv51abDXFadR6u0OHd/TP+F9E8gNpeQD8dnaYlOxv3koIyqAmC
	8/hJ/PIjjW+pXhCXPiGVEGdEvYJVLxlH4+vo5h8GFpl5N7bt0fM39Nv3X7tdvhhkpIN4XS+J7e9Ko
	2vVTw6HHDNqfbojcAqSrQHy8BR04hZosI9o1RzVDUkkINTrM07uhdbKswIHgbM/oT9i9a6/XNs1m2
	ZA7rQ9ScEI58djkUeHrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jleuL-0000ji-Gi; Wed, 17 Jun 2020 20:43:41 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jleu7-0000j2-Qr
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 20:43:29 +0000
Received: by mail-io1-f65.google.com with SMTP id u13so4506156iol.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 13:43:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=emJpJjtrMEqB2UXVQWJGyVmpIt4i0tBG2sjF9wqyg6s=;
 b=MUfLq9bJ0iKETDmfar1SDem4pubqPICc220Wm/YqSbCaS2tLbzOW33OvGZH/W222HI
 KyMUV39XIXQG3mJe3T77atS6gvLPC0fJWvZrTBb92Tl6eKCVdfYfLZI+Eycry9DMGmR1
 efl28kL2WPu6+bzsL1TbAkmMRNTnylY5ykvs/ygvcxE0zkGYCjNliGbjZ4N2lGPTJymG
 BLcTmncNNARps42pp5uayd+V5l1MotSZr+mHHmeJSCYrLJU5Bt0p0zTJsVZvHOHpbgc0
 EjXmJIxid+yp6KrbLkQi4bMaXO6YNx1qQuGSv1iplXtZihwQBzalDH5QXiJjlrOfCi6j
 1EEw==
X-Gm-Message-State: AOAM5336WmhY87840IvpRAvEQq/TyZEv3kPMNjAylxcEAaTUDq+CToko
 3NizL9VFy08jc0ygNBqKjQ==
X-Google-Smtp-Source: ABdhPJx6D38aHYbkc7/7zEd9UCiEIZ/iKJdovV7uWe+2O6ZR5TDlocKXFkMaZH8WNeCz6fnzzMumHw==
X-Received: by 2002:a5d:9d03:: with SMTP id j3mr1328409ioj.176.1592426606820; 
 Wed, 17 Jun 2020 13:43:26 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id c20sm499812iot.33.2020.06.17.13.43.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 13:43:26 -0700 (PDT)
Received: (nullmailer pid 2766741 invoked by uid 1000);
 Wed, 17 Jun 2020 20:43:24 -0000
Date: Wed, 17 Jun 2020 14:43:24 -0600
From: Rob Herring <robh@kernel.org>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>
Subject: Re: [v1 PATCH 2/2] Add Documentation regarding the ima-kexec-buffer
 node in the chosen node documentation
Message-ID: <20200617204324.GA2740878@bogus>
References: <20200607233323.22375-1-prsriva@linux.microsoft.com>
 <20200607233323.22375-3-prsriva@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607233323.22375-3-prsriva@linux.microsoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_134327_870452_CD4B5078 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com,
 gregkh@linuxfoundation.org, benh@kernel.crashing.org, bhsharma@redhat.com,
 tao.li@vivo.com, zohar@linux.ibm.com, paulus@samba.org,
 vincenzo.frascino@arm.com, will@kernel.org, nramas@linux.microsoft.com,
 frowand.list@gmail.com, masahiroy@kernel.org, jmorris@namei.org,
 takahiro.akashi@linaro.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, serge@hallyn.com, devicetree@vger.kernel.org,
 pasha.tatashin@soleen.com, hsinyi@chromium.org, tusharsu@linux.microsoft.com,
 tglx@linutronix.de, allison@lohutok.net, christophe.leroy@c-s.fr,
 mbrugger@suse.com, balajib@linux.microsoft.com, dmitry.kasatkin@gmail.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 07, 2020 at 04:33:23PM -0700, Prakhar Srivastava wrote:
> Add Documentation regarding the ima-kexec-buffer node in
>  the chosen node documentation

Run 'git log --oneline Documentation/devicetree/bindings/chosen.txt' and 
write $subject using the dominate format used.

For the commit message, answer why you need the change, not what the 
change is. I can read the diff for that.

>  
> Signed-off-by: Prakhar Srivastava <prsriva@linux.microsoft.com>
> ---
>  Documentation/devicetree/bindings/chosen.txt | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)

This file has moved to a schema here[1]. You need to update it.

> 
> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> index 45e79172a646..a15f70c007ef 100644
> --- a/Documentation/devicetree/bindings/chosen.txt
> +++ b/Documentation/devicetree/bindings/chosen.txt
> @@ -135,3 +135,20 @@ e.g.
>  		linux,initrd-end = <0x82800000>;
>  	};
>  };
> +
> +linux,ima-kexec-buffer
> +----------------------
> +
> +This property(currently used by powerpc, arm64) holds the memory range,
> +the address and the size, of the IMA measurement logs that are being carried
> +over to the kexec session.

What's IMA? 

> +
> +/ {
> +	chosen {
> +		linux,ima-kexec-buffer = <0x9 0x82000000 0x0 0x00008000>;
> +	};
> +};
> +
> +This porperty does not represent real hardware, but the memory allocated for

typo

> +carrying the IMA measurement logs. The address and the suze are expressed in

typo

> +#address-cells and #size-cells, respectively of the root node.
> -- 
> 2.25.1
> 


[1] https://github.com/devicetree-org/dt-schema/blob/master/schemas/chosen.yaml


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
