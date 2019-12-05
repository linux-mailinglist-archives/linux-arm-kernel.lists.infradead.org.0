Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDD9113B12
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 06:14:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpkXrVFFQ+96Xe5SzVuS9oEKHRaBMtBhICmDOSlu6fQ=; b=WSYX4CVSDFhtxy
	GXUTytnJyImyqKGaqEI2k90uzZ/zbUHzAtegh8oZhv/H8QSUCfzEqBD6JMfBnLjVsog5HWjfLjIwv
	sCftopWU18qNY7q9RUEqOMM9479Ap3M638JnqiRudwF56UJbujD1eDELNCoZf1CAg7tZLY42H3Trq
	lPLrLu8f3ksmzp/AW8AR82tavAEsY607OgFM+Y4Ge/QbR7JswrACZDdaq1AI7W87HxzhXmhtu8qIl
	j7jIW+9drwjUytVDlMzBXkgAgmPyVc06a2w+6Y077GHQjFDacTXNaZ6eR8QwJ7rt4bHgYi/1LHZsm
	ArVdiooiXN/7McclYugg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icjSf-0002Hf-IM; Thu, 05 Dec 2019 05:13:57 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icjST-0002H3-35
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 05:13:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 171566DFB;
 Thu,  5 Dec 2019 00:13:44 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 05 Dec 2019 00:13:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=HmY629d09ljX49+gWihMYnlLvvddw8y
 blf8rUOR5/wE=; b=XkSFWnrsqIZKGLVdudWqOUsdB5YtNlYfu/WzJNmOnyi7Za9
 38ORxDINALsurrmH9koTMeFOuAMZbEdt3jb4NKuSHz1kx+lTQ8xaqEa4ARhDGT4D
 KGfLIlPrgABX0jjuH+qOBWgYSBYhf6XN2TcuNhLmzc4lnObgmWWgUqILS/RSwONj
 0dok7lVopN++sUQMDj6CcDhMfaGf0RO0rzOcHeFJbECCjlfWyZ7zpQLUflU2t4m3
 O7cOUNTC2iCsFkjBQw5iJqeVUyG/bvlRsBcI+ziZDSYuCJO8AJnT2xLVipUkEmKk
 5GsqpC7va97/ZkAtZQnZUb+3UJAwaK2HhNrJftA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HmY629
 d09ljX49+gWihMYnlLvvddw8yblf8rUOR5/wE=; b=mFtuhQSUTGXR6RwrC/ZSqy
 DHtQ5sfJ72Gp+Fl14rqpI8A7opsv9ESRgx9plv2EalC4IRNebJZFDPAbVXGAep4o
 JgsZPzXUfI67INU1Q5h0MO2IeaIdp6pYZXaSdxxkzCukfnYYRgBMl9Kp3NEkQDy3
 +yrfq21UcepbK7ueIDsO974jcDYOwBURh8RF6li/Ko2371GVJkEpfgnv1Y5Bpt6U
 CyfG3o8gCDE3M6qGOD9nLeUR4TIAqzun6+KU/Vaonbonc6Z35lZTYQnrWIFEeK0p
 ukSchr2VVYPg9URotj309OcD4EQh8jjd10uwGTVxU9jR+ABqlVslmU+WCOHbl8aw
 ==
X-ME-Sender: <xms:BpLoXT9uaXVa-DTA9FwW7wiy_GJt_465bqEkFIhziNC9gaP8vGHyUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudektddgkedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:BpLoXZ_D9ZZbPr1lny9cZzaTeUS9m8tXYUZA2MppI0yZIXZnp_X2Xg>
 <xmx:BpLoXf_QPUo2GeX0u2WvSXm8b7gNwGJfzBKKQ1G_f6wAJAtDi7mWuw>
 <xmx:BpLoXXE1ahEGOo08cwQHVS1JRmlO5DhCD36h38YcnnRuHi-6wckWRg>
 <xmx:CJLoXbQbKnADxn_5wl7Byr_5lJFU-G_lsmG9VHhHT4bPdTbtQ1IPNg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AE0DEE00A2; Thu,  5 Dec 2019 00:13:42 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <cd76d709-683b-44c0-b29f-d31c9dddc75e@www.fastmail.com>
In-Reply-To: <20191203134026.GI18165@minyard.net>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
 <84315a29b453068373c096c03433e3a326731988.1575376664.git-series.andrew@aj.id.au>
 <20191203134026.GI18165@minyard.net>
Date: Thu, 05 Dec 2019 15:45:17 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
Subject: =?UTF-8?Q?Re:_[PATCH_2/3]_ipmi:_kcs:_Finish_configuring_ASPEED_KCS_devic?=
 =?UTF-8?Q?e_before_enable?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_211345_209936_7319525A 
X-CRM114-Status: UNSURE (   4.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, linux-aspeed@lists.ozlabs.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 4 Dec 2019, at 00:10, Corey Minyard wrote:
> On Tue, Dec 03, 2019 at 11:08:24PM +1030, Andrew Jeffery wrote:
> > The currently interrupts are configured after the channel was enabled.
> 
> How about:
> 
> The interrupts were configured after the channel was enabled, configure
> them before so they will work.

Hah, yes, that commit message did get a bit mangled. I'll update it.

Thanks,

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
