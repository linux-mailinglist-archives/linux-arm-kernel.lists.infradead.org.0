Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD7F7EC1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 07:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIIH+VWGJgZ3S3WbSE8xRxVzPkTx69Cs0wwD5xw1Ql8=; b=ZvXB6z0g8gmZTE
	QCVWULP1Du6hTXsp9ahE/ZnytqJStXzfvo5OJd2gud9bOhOHeNeYQ2ydNghMAezRvCtM8bpAJYaos
	ZWpB3Ia56tFnn1qaL7kwRiDP/uwSS9LBAwX6N1/UUQOYkSEqX+gCHjJ23nKMa6L43NairXMoDZ/T2
	9Duq1dbObIQdBntkOPLYtFw8wjGeB4EP3TeP40TMBrpkZZoWckMyOTCdPO8cV+k6g7j2NS22Gq4B4
	66q61xGhW5d+/4kXNo9vg08YmK5waXq4OC7NPwQSr4AuH1tWpeX1vt+WFjAYj9glSS2SPrXm1XGfU
	bxIOrKp8SRZlUzVBCvsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htQ4u-0007OR-Bv; Fri, 02 Aug 2019 05:26:08 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htQ4i-0007Ny-HH
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 05:25:57 +0000
Received: by mail-qk1-x743.google.com with SMTP id t187so1209766qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 22:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z32U+47NlX9GSdYxrOMIJkrmirJtRbWII8nnxF0TuFc=;
 b=Q4E3j8UI4qdvR1yVPLhpbG1bb2LoSf+oJmdOKYrZ3l9Nzeyu1LLSDKLj9UFAKvfJaI
 800cjW7JoCr+RIUKPQLGO6ejfXvXGY6mKepHIVWH5rn5JdR2KUX8ztVmw3dnJRU4YSec
 29wmTpZyk9irZGeI4aKHHK4rPfezHs2y0YY5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z32U+47NlX9GSdYxrOMIJkrmirJtRbWII8nnxF0TuFc=;
 b=RbVFUJBko39IsFyIx2bZ7X8j4OXxMpYwPaUSo1MFi+ezq5JFEU3SRSIT9I/pidprCG
 Lr0xtkHXX8EaTAUAXqpBJiQmIQUWaHiE+vfsGDybqoNDpzPN73OrG4kV02RW6oLWA283
 yyTOLBQTIHBTalaah9k+gnyCKUkfWZyBH0eir1caOAMt0oxZ3aoFqUThGEiJPfL30y6J
 rDYYMD2vV2qndJ9LanvBBYeAByX4IjJ/AL2pi/FMHd9CLe9aEd1gRkOLp4QsYSa/xIBG
 zIjlyczwIhnf4oFMtJ09axC6Ggic7SS2rvXoahhbPgYU+/OWG+CQ6kPFp+CfO4rUO5DX
 Q9Jg==
X-Gm-Message-State: APjAAAUMw71IexJZ/iNL8YH9Hp7xxB0cUKe8N7rQsF4g+TZDTx1KCgw4
 4AWzTBxxmdgZnyVKRv/PRbrw07HvSeuZd42+jrA=
X-Google-Smtp-Source: APXvYqzKiJhQDXPLqDJ46c7VaRVieOmVC318o/1JxlUNJBBaxdRAWAOc7PQX4AhfQELWZtZ71FDimyPfqFOf5XX5BVw=
X-Received: by 2002:a05:620a:16d6:: with SMTP id
 a22mr89485291qkn.414.1564723555381; 
 Thu, 01 Aug 2019 22:25:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190802041010.1234178-1-taoren@fb.com>
 <CACPK8XcuwNE3aBrsgn-paTZt-EtF6pc6WwYBQef5xc7157bk2g@mail.gmail.com>
 <606273F4-E021-4AAF-9F59-F363E4FFF92A@fb.com>
In-Reply-To: <606273F4-E021-4AAF-9F59-F363E4FFF92A@fb.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 2 Aug 2019 05:25:43 +0000
Message-ID: <CACPK8Xc-vjJJ_kbe_KGss+RDMdhRVw-YDj9Cdux8iERSvE0_GQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: aspeed: Add Facebook Wedge100 BMC
To: Tao Ren <taoren@fb.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_222556_615594_F78C967E 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019 at 05:20, Tao Ren <taoren@fb.com> wrote:
>
> On 8/1/19, 9:21 PM, "Joel Stanley" <joel@jms.id.au> wrote:
>
> >  On Fri, 2 Aug 2019 at 04:10, Tao Ren <taoren@fb.com> wrote:
> >>
> >> Add initial version of device tree for Facebook Wedge100 AST2400 BMC
> >> platform.
> >>
> >> Signed-off-by: Tao Ren <taoren@fb.com>
> >> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> >> ---
> >>  Changes in v2:
> >>  - remove "debug" from bootargs.
> >
> > Thanks. I applied wedge40 and then this one fails to apply due to
> > conflicts in the Makefile. Next time you have two patches, send them
> > as a series they apply one atop the other.
>
> I thought about asking you if I should send them as a series although they are logically independent patches..
> Sorry about that and I will do so for future patches.
>
> >  The naming of these two files suggests they come from a family. I
> >  noticed there's very minor differences, a pca9548 switch and the use
> >  of a watchdog.
> >
> >  Are these device trees complete? If yes, do you think it's worthwhile
> >  to have a common wedge description in eg.
> >  aspeed-bmc-facebook-wedge.dtsi, and put the unique description in
> >  respective dts board files?
> >
> >  The upside of this is reduced duplication.
> >
> >  If you have a reason not to, then that is okay and we can leave it as
> >  you submitted them.
>
> Thank you for the suggestion. I'm also considering moving common stuff into "dtsi" file, but let me take care of it in a separate patch, mainly because:
>   1) I have one more BMC platform (galaxy100) which is also similar to wedge.
>       I haven't started the platform, but once I have galaxy100 device tree ready, it would be easier for me to extract common part.
>   2) the device tree is not complete yet.
>       For example, all the i2c devices are still created from userspace.
>       I'm trying to move the logic from userspace to device tree but I haven't decided what to do with those cpld/fpga devices.

Okay, thanks.

I've applied both of these to the aspeed tree for 5.4.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
