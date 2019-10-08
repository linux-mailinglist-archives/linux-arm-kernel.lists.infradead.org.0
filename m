Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC1FCFD37
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Prnys07heFRnS1iy/+CYlnuSnuCMrerbBqukgIZrJ8=; b=RxjWYNOCy/YtFL
	x75gD/04ZPimaO3/gCu+hNxfM9PQOETMwlISQIDparUguYA5YpLssA3xZn1Yqm8FjZnTrNjmSoAZD
	Ajpzc4mO4+O31MPyqdxlRwKeAENmz30sPrBLN1EceLQpYhRx91jXKs17EOZZY9mpDlKkvd55BeUf0
	C4RdO/KZBFPV6YzwUa0hwLDx5SbxF8p4sIPab0kYSLOukONqpL86A+PEZKF3oD4HVOlEBs9LuvPwO
	iY1rNxenETYrBRb+gDWuOLoDCy02eglwGYrmDDfcaJf9VQi5AZply+BpeyjkMoxEI1gU/xub74xuF
	zMVs+lfIlvDXn/0A8MgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHr8S-0003ye-HE; Tue, 08 Oct 2019 15:10:48 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHr8H-0003xQ-Ga
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:10:38 +0000
Received: by mail-wr1-f65.google.com with SMTP id q9so19853188wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:10:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jDr1BzlICCTlwhp3uNGJEPl314YzfcfD31Fib2fRNSo=;
 b=CLhNxkcYVdkCRE5b3LMeXhSaSwuZAlMcWfDp7z6u5ZA2iQtw2h99PuKENmyOVPwtie
 4D6r2t+nz4PP1sfuxqK3SAQijZbb8OO+PBLWGJfm0gZ0lpfiSpTnFE/RESoAXYXqVCLU
 zjU8keijubL5JxW7wwV474rV/PQPQN+X1y8Y5Y60ZXbyssvpM6HwNLnI6nF6NY0U7VGz
 m4+PlQcD1tW3ePN4rAM7lzfmq5DHx+96F0AB3kltr/Ah1oCH3xxOMeie1nWUMegOfUkU
 axbkFJmQGRcBVZcpahsmZraabvuUeiE9WrBhvFkmY+YzUY0EF18Ls1LF/ypx3hER/iNL
 DmmQ==
X-Gm-Message-State: APjAAAUJ4+BJbpk0BtmY5SkozRgVah0xI41ewatsQS05+rTSZcJPDEJ1
 YRKk0GQZfPGbeYDIgNftgxk=
X-Google-Smtp-Source: APXvYqzX4ka2psn6HEE8SlAx19V028jaUxy26b9V7r9ws/He1WJtNpQAY+Uuwiz4uo5g6s4xsd7i9w==
X-Received: by 2002:adf:ecc1:: with SMTP id s1mr19736353wro.223.1570547431457; 
 Tue, 08 Oct 2019 08:10:31 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id 90sm26487496wrr.1.2019.10.08.08.10.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:10:30 -0700 (PDT)
Date: Tue, 8 Oct 2019 17:10:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: arm: samsung: Force clkoutN names to be
 unique in PMU
Message-ID: <20191008151028.GA2720@pi3>
References: <20191004151414.8458-1-krzk@kernel.org>
 <CAL_JsqJDTcHu5oXG6zszGHCBhTE6EW94AANUjyMV78SkKcn5yA@mail.gmail.com>
 <20191008125038.GA2550@pi3>
 <CAL_Jsq+GcsUWN6kjBLkyr1rHGh6_4=w6JL6+k7DBXkBcvHcSBw@mail.gmail.com>
 <CAL_JsqKBzZCShxx99aB4z15XYNbUionVicmfNNXEfq=iohWLCA@mail.gmail.com>
 <20191008142900.GA2635@pi3>
 <CAL_Jsq+ObMD=inkMFqkZbKFoKZUxw53gUMnjsC1pU5GwumK8LQ@mail.gmail.com>
 <20191008150456.GA2683@pi3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008150456.GA2683@pi3>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_081037_551591_56F6182C 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.145 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Maciej Falkowski <m.falkowski@samsung.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee.jones@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 05:04:56PM +0200, Krzysztof Kozlowski wrote:
> On Tue, Oct 08, 2019 at 09:38:15AM -0500, Rob Herring wrote:
> > Are you running using DT_SCHEMA_FILES? If so, you won't get the core schema.
> 
> Ah, yes, now I see proper errors. Thanks for pointing this.
> 
> I'll send next version of this patch only (if others are ok).
> 

Of course, there will be no v2, this patch can be just skipped.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
