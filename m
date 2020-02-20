Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F08165386
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 01:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n+Qukg2brRwKU2b8RJIupkggKYcs+CSI6gFMBMkNE4g=; b=SNmfLzw77hwLqA9Re7ndno/LTI
	6GI+PXVZ69wZP+AZGXY1EzKgNerQvbviE5J+8wDp7lLkUf5T7vwIC0kF9db8QVF/SrQroGLpZSzSL
	FZh1r6+KKxguId1lhNKBCI8C+ZxebWIN/C0L6IIjSt6o7cTtb/jYFk5U30MbQaTJcDKCqTzT0FVY4
	gIxI58fI6nbFbjYQeDXJ9B9SdYTxrIXZfZrAI3v/GFhbVKCzkSgXg76ZeopoCGtqrg1JI2ddcrL4j
	g7TfjfHgcNeEruoNUE4XUaQLxTk1sCJeOf6hoYnAKhgykCPFH9wVMcchvvnYx3wNvdif3oDMTGTdh
	+wV8OIPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Zeq-0007bx-SL; Thu, 20 Feb 2020 00:25:36 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Zeh-0007ak-Dx
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 00:25:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C38167403;
 Wed, 19 Feb 2020 19:25:19 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 19 Feb 2020 19:25:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm2; bh=ETRepjY32Q6DdRrxXYMas4ZgO/c7BVj
 rXiFe89IwJKw=; b=p9J2m3z/kladxjeMWX8wh1ouyA0ceWph0+WnH+NhjtnfEeI
 NcfLYlB+3Gd5scBDnF4pNkG70Hvk0Aq2Xbsja9lSdgclRNH3Q1IXE3zQ/HAPn13E
 Jtdbv9q8Eyd6sduZ5Nikr1Qj4rFhaICRq2IXfKwMvnRHUSRENaBY7H4YHQMrXO3p
 WSgUiYAGK0UY4FUPvtH5TtyHEtlBTfhWGlHg5bEQTKiBqlkQl78Qbs12iS4skVZ4
 f4iHJJI4HyiDOV8Vp77CUlQq+bCW82O9sCuAbQMpAQXavLDvIcRuAB8MFXc+OmHk
 XqTBeysh98nLodGdr9X3f05Y5CGU7rvmBQH4Lcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ETRepj
 Y32Q6DdRrxXYMas4ZgO/c7BVjrXiFe89IwJKw=; b=ytqVAfavlMnvH1MsgcwdhE
 t0Snl9wKxDCotuyyHSgv6cn6qyA8z7q8M5NgMyfJU+C8N3GNfAAfFN+971V3hgfD
 MGJ0yghLia39Zn9JiHU2fFlowACvcKcTDhRqYEe7D57y44SKpDgIUhN1bTa99tMO
 58UM8EPpyyEje+4dLzBdUucDfr8pxFRy5kvwnP0DKVoCsGRZBbgvdIVfoue0YO0C
 /xU8uUma99ch+E2P20pf9HYSwOkWkJPX0mXKrHuu0a/CLXoeaqX/rSjWDEd8tYXg
 FdXXJtOfPrZ0VaUV16bmnJwd2u9wfjC7fupRHd7pXPXyvlrBo8G6CbRg+Oxj0msQ
 ==
X-ME-Sender: <xms:7dFNXvGKlglqhK7rOkbCc3Qxdwndl-SFwTFYOFU2x3w6aBkRtUaZtQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedugddvfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:7dFNXoicFFnJWcyHIGoMYTJmX6Ycak3ABe0OYetg8OOixGZtbgakVg>
 <xmx:7dFNXkCMZyrTWAx8td5AD_q6nrgrlKDtqdkKBNAdMCTo51SV3DUnpg>
 <xmx:7dFNXrs5HL2rX_aOsn3wsELb9FJyYFbrE3HFPUhQNxkr1yl_4frShQ>
 <xmx:79FNXuMwKCHMcz5a5RN-_EenwnMdLv21wKCP8EQ5HlRq4NmtnVGOWA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id E3BD2E00B2; Wed, 19 Feb 2020 19:25:16 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-802-g7a41c81-fmstable-20200203v1
Mime-Version: 1.0
Message-Id: <5d295199-d0d7-4d58-be29-4621738d7f28@www.fastmail.com>
In-Reply-To: <20200218031315.562-1-rentao.bupt@gmail.com>
References: <20200218031315.562-1-rentao.bupt@gmail.com>
Date: Thu, 20 Feb 2020 10:55:10 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Tao Ren" <rentao.bupt@gmail.com>, "Felipe Balbi" <balbi@kernel.org>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Joel Stanley" <joel@jms.id.au>,
 "Benjamin Herrenschmidt" <benh@kernel.crashing.org>,
 "Chunfeng Yun" <chunfeng.yun@mediatek.com>,
 "Colin King" <colin.king@canonical.com>,
 "Stephen Boyd" <swboyd@chromium.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Mark Rutland" <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, "Tao Ren" <taoren@fb.com>
Subject: Re: [PATCH v3 0/5] aspeed-g6: enable usb support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_162527_618596_6DEBCE42 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 18 Feb 2020, at 13:43, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> The patch series aims at enabling USB Host and Gadget support on AST2600
> platforms.
> 
> Patch #1 replaces hardcoded vhub port/endpoint number with device tree
> properties, so that it's more convenient to add support for ast2600-vhub
> which provides more downstream ports and endpoints.

Ah, something I should have mentioned on the previous series is you'll need
to update the binding documentation with the new properties.

> 
> Patch #2 enables ast2600 support in aspeed-vhub usb gadget driver.

Also need to add the 2600 support to the dt binding document.

Looks good to me otherwise.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
