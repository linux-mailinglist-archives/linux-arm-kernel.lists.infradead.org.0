Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1C779DAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 02:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFiDBNEsr+BkUOVV+0l7EcxR26VyGJhy39UtpzXWn7A=; b=GepF68fb89rcF6
	OUJIc+LciILE7RuOLEEHghAqHYzYbA1hY28IvOHfOyLjNi67tcD8Hz81TlrtQ583+L1NeiumoV+Qb
	O4UA00ZKn0cJHToQWA9Le6AiTr1/uve5tNF68NFvxsZ1O+Ph+i8OqNfczySfXsvKI69uaaqhw/Yzw
	eypWR54LQ6fJMpLsDSe/WNoVnqkZPShK/Jy4PLvA+7J05MkeUod2yycIHTRq18pSqfctc4yxbYMjg
	+niaH+LHkRdsshzjsHkxIdOERCkfcSDfXnBGUd/iHQXj7+38RKd7uPMTX6pFSE9kckdA6aUhv1Lg7
	X4FboL87YU91J0Zfq/CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGS9-0005T6-70; Tue, 30 Jul 2019 00:57:21 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGRy-0005Se-9s
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 00:57:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 0EFCD22007;
 Mon, 29 Jul 2019 20:57:08 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 20:57:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=XPnERhW2H0wWGWtbugb+2NkxwKfRT+Z
 B/CqbqW3bjzc=; b=h1PIV3879MIbvLKd771VEtBSSBLdChbMkdBG6HYaltryFjK
 mU1OLaic4mf14xFo8ZWZzUzPe6rroi70VBY08UIX3AlZXlzh5I0CqFjw4BlcTYaW
 O4dNQHc2bJBjpdqfTWeopf8r179OhBG0R8ISxB6I7EKpyj6LdRyT+AO5mJAtuwNV
 ePUqD9lp9yh7ot9sCTzyl3eCLuSvXXtT+DLQIVs7UW4/g0k6eO79hJJRtZPWp7vC
 gDVXO/VSsgW1+UkFEXHnfYNUaZI7N65bNBnqtmq1s9AuzkO+x1BjNlppZpO40+BK
 KfIx5oXoWZDtJGM+vcOv28yo0E20PIo7HwF2BVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=XPnERh
 W2H0wWGWtbugb+2NkxwKfRT+ZB/CqbqW3bjzc=; b=rHjfhPAeXGVIKUKHK0ZtHU
 KPebvOVCz4K35x3/yIwo38Z6vHaE/DRewVuG9FQJGl1wbPCN1Djhiq5e6eAUR22e
 2+gHsZob35CnOBHa4wnZgH5bvCNlUaGCBUKOMwAb5QXn0GFlj+YbQcCjTZzdyL60
 4dNqlB8oj5u8DqN6AL03SPeBFKhGijwDuaEy0HMrKplJRJUmzCqpHlgDsuBojwRG
 wPzsfYw7LQQcnM1REKCXGmDdL3OAX+ml65J7RolnUQrxYMjBYJKc+NMV5N9VM2Uz
 pNZLbeYVURJSTNDY2bVQSeK060sJ6ePvQkrYhO3JRZgultwSPUMR77bDxKBLrUfA
 ==
X-ME-Sender: <xms:4pU_XWAnTrWrXYdqp2G9pCGl9cfD-y6t-0eaEXgYB4urZrIjx-pVCg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledvgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:4pU_XadJXpf3MrjT7KtdMHx-e5YWzp46XKN8NQDBp1KNm25P5jWbgg>
 <xmx:4pU_XbdvJPn1CD30grWzCYKFW-1gQLAf38r4KRKUxJuX5cCGU7ZyqQ>
 <xmx:4pU_XQN6nVXKotBXQvgv-BNkYhQJBPIWWZu7B0RXPSGTEWo3g5hqUA>
 <xmx:5JU_XVOINtfdY87NdCVpOsBSgkIdwDoWxJCqBiXYIiPN9OvP4B4V3g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 26AF6E00A2; Mon, 29 Jul 2019 20:57:06 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <9d0f2b20-e6f6-419c-a866-c4a0dd92aa63@www.fastmail.com>
In-Reply-To: <CACRpkdapypySGPrLgSMSNy1fzkca2BfMUGzf3koFWQZ-M5VOvg@mail.gmail.com>
References: <20190724081313.12934-1-andrew@aj.id.au>
 <CACRpkdapypySGPrLgSMSNy1fzkca2BfMUGzf3koFWQZ-M5VOvg@mail.gmail.com>
Date: Tue, 30 Jul 2019 10:27:25 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/3] ARM: dts: aspeed: Deprecate g[45]-style compatibles
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_175710_486512_F73F78B6 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 30 Jul 2019, at 07:23, Linus Walleij wrote:
> On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > It's probably best if we push the three patches all through one tree rather
> > than fragmenting. Is everyone happy if Joel applies them to the aspeed tree?
> 
> If you are sure it will not collide with parallell work in the
> pinctrl tree, yes.
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> 
> (If it does collide I'd prefer to take the pinctrl patches and fix the
> conflicts in my tree.)

Fair enough, I don't know the answer so I'll poke around. I don't really mind
where the series goes in, I just want to avoid landing only part of it if I split it up.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
