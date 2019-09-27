Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA2EC0ABA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfzvtzJtURcXr567MuOjNW2ZTkKX3N2dPfriT5btWL4=; b=Qa+zdU5TlHmqGB
	6MhG0uJcIsR4WcW+9CmhMvt2r/0Xz8CYrIy9pSUuR3laowSSTQzlYF3y2PihO2xkFFS5BLybqG2kU
	FrcgYaEGasMyi2lKlyEa1vvWPgw6lE4aWiZKVZtzyZKwM8OwfgS70iqUMGOwAAwVAQz7Eg18OfXfo
	qqnalqoxFpQnw6D+GsxY0gGhycbWiwYo3aYwVTgeeDYLRRb5EpNNjIlXxOu6WTG3C4vfN4FHn0Y14
	/MiNWltBb+e17zj1GBSwEqXNTiqRYaskqNiJ2Z58sMaSFgjJbRRfk+vpMvXY85fFZ3SxAmt4wQepA
	W/m2OCK7JEmq0mlxXMUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDuY8-0007i3-0T; Fri, 27 Sep 2019 18:01:00 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDuXy-0007hJ-0s
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:00:51 +0000
Received: by mail-ot1-f67.google.com with SMTP id m19so3030188otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:00:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l7BCwV3NerQ03LGiSzwjhLsOez+Wy/9zE1sSB6m5ONw=;
 b=shEP1X+HH4KJCLPBmePAOb1Kg/0kRDEgIE4O9WL4nBMWDn7mqpPC71EGmxUO+5LSpG
 PxTL2kcWviGK2t0sPJI1HzTdbO47rXxKFONGbU0KGQjJFum1HFAX9mZGAIvDCmpqOtPg
 PlLZ2zpTm+YWqHkmyAg5Wx+Xn7cZl8GEmI/IrnGOpHby868dfonduZBW090AoYxqJH2U
 Z8mUfi8s4pSWengkt6be5iJTTTT3qZYd+l/pTM6LvojbvdBhAVHJBkoEIpVJzytcF9N/
 4uD6sa0Zx2E4ScMkVZSl1is/R5k5s+0OjaQt0vzPZfW01sLqWwPxH2QYxvGMaZhU15lK
 1oOw==
X-Gm-Message-State: APjAAAXBAgmVdBX6MIbrXk1LieGGR+LmcVeoag+sQH/MgMw18PH22BMc
 got+IOWwAI1udbhaEAexpA==
X-Google-Smtp-Source: APXvYqx1zz9JdKZCj7dotz/c9Xs7Sqvslg98uXH+/47gz30MNOxp2Mf70RXqi68SYeY4gvveyJFkSg==
X-Received: by 2002:a9d:724c:: with SMTP id a12mr4598224otk.230.1569607248917; 
 Fri, 27 Sep 2019 11:00:48 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z12sm601596oth.71.2019.09.27.11.00.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:00:47 -0700 (PDT)
Date: Fri, 27 Sep 2019 13:00:47 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: arm: samsung: Convert Exynos PMU
 bindings to json-schema
Message-ID: <20190927180047.GA24461@bogus>
References: <20190920162600.7486-1-krzk@kernel.org>
 <20190920162600.7486-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920162600.7486-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_110050_062399_C0EA4930 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 18:26:00 +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Power Management Unit (PMU) bindings to DT schema
> format using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Use select to skip other syscon nodes,
> 2. Indent example with four spaces (more readable),
> 3. Use pattern for clkoutN property,
> 4. Include header with clock IDs in example to bring it closer to real DTS.
> 
> Changes since v1:
> 1. Fix clock-names to match all elements against schema (any number of
>    any clkoutN values).
>    This currently fails:
>        properties:clock-names:items: {'enum': ['clkout0', 'clkout1', 'clkout2',
>        'clkout3', 'clkout4', 'clkout5', 'clkout6', 'clkout7', 'clkout8',
>        'clkout9', 'clkout10', 'clkout11', 'clkout12', 'clkout13', 'clkout14',
>        'clkout15', 'clkout16']} is not of type 'array
> 
> 2. Add syscon reboot and poweroff nodes.
> ---
>  .../devicetree/bindings/arm/samsung/pmu.txt   |  72 ------------
>  .../devicetree/bindings/arm/samsung/pmu.yaml  | 105 ++++++++++++++++++
>  2 files changed, 105 insertions(+), 72 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
