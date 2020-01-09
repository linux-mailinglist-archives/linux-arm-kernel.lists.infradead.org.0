Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC42D13510D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 02:52:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=unAIHm6Y/XydBdVR6bXqI3mdJdcrHUF5jqu4gpE6b/g=; b=muHBwLo6xaTMFRV75qqnAi3JwU
	5HJUNTcpid6zXZHF137cbIOMHyUdEWv8WkG8lemu06ZbkusBQ+71plyzLt3spZYwImdcfeGPQg3mM
	MqzedAYoC9uSXveLwqW+uOvC9JXca9m0AtRSU2B2DiV5O3qaeegHOvICqFLd7rDLePlzTj9WndPOT
	jO+g5VJ7tt8qoAtcFGgFO/hcbVwWwvt7l+r9wBmG7eK2OBKMmC8WqUehK5zct7aHTE34US3F/mXqp
	vCAI+Uz/T2IQWe/4WPF8CrX948mqq8IQMK/g/0VZ7C5YiB3vsn/GFNFm/cJ5qzvFWl2Ehu04INE1J
	ALoc9Ilw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipMzJ-00024B-QO; Thu, 09 Jan 2020 01:51:53 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipMzB-00022w-Bn
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 01:51:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id AE5D99B3;
 Wed,  8 Jan 2020 20:51:35 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 08 Jan 2020 20:51:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm1; bh=INrQczsxRVeplZbqXtrfLCVklXpA8YI
 m9Wl7iloiOdU=; b=HhawAe0dt3VweQT6qHrXNP1ZSkPljYrSelvC7ilR4GMUb3a
 jgAxXhZB3mQ5RU36n0gAomx55Pou5sBdrhZ21jvxvnnrVefWcRP2FnphsTsIb9tO
 g1QYz3TkyH4NX/nFItjlMv6eRKkubAvnYfXhE1H3kxXx+HBofgA/Hk4M/FS0pyeg
 XB8Hfjif9rtxh7bTVBGntvhwNEhSay6JKHo0fvK2YVCW7hUjnn55C9ygNhgNh4wp
 zhUNat1wi1usZqPOWRN6Mb5WyTbrAQGaofT47XdLldaL2EdQP7HRnFz3TH9vdQDt
 YYHtMzzMeFfKm/PLRKNj6ZIYnyttuSQmc2trlJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=INrQcz
 sxRVeplZbqXtrfLCVklXpA8YIm9Wl7iloiOdU=; b=NPkzPNo3vXx0BFVsVInI9b
 ZrJ8p4t1Bad6m+l4Il0iH6JrHJjYBE4X3RbswTWgD8FMBoHm0lTaOCIPdB93a16s
 kDIor4EMVpRi2pfT5Ckl4QzxwT6fYW7ndZBbdrriY5BPfUjvlq/WiIbtuPVeu0w1
 B769QYtTXCicO6hOT1jhHgV7QgMkzp0Y7y6txomyRIjOtHGxQSDZPTWnxAnVvWPr
 b+nMt95+XJK+ymtOEBNVDdf8UY5s6E0as860cHOMFwLkWNu8ydUGFr2/6GaGLLWy
 kHrH1ddHkwyKQ5QcxDPkZNsf12RzphBCDa4FiknEFNb5l50Wfp3MUGsoPexJwz0A
 ==
X-ME-Sender: <xms:JocWXux7bDeAvG3jS9Bh2t_9UUjKfMOvuUv5qNmmuhV5rUU92i0wFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdehledgfeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:JocWXnzDiMIeKUQfypNqgS8HaCY-IizfGQayAcN83yjccJiD2es4_A>
 <xmx:JocWXmpkGcAWz6FSIs_5wuSDbmN8ktpyEY1zrH6HnpdKKtV289JV8A>
 <xmx:JocWXrokrz_BkKts3uJpuIak45JS92JBZRoBft8gpECbZH76_FRi-Q>
 <xmx:J4cWXjh2ymWQgJd1bgMz_VkV0kbeWE4v1-5q8bNS6PYD_VHQXRnAWQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 12408E00A2; Wed,  8 Jan 2020 20:51:34 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-731-g1812a7f-fmstable-20200106v2
Mime-Version: 1.0
Message-Id: <f93bd92d-e509-4825-a4bf-00f5b7c6ff7d@www.fastmail.com>
In-Reply-To: <20191228190631.26777-1-tiny.windzz@gmail.com>
References: <20191228190631.26777-1-tiny.windzz@gmail.com>
Date: Thu, 09 Jan 2020 12:23:32 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Yangtao Li" <tiny.windzz@gmail.com>, "Jeremy Kerr" <jk@ozlabs.org>,
 "Joel Stanley" <joel@jms.id.au>, "Alistair Popple" <alistair@popple.id.au>,
 "Eddie James" <eajames@linux.ibm.com>, linux-fsi@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] fsi: aspeed: convert to devm_platform_ioremap_resource
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_175145_431154_3AD33F8B 
X-CRM114-Status: UNSURE (   4.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sun, 29 Dec 2019, at 05:36, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
