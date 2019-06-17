Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 071F947886
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 05:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1CZ2cwUaZ2krnjotOfuCwexTl2hHT5Z2ZYkHhJSa2U=; b=e9XaOBbTwg7a23
	sKFTA+Y91b+5lfQ37dbFOg0BbQsm+Aiih03MZ6mlHBPOxjotZv9ttntl2FtU2x5aLI6DzRTuHp35w
	Xx+sbxkFWcX+JVJRy5tmAsGQf3PV28wGyhE/ZX7pAmcHYIvHw1yI/q2m/y3FJxfhN9gx0C1FeDQsb
	WLpuUk6F4NQ96TuBWizWa6vNG199MLSDvXjEckgFDFKBdUEb4MwRsSf02Y+iB9iHFSIF0jX1VEutC
	GhSBFPimXo2UTN7XMmtOgWe78FbJTWBS44i1Z6rkGswTjDDiwzuaar5zu5gju35n3NReiFVu/KRg8
	37VPfqCmVhuYhbGXOL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hci0W-0003wt-GT; Mon, 17 Jun 2019 03:08:32 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hci0F-0003vP-U9
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 03:08:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 39AAE2073F;
 Sun, 16 Jun 2019 23:08:08 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 16 Jun 2019 23:08:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=7Ke5IHCQc6To6gIdApJVmoXexrwL5gM
 UiXPsvkOjLXQ=; b=pMNesVI1iH2mLTkcSmMSUIrW148uXc6UNhcPpSv18rjIepT
 lE7oFtHZHsEGeOe+nWDyxXaIWrBcGeVQ02PVcIL0MZYA0yucnwQtKU49l76uVWRc
 YUcBkvA92NXbqz0c8otKug1mtQBTzP2bzOR6IfqqYbjkDWpUkXn3/NnBIv+tuEQj
 SywVfPs/k8rB4XtIROYBrVNs/S/BRCRyBr478E6glnnG4SE1pxiUNQSTlfXri+hB
 /MxLJvsMrjmfgOx0B/tOGIgdZTHblxOTN1KfA77aMd0EFcw0VO2wmFwC29jFGPYf
 2Dm3Wu/YsbvdmNjGl03xgemqHVojIbUkVud4stw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=7Ke5IH
 CQc6To6gIdApJVmoXexrwL5gMUiXPsvkOjLXQ=; b=PBfRxPviRr8swajBEeMOGu
 whlErxWIxJGztiT4/OCYkPaUpOA8McouLsXMuEzNEwTal9QHZ6ZEl7M9I7wqfBhh
 4qwHjpGxDVaN/pws6ecCfQbPOEwUKAbcVjfrcxzm+qjpTAK5Cp6PrvgldPl1o3Dr
 BbJfAqdyklN0+7AppE6hDjiVMUkPg8+VfGEImxIema5M1Dl58w3w5IEv+/1hMr7V
 bz0Zp2glkvQSQjghqooKYttA5wLx1vlN2yNj50EzYSpx+SFMbZUp3JXW8bSsnokQ
 3i1wm9IlFItIut3x3YQp9ixnzbGka1Cjrmy2sV0d51Kp9IRyA+aW44JTR/QKAJ3A
 ==
X-ME-Sender: <xms:FwQHXSeON9UDPz2jG4Iqlr-inXy-tPH4uCUzU48dw1vCrdwha1ngNA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudeiiedgiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:FwQHXfIm4G2IoAWckCVAwkz8hHS9PzHJq6VVkyDcpCEbZOOCtmiC4w>
 <xmx:FwQHXXvMhwYuLOOf78QHC3vVoZdH4oAhbXh_vNYt7igaFAD-3j2VIg>
 <xmx:FwQHXdIVnRTr-O_EQxpxlc9VV117FsfT7rYYeqLuxhB-JlCMNkX6xA>
 <xmx:GAQHXX-UPOTzKKughhtwmokFom6azpOym-54dORZSvpXuveABjsstw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id DE09BE00A1; Sun, 16 Jun 2019 23:08:06 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-663-gf46ad30-fmstable-20190607v1
Mime-Version: 1.0
Message-Id: <70de7e7a-2b2b-4409-beb8-7f61d4d25def@www.fastmail.com>
In-Reply-To: <C4D5C095-A715-4D39-9DEB-1B7734760666@fb.com>
References: <20190530203654.3860925-1-vijaykhemka@fb.com>
 <6828A39D-8950-4C07-8340-7AE9E2DD3EC0@fb.com>
 <C4D5C095-A715-4D39-9DEB-1B7734760666@fb.com>
Date: Mon, 17 Jun 2019 12:38:06 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Vijay Khemka" <vijaykhemka@fb.com>, "Joel Stanley" <joel@jms.id.au>,
 "Patrick Venture" <venture@google.com>, "Olof Johansson" <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] soc: aspeed: lpc-ctrl: make parameter optional
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_200817_797840_9D383340 
X-CRM114-Status: UNSURE (   4.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sai Dasari <sdasari@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sat, 15 Jun 2019, at 07:11, Vijay Khemka wrote:
> Hi Andrew,
> Any update on this patch or do I need any more rework.

No, no more reworks. I've pinged Joel, he'll pick it up.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
