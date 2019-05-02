Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A552C11389
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 08:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffQncdaqRZFZHxnBaKTe9T07ED76VPbZUQpPf+N/oiA=; b=SSc6DXhcESpWLj
	uq04L3804tfG4zfV/Ke9zpfrFHHKymZdaoX5meWd/Np/FvnGSXNBm6a/WlZTrieGEehleszMTM/MA
	lC2SpdszS58G0LNnrh1G0mgQNEqTrui+ozvwvDk97zLWrkq1/RPoc9bZV+GHhI0AFWegjERzhXh2T
	tbu/+MmR6mMARxix1ZCH9y6NtaF8p0WSZawIs+Zwwr5dWkyeFgcWWL12CgDIbrngg33H8dAx135VD
	GDOT6hjbROzTOaX4pW4RShd2h3r/AFnypr+Hf2r87X69P0ooVGfhfqfypRrOmS9YfxJVlC+N9M6jd
	GYkx+bfArF+MHqFPvwnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM5XK-0003eo-TO; Thu, 02 May 2019 06:49:42 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM5XE-0003eV-RG
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 06:49:38 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 5AD236A1;
 Thu,  2 May 2019 02:49:34 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 02 May 2019 02:49:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=1tWIqDm306vX6iBn4rFWeYUqrrvzuMc
 oJyS82ojMYzo=; b=HvbUBX9fPj2FZfqyzF3t/KWM8PUFELCat3msyWb3W6EaR4p
 NIP+uqNoxXmFOvIANSg6O2NIgTy5bYPWNz++QCLGTdXmFnMFIX+1K/xIKEdCLjdA
 jvPqyTDa1jSoAtjFNevf/lYcxTswhp7zSs5FukCqO7tM/ANWoaad7ibA+LgY3pag
 1lvb/+6ZNwOhcTnbuCrz6Q8+u1QVwSWr35OQr9NPxzrMlocVqVWrjOE3hkgg/0T2
 NfwCEZaXcAwYvhKwJ55OkpkxOm2Oovp603i8e94MpDexuMuUMBAin+sbYk+5q09C
 /dpYKeYNn6BK2yFCtbOoCegErkpPWJ2OKIMskPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=1tWIqD
 m306vX6iBn4rFWeYUqrrvzuMcoJyS82ojMYzo=; b=gZ3fJUS5nSD17n7aojoHnY
 TnjAGXUg2r+xab/A6WJtUDbVEVzeStOBhjnSTRJM3Ak/+qrctyvJ7vfoDH3m+XZY
 XBeUwl0DJCui9MuZ+aHearg1FGZPuOXC1D9V63Sh3zpk5NPx8hbKpN0zahTDkgdY
 kPuN2Hnfmycjv6ZGAxs4+psw9Lh7yEGs1kzTticQxRv23Xzn+gT5Ow0hsQvngtuX
 EE5hQ8jibl7g/JRRe7eCy7e+dKi1O9cQAuIUUdFIquLNWZlF8wDpwvm4Om2H8mds
 pgWNmjN1tc4vlCXKWnZdt8bPmxrM5CmpwZGy91t5xfiBRKR3lfIFtjTzCLmW7sOA
 ==
X-ME-Sender: <xms:_JLKXK9KgEtGXQWO9AmYCHtdN-ztZEEkB_ZSfKsSXt2C36acqsaS7Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrieekgddutddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:_JLKXEWKWIB-BjyKW81S-YFYD-DG08J8J1TUBSS0R0MdkSoBJlXMQQ>
 <xmx:_JLKXDdF7qu_CB90gOBQbYc0cfxRHtOIrg3f9g3_qXcw8ngcIM1Wcw>
 <xmx:_JLKXJXCXjX_5wmGVoxgu6HdUnks4D-soxf2oLT11k3x9RBxGP9Wiw>
 <xmx:_ZLKXJbHnD7LzyDpiZxOBdPI_dtDvZTUIbieq6F3zQWesxi8E1yDKg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A1D3C7C6D9; Thu,  2 May 2019 02:49:32 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-449-gfb3fc5a-fmstable-20190430v1
Mime-Version: 1.0
Message-Id: <6defa7bc-ec29-4418-b05c-fb96c03621f6@www.fastmail.com>
In-Reply-To: <20190502064021.GA14911@kroah.com>
References: <20190501223836.1670096-1-vijaykhemka@fb.com>
 <20190502064021.GA14911@kroah.com>
Date: Thu, 02 May 2019 02:49:32 -0400
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Vijay Khemka" <vijaykhemka@fb.com>
Subject: Re: [PATCH] misc: aspeed-lpc-ctrl: Correct return values
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_234937_021741_E50AEC20 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: sdasari@fb.com, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 2 May 2019, at 16:10, Greg Kroah-Hartman wrote:
> On Wed, May 01, 2019 at 03:38:36PM -0700, Vijay Khemka wrote:
> > Corrected some of return values with appropriate meanings.
> > 
> > Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
> > ---
> >  drivers/misc/aspeed-lpc-ctrl.c | 15 +++++++--------
> >  1 file changed, 7 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/misc/aspeed-lpc-ctrl.c b/drivers/misc/aspeed-lpc-ctrl.c
> > index 332210e06e98..97ae341109d5 100644
> > --- a/drivers/misc/aspeed-lpc-ctrl.c
> > +++ b/drivers/misc/aspeed-lpc-ctrl.c
> > @@ -68,7 +68,6 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, unsigned int cmd,
> >  		unsigned long param)
> >  {
> >  	struct aspeed_lpc_ctrl *lpc_ctrl = file_aspeed_lpc_ctrl(file);
> > -	struct device *dev = file->private_data;
> >  	void __user *p = (void __user *)param;
> >  	struct aspeed_lpc_ctrl_mapping map;
> >  	u32 addr;
> 
> This change is not reflected in your changelog text :(
> 
> Please fix up, or break this up into multiple patches.

The return value fixes should also be squashed into the patch that introduced those lines
given it hasn't yet been applied.

Further, IIRC I previously suggested removing the dev_err()s entirely, not just switching
them to pr_err(). Returning an error code is enough IMO, there's no need to pollute the
kernel logs with application-level errors. Or make them dev_dbg().

Andrew

> 
> greg k-h
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
