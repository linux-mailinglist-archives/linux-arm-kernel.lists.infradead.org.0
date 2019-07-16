Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D856E69FFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 02:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LNV6IOgqPhGsU8BcG8p8Kj7aUpKpLs9zDVNnB4fY7w=; b=hmxZ0vKpdtfppQ
	Ng7eyrFArQBRhsOoTvVvsR86Cf9TE9iHBQAXorbHpPWXNT92L+77DoAQcOyyrO3w66qAhDRuTbUSZ
	gMNQOU/59OXwb0ao1yHxaV44SxR5o3Y33SrN1Vz0i68AYRPemSrhJGnHcsVBnQqqB4QQVnr2e4EZZ
	iuZ7QOxJGf1XmHXMwe/3W34nmYc7EAnrj0kV+IzyFMaSGQVxjDklCdfGdsnf18rZWtY1lLSoHqpKW
	Feiuyh6BNFPajcHLpk3Qm40X+OUQR9mtduQFZUmC31Ton30PYmSqWg9XQ3x69PE42Y+MvvvwXlBow
	7wEItceNbYUhKf9ABH5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnBVh-0005qw-IP; Tue, 16 Jul 2019 00:40:01 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnBVS-0005qV-S4
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 00:39:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 0C6E5218C1;
 Mon, 15 Jul 2019 20:39:46 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 15 Jul 2019 20:39:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=h4lyw1ckqr2NsnVmVrOHlFNltSVlShU
 XUZlbmu/yAvo=; b=nA/XJjh7eKpE9zZB3wjvRz0KgEovPjrsdFfyE8Lsv/MnNru
 q+KzxQwRBZ5ZkU26CP0Myhs18TtKNe0qsTMjs0w+fFtGHhSVFyQfVMfJ5IxymITg
 HZPNZzLszXPNz5pm7Pt/+Y1dhXaieTjK5OKCAla90rENCc708cMOV9ckgCKhBJjk
 TVUuBaaKwJ4V/nYzVMJlLA9I6ZLEFly0rAqKESdkS0NI5Ao3K5uRlb9L4w2DPIVi
 FGj81uEyt8UxzBvTAoAfUlzE9qWdLTnCCBB7tCTB1MCxLel+ChXecLzDCGsEsHAU
 Ng8B0YxvZ3nuauqpHSldJh8SM6Cq+Y41bo5CW9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=h4lyw1
 ckqr2NsnVmVrOHlFNltSVlShUXUZlbmu/yAvo=; b=c77O8R8J9MQVcy0S97WVVs
 cgYZ6mLuXzQfT0klylrIK8UEwIyIxGVo9XPuKW6HUWAE/eH0ebCNAJ0fThKo7uYX
 x2h/TJvnb1aRlysGF2NgH9MSRys3eZdgcf+JqLlP1bch2bYoQ9BsUzwox7Sqw05z
 rvgcKZYB4mIKJQQMvub6Bcdh8jBxx1J9A+I91ya0czQbzwanEq+gwsbUO99TXNZA
 lJsUQkBdkCXvciWbvrfySwpe5JAVXLuZ3s4eEom4iUdMcf1oq2oP3kVeTtSxwOxP
 4Rs4lSwDpTHqOc25rV8MyMsJYOZPe9j1DN7D0HdFUYyLlwTdiBY47i+SsO+jAJBw
 ==
X-ME-Sender: <xms:0RwtXYIrXtUpuNL8gxuU2eQdef0Mm3SGqxaIjaaGSm19xB3BAQLr0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrheelgdefgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedu
X-ME-Proxy: <xmx:0RwtXReEZT2H-RGf34PvnZWEpkO5AucxK_eFS_-sqA2P3UFMYQi0xQ>
 <xmx:0RwtXQtR61mbvJi2E0-W-KNhvCTYxokNbvsDjmHBx7Pq8oQki10-7w>
 <xmx:0RwtXfHCNDgw_Ovr5mkyttfXbRcJLA4vnT6euo92rkl5wVKmONjq0Q>
 <xmx:0hwtXcY0BkKpboEJGhZqV-EwKHgZEENyb4Xr4phADP5nZTsdlwQtJg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3A815E00CC; Mon, 15 Jul 2019 20:39:45 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <ec16c833-371d-4dce-828d-dd99dccc43ee@www.fastmail.com>
In-Reply-To: <CACPK8Xdz98CQzgE2KCjz8eOhPtx=H8jTe1hVT7LvP77U_gGASQ@mail.gmail.com>
References: <20190715223725.12924-1-robh@kernel.org>
 <CACPK8Xdz98CQzgE2KCjz8eOhPtx=H8jTe1hVT7LvP77U_gGASQ@mail.gmail.com>
Date: Tue, 16 Jul 2019 10:09:55 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Rob Herring" <robh@kernel.org>
Subject: =?UTF-8?Q?Re:_[PATCH]_dt-bindings:_pinctrl:_aspeed:_Fix_'compatible'_sch?=
 =?UTF-8?Q?ema_errors?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_173947_043039_DE24268B 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 16 Jul 2019, at 08:47, Joel Stanley wrote:
> On Mon, 15 Jul 2019 at 22:37, Rob Herring <robh@kernel.org> wrote:
> >
> > The Aspeed pinctl schema have errors in the 'compatible' schema:
> >
> > Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml: \
> > properties:compatible:enum: ['aspeed', 'ast2400-pinctrl', 'aspeed', 'g4-pinctrl'] has non-unique elements
> > Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml: \
> > properties:compatible:enum: ['aspeed', 'ast2500-pinctrl', 'aspeed', 'g5-pinctrl'] has non-unique elements
> >
> > Flow style sequences have to be quoted if the vales contain ','. Fix
> > this by using the more common one line per entry formatting.
> 
> >
> >  properties:
> >    compatible:
> > -    enum: [ aspeed,ast2400-pinctrl, aspeed,g4-pinctrl ]
> > +    enum:
> > +      - aspeed,ast2400-pinctrl
> > +      - aspeed,g4-pinctrl
> 
> Thanks for the fix. However, we've standardised on the first form for
> all of our device trees, so we can drop the second compatible string
> from the bindings.
> 
> I think Andrew already has a patch cooking to do this.

Yes, I have a series in the works. Will send patches soon.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
