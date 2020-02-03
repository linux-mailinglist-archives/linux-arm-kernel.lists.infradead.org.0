Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A829D1500E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 05:09:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAx9SFmQDrB0L0jT5bcdcVenVbDgLNgKuEtwRdi1Bik=; b=Y6hIsOELtMZLj/
	CiLo77V0iPPcfvHpPDpN/TZPhnbM8NC2XPNrm3jujmwkc/0XN31ZtKsV5Pm63MdDf2oEnATiC/v+b
	hC+7T2z1CmApGyaQm3QNlszme++95zxFZMFy/wVlbCF5BZAEZAZLwxZnjuSZ52mPkJ5DsA1tT1cbQ
	KA4FlVyBOXXKftqbkLLTHRyhcLsnt0+tokiMtQsQxqhYPNn8RB9C3Hh/d0efiQYJV7BuiiMIyv8CM
	+e4NBaJ/IrimYgrPTFAYVnh14iVPmz29PBOk731UvJmn6db4UQ1G45XUuxc9nCit6UCCcD3HW1Tkc
	2nG6Ic6+Nknoc7/LtKJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyT39-0002La-TI; Mon, 03 Feb 2020 04:09:27 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyT33-0002LF-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 04:09:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C156E6D27;
 Sun,  2 Feb 2020 23:09:20 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 02 Feb 2020 23:09:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=RjS6hrJkvw6HKnule/qYTODmaAYp/hQ
 FP4smKfPmKGQ=; b=jLEEj6DuOY9JFldgz6GzluSbsV/j8Jxqp+dWzKfNwmDCsKk
 NP/mF1lEvBeknCTiyR4uzNfKGEiO3QDXQbc8/kaCqDMH7OqMNHWHqs0RXrXYMLZ0
 bMH0krwIh9AUdzsI/6YuMa6EgbgrmwclYfUUEgaZwT2QFNQj3tT5cxrKcu41T2Xi
 3NOXXV/ugy4b3jHye2tAfpgw5sSAMXIYrVGoedPkwAZ74WhvJuv1FqRtD+MNRQHS
 7o1n5mWsHYu0XM961jK+M0LkZjt6d1gnBKL86rfmR0N1djBSWIS5cP/6/bPdlnNd
 PX1bxHEsSj30BetS5LE01430WIHG9PWyr7oV5+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=RjS6hr
 Jkvw6HKnule/qYTODmaAYp/hQFP4smKfPmKGQ=; b=DmuPSaKpvAxsFkXQD2TjPV
 457IBibzflOvIL/OIV3vx87Qo172/hR1rP41uWk/PS5DXGNAeuKnZWrVYiLIB2Po
 tHFT7+Yyz0VlzOs+bcxOtK2rGtbFxrifqIxBMb97IOHud5xRNsoLA3jFgbrMna9K
 ezAp2WRpmdoRJqOYWR+7OuToXToM8VJlnoT599ClS9KaEveGOd6Bk3Ix6EMO8gg3
 NwjjuJCA9YylBi303dieFUYdkHeiWIf/f7/R0b4n1IxSNhgTWDT6MmhyNJX1OOXC
 5rWc8qMmrRiJi0w8Ougj7k8sqzbA5QvAPc+JgtAtjSewhEjcc9TFgzDkyjONC6rw
 ==
X-ME-Sender: <xms:8Jw3Xr1SJOTNsngXqFBtuTDrEzdzuCTzo7B2CDSeJhBr414ExuothQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdeiiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:8Jw3XrUkY22zjYfoyBETKyB-x-H9Zh5jGuEbV2mSyqYdBdkFyOr8JA>
 <xmx:8Jw3XkVD1fVPMiiaKnDZgRUt8hkIBZgKTmm3s1FuLwEg8xNxAlmnJA>
 <xmx:8Jw3XnCzSnKK85gkFNgd56lWmuj2Ao3jH1hxFZJidO6xNHF8TIgXmw>
 <xmx:8Jw3XmszI8conWzhsZjiGRm5Lr_AzefRMi4d4IHNJknWRjABi4ymHA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 965ECE00A2; Sun,  2 Feb 2020 23:09:20 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-802-g7a41c81-fmstable-20200203v1
Mime-Version: 1.0
Message-Id: <42173df3-c060-4c62-a5b9-7f1deade21d1@www.fastmail.com>
In-Reply-To: <f6beee98-360c-4239-ab01-86ba41629f9b@www.fastmail.com>
References: <20200120150113.2565-1-linux@neuralgames.com>
 <CACPK8XfuVN3Q=npEoOP-amQS0-wemxcx6LKaHHZEsBAHzq1wzA@mail.gmail.com>
 <4446ffb694c7742ca9492c7360856789@neuralgames.com>
 <575811fd-24ca-409c-8d33-c2152ee401d7@www.fastmail.com>
 <136bbab84d13d8d56a5ac297e415975e@neuralgames.com>
 <b83f2a1f-e1be-433c-8dc8-c469cb38f423@www.fastmail.com>
 <27c5505acd8d09f70ec9cd12982b2e3e@neuralgames.com>
 <f6beee98-360c-4239-ab01-86ba41629f9b@www.fastmail.com>
Date: Mon, 03 Feb 2020 14:39:06 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Oscar A Perez" <linux@neuralgames.com>
Subject: Re: [PATCH 1/2] hwrng: Add support for ASPEED RNG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_200921_952602_5E7D5EDD 
X-CRM114-Status: UNSURE (   5.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 3 Feb 2020, at 14:37, Andrew Jeffery wrote:
> 
> I think we should leverage existing work where we can. Lets not make
> more extra for ourselves :)

Dammit, replaced the wrong word there - the irony:

"Lets not make _extra work_ for ourselves"

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
