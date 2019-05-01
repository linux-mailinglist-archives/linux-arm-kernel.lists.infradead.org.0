Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7DD10E52
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 23:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9B/ZAoIQM8/AZP6Z7Q2Iyn0x7nNVL7zDhLnNZiqFN4o=; b=IbbQeGaO7Ks2Wx
	YBjQ6i9ZDHNCci1Q6bzjrM2NxhMCLExzDQ4WAepXQZfUFT2XSnuiMT6/gh4Vz4whRudW3ecmaJf1C
	j5t/2kXpnUYZUx+hT+sK+7jaFX+jM1Dg0u5XyIBurmz1FmlXMB5RC9YuRbSoLVZcjI9zgu7dBBVVr
	FSdLnnb4GlP1NKLvfCvOThPk8SVsQZy8MJWSeKo1ZmjtHeJQ5FJGW36SFQ2/a4UMjrybZH5TuGukM
	YipdL7Ep5C+Wc056m2VZN5WgFZbKpd8ABmah0UrPgRRqmz4BOKX0HxvDeJ3A20ReyZbA+HiRzMnHd
	oF/UyLElQT+2dTv2NYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLwLc-0006r3-GZ; Wed, 01 May 2019 21:01:00 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLwLW-0006q8-2D
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 21:00:55 +0000
Received: by mail-oi1-f196.google.com with SMTP id l203so86675oia.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 14:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Fhyjh+pEfTmxGVzs4D2NxCU9BjdUSsUEryv2fL7NV2Q=;
 b=QKgtg5Gh7iNkqnhYHRE2gCVnPWvEAvsEmWNbWTkfZqwtOLOLf5L3r+GopLDWtK4ZuG
 kGzsg4iW4TzlwZR02yOQOVcZ4nVFvkEXYMOZPCrXeToiNUleFW3iu5o/Iy2BBlf6HBqb
 tow7oj1Ai5YUBOT2vamiCJnauHReDGeRKDCMXisMgiOiwxr1cN2Dmk6UEjEMOoz3kx0f
 pK2fIPotR00r8AMpF0Kxt70WJfBZgkBrfxcJVOOMfvJ5OiTC5ACTf1CVqi+sDO/wxZzA
 +9m62XPGRhjqZvLghSjLw+E2z/Ch+T4DJrhnAY+r1ClKK05OMB+96Bq2XYu+Wj3ctL34
 JPSg==
X-Gm-Message-State: APjAAAVWF7MGjAstf/k5zxR8VNbD/Dq14OdEAQwqPCThHdrfTZ78i7Bt
 Wegj+b+sYZcnWu5igHBo8m13YYM=
X-Google-Smtp-Source: APXvYqyNVKjPoji2SxJxP3ylggeCueF4E0E33rMuGH1+fipTxjK6PYV0QFeg1sxueHl1rXk5rOqFqA==
X-Received: by 2002:aca:fd52:: with SMTP id b79mr241015oii.34.1556744451588;
 Wed, 01 May 2019 14:00:51 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m206sm17199824oif.50.2019.05.01.14.00.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 14:00:49 -0700 (PDT)
Date: Wed, 1 May 2019 16:00:48 -0500
From: Rob Herring <robh@kernel.org>
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Subject: Re: [PATCH v2 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums  binding
Message-ID: <20190501210048.GA20658@bogus>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-5-rasmus.villemoes@prevas.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501092841.9026-5-rasmus.villemoes@prevas.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_140054_108369_D1769725 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Scott Wood <oss@buserror.net>,
 Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Mark Rutland <mark.rutland@arm.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 1 May 2019 09:29:08 +0000, Rasmus Villemoes wrote:
> Reading table 4-30, and its footnotes, of the QUICC Engine Block
> Reference Manual shows that the set of snum _values_ is not
> necessarily just a function of the _number_ of snums, as given in the
> fsl,qe-num-snums property.
> 
> As an alternative, to make it easier to add support for other variants
> of the QUICC engine IP, this introduces a new binding fsl,qe-snums,
> which automatically encodes both the number of snums and the actual
> values to use.
> 
> For example, for the MPC8309, one would specify the property as
> 
>                fsl,qe-snums = /bits/ 8 <
>                        0x88 0x89 0x98 0x99 0xa8 0xa9 0xb8 0xb9
>                        0xc8 0xc9 0xd8 0xd9 0xe8 0xe9>;
> 
> Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
> ---
>  Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
