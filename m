Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434777CB61
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 20:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJnVXz8FSKL56zBJiekaIMiojF3prEXv1JFZHb7tXuE=; b=T36IOr0+u76m+x
	NpzOWoVaBOjI9pBPfxj9nCwZqY8Shx7PdW9+Io1WxJav8Sqs8Gm2dCMF4FD1wOcIwuSV0nwH4k1FC
	ZnmUoRL3hfdeSNkJkKd42uCdb6JbqiECEHN3wjJFsPveRzMTVDhjRBjUfIeeFP4jnBD0PSlV1+squ
	m5TYNySfstd4y12XBa0fPpGrN4F7Exygbp2xuhspGe3L7RtpO4Cm9fMMeSoTWXOoA14ZjKQe7vucO
	0VuVJIhIOyzcy70P8imB8SCMKjNhOu55jrXNtDcA01nM38BlH95GsB/sP0zJwKN8dDZ3aoB8yKQ1m
	2/tU51UJj6sHX2De6Smg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssue-00005e-Cz; Wed, 31 Jul 2019 18:01:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hssuW-0008WQ-Ed
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 18:01:13 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85BB621726
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 18:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564596071;
 bh=8nOFSWZySTyugJad0IhgHzCcqRmA1DQddnc5vZfLDYQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IcLzpeJ++zT1SdS0YqxWYIhVWN/Np6xGXLCvPVp+qZEAwyVzAEfzWwNTCjCc+aaHe
 CXhmhBwiGSl0GrHglJzl85gRAaUrEdgMNFBm7VLNmotfl+5dExm7sddpL8W/1kAhQd
 oiWV2PBRcO9zD40ndRE3FX+3BDlpK1Dl0VDboG+w=
Received: by mail-qk1-f178.google.com with SMTP id g18so49910513qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 11:01:11 -0700 (PDT)
X-Gm-Message-State: APjAAAX8i9VVe5a7KM78tLt5Cozp1604f2giIzg2eqDLD85B5ji0sVG8
 rfepmTcoFzB6opBbrR/aHTMhhxo6X1lUDHxkKA==
X-Google-Smtp-Source: APXvYqyh0H1hWwgJHkwCQ5+lJzOC3u4rhsBJaDX6WnQnTqxZqhR3SatK4t4orcp+Ov221H8C92iSLGnRywlqsL+eXQQ=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr17139303qke.393.1564596070704; 
 Wed, 31 Jul 2019 11:01:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190731053959.16293-1-andrew@aj.id.au>
 <20190731053959.16293-2-andrew@aj.id.au>
In-Reply-To: <20190731053959.16293-2-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 31 Jul 2019 12:00:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLu2M7qnO08kHbgheNCN1+Lis0shrjfnphMbkSJKRs7=A@mail.gmail.com>
Message-ID: <CAL_JsqLu2M7qnO08kHbgheNCN1+Lis0shrjfnphMbkSJKRs7=A@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/4] dt-bindings: net: Add aspeed,
 ast2600-mdio binding
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_110112_508642_82ABDE18 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, David Miller <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 11:39 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The AST2600 splits out the MDIO bus controller from the MAC into its own
> IP block and rearranges the register layout. Add a new binding to
> describe the new hardware.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>
> ---
> v2:
> * aspeed: Utilise mdio.yaml
> * aspeed: Drop status from example
> ---
>  .../bindings/net/aspeed,ast2600-mdio.yaml     | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
