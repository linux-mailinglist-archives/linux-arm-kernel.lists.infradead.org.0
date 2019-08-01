Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC6B7D5E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxCAMZlCQ6Gup18VlA6B9qPC3JPBEVzpc8i40nkp/GA=; b=kJ0IY4SrRanoZH
	jgbNMOjAymozCxcOC6dWXoqBk1DRgJJd5FC7fDNVBjaq+uyVaaUehf9AC/Udd3+nU5BgSBU+LQ/+N
	k6HMZVPFQHvKJJ/WXbK3H9IBe5VPzYn8ZwGNI3wTJum9q2m9c4OeeI5FpojUQuMFwzVd6/na5KfIr
	LWD2V8dLRDhceK1WsSFL4qXcw6b1mLrwEorWg6DtdiRrarUIN4l/prey9+6Nf9EkKBhYbLlrE1v6r
	QiTslvJIuxoCVOh9m3JofNuDvDXdxGIkg81hzq00ISrDTWKUA0mHHJcu/qYOOwWPzFDmrDXuLfc4O
	BsPf95ax+WTPq8waGGMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht51Z-00022k-Ci; Thu, 01 Aug 2019 06:57:17 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht51S-00021t-GI
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:57:11 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 041D25BB6;
 Thu,  1 Aug 2019 02:57:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 01 Aug 2019 02:57:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=ziX9TasyJG34aiMd0XTcR9BKI6Y
 Cl2wv3Wv8+6ivClg=; b=lpG4H3dIVrZsJvhwhyVWpQhwIUCjOzffV6tWcfUy4Qr
 slcP7ZHBS+S6cqN1BuSxVq8AHI/RRmXRZhQthClNQnkhhZZTJbG6SiRVocYqhv3l
 wCtGL01OYPe7Isn8Is7ml7YTnprdigX55adjBrYWYtMy9OoG7SOaGuTy5b2GlUFd
 9rIUZZN7MafOeGXFZLWS0WvtvNSFRpWvCzsGJ3rvr0rXVB86kra8mdu3HgpRIzfy
 YhIqvIwuYMi3dz0Ws5SGJ9VxK0urJV8SVYNLkTEfb8ViHeNxYfIeXbaTEx7sRO5p
 rvziCoeHyKy/p8cwMqg0+zqZdMwpFILpPSZP71SNlig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ziX9Ta
 syJG34aiMd0XTcR9BKI6YCl2wv3Wv8+6ivClg=; b=gVOc1LzU+ZaNh7hBUNe3xI
 xs9nYzaiCKKY5sr872lphstNaiP6tmwYFqjf3Jse/VSBq28xQZSmuiEMyharfV3V
 4Z4jxbnxDBGH2Ldl4jc+lZ0nuarqEh41f6TGs+MyqXmNd69UInsd95tO5Ik0tuKv
 9IEJGe77hDg99jf/xiLbENgHxFlOWDkfp/vjgspD8RBxk1yZ74sZY6m95f1doIaX
 P1gSPWR/OtkD5N4ywoSAomed6sZN5313SJ3eJeTwn9zV1riVE7HY0e0TPOEtguAv
 LuASdZHS/ThL4mDKu5YaXBOt39JnUmSbkteKxdSKu841vzR3aS8tLv+5lIiz+6vg
 ==
X-ME-Sender: <xms:P41CXaLYqXjWkT1kk30hL1uKTJZjN5z12mHaLD5rFuR2QWS0HOnpeQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleeigdduudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
 ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
 dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
 vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:P41CXQ_VEXwd0G3GxsRFspz-nhvtlmWi1Wbau07mZ9jgSXwZuBkwdA>
 <xmx:P41CXVasyrEnXMR6f-DMLTc8oVqduKP_5WoDx7X3k0UzQyN36Ldtgg>
 <xmx:P41CXWcXwzw6y_kDW8KnLInT1NfXChdlS48LAvGU4cNi5hu_RmKcgw>
 <xmx:P41CXT6g-qIGiBwAnOwUuQKqJrEI40jqV2d-ZlH3f7KoICLFIjDF_Q>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9AB4C80061;
 Thu,  1 Aug 2019 02:57:02 -0400 (EDT)
Date: Thu, 1 Aug 2019 08:57:00 +0200
From: Greg KH <greg@kroah.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4.4 V2 25/43] arm64: Move BP hardening to
 check_and_switch_context
Message-ID: <20190801065700.GA17391@kroah.com>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
 <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
 <20190801050940.h65crfawrdifsrgg@vireshk-i7>
 <86354576-fc54-a8b7-4dc9-bc613d59fb17@arm.com>
 <20190801063544.ruw444isj5uojjdx@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801063544.ruw444isj5uojjdx@vireshk-i7>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_235710_694408_2D291025 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com, julien.thierry.kdev@gmail.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 12:05:44PM +0530, Viresh Kumar wrote:
> On 01-08-19, 07:30, Julien Thierry wrote:
> > I must admit I am not familiar with backport/stable process enough. But
> > personally I think the your suggestion seems more sensible than
> > backporting 4 patches.
> > 
> > Or you can maybe ignore patch 25 and say in patch 24 that among the
> > changes made for the 4.4 codebase, the call arm64_apply_bp_hardening()
> > was moved from post_ttbr_update_workaround as it doesn't exist and
> > placed in check_and_switch_context() as it is its final destination.
> 
> Done that and dropped the other two patches.
> 
> > However, I really don't know what's the best way to proceed according to
> > existing practices. So input from someone else would be welcome.
> 
> Lets see if someone comes up and ask me to do something else :)

Keeping the same patches that upstream has is almost always the better
thing to do in the long-run.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
