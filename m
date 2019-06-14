Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064F64654E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 19:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtnKccb0MfKWMwb1zcc+Zz0nCw5Uh/W7vugFh5Fu9r8=; b=Tc2tWw6I9gGdA1
	SUuuG03NjtlHNlWZIOM4tb4Ji0MdJ8NLfkalgF8CkoyBq1/CQUETg9fphjtBFzzl8zQ6Detf8derH
	t8aAAPDbjxLHJwdjejUubfabOFHkX9YvFeiEYvF0Bvct3PTvRZyRkXSacpwHGWcakEPyzbK3IaJh9
	XUmGGTJh3fqvoJodSkc73/NOYfPKwAJo09dzlqT/C1NL/NgDejCMnA8RdVGl2hZR3n1dAov96tHE0
	01XRvH7q9bsge4k49lrHCFecVOVMFm2pvdQahPnm9LKNXJAFP6mOpWQD/QAJn864jNUk68PoE/o5s
	iZixHLCInOYbzymAWCJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpdb-0002Gt-8W; Fri, 14 Jun 2019 17:05:15 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpdL-0002Aw-JS
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 17:05:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id 196so1890427pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 10:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GRNhWBdNTilur/4Qu0VKxMp8RHH2Xu/iee1oWBanHcQ=;
 b=Qnx/fCIVfWiWASj1BfPRmpagCrJESCLnbzOnBc+UHuB7cHWif0IVEz9Scq1PY4sOPa
 LYsNN2IgRPUMtrZYbx4LxU6tScbnCsCWPDXg65TkQ1LzaWJ7mMsI+pnfUBAdU/vmxW5K
 XU6T/Ku592e7S9+k0xRE5vsFZxS04ZzR/EY/pjIGGs0iSxzw1rbdWZOYaTCPM2jqJ4Qg
 nbqVm2/XlJY3x1/5lmX4rDO3jNiPEnKC9n3rz0YEiW4Rasx3YTPVGbCwCd4txEMzqu8p
 Iqo9+V9U/472EEGlT2arMhZDYMBQkiA33FRYpciTYnUb6ok6MYm3syLElTOzoVzKykSL
 lMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GRNhWBdNTilur/4Qu0VKxMp8RHH2Xu/iee1oWBanHcQ=;
 b=a5RouRAjR0VTWEuf6oXJCwPd1CvDQSWDdcA39PLqnfOvFi7phDEZDcbkVRBlUuscuu
 ocT+Fthrx8PFu2URFh26dExqzb3B6HwsyZQPoIapFa4364AkUZBA8W/HtvPzv5RmBKUx
 J9OnTyAF2rVaR+uddHMeOqAOhDwfuUygYsOEzfVmkNJpJ0wPymb75gRxtDuqP1g6wDrk
 wZQhYT1VWY1+xrLko8997cYrpRI1+ZS2kyJHQPXZL4VNbTtJ+FSufx3G0ik69MS6fo7j
 GcdreO3xMRmwkNDb9Uj+RmejfsLRBSKrceUPZBBb6QIt9UKiS1l5J0zU8mjt/r0Ovgck
 aU1Q==
X-Gm-Message-State: APjAAAUq1ljPVzKWGpLECxn7120qeO1yNCW9Kyuf/TQIXCmvGxyutqI0
 Sm/CVMIRkmMyd6C4AbtlHVz6
X-Google-Smtp-Source: APXvYqydptQgfMZN2eXp0DabgkT3g1XVFZjDoA9VlZwMca7DYvYxnhdTYKAHeYylQKIGsw2h9X4FtA==
X-Received: by 2002:a62:1515:: with SMTP id 21mr21874961pfv.100.1560531898101; 
 Fri, 14 Jun 2019 10:04:58 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6298:46a1:bdd9:1134:3bdd:7ab4])
 by smtp.gmail.com with ESMTPSA id n1sm3061706pgv.15.2019.06.14.10.04.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Jun 2019 10:04:57 -0700 (PDT)
Date: Fri, 14 Jun 2019 22:34:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v3] dt-bindings: arm: Convert Actions Semi bindings to
 jsonschema
Message-ID: <20190614170450.GA29654@Mani-XPS-13-9360>
References: <20190517153223.7650-1-robh@kernel.org>
 <20190613224435.GA32572@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613224435.GA32572@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_100459_657251_0529E176 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 04:44:35PM -0600, Rob Herring wrote:
> On Fri, May 17, 2019 at 10:32:23AM -0500, Rob Herring wrote:
> > Convert Actions Semi SoC bindings to DT schema format using json-schema.
> > =

> > Cc: "Andreas F=E4rber" <afaerber@suse.de>
> > Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > v3:
> > - update MAINTAINERS
> > =

> >  .../devicetree/bindings/arm/actions.txt       | 56 -------------------
> >  .../devicetree/bindings/arm/actions.yaml      | 38 +++++++++++++
> >  MAINTAINERS                                   |  2 +-
> >  3 files changed, 39 insertions(+), 57 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/actions.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/actions.yaml
> =

> Ping. Please apply or modify this how you'd prefer. I'm not going to =

> keep respinning this.
> =


Sorry for that Rob.

Andreas, are you going to take this patch? Else I'll pick it up (If you
want me to do the PR for next cycle)

Thanks,
Mani

> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
