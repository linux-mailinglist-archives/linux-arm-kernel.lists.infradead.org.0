Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7A7113555
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:01:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eq4rL1E4lKJhTYaoME4CxTZrHAZL6T3X4rQNTuK2API=; b=RDT9rJuJMkUej9
	yrv4bIwD9vNoBMb93+WJmVAIADLan4yJ7paOQV7Z8Wezy+pmYyZbUsgVaX5LxDrrr84cSSPaS5CDJ
	+vdR19cBtWSV7s6zFOfDwh6HWBYXzV+qxQ+77VI7W914sWUsVbw+btiwU7lkMuqKwESnSAkkmTy8J
	mLNz0IKdUlBqHLBwkfw6rmLg/YYxF/q2PhOXPDy3zQy2cKmTNBuLNXj0SxzdS4M5jwtNL9Ft3V05m
	ZkQXrpZrs+hIMFDdLooXDZ93Q9YRcnbl0aEbLINpLHZk7I/7T1iRlKKwpyKa0GjAVRFcRgMw0zxtt
	Xsdsg7f1nq9cIxYpEwLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZtx-0004cJ-JD; Wed, 04 Dec 2019 19:01:29 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZtn-0004aQ-U2
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 19:01:21 +0000
Received: by mail-oi1-f196.google.com with SMTP id a124so211734oii.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 11:01:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r+Knz4MyENgBauzAurW2Z6R5O7gCJrRGn09yM5JkLrg=;
 b=bRREiS04BSq2XdSfUhGOXV+PGzv9cNXEOciRb/Qy8cARaU1lEEaKwxkgexcVppkfNq
 MzvpHIZ4nGBLPyuovG/m25dFfPKNUak+kg3MhlRDExES4zMJ0ImR9O/0peCnpg/HGWTU
 b9BuOqlOXxgp9H2OJyy7mz+53SX7YE+aKhOugb+WDbisFw6ICTgwrFosPhuIuQgea6Qb
 ksZO1vSrCH6xRZNo7sZJLFF1jsteGv4+NtNhNr/qFCNObMKqnERExEFs2zUY0OS5/GSF
 4Rb4NVSbFtdQt64S2upNEcNvdiwLnbH0gpTjGGwBgdm5R+ylTW/Oe/QSCzLeSmbrwSD6
 Fcww==
X-Gm-Message-State: APjAAAVhh+P4XdD8Gw+NM5d6q0XmYcBgeeIM+XDhE8uePKjDUhuR+C2B
 5/6VlYz+h/UvmdzuElPpiKQiUuA=
X-Google-Smtp-Source: APXvYqyaHVSgRRfXaE/jHqQeLeMpOPe0UJG4spkvdr76QInpH+RixZhPrk28zWuEjpN8gLV0skGkqQ==
X-Received: by 2002:aca:3755:: with SMTP id e82mr4116064oia.19.1575486078517; 
 Wed, 04 Dec 2019 11:01:18 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b3sm2583051oie.25.2019.12.04.11.01.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:01:17 -0800 (PST)
Date: Wed, 4 Dec 2019 13:01:17 -0600
From: Rob Herring <robh@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH v2 3/4] dt-bindings: vendor-prefixes: Add "calaosystems"
 for CALAO Systems SAS
Message-ID: <20191204190117.GA29217@bogus>
References: <20191120181857.97174-1-stephan@gerhold.net>
 <20191120181857.97174-3-stephan@gerhold.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120181857.97174-3-stephan@gerhold.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_110119_980078_5428352C 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 19:18:56 +0100, Stephan Gerhold wrote:
> The Snowball SBC supported by arch/arm/boot/dts/ste-snowball.dts
> was made by CALAO Systems and uses the "calaosystems,snowball-a9500"
> compatible. Prepare for documenting the compatible by adding
> "calaosystems" to the list of vendor prefixes.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
> Changes in v2: none
> v1: https://lore.kernel.org/linux-devicetree/20191120121720.72845-2-stephan@gerhold.net/
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
