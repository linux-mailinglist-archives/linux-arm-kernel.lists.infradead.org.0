Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C00170AC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lu4K2SqChRpFYZhW9+CgJ5mhAZca1KBpOHYFYMYMPpY=; b=de3vuKhiY5Fb1z
	kCaUL9nkiEUI9f86BwuBEMvyfJVMdmkYoTOZl1mpATa7PPsaPoaExK7+jpVQANo5PxepsDrF/dQLv
	tZHJi15pT8e9kND9FEUQVIfmBEit4LmN0sVp9Gi3aAJ4qMEHLTZaAxYR5ZOUoujPnMAKBD9Ta4dF+
	UD5gH60L/XnrzzGAW0++Uud6XruCOVWcN/+Fkb6CmQknADjjcvdn3z/yECw0ZJ11fnr08jI3tHn14
	kgltauUvdtDM1QTv8CEBuOkroyrNt5jqBzVJ03BL0rRsKexX4Iep5oN2nRv95XxUh7SovURacgf4G
	9SNui4y0YQGnS4D8RNpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74WJ-0006kG-MD; Wed, 26 Feb 2020 21:47:07 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74Vx-0006fD-NI
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:46:47 +0000
Received: by mail-oi1-f193.google.com with SMTP id q81so1169256oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:46:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ykCghEU0HIKEVpuEfgJeanwDYTO0hdry6TeLSu7ZHuQ=;
 b=ERSOhcpCMybDzbdBDpnX1ibqzAcybUjOJQgWMd18q/gpa61Cd9mx2YkIRXXA+H2rmr
 ZRAP4/ft9svVpS6B0lsS8N/Pw9kPsiRGD5FFqiXxD/LfHpMkhgncorbIhluZCN5vE3i9
 3QS6sag6OEEUcsdtPZsW439wreVdZr3W0Sc05NLU/No7vf8SxaughJJGKb8bIa5CLpyP
 TXhPujsD19Ev7sdVg6MNe/mw2foOgA/xe6zZ3PxW0Z128NxrKgUDxS/i2Xi0D0VgqxHu
 CqcZJAbs33qtkJfvlBWTb/Ao3yrrHI7jw3Yy/ci8R33gxJg+7TdwyUcdor3f4OMenh6i
 EduA==
X-Gm-Message-State: APjAAAWCgJy8Xu+I93FBV67rGZSCjd253yvIkfR9ceFoBk0ujHg3bV7e
 XFBC2gBLTcDj/ChrifdPEg==
X-Google-Smtp-Source: APXvYqy39JBi19ty5lIMh3UAvPXf0/NW0hQi7cc8OYICFBXx/4X3dPhgCreZvPbuoUlB0Q+z0pE3TQ==
X-Received: by 2002:aca:ec46:: with SMTP id k67mr844736oih.43.1582753604749;
 Wed, 26 Feb 2020 13:46:44 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y6sm1202143oti.44.2020.02.26.13.46.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:46:44 -0800 (PST)
Received: (nullmailer pid 16588 invoked by uid 1000);
 Wed, 26 Feb 2020 21:46:43 -0000
Date: Wed, 26 Feb 2020 15:46:43 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: Convert UniPhier board/SoC
 bindings to json-schema
Message-ID: <20200226214643.GA9729@bogus>
References: <20200222060435.971-1-yamada.masahiro@socionext.com>
 <20200226214146.GA9521@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226214146.GA9521@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_134645_766954_327D22E0 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 03:41:46PM -0600, Rob Herring wrote:
> On Sat, 22 Feb 2020 15:04:33 +0900, Masahiro Yamada wrote:
> > Convert the Socionext UniPhier board/SoC binding to DT schema format.
> > 
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> > 
> > Changes in v2:
> >   - Remove 'examples' because examples are fold into /example-0 node
> >     and there is no way to meet
> >       $nodename:
> >          const: '/'
> > 
> >  .../bindings/arm/socionext/uniphier.txt       | 47 --------------
> >  .../bindings/arm/socionext/uniphier.yaml      | 61 +++++++++++++++++++
> >  MAINTAINERS                                   |  2 +-
> >  3 files changed, 62 insertions(+), 48 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

As this is all DT bindings, I'll apply the series.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
