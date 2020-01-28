Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E15B14AD61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 01:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA2p+SBp/YC0FXPXxYYzgc6n3JWwt8RPHR8YtC3FhB4=; b=jENikZgpooHIoz
	LznYWHfMD+oN+X48b0bCE1l8KY+UGqC9wTy7f7K/bwUbjH74GTcWzOG5a4ZBTNp6d6FmLtfHPYJad
	qBBZKLFGp2R2xIbDC84lnF6iH1w1HVsv0LYnLkyxI8cpxsJYiAFPVgqNEke2NEBCxYA9+o5faiUFk
	is6iQgBdnsjI6hl30GSkPOsEw3kR+Gese/OaN6U/4OO9UkAnuku0APQQ+pCGR7qiXFMsxmljvBAzl
	UAoY0UiSetPWiHPkG1SnZalawVZHDc+CFy9FONXoXt1rRpu1krV/7E9p4ecneBz/6WJDah/Wagfxg
	wjKMc+eUHIz7e9EDIuZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwF8f-0008He-T9; Tue, 28 Jan 2020 00:53:57 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwF8V-0008Gs-Ta
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 00:53:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B2CFF352A;
 Mon, 27 Jan 2020 19:53:40 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 27 Jan 2020 19:53:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=blHIYvtrRVAHoWVDNslQKxu+cyHHHav
 Ikxh1pjfbb+M=; b=nSY7MuUgF727W/Fhydb46f9Kjw4h2UDlmUivqfrJI9+eefA
 0wcEJfRsjrwI/ZX+DwpE83RpT0aHWB2z4S18+SdFu1Fjqba2FtnWFQ/VQ6rRD7mc
 Dde6FgaeDaxjtKCpPdN5RaG5Jtvv51+VHPoAGafA/zBqPr/1shRSIebmZH+J/pCg
 e4bHnf1mIzFAXaQfKYIKTxu+cDyDgicZJjXzbl0K5lGb6T6sTvOJfwOzDkVXpdu1
 ewIJCy4vMbG0ryoihHtaxsoKrsZ2lqava55RtIkElXaW84M14r2RKEoOn6kry7bk
 jwQZ2jMa7NYf5G2Vs1zn2kuyuighnTo5lzjcwOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=blHIYv
 trRVAHoWVDNslQKxu+cyHHHavIkxh1pjfbb+M=; b=t+Sr/QmTMXtyUEjl2/Ln1X
 8eUU6Hj07lBbd+UlAS9UcPTnB/UfFWn+d84+J931HXfFh8/lNJACnKQIfwrEby7Q
 avcfr9uw/1o952zTcD/lhoewiygRlYEBzg+ZeoxBLOmKkm5MTwCkNAn+2hbdr/yN
 pf0GFjdiE3fm9nj+BbqDGjPKAqSSfALsaHFKUrSwCk1/L6PqAly/JDGwNqEVLsqp
 0Y4ajP8O+w30UdxGepCfpnWzApS6iJSLUuqzKnhHhrJs7Ayp8nLxHpHjVEhmjTaI
 Pd5kyXpJF6aGDkTiwFHZeiF+4HFxZ3vcMQZc5+2++e1gsReZaoa8hJ7aETq59yIA
 ==
X-ME-Sender: <xms:EIYvXlswTcnRWtTH_PvgM9OKYC0tzjmAELKVOOILJY4J07gNU2YNOw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfeefgddviecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:EIYvXgqG8IlDTgLTlMQmwIXN0z6Evqc7rRgNehPq_nQG5WquiBVndw>
 <xmx:EIYvXrihR97tETVtxI3gVASNGNc58ud7y-TzAKjjmhDBKnSz_7ovsg>
 <xmx:EIYvXnmrPn5UNelWW5gUNkbQUG7gkIw01qC7j-Z2U4108rVPXbJSkg>
 <xmx:FIYvXnwIY2fypY7y9_Jey6LqBsx4t8_wmhIpeQmzF37v2z_3iQBsPw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 44E0EE00A2; Mon, 27 Jan 2020 19:53:36 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-781-gfc16016-fmstable-20200127v1
Mime-Version: 1.0
Message-Id: <b83f2a1f-e1be-433c-8dc8-c469cb38f423@www.fastmail.com>
In-Reply-To: <136bbab84d13d8d56a5ac297e415975e@neuralgames.com>
References: <20200120150113.2565-1-linux@neuralgames.com>
 <CACPK8XfuVN3Q=npEoOP-amQS0-wemxcx6LKaHHZEsBAHzq1wzA@mail.gmail.com>
 <4446ffb694c7742ca9492c7360856789@neuralgames.com>
 <575811fd-24ca-409c-8d33-c2152ee401d7@www.fastmail.com>
 <136bbab84d13d8d56a5ac297e415975e@neuralgames.com>
Date: Tue, 28 Jan 2020 11:23:19 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Oscar A Perez" <linux@neuralgames.com>
Subject: Re: [PATCH 1/2] hwrng: Add support for ASPEED RNG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_165348_098041_1BB3A007 
X-CRM114-Status: GOOD (  21.05  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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



On Sat, 25 Jan 2020, at 11:40, linux@neuralgames.com wrote:
> On 2020-01-22 19:53, Andrew Jeffery wrote:
> >> Thanks for reviewing the patch.
> >> 
> >> The RNG on Aspeed hardware allows eight different modes for combining
> >> its four internal Ring Oscillators that together generate a stream of
> >> random bits. However, the timeriomem-rng driver does not allow for 
> >> mode
> >> selection so, the Aspeed RNG with this generic driver runs always on
> >> mode 'seven' (The default value for mode according to the AspeedTech
> >> datasheets).
> >> 
> >> I've performed some testings on this Aspeed RNG using the NIST
> >> Statistical Test Suite (NIST 800-22r1a) and, the results I got show 
> >> that
> >> the default mode 'seven' isn't producing the best entropy and linear
> >> rank when compared against the other modes available on these SOCs.  
> >> On
> >> the other hand, the driver that I'm proposing here allows for mode
> >> selection which would help improve the random output for those looking
> >> to get the best out of this Aspeed RNG.
> > 
> > Have you published the data and results of this study somewhere? This
> > really should be mentioned in the commit message as justification for
> > not using timeriomem-rng.
> > 
> > Andrew
> 
> Hi Andrew,
> 
> I have uploaded the results of my tests to my GitHub, along with all the 
> binaries
> containing the random bits that I collected from this Aspeed RNG using 
> all 8 modes.
> You can also find in this repository a patch for the hw_random core 
> driver that
> I've been using to collect this data. Here is the link:
>    https://github.com/operezmuena/aspeed-rng-testing
> 
> You can see in the reports that when using large enough samples (40Mb in 
> size)
> this Aspeed RNG consistently fails the linear rank and entropy tests, no 
> matter
> what RNG mode is selected. However, modes 2, 4 and 6 produce better 
> entropy than
> the rest.
> I'm now collecting rng data from 2 other AST2520 SOCs that I have in 
> order to
> compare results.

Nice work. Eyeballing the summaries, it seems mode 6 or mode 4 may be
improvements over 7? What's your analysis? It would be nice to have the
data from your other two SoCs to corroborate. Again, going forward, please
point to your measurements in your commit message.

Not that I've looked, but is it feasible to augment timeriomem-rng with
the ability to configure the RNG rather than implement a new driver? Why
didn't you go that route?

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
