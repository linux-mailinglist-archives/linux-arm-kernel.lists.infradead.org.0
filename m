Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA441D6E54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 02:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ne0vI7K+dWpqXKbx5eSd5GiQy20+KkHdLXoqihNzTs=; b=gsmvYbyM+XoIKn
	64E9y7WgUnASnXLKwX4++ZAY3+IQ4pyIDvQX9Xf/4H7Zv1QkLKZSYeslHaTRNEVG6lLRpDWRDTVy0
	C80kh5ZnASGOzo2JEO/m1XVDp8pw7csoexvYgTbPCXalRLZ3nhZ0op3KhcZpQuc4Z14pLgARFph6p
	dxrwJUibtwTV0C03H2fYrg3Oc5azGNLh7uVwFhMCbH4d1jub2rLRxdzZNMHKWCjdgi3sjxucgkiUr
	ErXJiocAaYdmGOSOUFz3zsFffVL2Xw1RBTvZTs6TnHooJ3fYbNaHO4vVEOdOONqCvAaaMqOb9pAFc
	ERv1sdt2UADBOdYdWEJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaTz2-0006oy-Bu; Mon, 18 May 2020 00:50:20 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaTyv-0006XV-5N
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 00:50:15 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 4299D5C010D;
 Sun, 17 May 2020 20:50:08 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sun, 17 May 2020 20:50:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=WYkrLdGeuqCWFbXVmvqfnkVYNN+ylfE
 EVvtH8uGYp1o=; b=ERzzZt1CW4/sUq6vbGAtfmPQDH6uI56VKaSVH5m05RlSJvp
 GN1bzqtHMYpAARLmyX6sx6kGyQhXLyZ77/rotq7zt/ekr51CmWk7XeQTNdxsvFnZ
 MCZhrXW5+I+WTW2/cjyjQ4ReVMG552iPUbslUuUeNaxe31as8dNyBgM/lCbq2cJ6
 cU7Ci570bcNbS2q48aOnvagTC/MiA9bUJJ9fVZrbOokrN6dK3ZA95dEQF3KDRfqS
 uNBm+HBI//OfLOj7How0nAErm4TMSBQdR9KHKKO0MKgCDjqbFyUnr2WEWrlDhYgR
 P+n+erwN6hbOlaFWSve4axE2yD6hBzsYu9Ymqvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=WYkrLd
 GeuqCWFbXVmvqfnkVYNN+ylfEEVvtH8uGYp1o=; b=t8OjfMRjxHIA6/4OUbeAff
 D4iJ54SzjaM4W45mdcOKnvmfAplQAWcL6apI3W8zsDc83P767gK17pbFaEzGbF2i
 mFTOJk7iLPOAmu23/+3W6/g+wvzjBXusq61S7hdcezD84oINppnLWrBpRodQHbzZ
 RJQZKpoitN8TJDODoOIaqRAfnFEh5gWzWVk0C6z5EGFXLVJy0EMPUu8TiyBd3eob
 yYSB2ldtP694/Y/eiOnhWiuyl2NZr3ob2qTw+itoEh3EBtqwzNYvKS7R5bpKBfoY
 1oHdZwrOg6XJAPNiRnFuIrQXBhPoBlkbv9g9Sg5MOJzNgbF0wW6oeXvhphB1D9vw
 ==
X-ME-Sender: <xms:vtvBXnuw5K5k_AWpUZN0lp1mYUP1EIas0tTJHte8s6EoPgOV_3iItg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtgedgfeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:vtvBXofCR5F_YNC829r0n7EH8ealBuZGcwf023R6YfnRfFI--_wEhw>
 <xmx:vtvBXqx1J7I0lbxlck0HKTfVqGquZ3rQuMNCPOGfgvc2dqCMXJxnwg>
 <xmx:vtvBXmMO-TXHXUP2fYlqyY657rFwQJ7PRjNRBHk9LzUXGmjKr6W9zA>
 <xmx:wNvBXqZ3tiimlwKp6Zn8KNhT4yUHKQ7Bzq4dJs5sEk2pWngqOp05KA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 6C7AEE00B3; Sun, 17 May 2020 20:50:06 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-413-g750b809-fmstable-20200507v1
Mime-Version: 1.0
Message-Id: <8a30fb45-779d-4459-984b-f7792858c92e@www.fastmail.com>
In-Reply-To: <202005171447.00CFE0C@keescook>
References: <20200517153959.293224-1-andrew@aj.id.au>
 <202005171447.00CFE0C@keescook>
Date: Mon, 18 May 2020 10:19:45 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Kees Cook" <keescook@chromium.org>
Subject: =?UTF-8?Q?Re:_[PATCH]_ARM:_kprobes:_Avoid_fortify=5Fpanic()_when_copying?=
 =?UTF-8?Q?_optprobe_template?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_175013_416074_5C06B0A6 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 mathieu.desnoyers@efficios.com, mhiramat@kernel.org, labbott@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 18 May 2020, at 07:18, Kees Cook wrote:
> On Mon, May 18, 2020 at 01:09:59AM +0930, Andrew Jeffery wrote:
> > As mentioned, a couple of attempts have been made to address the issue
> > by casting a pointer to optprobe_template_entry before providing it to
> > memcpy(), however gccs such as Ubuntu 20.04's arm-linux-gnueabi-gcc
> > 9.3.0 (Ubuntu 9.3.0-10ubuntu1) see through these efforts.
> 
> Ah, dang. :P
> 
> How about converting them all to unsized arrays, which would also allow
> the code to drop the "&" everywhere, I think. This is untested:

Looks better than my hack. Took it for a spin under qemu and it works for me.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Tested-by: Andrew Jeffery <andrew@aj.id.au>

Thanks Kees!

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
