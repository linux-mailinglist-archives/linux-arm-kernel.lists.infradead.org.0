Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57C5146094
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 02:54:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDPc2jRlL02LoCZRB4BQob/wO704V+24mGU6RgZKRsg=; b=UZmClB8aMeQL2M
	Lqe97NuhoGy38vzR7VkCcSG9coYdZ9eUlYX5+SDRAS8HK+FHwlbe+RbKRLmqATp1sREZWs6C+5zth
	Inv4mAbzwrwm3bMeCwGj220QvEJY10OYRT/mhhaiFYqo14VQbLK4a9rfYa0NyWezRSbsSOku6fimY
	/B7388U3VHgvdXuW0R/nzIFEDRmhflJTjGxuq5AmXid2dHTmwmjwI53IdjF3aMwunEaoOHfvbOxki
	QcNgHTlys4fW5gZ3dqbD22fkW+PPxcf3TlE6xoX7/WbcsCQp+Sa6jwRtf4YQM2VACKI3A1DgIK63h
	k4SCWYuO+mdBrQeLueAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuRh9-00019e-W0; Thu, 23 Jan 2020 01:54:07 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuRh1-000190-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 01:54:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D8A6A6D87;
 Wed, 22 Jan 2020 20:53:51 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 22 Jan 2020 20:53:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=ujZkvtF9majEmku/Gxs4rZoUakuhfzp
 hD8ol/URHilo=; b=qsshw+6MxBNBzlpsVfUQJvzPlg1mYf034IOSuoePEBVtHNN
 ehE++KC/RbpuXEATKpEmSmmnCDp1WFqj7zSqqmQaLd1P/XsqZQpuulLziDntGcEi
 Zl24Kqe7K5broi96LBy5wFhNHIwNwXyEvvLMp9EqS/6nsF/A1gBvZHTJSR+ZCTq8
 jWvOnveizc8TEi4FFYrl6/b6ptzaBi4KjnepiyPNrzEAfiFHFKqfnudBBcXcd+Vl
 1Q6FBERhKPJL2nFTyOkGQPs5b8QvcnoAzkZn2Br4y2nAbo2Du0g3lZgqPa6+xHCl
 fQ1vp8LM4m3v8l5So9ZZ5kwWz2cHB6+LstSxB/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ujZkvt
 F9majEmku/Gxs4rZoUakuhfzphD8ol/URHilo=; b=DN6OGW/SMqdXSI8jjtOzO2
 pGGVbrE9JRzGYsU3PcIOiobOZj1lO91DbwO31coNzfzM79yWYDsfaH1z/FrE4pOw
 K1cSpis2xl8x04ImWo4vZfPpa6T2R2jbu6OXfyod2Hi9b39uZVhOzKR8R0hG5A/N
 pUc9U3pDRSgmijNImgE+OK81Ohewqo/E9GWP5dUvTYMhLzWSWl9uJyv9P6EMFbBA
 g9nO1fp1IBXJUNrvbSrHxWw/xir2jOWs+Mub7vIioYbyUbYPRtBaAkBrcb7BhOTB
 fSY/RMQ+yIIyPB8wd9BHAvboR+hwUPsKTXljq72DPmDKDp0NAzJYOwmNdvlrtwAA
 ==
X-ME-Sender: <xms:rvwoXnPmSRFRoFSuOm7H2Q4DecD6HAwCBDdiFFGSAvJj6zxaqmvceQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrvddugdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:rvwoXvx-psYu7LL5r4lFE6gYjRtdJY7jDu8sCdwsxIUqEXwemxeeCg>
 <xmx:rvwoXguvi3BjUj3AREX18fnbuZnb3eAzM5mUb7BWgebWP_w_zFRS2A>
 <xmx:rvwoXo63d6GAWwmGVoM4TP7Mnn-5xB2vKVnbwUhGjRvT8NIoJVAvjw>
 <xmx:r_woXnavh1Sem4tw8dB6XhIxw3Uv0cmbKNPj4_UAE9VF6956A8QC-w>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 7543AE00A2; Wed, 22 Jan 2020 20:53:50 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-754-g09d1619-fmstable-20200113v1
Mime-Version: 1.0
Message-Id: <575811fd-24ca-409c-8d33-c2152ee401d7@www.fastmail.com>
In-Reply-To: <4446ffb694c7742ca9492c7360856789@neuralgames.com>
References: <20200120150113.2565-1-linux@neuralgames.com>
 <CACPK8XfuVN3Q=npEoOP-amQS0-wemxcx6LKaHHZEsBAHzq1wzA@mail.gmail.com>
 <4446ffb694c7742ca9492c7360856789@neuralgames.com>
Date: Thu, 23 Jan 2020 12:23:29 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Oscar A Perez" <linux@neuralgames.com>, "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH 1/2] hwrng: Add support for ASPEED RNG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_175359_668216_C33763CA 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Thanks for reviewing the patch.
> 
> The RNG on Aspeed hardware allows eight different modes for combining 
> its four internal Ring Oscillators that together generate a stream of 
> random bits. However, the timeriomem-rng driver does not allow for mode 
> selection so, the Aspeed RNG with this generic driver runs always on 
> mode 'seven' (The default value for mode according to the AspeedTech 
> datasheets).
> 
> I've performed some testings on this Aspeed RNG using the NIST 
> Statistical Test Suite (NIST 800-22r1a) and, the results I got show that 
> the default mode 'seven' isn't producing the best entropy and linear 
> rank when compared against the other modes available on these SOCs.  On 
> the other hand, the driver that I'm proposing here allows for mode 
> selection which would help improve the random output for those looking 
> to get the best out of this Aspeed RNG.

Have you published the data and results of this study somewhere? This
really should be mentioned in the commit message as justification for
not using timeriomem-rng.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
