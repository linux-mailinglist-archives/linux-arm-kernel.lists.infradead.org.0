Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE48680FB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 02:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ubl4nlSRahmawiMOAopLO6wAIgVKqNYEaI8GQPNU6fE=; b=U8j6Q44/4dtWii
	Hhhn9VcdaCYIs37Sn7nUKjtuOsc4aJQGZ/z4GRJqW8/sig0msUUvtXkwDLotifQK86rAhorVUiELB
	KvXwEIBZmMIaKcvLwI7qauWXv4SnQC30WMW/nmCh7vRIhOTpketejkJMb4/ah/B+NjDQ/mvnf0pHg
	9r95JZm9IA5sxV6FHQN1FJ2/L87qeuAE9Hlf7zOb3kWfWhs7D+qfYcE9CHoumBsyedZ7M4dKj3Jmf
	Ui/OB5Q2g6YIF87YAjj3vDPQ8xfKi7UskVUDf6nnblRU11doXXENvv+th2xsacE3awPQXSnaWRu7A
	IY1ta9Cjav+skuwImrdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huQvR-00034t-Qy; Mon, 05 Aug 2019 00:32:34 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huQvF-000344-Ai
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 00:32:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 911B6210AF;
 Sun,  4 Aug 2019 20:32:12 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 04 Aug 2019 20:32:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=Prb7tn3TJaxCnpwPPyi4xsZf7IapyER
 pEa2ECzebZJ8=; b=OC/bJtu6RxIN+aXu0LGViMDdm0L+VrwJ3Q9M2C+0PSyBSqM
 lvq1PeCyWvBlPu0hpZFVoCAnO4dAao9GQtYHommXGw51thzV2lZvNOuXY1LPkFjT
 hQt/2Lz6/x7t9zGe0oe80l5GasiLr6S6J0qF0KjePvv0pO2qvwY/kziSEhSzSeyr
 QDRqiqGITr3cIn8JtDIZHOaYNqsw9SCbvpuZ9yYq6piUfkdijrSItZhf45WPF/rA
 qkCWDYyUbcM7gFKS+laWsFAKPLD8vWYyYie7LPa3xPpZjrI9t9HGt65yGilZeXqm
 fQsWLM9Iwr80WsaJLclD8Bpyqhb+6DJbtU+FLXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Prb7tn
 3TJaxCnpwPPyi4xsZf7IapyERpEa2ECzebZJ8=; b=VR3W6WNB98Qi32CdFWRQ2z
 GL4+WEI1xXnXG+TZNDL0Zv8Pel4UGnvs4CSmGEjU+tQ71Wa3LpLjNdaM7h3U7sfM
 p8hvF1HP/AB5LMSwWyZfyo7aAiULkeXjw/CRYLXkllSIASlB4oc8fRTkQ65q4Zd8
 xB660kM38NCjQFMyTEjZ8HSxB+0SpuEp7wvnio2DnItxVBXX+K6X+YDofazAEjd6
 KyLMYkIgYeOHw7UHUvRjuuUwJQcKHuvQMVVwoPwbWFNwmQidbyOU0PqPwtoFUFDT
 gIDMGnGFwRjeGX4aO/09Ll71KOAGNGj88vKBZefQb32zxOWJ4yDAbQ7sTxESwzlg
 ==
X-ME-Sender: <xms:CnlHXR1l0V9THU39Aap7oiHt8szc2igbuZPkdhxMsB_kV48QIxL9gg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddtiedgfeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:CnlHXUOAlGPqae4gC48F0Pt0yXZKToIbq-M1Bb9YA0UTYG5C8i7Ptg>
 <xmx:CnlHXeBB8JbU__uOJwzDKnXEOrk36kZ05q1-RetV8TWpqQwiUDOYug>
 <xmx:CnlHXTdAqWMW4DB9PQfLoKy3QyL3MHQDkxkZUV8dz2HbR2vmiUg6hA>
 <xmx:DHlHXaY6LySV9ubuK-ADN-my4zPeO3kv0jgPF40e0yMFfHbC5RU9lA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 5A373E00A2; Sun,  4 Aug 2019 20:32:10 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-799-g925e343-fmstable-20190729v1
Mime-Version: 1.0
Message-Id: <593f30af-1065-4136-a420-3d0cf2a111f5@www.fastmail.com>
In-Reply-To: <20190802083736.26783-1-Ben_Pai@wistron.com>
References: <20190802083736.26783-1-Ben_Pai@wistron.com>
Date: Mon, 05 Aug 2019 10:02:33 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ben Pai" <Ben_Pai@wistron.com>, "Rob Herring" <robh+dt@kernel.org>,
 mark.rutland@arm.com, "Joel Stanley" <joel@jms.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] ARM: dts: aspeed: Add Mihawk BMC platform
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_173221_448163_BAC1F81D 
X-CRM114-Status: UNSURE (   5.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: wangat@tw.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 2 Aug 2019, at 18:07, Ben Pai wrote:
> The Mihawk BMC is an ASPEED ast2500 based BMC that is part of an
> OpenPower Power9 server.
> 
> Signed-off-by: Ben Pai <Ben_Pai@wistron.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
