Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1B4C8D46
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFp1ljLRHcj7OQAF+dTtWOORT9LJaLoqZdcm8hkiWgU=; b=bQJadgcZaTeSWM
	k0h9Mm/mMd1Hx4+5NCUaRo0cN+jGu7FAV0wcMQeUOr4iYt8TQu1ghXwconAwbCWCe72QQWbvnQOkb
	3G0fche5Y2CmC4xt1jGDFCEgWRCnmYgjvkRqeFNAPRxEWrLqbPFMBHToNZAF5c5euOXstHHfrUnu+
	/EDlS27On6KHW5px+2KmXCAT+r1INroxzv9B2lRzOe/25NzWnAD4CDEvBNF3ILc+91X/7AQ2KRVhV
	31EcmrsudvbIt2LYqAK/80PnqR4mGAB3U1xuXbW1i4zKPxX+FnuLpLKaxEhpDIg03CNmpmypyCQoU
	IHbvpnHjDpkZ5dOqPkSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgrh-0001MQ-Fg; Wed, 02 Oct 2019 15:48:33 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgrX-0001Lz-Ie
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:48:24 +0000
Received: by mail-wm1-f68.google.com with SMTP id f22so7517302wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:48:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IwKP6bZ0/M/GNRiVw0vgEg5C/Drz9g4f2GY67meqLWE=;
 b=TwAIPeJhjY1HbwzaGR55Gpl1DG9IuKTP6lFf3THij59U7W3fWVhBOvDPrAgl6UjbnE
 eqNulGUiB4yft7JO/8oUG2bOZuByhOCSJtTwfYVrAQNVl0L+QAyZG0FP2Lx5Ty5v4c44
 GJ8q0VvpHwmXFt55xrVEq5Hc/uPzit1tyKmK+qKXumxd9DhREPfES9D86Szy4Y+je9O/
 Cop5OHcYIQaAYVcS1QI8sWwuTg6zGZGmzlFWxXxqjIwzGezcdgrjHdYEiUMj85zPiplH
 QIiz3j6lPVnPzlZIloYANC+qiaa1sVaxr7/ebC8JLx/JIrt+w/g5Al2bQfu+z1tYN/uK
 0mTQ==
X-Gm-Message-State: APjAAAVUU4dA328q9fKAvZgSVRUO334CEeFzvWsSijkET1kUSRcsUZz6
 WJG9tJ7C/uky7wSpQD/699w=
X-Google-Smtp-Source: APXvYqxeZ2BmgRha6QvpGjz+C0CN04lAeTAC36faPuMfUtJeANX0YHIp1xp1+lIX7zNyzHcuV9uAvQ==
X-Received: by 2002:a1c:1d85:: with SMTP id d127mr3638645wmd.14.1570031302235; 
 Wed, 02 Oct 2019 08:48:22 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id o1sm3159082wrs.78.2019.10.02.08.48.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 08:48:21 -0700 (PDT)
Date: Wed, 2 Oct 2019 17:48:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 2/6] dt-bindings: samsung: Update the CHIP ID binding
 documentation
Message-ID: <20191002154819.GA4072@kozik-lap>
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123637eucas1p26d2051f9bdd1bdf4510f1908ea98f641@eucas1p2.samsung.com>
 <20190910123618.27985-3-s.nawrocki@samsung.com>
 <20190917181322.GA683@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917181322.GA683@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_084823_617480_7E4D1707 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 01:13:22PM -0500, Rob Herring wrote:
> On Tue, 10 Sep 2019 14:36:14 +0200, Sylwester Nawrocki wrote:
> > This patch adds documentation of a new optional "samsung,asv-bin"
> > property in the chipid device node and documents requirement of
> > "syscon" compatible string.  These additions are needed to support
> > Exynos ASV (Adaptive Supply Voltage) feature.
> > 
> > Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> > ---
> > Changes since v3:
> >  - none
> > 
> > Changes since v2:
> >  - corrected patch summary line prefix, the patch moved in the
> >    sequence
> > 
> > Changes since v1 (RFC):
> >  - new patch
> > ---
> >  .../devicetree/bindings/arm/samsung/exynos-chipid.txt  | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Dear Sylwester,

This will create conflicts with conversion to dt-schema (already picked
up by Rob).

Can you convert this patch to dt-schema format and send it for Rob?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
