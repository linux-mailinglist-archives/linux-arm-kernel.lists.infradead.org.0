Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C85191A6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 02:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vLjS5Nfi4den/uy+VUONDW47W2K2hTC4GozkeTHu/o=; b=paNJvXAbVa3ZOI
	EqZzWNix5hALu3UTpWv6SaXQOcCnhYg9izJ4fExoBLyjMBZ9FR/UoT7lMVQBnV0FRudJPDsBvl3IS
	xkv9ttHjRPAYkg3O51ueU6UORDRVJvEF6h2Ee7L+tG/lu2kFneuP2ZfwUzlmwoEHMJFSk6CubdvnC
	uUzvTR6UAshc0SnCW7EvEzcbx0DY5fKnfppYaB79cH0CdBc/CE9lTVpJaWScfThjiUk4/L016MTBh
	E2ulF21JBd1JjxCsJsANGxI8HPDX+t5Pphc4DbQwp+HLdw/nGPzY9+oi60eL5B0pGAkZUT5a8Ecf/
	RdBkgclyiRGpaoRK7acQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzVLd-0003ID-TA; Mon, 19 Aug 2019 00:16:33 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzVLU-0003HG-Aa
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 00:16:25 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 3A75F2067B;
 Sun, 18 Aug 2019 20:16:15 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 18 Aug 2019 20:16:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=o2Y1ru/g1rfm03mCKVr9rWJkvfhNUkl
 tmb3ZwidhSuY=; b=psSHkY+5FWcPlcoDP+crqOmhYIIE8nGc8bCYtjYjios5y/w
 6kpcrAwDzIt3ZfWCNdOHKL7MC1S0y9ebXNiNn+pWBlsVwaR6DkEORgcJkEmTED1n
 Pt68Z9fH3J8+bd709iDFoVB58eotO0+NJn7qhsmydELYOPb9DovxPH1dqOn8j/WN
 8lsTOJ33B2XEemBSngwvI/w38kRcwliUfzMGTAgrtre2iO54b/pWUFpQOLRAg2As
 GrVVeRxhdbRdZ4SRbBPF8sU8V7EHwiLjtCX0XT8AtsJcSxdTrRLIMqRb9Ep/9Rk4
 JfYOuQqYwyL1lj9PeF/NQh0okM/0+VgTx0hLRsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=o2Y1ru
 /g1rfm03mCKVr9rWJkvfhNUkltmb3ZwidhSuY=; b=isN5gHRCsKr9HVk+MlmwTl
 V73aHgQn1EnDRgQGL13nbYwwYw3GdCWpOZVeyhbRQ2lgdPBVCAbl6HAmxH8dPSW6
 WNc0WASRKpdwk0YfOQf103A51O6dO4iQ/HEq5pxDd94abbnxB/JZUXqW+eB6NrK0
 ICtF1uEPykbon6S11LPYCaFtD7ufEVUShCETGorqgFgYeMSMIaiVyVHXenRqjywQ
 5azfaBUwdp5c6Sv43DiVIciB+Ikw5LrC8XkwNqi5D44Hta2jsPQR3z7l58MN/iDE
 VZNS8Xq61KliTn6t+leJgz4SUNDWCjPR6r+moPdx/hlZPxAXL5frChHkyL2mLh2A
 ==
X-ME-Sender: <xms:TepZXca803avgHkIwbyggRpX9e_hA74psYMUjL1hkBmM0AbA01GdoA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudefkedgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:TepZXeKUDBEIbqj2u9y6mEzGBqWgi0vyY-O9F4cDqRZ7_JrLerfgYQ>
 <xmx:TepZXYtQKv-sQ0iBQm9mD3JhHlEKJUEETtL7yoYSxOJnPk7FEbqxEQ>
 <xmx:TepZXSUCo_rcAzLiaxKVYGJXAzxVoqzOkIE2TC7t1CTQnZ8YuF7oyw>
 <xmx:T-pZXZkjnesKGK3SeR7_DYnqN2_-qcnmYDZcyy7JhDdMLCA8H1F01w>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 6330BE00A3; Sun, 18 Aug 2019 20:16:13 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-869-g2d94aad-fmstable-20190814v1
Mime-Version: 1.0
Message-Id: <efbc1e57-5c5e-4ff4-af94-d18b017d64ab@www.fastmail.com>
In-Reply-To: <20190816160347.23393-2-joel@jms.id.au>
References: <20190816160347.23393-1-joel@jms.id.au>
 <20190816160347.23393-2-joel@jms.id.au>
Date: Mon, 19 Aug 2019 09:46:46 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>,
 "Wim Van Sebroeck" <wim@linux-watchdog.org>,
 "Guenter Roeck" <linux@roeck-us.net>, "Rob Herring" <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: Add ast2600 compatible
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_171624_519909_79017AE9 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sat, 17 Aug 2019, at 01:34, Joel Stanley wrote:
> This adds a compatible for the ast2600, a new ASPEED SoC.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt 
> b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> index c5077a1f5cb3..d78d4a8fb868 100644
> --- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> @@ -4,6 +4,7 @@ Required properties:
>   - compatible: must be one of:
>  	- "aspeed,ast2400-wdt"
>  	- "aspeed,ast2500-wdt"
> +	- "aspeed,ast2600-wdt"
>  
>   - reg: physical base address of the controller and length of memory mapped
>     region
> -- 
> 2.23.0.rc1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
