Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4311F1C3B2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cRcgiivKcWCU8GdTU2ecI3TFJ1tDcAhAvOgHzXujaE=; b=L033oIpsazaTHs
	LoBUM+qp5LFPjiZbwom0uL+CzC/P4kASfPvYN9ka8n3OneEFOXP0HlEqIwHfudgbwdqtX7gCBVCy3
	s1Iz6QU0ZdWnjw1l7C0Oeng5KT1wuCy5T5cPEQVdJVAxfJkrKFtgIeTkQasQAxNTIN0zGJXrWJtY9
	Pm6ABId7MDNss6dwiUSqGfPYh6dOycj/I/kgmy37E5g2Lmj/mal4kH4vqRYswQbcBR4F6MuNFO862
	mqNCDAli+2Gh7+U4CLsf1A5P0GCt70Heh/43dvsBgL2gvnVVy2CyKeVH6Pp6oHWSipYJWQcKOkLPs
	sJ8G65aYYV7N6X0j7PNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVb4x-0005o4-Vx; Mon, 04 May 2020 13:24:16 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVb4p-0005mB-Fk
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:24:08 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id B5B375C00EF;
 Mon,  4 May 2020 09:24:04 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Mon, 04 May 2020 09:24:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=DJbaaOuR+6YHYaJHgAZbaqepInhtEO+
 O3opNfcdNHMk=; b=KwE4E4NhpTz3bFlHAfJsiyBVoDjPGT6iphiVk2YB+0MFae/
 bAHjfF9EpBYQou+5B6CoQKJU7i6dfZXQQqb33O6toyISkuQh6lKCBLNa6fEEoyb2
 x1XHQwVA6nn5Qu+u5BYbivJ2IBbZRMn5mRuBRFXMspWPkWJTzhOgjIcXvnYK4YLT
 YwKAcN514atSqpqir0N07vj+4NpaudOkIChi6cQfiv6xJnoOvEcUyTz+CzC8Vcxf
 bymRkPa2Vzjoq8Lv87W8lBPJUolowqd8G+y0AJLqtqh1/mRjS33om2nli4cTEt24
 YN4OuvhpVcUwjF5w6EHzfIMWchCxynRkoeuRclQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=DJbaaO
 uR+6YHYaJHgAZbaqepInhtEO+O3opNfcdNHMk=; b=oEEqvNl7bv9sucTj20Y/R/
 PaNZ9cTflvHMhRC5eFH7Okx/LTmLkDRmLDbVvfBEZrcuix6kO7zjsMzOo5Af7u8o
 PEieVA0QT/uT/0M2eC6CG2wApyoZIFdphGo3/wYsFxg+Awxfj5SrCJIcXDT0Ja8j
 K/rP1RSYN5uZQtdxorw3t6SqFCBZC0dnbGCKHckkszG4ukXK4dihYxZ2rk1HIe8c
 mXXhWqQDZq8jAuFJGBEAm9XFgGjJz668ImK/jUL3WnZubKFfchkE+wfdvpm/ijXT
 mJTXXo6UJ4wcmPY8RVf1krfjnAeJ0KoWIFT3KzvcJjUC5KF4kNiayq+BkJMQG2MQ
 ==
X-ME-Sender: <xms:ahewXruF53BQnNhnb2cWtIa8oqZvGEkI5R66wbqsp9C3WOXP_1izYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeggdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtffrrg
 htthgvrhhnpeehhfefkefgkeduveehffehieehudejfeejveejfedugfefuedtuedvhefh
 veeuffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 grnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:ahewXoLCwJMrgaFGB-q6aGgla5a-oVChd3b2MalmrAMdUmmutEHN9Q>
 <xmx:ahewXpf2878l6Q3sK8698xAr2nhmL4zmoH0EKFHkY8XM3kYzS9do2g>
 <xmx:ahewXrLvyf0C32mc8Vaw6JEueOa1RGQqOC1bwfwbQOZJZjyWCG5sxg>
 <xmx:dBewXm0j82CQmSxvcOLkLoxITE2jVaVa7PY6vbAOqaFGWi3EMJ9SIA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 72E8FE010B; Mon,  4 May 2020 09:23:54 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-351-g9981f4f-fmstable-20200421v1
Mime-Version: 1.0
Message-Id: <0ca41514-d664-41e6-9f0c-0d948db3e9ad@www.fastmail.com>
In-Reply-To: <CACPK8XezSFzCeQN4tkvcmjOHEAgrRGYBiBzRymaazpv8Lh-gTQ@mail.gmail.com>
References: <20200424135303.20952-1-a.filippov@yadro.com>
 <CACPK8XcP3V=8fAUfNvRFqPU9G38dGR43Kpp=Uxm=P_AjrMnzBQ@mail.gmail.com>
 <c1de0c90-d486-4855-bb26-0f3cc416b05d@www.fastmail.com>
 <CACPK8XezSFzCeQN4tkvcmjOHEAgrRGYBiBzRymaazpv8Lh-gTQ@mail.gmail.com>
Date: Mon, 04 May 2020 22:53:34 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH v5] ARM: DTS: Aspeed: Add YADRO Nicole BMC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_062407_758720_3D0A5242 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "Alexander A. Filippov" <a.filippov@yadro.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 4 May 2020, at 22:14, Joel Stanley wrote:
> On Mon, 4 May 2020 at 11:04, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> >
> >
> > On Mon, 27 Apr 2020, at 20:41, Joel Stanley wrote:
> > > On Fri, 24 Apr 2020 at 13:53, Alexander Filippov <a.filippov@yadro.com> wrote:
> > > >
> > > > Nicole is an OpenPower machine with an Aspeed 2500 BMC SoC manufactured
> > > > by YADRO.
> > > >
> > > > Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> > >
> > > This looks good to me.
> > >
> > > Andrew, do you have any comments before I merge?
> >
> > Not other than muxing all the ADC lines to enable just one seems a bit strange,
> > but Alexander mentioned previously that the rest were simply grounded so it's
> > not going to cause any problems in practice.
> 
> Thanks. Can you say the magic words for patchwork to pick up?
>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
