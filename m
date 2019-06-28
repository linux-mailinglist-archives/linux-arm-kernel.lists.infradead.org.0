Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF795A4CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 21:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FveEi9vPb8n2kbWc/ZqMo02ZSw6PlUde5dRC+X5Ch0M=; b=bpi2UtrEnx1/aS
	RLl9HQChZLR/HfMLHe3egFQ2E5+HIzDhOlilJJ7CCegv+PT043MtNSBgrXOka8vJcX68uOJQJcrB+
	C/zmtpnk/0GjEJgVc/sfYfe7xkyaNgIInTkIHeC2qhUpiiJ7yjdWcAlLnMqIu3gV2u8FkK4JhIsQ5
	3fTNmLazrKW50xt/a4nBaoldnWQDvxeusTwsK60G+2Z79JoVKMBcLYyfrVKo8NMt6TLd1Ik99fJbg
	fH3mT1ycNGH0VOSVDc+ZdgK8TJIe4nlDvdIfEXbJwYMV1S4Y+RDbBsQ1E0H53H0RtN+MwBJiamWHP
	l4OLU/mFQPzzqjGXcuCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwFQ-0000sh-4d; Fri, 28 Jun 2019 19:09:24 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwFB-0000qR-Is
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 19:09:12 +0000
Received: by mail-io1-xd43.google.com with SMTP id i10so947670iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 12:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=denpEz7Y25tPYld+8szHUZUn70KyumHMuU5ZgYCdiKI=;
 b=HWMrmaJnz5V8Ac64W9ltGnhij2/onexK3xCea2eFyAXK6JVJnwj62PwageLoaznljr
 lVtZWieElekXXI6Q4uto5rBOs5y5+Y+oEhsPTyrfK/jawOxPcID1zg2pkEYUErrhcwJB
 aszK3rXIb3zpoK6myJKG5S0dwok2xahK5qCTGgIkyiJIZXoRbIwMC/T+A04ynBDaa7BH
 hrEXqsOvUf285Gj4q/Vnqx2FcdDFpiK+Iaa3nU5B1d3yP/hh7wB2rHg3xnWWrSZTkWn+
 Q8Ff3Ayu/GN5pDCx+2ZM3PNc7q0wBMyQInqc2hToFVqvI2Nn3mimmdf2GreNGgeTmOwr
 KdwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=denpEz7Y25tPYld+8szHUZUn70KyumHMuU5ZgYCdiKI=;
 b=uOowG6OucFlrnjOsOLxQU3oB1JJurEEPgSPBKVTKPsXjAUQKbrsxsDRXJ/pkdsOnDQ
 mPd0tga0RE+9Vtz0xdVYQQL33CRkYXTX5mXnMvlbReEyQT5WUogQy49O0VNulyQ+u+Q2
 WKjcucPJ+Tfa/y8NmMvcLgosOK0rehZp3yw0J882orefvx38bd9B4yK32V8OZzwZwoSF
 EMJINVYHODlTcuyW0vGmPhypXCTSOm8D64Vh5otFhylufkuz4lLWj6RlbpIZapgAuzUU
 mJEph9P110OlHtpZEO39EVCvU+4Ww+QIkOtojSdcnTo4H4EBst1WB3B14L3or0bebgQT
 MbNQ==
X-Gm-Message-State: APjAAAVF1QvxsSiMwJ66pjty0eMjYptCoQhDTEfLT5c3TcUMSRR3OBWz
 weoo5wqDsdRqqxS5ImUnaIQIdg==
X-Google-Smtp-Source: APXvYqyCiWd28x6ejKIVj1HQUvQbmY2IcCFzFG/uYivQu5hxZZBjfMnIAX99mg22opfTcrJJ/QIWog==
X-Received: by 2002:a05:6638:281:: with SMTP id
 c1mr13074518jaq.43.1561748945460; 
 Fri, 28 Jun 2019 12:09:05 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 x13sm2623367ioj.18.2019.06.28.12.09.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 12:09:05 -0700 (PDT)
Date: Fri, 28 Jun 2019 12:09:04 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v4] RISC-V: Add an Image header that boot loader can parse.
In-Reply-To: <20190606230800.19932-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906281207290.3867@viisi.sifive.com>
References: <20190606230800.19932-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_120909_626729_05F2475F 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "trini@konsulko.com" <trini@konsulko.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jonathan Corbet <corbet@lwn.net>, Kevin Hilman <khilman@baylibre.com>,
 Anup Patel <Anup.Patel@wdc.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, "will.deacon@arm.com" <will.deacon@arm.com>,
 Nick Kossifidis <mick@ics.forth.gr>, Palmer Dabbelt <palmer@sifive.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Karsten Merker <merker@debian.org>, linux-riscv@lists.infradead.org,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019, Atish Patra wrote:

> Currently, the last stage boot loaders such as U-Boot can accept only
> uImage which is an unnecessary additional step in automating boot
> process.
> 
> Add an image header that boot loader understands and boot Linux from
> flat Image directly.

...


> +#if __riscv_xlen == 64
> +	/* Image load offset(2MB) from start of RAM */
> +	.dword 0x200000
> +#else
> +	/* Image load offset(4MB) from start of RAM */
> +	.dword 0x400000
> +#endif

Is there a rationale behind these load offset values?


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
