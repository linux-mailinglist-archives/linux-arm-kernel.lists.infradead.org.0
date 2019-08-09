Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E8786EE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 02:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EpQDggaH4Wg7RWYiq+pDFfu+l/XjcMwAewVr+xZphio=; b=toM7iFFOCQEHs4sw2Mbk+BYnnh
	rhvl4gN2Gp7xAnejTEFUALmhbNy56S/HGghOZVFGtgPQ4vDBmdYQAisJwEHEnZ79S4COSIvJChM3+
	qhzEcHHpMguiUsJ9LE3g/hVZrwEenn7b73lLw1a6crGjvjvaH3Y+su3qKDqNNS/PBxseVSX4c4euX
	HdoY/Z6u4Sl93q/YiTitrmn/JcPvOWOitYE/GgHhr7wnHuzTCPYv5cK3q5LNnzSxKK9tbE/K3uELb
	szE0X44mQoNgXC4ZKgmtEgBMu4SqBUIGZsdd8Ks4ymRIHpAarMUvpgeEdIHM8GGCPxBRBvOWglf5L
	nZ0Y8j/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvsvS-0002J3-94; Fri, 09 Aug 2019 00:38:34 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvsvM-0002Ih-0l; Fri, 09 Aug 2019 00:38:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B5AF02687;
 Thu,  8 Aug 2019 20:38:21 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 08 Aug 2019 20:38:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm3; bh=qzgxGTZsCJlvV+dr0gENjfvelG+V+hv
 DaK0KMe9R8B0=; b=Ffx6KwVwOmajjT7vxnEXIp+p/A4+WuIBUt6KPvR9e0rnVEw
 4jTCNBTUskMYYse+3gkG8HSlNZrOYm3boUcw8X3gS87V66Q4qMOlcDnTABC0OYoT
 o7eC9BbkU+ZVI1pdGlj826pZGcKN6kpIqr59yUgTRofmwLGW8hu07IxY3bzCus+a
 0y3qxmNHBFJxmJCf6pMuRlEty0fbLawuSgKTxmCyH2qfZfdpljWMHDWx5JR5Huts
 3hwSylwSCA88fB26CybC8wSClOP/Ijt3AOU+/FmlfaW9QoK4NWV4sAL4CXZ42zDE
 0Z6dLJAZU1BJfGsLoBXA4rY5zwlvbkg+K8pu7bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=qzgxGT
 ZsCJlvV+dr0gENjfvelG+V+hvDaK0KMe9R8B0=; b=N5RUPgeAxWz+56KbGktHZv
 9freKvjIoKumB99CKFG0upclkvmCvSdG5Kz4kbZ2scT9qzDdzR5yb84FN/GB1n+6
 UM2K2meYeno617yTwdXi6Bb3v9qRrG5SM86tolzM3d0jJpMQBBLhi6t1oAet/D0f
 X/VOz+vD9q8ASlc4vAGeIHEp/viMN2Xr+5FXQc1flObHrjK9IiATcOj77QglrYvs
 RMFOcqxoiIiM9CCqdFbhWvtiJI940ZJ1IQi6caNF+o5NdM9lO5q+vxCnnJtKrBjN
 Qxtd07hqnCM04oiSgevPQjodFnhe2AWhUz0Jo2ldfHwOBtdxmHWGXorQwasl5OXg
 ==
X-ME-Sender: <xms:e8BMXakxzKbCeQxN1dJ589Vs7dWxGpbsSHwHOiNQBP-MeR8sI94-dw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudduiedgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:e8BMXQQY7GwMuZxOfl3_Dq-J9dvjb6Sq_2N8cvcnEehV9C63rQbzJA>
 <xmx:e8BMXbSBmUk3NhIc9ZUZ_susRr3k3bI0oL74DBvBzCrv7FpOYwuM-A>
 <xmx:e8BMXZ4HSfUlXwVgDHFEdkmhJiaiazPpaPsLfnpciwwMu0bZB2NmJg>
 <xmx:fcBMXVl3zLd7qKFTPNBayx2gKdugbBCuQ8hC0VTcBL6ncmDKaPbrwA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 64ECEE00A2; Thu,  8 Aug 2019 20:38:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-808-g930a1a1-fmstable-20190805v2
Mime-Version: 1.0
Message-Id: <7335d5d1-77c7-4cfe-9ba5-2fc81e3e69eb@www.fastmail.com>
In-Reply-To: <20190808075104.15928-1-nishkadg.linux@gmail.com>
References: <20190808075104.15928-1-nishkadg.linux@gmail.com>
Date: Fri, 09 Aug 2019 10:08:45 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Nishka Dasgupta" <nishkadg.linux@gmail.com>, marek.vasut@gmail.com,
 tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, "Joel Stanley" <joel@jms.id.au>,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH] mtd: spi-nor: aspeed-smc: Add of_node_put()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_173828_251277_F745F7FD 
X-CRM114-Status: UNSURE (   4.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 8 Aug 2019, at 17:21, Nishka Dasgupta wrote:
> Each iteration of for_each_available_child_of_node puts the previous
> node, but in the case of a break from the middle of the loop, there is
> no put, thus causing a memory leak. Upon termination of the loop
> (whether by break or a natural exit), either ret will have a non-zero
> value or child will be NULL. Hence add an of_node_put() that will
> execute only when ret has a non-zero value, as calling of_node_put() on
> a possible NULL value does not cause any further issues.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
