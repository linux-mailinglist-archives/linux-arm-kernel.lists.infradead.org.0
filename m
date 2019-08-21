Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB13E98632
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XN+91zpFXo1KQKUmGWH630w5pUPpUIpSiXaDBfxj6e0=; b=PspQwHti7vnr1k
	ez5Kz/q7YLYysGtEqw6+M61xbbaJn+1Jj4N3kDc/fzMyLrQpwQlbS8/Vc9a0A+xM5URZ+WVu4DNK9
	rj36xWyDOS0FeL2ZRL6Eg9DO1WktyV17BjVJyAvq+CLc0BrfzQ45Y/GxLH+MCv0MiKFL6B6Tl2Ts0
	PpQFYG6VEtsp7wB9lJFfK5UdwNI5D4G9YqNlFZgMIjAuS8C7EiHnElbx4XM2B8pNTY7+J1I4Rlz6V
	Vp8CA10NuQIS550EU1Vv1qRYPA++85n7pCZrlM4IshRQUZpluIxhWzOO4a3c70XlJzvqZe77Ovcas
	WpW3vih1AptflX+O5XIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Xkg-0001qM-6F; Wed, 21 Aug 2019 21:02:42 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0XkY-0001pk-MJ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 21:02:35 +0000
Received: by mail-ot1-f66.google.com with SMTP id c7so3442787otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 14:02:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qeldRNnrKJ6n4nBoYRhi7qGMwnjGqI0qiOR/k4DQ+G0=;
 b=OjP2Db62j4OSUmpXhCzBdlbDm04YxKQPR7NkWB51wGQeGdEBgtOGEchQGKVqGUPChN
 Y58q3tn90ji/H6V50s0BR30rwUmgJe5u+WslMC6krmDoamddNImnWwPJ3uB7c8mlWtr7
 CHhdToIEGRfTTtAYbV9jDwaMjEKfNm3p3egpCHNMhj4WANPExaEBxJI105YmwBsZrDcl
 IVa9F/Fau+pFAZ4sIVn9Nl9cgyTBDLT/oWmvvE8Kxr3e01sV1UEm/REccv+j63HxN0VX
 ucjmEBCZZ88NRItVS7BcWdndecHp4f0HLuwOAwwQqe/jxiQdI8RWKbzql7KT2mtewb8M
 t6MA==
X-Gm-Message-State: APjAAAXXziRu2DcuKGyJqydifPXfsEIo9h7OOrpEXMTLilKMtm5XbjY6
 M0Lo4IkLORyKUYhKn2zFNg==
X-Google-Smtp-Source: APXvYqyRJsdPlJBUmlZSY3uPEIBvI3RM6nnZGMr1ukyS82VcusB4lOcfeVYUcWuho5QRGbPVjA0/Jw==
X-Received: by 2002:a05:6830:1e79:: with SMTP id
 m25mr22039139otr.109.1566421353755; 
 Wed, 21 Aug 2019 14:02:33 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v5sm8176751otk.64.2019.08.21.14.02.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 14:02:32 -0700 (PDT)
Date: Wed, 21 Aug 2019 16:02:32 -0500
From: Rob Herring <robh@kernel.org>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH 5/6] dt-bindings: pinctrl: k3: Introduce pinmux
 definitions for J721E
Message-ID: <20190821210232.GA22578@bogus>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
 <20190809082947.30590-6-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809082947.30590-6-lokeshvutla@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_140234_730328_47D3A409 
X-CRM114-Status: GOOD (  13.72  )
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
Cc: Nishanth Menon <nm@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, linus.walleij@linaro.org,
 Tero Kristo <t-kristo@ti.com>, linux-gpio@vger.kernel.org,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 01:59:46PM +0530, Lokesh Vutla wrote:
> Add pinctrl macros for J721E SoC. These macro definitions are
> similar to that of AM6, but adding new definitions to avoid
> any naming confusions in the soc dts files.
> 
> Acked-by: Nishanth Menon <nm@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
>  include/dt-bindings/pinctrl/k3.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/dt-bindings/pinctrl/k3.h b/include/dt-bindings/pinctrl/k3.h
> index 45e11b6170ca..499de6216581 100644
> --- a/include/dt-bindings/pinctrl/k3.h
> +++ b/include/dt-bindings/pinctrl/k3.h
> @@ -32,4 +32,7 @@
>  #define AM65X_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
>  #define AM65X_WKUP_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
>  
> +#define J721E_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
> +#define J721E_WKUP_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))

checkpatch reports a parentheses error:         (((pa) & 0x1fff) ((val) | (muxmode)))

> +
>  #endif
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
