Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125BE66F7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 15:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSU52GCecKGNdtKLwGwwTVVg5v74cvB7kjCZwap2Kqc=; b=QjGhEf63pc9jrB
	yV94RfGCpbb0XVqI0L8D6zBUbGqj2cPMbZbWWitbeLcYKG+Z/e0slV6olfqliJKBCKJxJHIa7Ml6h
	+UU8i6b6WfrgDKsYDjx4P/yExpDxwu9ii9+8FpMj3i00lJkCEdvg6/4Nj/U785Hixd4RjavMBKMT6
	7f9huKUNsPtQPuB3V51n1j8/9d07vjSyG9fvIs/l0mH88r3PcHMYGxMoytJxSeEh7MkA9muD76Nsf
	9KoXqavWucN16gK/MLczc0QshDm+bm4o5LYBD+6lD3pRdtbWEUhnYh0hCDZyfDCX3T/g1LN6a8f+r
	YlKP0vwmmNuXYRBwjBzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlvDn-0004NK-EH; Fri, 12 Jul 2019 13:04:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlvDf-0004Md-28
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 13:04:12 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 86968216C8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 13:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562936650;
 bh=j08i/yzt8yihm95wbKxIa8ANHeLTJGyB1LowMPZRoQs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tn4/f9n/k299HHdLN0F6ScJZKf/VYffpnnAYh+PPAzA7ZjRWQFYrqKf+oTQV+fuy4
 ACXtzrbqpM/naLe0Cz/a11svW1mUDqExyut4Wh/u8EXdbSDYghpYV5xdCObec1WWpU
 LNbCdcMo3gwFzWE9scGST+eZVaGIXGMXzio+pSbQ=
Received: by mail-qt1-f174.google.com with SMTP id x22so3045954qtp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 06:04:10 -0700 (PDT)
X-Gm-Message-State: APjAAAWlwqn5X1pPj3vyVIYUL0uz5DnszGdRWIDzKFxw8/p1jx+znRPl
 3z+NGRCMxL4tEUNXGrPfE+J/eeZUhafTqbJhtA==
X-Google-Smtp-Source: APXvYqy0Gw33CPTr5i9Ny8C1aCwNSn1BsAcArqdhs4L6Ao3k4lrTO3dV3h27CfJYvsBcR6H2d01/a3fqfjUcmFKloV0=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr6598069qve.148.1562936649734; 
 Fri, 12 Jul 2019 06:04:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190712033214.24713-1-andrew@aj.id.au>
 <20190712033214.24713-2-andrew@aj.id.au>
In-Reply-To: <20190712033214.24713-2-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 12 Jul 2019 07:03:57 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq++J+K2goHiNrHJGnL6vrLjmKhM+vpYO=sTnmv6fm2sog@mail.gmail.com>
Message-ID: <CAL_Jsq++J+K2goHiNrHJGnL6vrLjmKhM+vpYO=sTnmv6fm2sog@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: Document Aspeed SD controller
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_060411_120155_ACF855EA 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 9:32 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
> SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> data bus if only a single slot is enabled.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> In v2:
>
> * Rename to aspeed,sdhci.yaml
> * Rename sd-controller compatible
> * Add `maxItems: 1` for reg properties
> * Move sdhci subnode description to patternProperties
> * Drop sdhci compatible requirement
> * #address-cells and #size-cells are required
> * Prevent additional properties
> * Implement explicit ranges in example
> * Remove slot property
>
>  .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
