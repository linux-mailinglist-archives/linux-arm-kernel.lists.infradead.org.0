Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A339DA65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 02:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSpJ7f2/zGAMLOrDxDMbrqr8Fxd8iHAxYqlamS3nH00=; b=YgXcMqJoIoJj1Z
	15Z4F1qbLTDffWsC3A1fX4OLvRYxU8cQTZIu2Yy+rbw8FiOz771VAl26s1b3YoRyoGbm3cqWzSjde
	ppeqSDx7t6WpvKuFQmlIlV7C5NhYEWd5FluipoFIz8Bo2TdwHjWpWkqwqXEsJ2ra9VBY3ETS2J2Z9
	uGIm0QpqX3atl+ie7hUcZlgTqVDtohS5eQ32llg5M/FEukGXdp1LBzTSJCvHWM+kTYLL6UtB3VM6B
	rA8ShwV3OWXEf4K5GJ/HoWA8cTbOyfq/Yr1BlMj0SNiWd4eZI10zDSXWA9OylmEp9Rh7kOXK7z/gr
	P1EZlEMF8zpfozcXKf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2P4y-0000DM-3m; Tue, 27 Aug 2019 00:11:20 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2P4l-0000CZ-8r
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 00:11:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id CDCF33BCB;
 Mon, 26 Aug 2019 20:11:01 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 26 Aug 2019 20:11:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=CDTuiZrelUWEgf3y4KZ7WxVJzGTyvoY
 nwkgEV9GS9EA=; b=pMIvHTKZfpHH9DiPjpIImmW3Ww53CpcROqSmFp5Tys75FC4
 TBMkOOioKeLUpn+0eyWjmt2bHiT0j1gjmAm2EM0D8d4a4czex3Scxw1LdcIbarZc
 jZUgoUkf2I/bJFh4UEA3AXiKP/PzDt0e2V1IOFCOA7qsGnwF0U4O56YD8zX0Pe2n
 Aqpjhw2SU30W1GAjSG6lXTKgTqoT/iiKSYdi7lDONGb1cVAKKtPubdxgbVNY++7N
 LJQ2HIhXr3egKtJlhvdme2KxFrE478QhhNgExi7HyrZV8BOpHDyIUSAcPEpLlw5p
 huCY1LaXN99OXfdn8r12DnPn/wrN6AIOvKnbpWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=CDTuiZ
 relUWEgf3y4KZ7WxVJzGTyvoYnwkgEV9GS9EA=; b=oi9vzr2oQAO4M9UzRhnh7x
 xG/WjjXFbS9aYWXUHhD0sX20VMN0v1Ylj/GoOPxJn77BK0VfCJMwMCRL/fiG0DWF
 /TvV4rPWpwMWCClxFPBM+DxcO1SqWLREyw0Jh8EfKJKmkp5/AjB61jHD3ANsO6+P
 DCeTe7QKCCG8iWjn0PqZHSmIibVhG6VoVUU4HLYIC8O/LudJfArrj3b/Od0c6cYm
 sx8cQ32bmEwH45dbR4VPLuEb5Z8ldOxz+avgSxBYxDB/eMHFgL+v+ALfS23EVBnx
 QN4JzC484C0aXxJGcJ4xdVcl4GvNqjDOYvv99g5gyBSiUgaeFGvOwSuojOCKfCZw
 ==
X-ME-Sender: <xms:E3VkXYYUAs1qVZX0bxp2cCivuf6mqWaKBKA32yy6F1UDS54wmR32aQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehhedgfeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:E3VkXUCRvqid6DYMA7CP5qTwQWTota8AuxMsxAzHOQOdmliQ3a44Ag>
 <xmx:E3VkXeEnNc3xf7FKhFrDLweXn-j111DuNyJpS-Bz7mDlVZ5LasnN1g>
 <xmx:E3VkXXMrjR2fwsgTDPKwwyYleaJsez8kBnIGKOWim1lg8tV1ofLwzw>
 <xmx:FXVkXceB8jxtGO1j6CzyihvzBhYsA89B7faXbulxE_RYbHG1KEIxow>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 5EF99E00A3; Mon, 26 Aug 2019 20:10:59 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-139-g73fcb67-fmstable-20190826v1
Mime-Version: 1.0
Message-Id: <fab64830-69be-44fb-9e6f-ed8783b821a4@www.fastmail.com>
In-Reply-To: <d040fee1-d12d-9ac9-a72a-e76137a4579f@roeck-us.net>
References: <20190826104636.19324-1-i.mikhaylov@yadro.com>
 <20190826104636.19324-5-i.mikhaylov@yadro.com>
 <f33aa4b8-6d06-4226-8859-ce21a4b8728b@www.fastmail.com>
 <d040fee1-d12d-9ac9-a72a-e76137a4579f@roeck-us.net>
Date: Tue, 27 Aug 2019 09:41:20 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Guenter Roeck" <linux@roeck-us.net>,
 "Ivan Mikhaylov" <i.mikhaylov@yadro.com>,
 "Wim Van Sebroeck" <wim@linux-watchdog.org>
Subject: =?UTF-8?Q?Re:_[PATCH_v2_4/4]_dt-bindings/watchdog:_Add_access=5Fcs0_opti?=
 =?UTF-8?Q?on_for_alt-boot?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_171107_455169_D11D1C57 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, Alexander Amelkin <a.amelkin@yadro.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 27 Aug 2019, at 09:38, Guenter Roeck wrote:
> On 8/26/19 4:57 PM, Andrew Jeffery wrote:
> > 
> > 
> > On Mon, 26 Aug 2019, at 20:17, Ivan Mikhaylov wrote:
> >> The option for the ast2400/2500 to get access to CS0 at runtime.
> >>
> >> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
> >> ---
> >>   Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 7 +++++++
> >>   1 file changed, 7 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> >> b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> >> index c5077a1f5cb3..023a9b578df6 100644
> >> --- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> >> +++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> >> @@ -34,6 +34,13 @@ Optional properties:
> >>                   engine is responsible for this.
> >>   
> >>    - aspeed,alt-boot:    If property is present then boot from alternate
> >> block.
> >> +                       At alternate side 'access_cs0' sysfs file
> >> provides:
> > 
> > Why are we talking about sysfs in the devicetree binding? This patch
> > doesn't seem right to me.
> > 
> 
> Correct; this is the wrong document. The attribute also will need
> to be better explained. "At alternate side" does not explain (at
> least not at all clearly enough) that the attribute only exists
> if the system has booted from the alternate flash / block.
> 
> > Also if we're not supporting the aspeed,alt-boot property we should
> > probably document it as deprecated rather than making it disappear,
> > unless you're going to fix the systems that are using it.
> > 
> Sorry, you lost me here. Where is it made to disappear ?

Oh, hah, I read the bullet '-' as a diff marker. Maybe I should go back to
bed!

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
