Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA03B89D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 05:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ofgu9vKke/iZIS9YaCGPRfGZ101YnH1jlAR6X+fX9DA=; b=OjUiqn343J1hJe
	qftA1H3bBCeZAq8jt0ke5hMbheuyGMcPAbxBiSmaPpwcNsdS0l4bpSh89jnNW3YaRU2p0lUj0/XHk
	9DTBMmqeEsgu5z9aGyuOe7Z87rPt6TvQRlgihqscYSePQ7g5wwfE3GHKALj7nfIyMmJ+guIRb0Vfj
	yIoNb93NSDbYIQTQ4dXE/9A4PIe7qCCrUwO6iNRVaJCRfhD5qxQa1Vn3uVI5ZkgE4JlgH7dKdjvjF
	R/7F3hKE54q+Rqr7HdVDD99dA+H7sM82yss3pVoc9upZhI+VmrgTn77n454dteLQQqB4LWo0E9DvR
	QH0hjGjcaN6u46BGCiKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBA3x-0005u6-EH; Fri, 20 Sep 2019 03:58:29 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBA3n-0005tJ-K3
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 03:58:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 0864651D;
 Thu, 19 Sep 2019 23:58:10 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 19 Sep 2019 23:58:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=AwV62kTNWV1jZgcM4jPwwCG4XtzAi+s
 qJivMwhaTchc=; b=S8ckP3TAWc1jyzr+qcZAPlqrX8KRAlPRLZKIWSF89qVSmcE
 D8BPpqg52UK5Vv2M4heoG52ODs17JYWWls0jh1lb3cnHQaC9gL3o3iYe78Dc3wNv
 1pAh5C9Rtr995F52EAhIf2D+uUcDJbBqv6k19AbWaBVo7SeNsF7c68MHgYS2hgZX
 DjnjPRh8ZfxXZTyr8xQV1IRTbJKJLCMFIIjEuTrV2KEmangiztW4r1L3Fnidsylk
 1hIeL0P48hds+PCyrcqeIJYDnFzVBu8T0xxLA8fjTSasi469bT0eBpl9ycEM8dOx
 S3T83yBYJKf6uO3qHsovZOlWwXF7le2FoTMJjvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=AwV62k
 TNWV1jZgcM4jPwwCG4XtzAi+sqJivMwhaTchc=; b=FRHf49tMarkCKSUmMeqRl9
 5TvM3gJKpOvcZDjmp7HjNRaHAmx2sEFCO8bx8ArOpkQDsssxOaBhF6jbMJfxGc0H
 Eaq2CIQo2QBaun7iXTlJtunt9SRljS2Wa98t/UK1PWN6sJ5DWd9QAtz5VdmLaDL5
 lNL+t2TASpVypuUpy6Gagt5wx0boP/CQQPwcnl66O1xzFSN2Ba9174IarvJ+QCZ5
 GGv4MvKUoPdm9jTZO4ahtikq0qord+LzqklRzuJzVeGfaJIcX0GafRmQaZIOIL90
 2NiLEcV9KHAeD3EsP6YP/HGwwHgPE+jDV61igL0RhcehhWnUHtmKamrZXRWy1/7w
 ==
X-ME-Sender: <xms:UU6EXWncKUZATjzQ6SVbRB_s1Vu0x-lp4Hclj7kEghwwxXWtq5AsfA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddugdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:UU6EXfuWkx0_SGevbBY3kDZos3ksb9bMIlDi1p2762yqs7MPPsbeTg>
 <xmx:UU6EXZQHoRVXKsIhuxJPSHyfLzrXjPiHK2262XMS2h6M5zuB-lNLEw>
 <xmx:UU6EXZF6OMpqJDST6zd_srIDGMmC-vTtxvtQNm91c7RdZxSy-i6OZg>
 <xmx:Uk6EXb0vLp6bK7FaIOmBMOilaAlTtAtEtwXP2hWaIB4dGmZL1yOZuA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A3D12E00A9; Thu, 19 Sep 2019 23:58:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-238-g170a812-fmstable-20190913v1
Mime-Version: 1.0
Message-Id: <14d2f55b-c31e-4c1f-b75f-aff6b4729c80@www.fastmail.com>
In-Reply-To: <20190919142654.1578823-1-arnd@arndb.de>
References: <20190919142654.1578823-1-arnd@arndb.de>
Date: Fri, 20 Sep 2019 13:28:46 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Arnd Bergmann" <arnd@arndb.de>, "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH] ARM: aspeed: ast2500 is ARMv6K
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_205819_683279_0A1F1C38 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 19 Sep 2019, at 23:56, Arnd Bergmann wrote:
> Linux supports both the original ARMv6 level (early ARM1136) and ARMv6K
> (later ARM1136, ARM1176 and ARM11mpcore).
> 
> ast2500 falls into the second categoy, being based on arm1176jzf-s.
> This is enabled by default when using ARCH_MULTI_V6, so we should
> not 'select CPU_V6'.
> 
> Removing this will lead to more efficient use of atomic instructions.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
