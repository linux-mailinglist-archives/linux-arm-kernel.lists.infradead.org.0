Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C63E963
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3Io8Q6swM1zG75/AgchSm48+Cizn5gwFaTJ5WDrVVA=; b=fZ8UT3XHPmKtrW
	wRkgjTUVkl5C7Jr1t3phQcWHNMYwUnsA076mAbNHm85y4/ma+e/mkw38z0k32jHYIHVop8xEdgiDI
	QwFqRKBdX2mYIuwUcYLqbZNSOqB8Ja1c3stwX6y8ZpQB1voilOTEmp7bIdtTr9fqjZ0Eq5eSMqF5k
	iUs+eO1l/ERUDpWGSr1fmGuVtfsOT5vxk4fUWZhFLXhlt5Rf0jPLy/rCTWJXYgbEgjju47R5fZKfc
	yrdSFfDTPsfsaPTsiCLOLi7722gD8LzAAzL4AXhnS4VqpSwDC94xRWgx0x1HVm9HOoC0QcqYc1dI9
	pXqGueRLkuRpYY6+I/5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAHN-0007n6-LP; Mon, 29 Apr 2019 17:41:25 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAGy-0007Xe-QA
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:41:03 +0000
Received: by mail-ot1-f68.google.com with SMTP id s11so5089453otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:41:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=7IAkFL1JXbZxNJHIArZ/p7tWmdMrEZfFKxFB5D31v3Y=;
 b=G1P3QzErIOiEDrNVDb3J5vbWkTsVInSL0AWJE4hY2UREtnodsZQWuddBo/sinBe+lG
 hHSdRw5eGw/pEfgfxRyqxI1y9O4WZhabg4yZ6MzmThYFpGD0H+HogwP4pvRn8RPZfNvi
 fvi2ywd145FDayGNOff5GzavqAtyJis/13S8RcLN7Tv30FtN//HZnxX/pyjhUr5XS6z1
 uitfQv6YP1r2ROPfAHgxuoWe3IsdHaYBEcWvhcGxDW3b7lHmuUBJuJzoM06N5+2dtFXG
 rt5AVcv/bXCeMEyMcx9tK76e/GcEA0+Bz/imJ35PHT7QcChf9zKZpxVibc02TxijVU/g
 jIfg==
X-Gm-Message-State: APjAAAV/WKUIXoCRVF3I/51/bS5mav0tdEIIRQuqDULTUm/u34pTzqnw
 DusJR8Rzv3gB3UbEt14hLA==
X-Google-Smtp-Source: APXvYqw/imxgz09DG6zdb1MmzjQVdBUe8PLv9+NKHbFUlUVCLnjIkMVGwh0dmC1m3Zg49hHRfgn0uw==
X-Received: by 2002:a9d:4909:: with SMTP id e9mr8198002otf.160.1556559659685; 
 Mon, 29 Apr 2019 10:40:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i22sm1689418otj.34.2019.04.29.10.40.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:40:58 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:40:58 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: axp20x: Add fallback for axp805
Message-ID: <20190429174058.GA11425@bogus>
References: <20190409160550.1086-1-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190409160550.1086-1-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_104101_155290_0E26A965 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 09, 2019 at 06:05:50PM +0200, Cl=E9ment P=E9ron wrote:
> axp805 is actually compatible and used with axp806 as fallback.
> But it's actually undocumented and trig a warning with checkpatch.
> =

> DT compatible string "x-powers,axp805" appears un-documented.
> =

> Add this compatible in the dt-bindings documentation.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  Documentation/devicetree/bindings/mfd/axp20x.txt | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
