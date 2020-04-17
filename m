Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0661AE0F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18tzrfu/I5brMJ/KqYXuRp8oRNIjeWdd0fxIrsSg7Do=; b=RyumYqSuUr06VN
	vNh9RQDK8MzXJw87J5VgwEzaI7u1Li/xdQv6E38wnmoikI0HEenEStHrbHghr9RnrlRAjmtTPo5jw
	MsfT5ipyQqB7Cd9ecxbgJhObiOaf5wkLy+W6Rc9RVg0SmIxAjIFUfvq/wr/GuOePP2SkW3NEX5OaL
	neX2ANJHxsMxSQGa/Jz+l12kCeXYggs4HxCJuAJWlCfwwWZFzHFK1FvRv2vyzkMdzcebwjyDS+8N9
	F9XOS46mIMhSK1nyXtrd+WwT4O/TnJYYuCdxkJ6sd7Vk7kMKMcAqj53fkTRaLNng5uWFD4VuzAFji
	Lwi93Ldfck1u9WhXChug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSqQ-0004p1-K2; Fri, 17 Apr 2020 15:23:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSqF-0004mx-BG
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:23:44 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7F05E8047;
 Fri, 17 Apr 2020 15:24:24 +0000 (UTC)
Date: Fri, 17 Apr 2020 08:23:34 -0700
From: Tony Lindgren <tony@atomide.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Message-ID: <20200417152334.GN37466@atomide.com>
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
 <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
 <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
 <e0c125ea492670c7069c407b6b0c5958@agner.ch>
 <CAMj1kXEe835GbXU5qgX-QQ5n4SmwQO1nAoAZw5pUVCbR=J8XmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXEe835GbXU5qgX-QQ5n4SmwQO1nAoAZw5pUVCbR=J8XmQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_082343_450629_7880C6EC 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: nd <nd@arm.com>, Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Peter Smith <Peter.Smith@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Russell King <linux@armlinux.org.uk>, linux-omap@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Ard Biesheuvel <ardb@kernel.org> [200402 14:37]:
> On Thu, 2 Apr 2020 at 16:34, Stefan Agner <stefan@agner.ch> wrote:
> > Just to confirm: The instance at hand today seems to be working fine
> > without adrl, so I guess we are fine here, do you agree?
> >
> 
> I agree. Apologies for hijacking the thread :-)

Yes this seems to work just fine based on a quick test, will
be applying for v5.8.

Thanks,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
