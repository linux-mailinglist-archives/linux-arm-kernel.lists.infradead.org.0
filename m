Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274A71D8C2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 02:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBJx1WozlcfonqYT3pOJkquOs0VATJywE8ZSn3xSFuE=; b=ilK7q9lGsRexEy
	SQ2NsGBRlx8SdLmz2fHIo8l58A2mgjfLzWTE63VFENnwvLBJAkliU2mdJmL+w2aaTQsInr2jnc0Pk
	2vlscuyzrWmj+9PQ7qrDrzTrGNgQGB2a6NdeCqwnsEWlH+tfpbVI+unKHHjhIW+JHe0qxn5J+JRus
	FV8agBSs79wIaLPIk0q5ebnBuB331beQC20FIL5bSI+Hw2eN0/8QiHRmtWdZTgOUQmT51Ig9M0xMT
	PtzEcaVAyBvjo6bKJcZbQRKwZ4G4E4yQUbnxZ5g1/WWXTM7ahhBbSGtUgtEzhjC55cVDXcgmucWag
	xK72mpnXSy6VUtnMjKhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaq2b-00064k-A1; Tue, 19 May 2020 00:23:29 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaq2Q-00063B-0m
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 00:23:19 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 19F265C0073;
 Mon, 18 May 2020 20:23:10 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Mon, 18 May 2020 20:23:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=6dez2inLO9ku1pNNSEEQg2wUTyCCTFZ
 fY7XJVnTZ6zo=; b=Jke5t/vu8yu6lIojT3aomUQNi4Fakt3uHDflIlLQnEuw67N
 nl1dezDfNQvJOgTEkrBZvoW5MOBynt+0ypcxoPrjSiPuVAYL+2aa1MgzMfINgL34
 01bVmRbF5u0YT6loEp8zJ3HDl9R7FFH2a7Jw9RebEZOu9hMKIzzRyDHZjOJAayVO
 +znMhvU1Bu+DthWqE+Fvih4+w8E+hg47lo/OaMzj9kIZnpVXO6TvJQf8RMa2ub10
 5H/4QTrxXBPK3gXPZpQWDiDQm0VoB4VQxPgWU8FVOaFHWUFke6YBfVrlgtx0OcN8
 2dPJm9zAGwNOH5VxtwoctQQ7zh69gc9+6rKJfvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6dez2i
 nLO9ku1pNNSEEQg2wUTyCCTFZfY7XJVnTZ6zo=; b=eH1davhvjbSqau6PYdxA6Z
 MLKj8NDL7V/T7TQ1WggrseuNjWCy/Sqwh1BSevutAAJsSGeSo+Kx7YIAVdyrgP4J
 YnHWk+/BnIKedl7lQEATSOfoX3tFL+/3hbzS8qMbINKkflDX65AfFBYdJZocUPgm
 9UpjNb2mDmwPU64SAjWSL3L9xH0lKhmdJwtBwAmpEApD9cX42iUMr7lpKUy+kZ2K
 7+0YpoyGl587b0MRquTIm3KZku1UGMf9VQFlUpXdEjbUX/J9RG9ANnZl1ZG6o8DK
 umcChQ7n4nqrIoDe87BuAusR4AZHoMVBSRFyjt7bKI2MFSceaigSf8WYwRmzh8GA
 ==
X-ME-Sender: <xms:7SbDXtOnI0j2-kgGwjGTkU4HOfWtB_F2fi1uHnbUNxQk9jPaQNZNKw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtiedgfeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:7SbDXv8icLiT4lM1bSEA0pNGSzsKFa22FnYhuv7frg64GMewXMmlzQ>
 <xmx:7SbDXsRYpKNoaMee211aGR9FNV4MU8DYUrxgJjoKcIZ2GGMhVsjY2A>
 <xmx:7SbDXptPTWYr0BEwh4whoI3PElvFsQEWJyLbQzM20xj2bI1xGZI1RQ>
 <xmx:7ibDXp5uEtBy5jID-x8ZNuiygRH1WvtrTk3mPttALrjLWGhwFcdj1A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3B312E0109; Mon, 18 May 2020 20:23:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-464-g810d66a-fmstable-20200518v1
Mime-Version: 1.0
Message-Id: <eab147a6-4bc6-491d-aaaf-61526c4df5ff@www.fastmail.com>
In-Reply-To: <20200518112059.c19899ffb17a4843bf4f74ab@kernel.org>
References: <20200517153959.293224-1-andrew@aj.id.au>
 <202005171447.00CFE0C@keescook>
 <20200518112059.c19899ffb17a4843bf4f74ab@kernel.org>
Date: Tue, 19 May 2020 09:52:48 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Masami Hiramatsu" <mhiramat@kernel.org>,
 "Kees Cook" <keescook@chromium.org>
Subject: =?UTF-8?Q?Re:_[PATCH]_ARM:_kprobes:_Avoid_fortify=5Fpanic()_when_copying?=
 =?UTF-8?Q?_optprobe_template?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_172318_203470_3ED0F937 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.27 listed in wl.mailspike.net]
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
Cc: labbott@redhat.com, mathieu.desnoyers@efficios.com,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 18 May 2020, at 11:50, Masami Hiramatsu wrote:
> On Sun, 17 May 2020 14:48:52 -0700
> Kees Cook <keescook@chromium.org> wrote:
> 
> > On Mon, May 18, 2020 at 01:09:59AM +0930, Andrew Jeffery wrote:
> > > As mentioned, a couple of attempts have been made to address the issue
> > > by casting a pointer to optprobe_template_entry before providing it to
> > > memcpy(), however gccs such as Ubuntu 20.04's arm-linux-gnueabi-gcc
> > > 9.3.0 (Ubuntu 9.3.0-10ubuntu1) see through these efforts.
> > 
> > Ah, dang. :P
> > 
> > How about converting them all to unsized arrays, which would also allow
> > the code to drop the "&" everywhere, I think. This is untested:
> > 
> 
> This looks good to me since it uses same technique in sections.h.
> 
> Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
> 

Kees,

Were you planning to send resend this, or were you looking for me to polish it
up?

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
