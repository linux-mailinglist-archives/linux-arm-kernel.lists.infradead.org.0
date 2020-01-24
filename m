Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CABD14753A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 01:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9piC2aFRtiq+HceYmmbvYuAXj/UBnYk9j1qgMCioS84=; b=o3scjWqUho/K5U
	7YViM/YCZm2sFBGKxIDHaVpfy+i/nBli7cXOnfbCmjBKUNhAYuiGmR2loECeAohqtGwW0ZXa6oRFq
	/siM1TD6Au74v7doLGvVKQ2P66X+guE+f++xZZZh2FrEVfi9/4iUaT06LaGcEjphd/wdCRWvD+Lsq
	3+j6Bq98hS7WUvz+boSl7cTxsl7Ka7ovFWnkowNASy2AKGq5gTHJFXIRTQ7c2I8Kw2dPNWWMk2ENH
	P0ljS1c18THWN15lQKMAPBNw7rSTTpuB94yrYAqUlh8rvFKBLsaGdWHrUJ+Wrph4jpa5hNJywxiUO
	b/hxVepZV2CjXolUlzSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iumQL-0005sD-Go; Fri, 24 Jan 2020 00:02:09 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iumQB-0005r8-Ik
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 00:02:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6CE7A5320;
 Thu, 23 Jan 2020 19:01:52 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 23 Jan 2020 19:01:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=d+Z+lRDYQ/W7oZGZYumKD/oOi9irKSG
 dCEoUinh8nf4=; b=akn7Mw2cYLTiNi7myRpKCK5NSXpmWiZLpHogjGFIsXSAZe+
 +4FMSVFBbnrJjua/GuzvAz/j2AATo1DTwX/lqtn8B2X7mhofEZae9nLLlS4tD5qY
 rKKE/481DLkrGj2VbTKENBWCVa62W/uPgC85XtClyjI8U7w34iCxifwRsa9iXC5R
 53WWA9KapVNo+xjKOvXn7qfRMaLJllyoI5645Y7AtzwKMjh+kEGLkw2VOfwkkRys
 krl3BaT262tF66rntd3tUlB1rXAJWggK02nzFoNGtpQZRAUEWuoXeDkIBMFasuZG
 1oM6fBnoh/Q3VXZ0KWJeviHaWAmfZZrHyK+EK1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=d+Z+lR
 DYQ/W7oZGZYumKD/oOi9irKSGdCEoUinh8nf4=; b=Pnloxcf61F/oWAq/EcjBsI
 d+OYokWefGcd/06Mku4YDBN9lkw+afK8wtCALzcGIZN3QWZ4mHWOCS4sydr8cs6S
 oapXoSDWW0YkYoNv9lz20Rz/fjJkdqjV3xGnM0+pBoauN/VFXRcF+IddhJubozjj
 LxuXYaGbMopJeJU9oy8PTGAGrCfMDTqqtPHSkVHzQ5ZmvBiy1oEMtyn+65ZoREMu
 ICJUlDaY1xm7NDdNPdWqYQIU8QoYZJZCoLkrx+xc6paB9c53wnx+kCEs5BFR95HW
 FMTRLSqxDokjZB/8U+1bC+gBvXScqJaFODxooAiL1Wd0pMDxOWgM54Zik8EOS0xg
 ==
X-ME-Sender: <xms:7zMqXk_FlYCU5KicE-kJMrxK-9FxmSihK9HomFxVaHUx-Unj3z7fDQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrvdefgddtiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:7zMqXn1fSD2EQ_b_lEI7ZFAnibLg-os68L9a5wX-IsFBROhBvaXvFQ>
 <xmx:7zMqXpY6sN8zAO06Q9OhPm55LVgrcHxIINw7cDD74IVo0ClkAhH9KA>
 <xmx:7zMqXjukhZ88lvksiO6kTNAnaLKgpQ3uM0woayjYr-3sT-eLVs_HXw>
 <xmx:8DMqXkk_zP_bR8ts8WK4mvZlAsia1fN9rel87NvpbIzqJlK0YitjZw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 25625E00A2; Thu, 23 Jan 2020 19:01:51 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-777-gdb93371-fmstable-20200123v1
Mime-Version: 1.0
Message-Id: <1c13de6c-3bee-4afc-8a03-691222b07ebe@www.fastmail.com>
In-Reply-To: <20200123085112.8371-1-pengms1@lenovo.com>
References: <20200123085112.8371-1-pengms1@lenovo.com>
Date: Fri, 24 Jan 2020 10:31:30 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Andrew Peng" <pengms1@lenovo.com>,
 "Benjamin Fair" <benjaminfair@google.com>, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, mark.rutland@arm.com,
 "Rob Herring" <robh+dt@kernel.org>
Subject: Re: [PATCH v2] ARM: dts: aspeed: update Hr855xg2 device tree
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_160159_760902_C8CA2FA7 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: openbmc@lists.ozlabs.org, Harry Sung1 <hsung1@lenovo.com>,
 Derek Lin <dlin23@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 23 Jan 2020, at 19:21, Andrew Peng wrote:
> Update i2c aliases.
> Change flash_memory mapping address and size.
> Add in a gpio-keys section.
> Add in a peci0 section.
> Update i2c0,i2c0 and i2c11 section.
> Enable vhub, vuart, spi1 and spi2.
> Remove gpio from gpio section since it controlled by user space.

These seem like largely independent items. I'd prefer that you have
one commit for each item in the list, that way it's easier to review
and understand the relationships between the bits of affected code.
Basically, don't give people reasons to say no to your patches :) The
smaller and more coherent the change, the easier it is to give it a
Reviewed-by or Acked-by tag.

Also commit messages should say _why_ you're making the changes
not _what_ changes you're making. The diff tells us _what_, but nothing
besides comments and the commit message can tell us why. It's much
more convincing if you explain why your patch must be applied.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
