Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2532CB03AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 20:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FK/BbJxVv09D/yly/BoAwYfyW2bp8cExUjZbvV2kicc=; b=fwQQ7SBWj7GrI6
	8tfyZwSJvGqJe18fwH0npQvV0m6umKJnoq9iIz9r8pRd5EUpscbVAqUX6DaxlQUxrQkJETGBfkqar
	m+2YuVR0eLXwyzrqnmg2Af5Q+E65OIVl1MaNBMJm2RWyfsAG1PsO1hAYYhTIj95wcfnf05r+U3/GN
	WenvXfAqAcyKUtO4DxLsBrhoX/X3b/yC0QPbzayFSa5T7+7NJNI6EhKXCxWXlJWbTu/XRlTA9GrOW
	jgHfIJpo4Y8DyNkS5rytYlam+d2Sdbk1TSrvZHoer/yLl2fQwYIIhnvnax6Ust0YriVe96dbaLec5
	PIWBfLz5sVnGG0t7JjZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87Pl-0007NJ-DJ; Wed, 11 Sep 2019 18:32:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87PT-0007Ls-Sz
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 18:32:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id n10so4723502wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 11:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6Te7QE2Q2g9STJbNhhZtv5SiHSyMZyM+FEre3Dz6O8Y=;
 b=jmgDd6/90ZK/KSjOdrNqJAxGaDbwNjQJv5BWKzzKlM6LwUpEtBrZ4S/M6pY1Y2zwVV
 SYnUdgL2vXoRYvJP69g7kRU8ygDsin0HwQX37zUefUMQVvvH3BAdctndGQ6ajD6V9/p7
 B1LcD9Q7jXCDeUw1PxdEbcIiApu7ZJyDqkv7hu7B4b4A8tl+7W7n43Ja8y2XVNmsXXPi
 2JPPtO9FTxf2qhFuv126oXjMVF1OO2LnELKexrwxJc+me24+3CWUCeR0oF52zerphQst
 zBF8s+lLPpx4Eftb2S04xTlTUUEcd1SSmuWlDD040Yc/OoyaxfqGL0I2+/RiA08WTukU
 7idQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6Te7QE2Q2g9STJbNhhZtv5SiHSyMZyM+FEre3Dz6O8Y=;
 b=lAxrOMAsJX13bLFYkB66BPbD9iI22aa//xlTSMLg89XwvQy6ZguUFwk4d7CKNyU5rz
 nCgQ5kgI31kq41xgTXS8jWa4J00kPFG/yxm1vJBqLGx9hccvsYYHgMX0kwzXAr5b+pyi
 NKnPcqtNWKjRCXC9WdZyzisUSLTBpO4BdwSRpktak2k/5Hwo/cUPVepwv8Gz0jY6stax
 BF8PgSKyfRlm/2NeZdR7rp/uu8q5ttI+KUdC+MCvISOP6rX6OogrFB3c8GcQ6d9P4itb
 OO00I/mCv486gnKwZ0KBLlHI7mGVs7y96Zto9H8Rq4v5V+XoCVxaVOgjwmSK9j0yysb2
 WilQ==
X-Gm-Message-State: APjAAAXS39WfrPTt6WFbAJTXNLVn9KRo84OCoDR4cpG2/nyA2h/56jOB
 j2yg72zk8pgUjNGOx8dAbJA=
X-Google-Smtp-Source: APXvYqxLgk2nQMwVb7p2dfq9uG3VnutIy2nbjXTYamMxfezNSLjPILVR6BBa3EVv43hysi/02tOp5Q==
X-Received: by 2002:a1c:5451:: with SMTP id p17mr5092099wmi.103.1568226721265; 
 Wed, 11 Sep 2019 11:32:01 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id i9sm5162622wmf.14.2019.09.11.11.31.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 11:32:00 -0700 (PDT)
Date: Wed, 11 Sep 2019 20:31:58 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 3/9] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
Message-ID: <20190911183158.GA8264@Red>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-4-clabbe.montjoie@gmail.com>
 <20190907040116.lib532o2eqt4qnvv@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907040116.lib532o2eqt4qnvv@flea>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_113207_939311_F98C9A1F 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 07:01:16AM +0300, Maxime Ripard wrote:
> On Fri, Sep 06, 2019 at 08:45:45PM +0200, Corentin Labbe wrote:
> > This patch adds documentation for Device-Tree bindings for the
> > Crypto Engine cryptographic accelerator driver.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  .../bindings/crypto/allwinner,sun8i-ce.yaml   | 84 +++++++++++++++++++
> >  1 file changed, 84 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
[...]
> > +else:
> > +  clocks:
> > +    items:
> > +      - description: Bus clock
> > +      - description: Module clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: ahb
> > +      - const: mod
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    const: ahb
> 
> This prevents the usage of the additionalProperties property, which
> you should really use.
> 
> What you can do instead is moving the clocks and clock-names
> description under properties, with a minItems of 2 and a maxItems of
> 3. Then you can restrict the length of that property to either 2 or 3
> depending on the case here.
> 

Hello

I fail to do this.
I do the following (keeped only clock stuff)
properties:

  clocks:
    items:
      - description: Bus clock
      - description: Module clock
      - description: MBus clock

  clock-names:
    items:
      - const: ahb
      - const: mod
      - const: mbus

if:
  properties:
    compatible:
      items:
        const: allwinner,sun50i-h6-crypto
then:
  properties:
      clocks:
        minItems: 3
        maxItems: 3
      clock-names:
        minItems: 3
        maxItems: 3
else:
  properties:
      clocks:
        minItems: 2
        maxItems: 2
      clock-names:
        minItems: 2
        maxItems: 2

With this, the dtb_check keep complain that a64 have two short clocks.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
