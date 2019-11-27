Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F3110C087
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 00:15:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kReVsD/P1YH5ryTKorjGijhY3TUUuc5u37pXIx3P7M=; b=SChttlo0/JaBsP
	4vuo0ALVt/YAw7FQdCoywV/OVWqGtDIezDFshF6HKUPokfrJIaET2YQDtBcoUufCKLMFp0GE6171n
	qVxV3yX37gVNYwpP2tA3XEcuGKVd2BZRrkFFEgoEad5uFWs2Pr97tJpMi1BjKZ2CdZuOKcWgwuO1Y
	z30S76+K/Bv1Wy6SYw2oHAaAbzuhoF+WsaSWtg9fpyhCeqHPNuUKr/kf3XgU/Hy0ekswJYyFwC76t
	ju3Pjti2SYr15Q+ggdVhxbc72zDKMvWy98K2646QRVxGT096yIWDSoVoz0feNLJx+xq8uNzIw/Xb8
	zQyZYGoEivIwTJOkfTGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia6WM-00079M-Cy; Wed, 27 Nov 2019 23:14:54 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia6WD-00078U-D7
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 23:14:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5DB58225AC;
 Wed, 27 Nov 2019 18:14:39 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 27 Nov 2019 18:14:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=LW1r4r/I0SNnkloRX9HX4mmC7sWJfJm
 nrDXtKizCASk=; b=ev3qIbVOF14mie9Dd2Z/uZT6bzbs39plEJnGhmjPPxZBeoo
 0fsEkEZcQLvt/pRBl3dvplNuRMZlHv5RAJkuMu+oYOLrppBd5cof4XRUU3fs2JFe
 p4LQvX6X0S2QB8f7Tnn1CSWeCGzt9+imHTdvVqR5Xm3jA/pHuDKv52dNsH+sI/Gy
 Dtfu9yWU/XG9nC7SUCyz+RbQw1KuqLWcr42uH5K0bvTe4MCZG1K+y4oA5WY/RjR8
 RNFgPtu5sScztHp8cl3e2f+OHHkr2GBTyJJgPs6NqnQeq+Cmw5txqPa+LwR8EAdG
 Kp6PziHCb1wOUqN4rmVJO4SAsxt2zk4FCs8H33A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=LW1r4r
 /I0SNnkloRX9HX4mmC7sWJfJmnrDXtKizCASk=; b=tMCEz7MCdBLdjGfQ9A8rfZ
 0/93urLs9lIOGdFCdzOG8wKPUh3ltOD+cPmRhC8W5qp0+DAfPSQ4d53RAvkuVgDU
 6rOyYZTwjrfXyljBaIgE95xIAQSjsR7Da9WRrdwOXe0qTIixw2kFA3i4Azxqt42G
 unb4VuWrOv1wduboPgTTG6+na+pg6oMf83AjzXpACjktGvUNbmEn0wGCf54qvMsb
 CK0t5ZP7en1oRJY36MpQL3Unzqp6J1Hnd5gCSANCxnCN9z8u+viYQCtUSUFBD0MG
 AphTzYVQDFonneDOvr0nJATMIjGfvAwVR5CT39j8RTx4ka0A5b/BU22EWHUrHpRw
 ==
X-ME-Sender: <xms:XQPfXQNXgPnturoN7Y95pHCc4fOE6GeEm8JWFsAo4mkCbagmNn2iBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeiiedgtdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:XQPfXTT4FaIu7OuUpNt4nYpuCC0Yuz8Y2rU_6Nwy9a0wro6LApr7GA>
 <xmx:XQPfXb-rJGtb8FYprHbcVLt9j0tJzosE0o65qJ-6HiUbkpS8sFpH0A>
 <xmx:XQPfXdOwXS-jM9n1gjx7c0X7hxINAjQw1ScSuEwgkawHilWAZTlTdQ>
 <xmx:XwPfXQa3UmYHG4Jmou0mRvHerV7S1MVMEf7NU6QuMLPW-sLC7rRNhw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A9722E00A2; Wed, 27 Nov 2019 18:14:37 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <1a1db770-1f34-4bfe-a235-1b05841428b0@www.fastmail.com>
In-Reply-To: <20191126022243.215261-2-joel@jms.id.au>
References: <20191126022243.215261-1-joel@jms.id.au>
 <20191126022243.215261-2-joel@jms.id.au>
Date: Thu, 28 Nov 2019 09:46:08 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Lee Jones" <lee.jones@linaro.org>,
 "Rob Herring" <robh+dt@kernel.org>, "Philipp Zabel" <p.zabel@pengutronix.de>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: Add ast2600 to ASPEED LPC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_151445_580801_6C994FCB 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 26 Nov 2019, at 12:52, Joel Stanley wrote:
> The AST2600 has the same LPC layout as previous generation SoCs.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  Documentation/devicetree/bindings/mfd/aspeed-lpc.txt | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt 
> b/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
> index 86446074e206..bef07c3b1a3e 100644
> --- a/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
> +++ b/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
> @@ -46,6 +46,7 @@ Required properties
>  - compatible:	One of:
>  		"aspeed,ast2400-lpc", "simple-mfd"
>  		"aspeed,ast2500-lpc", "simple-mfd"
> +		"aspeed,ast2600-lpc", "simple-mfd"
>  
>  - reg:		contains the physical address and length values of the Aspeed
>                  LPC memory region.
> @@ -64,6 +65,7 @@ BMC Node
>  - compatible:	One of:
>  		"aspeed,ast2400-lpc-bmc"
>  		"aspeed,ast2500-lpc-bmc"
> +		"aspeed,ast2600-lpc-bmc"
>  
>  - reg:		contains the physical address and length values of the
>                  H8S/2168-compatible LPC controller memory region
> @@ -128,6 +130,7 @@ Required properties:
>  - compatible:	One of:
>  		"aspeed,ast2400-lpc-ctrl";
>  		"aspeed,ast2500-lpc-ctrl";
> +		"aspeed,ast2600-lpc-ctrl";
>  
>  - reg:		contains offset/length values of the host interface controller
>  		memory regions
> @@ -168,6 +171,7 @@ Required properties:
>  - compatible:	One of:
>  		"aspeed,ast2400-lhc";
>  		"aspeed,ast2500-lhc";
> +		"aspeed,ast2600-lhc";
>  
>  - reg:		contains offset/length values of the LHC memory regions. In the
>  		AST2400 and AST2500 there are two regions.
> @@ -187,8 +191,11 @@ state of the LPC bus. Some systems may chose to 
> modify this configuration.
>  
>  Required properties:
>  
> - - compatible:		"aspeed,ast2500-lpc-reset" or
> -			"aspeed,ast2400-lpc-reset"
> + - compatible:		One of:
> +			"aspeed,ast2400-lhc";
> +			"aspeed,ast2500-lhc";
> +			"aspeed,ast2600-lhc";

This doesn't look right, you've removed the reset compatibles. It looks like
copy/paste from the hunk before.

> +
>   - reg:			offset and length of the IP in the LHC memory region
>   - #reset-controller	indicates the number of reset cells expected
>  
> -- 
> 2.24.0
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
