Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B85069DA0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 01:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MB0m1m8KmFRCDZ3uwqBsbV1JVe7i7DSJa6pqyn7cjU4=; b=oOd6BgjRbVnSTj
	9mU4m31MrkQWK72YLVwf2ezlXOoJyD5UiHBHnnwp+pcFIC217EOejQNoog4S7dSn8EFh/olBILeSD
	lv928BTktpjDCzvrTxTTycQiEgcvYDk5qD3rjeW6KJ/qCkTsRo9EdVk4egYk2vLJH07iUEAt8Fpsf
	hmYLb6qNiooTnYimzT9PhgQnJoEhS3Ed8Ifjb/jF6xT8ZskuJfTIkpY8WmlOlruBW+QfpJBdKgbWb
	AuF2fbyBw4ZmaUChcN8IAvB2sFyPrthHghktQDgEDDR030N+tgjhoOG6T58KcAaKKq0OTbHrqueAP
	llZBAa6U+rLfr9T4Io2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2OXx-0005U9-Ua; Mon, 26 Aug 2019 23:37:14 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2OXk-0005TY-Uh
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 23:37:04 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 33D8E21D25;
 Mon, 26 Aug 2019 19:36:58 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 26 Aug 2019 19:36:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=wixTDJAQbjY/Vhzqeg4T1GumEprOkBk
 N/oC2LEVkCv4=; b=PAbrqX9B8koWzYVJHtqz0pMLPyeyPx4LDW6R86bfbm2tDgI
 8Ytorq10xVp3FU9/kCCeD4uHlcxHO68LG7bWdSuEDzBAWKNQVAsBVoYqC3qOxNVn
 1kDNkrl+aINL/oeLFipUO590mawo5SXiRKS7kXEu8+tUGkV0MdB1WkDlgILjS/WT
 XeyOffwLJ0YyWpeMdtFVzTQJaxgABEIMtzISgxTrr0PhyV3V2kHK+GwKaUflyXeF
 g6u8OWQCn32uEICm44xDtJgR7MgOXA1zQIxcOMoO2EQNHcuLsKnb5LV3fnzZ98q7
 Vy9eVTQgCpeZFeYko3Pf54ZG6b2hMKguh+6QchQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=wixTDJ
 AQbjY/Vhzqeg4T1GumEprOkBkN/oC2LEVkCv4=; b=HDDSyOKngXZbkHXmFgvbQe
 FD8fS4uguq8G+lP1l18m+FzQ92yq/qe2r01oAZJrl7vAePmniV2yN9JgdX/gIeD0
 aY38FutFDXejMBUl/z3HRs5JrrrJVLx5L2eH5m6aoKY3vp/R24fzNp+8WDM1frpM
 3ogrIvSoq9GrPo+6yZEuUdg8i7NzNunTNJNcjYN9hLd38RCxvBivsNyW4XAz8/Zu
 z93qALwF1K+LSTuP+/KEXtiiuTGQqCPk5GcVplcfSceCIy/o0EptNT/GcPZvZ1kN
 kXn/Kr8hnuvUrBly1sgg1qij4cSdqyg2I/JwaYWffCV/kWEQ+wURmcejSr6gQEbA
 ==
X-ME-Sender: <xms:GG1kXQ5D7mvyUHzjBokdQs4dTqgCuZjWam5BGykLec7vvvcx5B080w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehhedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:GG1kXUVNImv6Gofm_nM9OW946oVf_CuldymEbwxsvyfzsV6mJGOxEQ>
 <xmx:GG1kXdLF142R19ES50NeD_RzadR7Wg5AhhX12x75rQdBEm4W7PGp5g>
 <xmx:GG1kXUTXGDHv1NFe9Cu14mPcsMpa5wb8gnRIO0fMO-jc2CajPlMKig>
 <xmx:Gm1kXedKe0BHGFlFqZnx-d49jziKU13sk_W_B72cbh1vt4v0U_5-Ug>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AF0E0E00A3; Mon, 26 Aug 2019 19:36:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <629128e7-cc91-412f-8946-668fac2eb3b9@www.fastmail.com>
In-Reply-To: <20190826130343.GA23584@kadam>
References: <20190826120013.183435-1-weiyongjun1@huawei.com>
 <20190826130343.GA23584@kadam>
Date: Tue, 27 Aug 2019 09:07:17 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Dan Carpenter" <dan.carpenter@oracle.com>,
 "Wei Yongjun" <weiyongjun1@huawei.com>
Subject: =?UTF-8?Q?Re:_[PATCH_-next]_mmc:_aspeed:_Fix_return_value_check_in_aspee?=
 =?UTF-8?Q?d=5Fsdc=5Fprobe()?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_163702_450702_27BB24A2 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 kernel-janitors@vger.kernel.org, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 26 Aug 2019, at 22:34, Dan Carpenter wrote:
> > Fixes: 09eed7fffd33 ("mmc: Add support for the ASPEED SD controller")
>                         ^^^^
> When we're adding new files, could we use the prefix for the new driver
> instead of just the subsystem?  "mmc: aspeed: Add new driver"?
> Otherwise it's tricky to know what people want for the driver.

I don't have any issue with the request, but I don't understand this last
bit. What do you mean by "it's tricky to know what people want for the
driver"?

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
