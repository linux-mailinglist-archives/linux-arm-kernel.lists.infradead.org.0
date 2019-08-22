Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C030D9893A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 04:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62zcrU/s33lp6oC3bjmoaxEkXvt8ZhU9PTUM++3N1X0=; b=WPulz89gvxX2LO
	GW9usP5ef21hS41FKRxB99WCbOMJ6Jyvp7EX5HkPFfrFh4/H9LhLI6ti2mv4Ayd0MAAC8T+s5u0GM
	kDfSEifJWs/PynVOmZpA79dCTU3uKUhncDSlhrdCbazu7Q4u5f11ziX7BGeYBUwOm7GjoJaTLTdUX
	6EzyWt3oblVg/R4OJ9Nc6XgmfWxhc+EoCEDzcXKbUf4NhIPGiIWtoqT7wrxEEbKp5Psuf+knjLpm5
	pTOoc0Sqo3xAmNOTcQg78kqb09SooaxDHF7baI7u2xp4cHXTomxusla+zYFHI+2ZTYtMzlZSNYEKd
	9ryUN0Q9njYRMzke86Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0cW3-0008HZ-72; Thu, 22 Aug 2019 02:07:55 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0cVx-0008HD-7m
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 02:07:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 9D6392201F;
 Wed, 21 Aug 2019 22:07:47 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 21 Aug 2019 22:07:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=phwzCto+xI4vielIqzEDuSRU/H4Y41n
 FU+M+iy8te4M=; b=NhKDi/7+lBruOTWE3uiSMbnTvIRp7G/fmS5KSfdvlMddA94
 uQYFOTAX6Ty4QDpS8kJ/2OMhT+tUq35bbHO2yqDxQ762BawGjajWXBk9t1LOhWYK
 kX/d1sZuosExb9j58JVw7lXiX7RjDdMlxvMzv1CcUzxZc3eddMLm+y5YSYiwPs6q
 fySsr+RBJlrVBTOBHliPmUrNddpIodmwX0N+EWXlI2nrD4rkRxTmf3aAOBMtJKBF
 zCM9z4eo4wnN3NFGjkwu0Um0u3ZXWjxKLJrMlxmd01c2iH/gaeORQqYfVVw/moAM
 EHsOtFA687f7V1rwMi2/m92HKKiIHghy3lWI1+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=phwzCt
 o+xI4vielIqzEDuSRU/H4Y41nFU+M+iy8te4M=; b=xFe8Pd6vW8dyh4gdk2OY63
 Gne769etNqEYYpV2H7+31piSAnFRq50Q8zzPFks4z8+T9EOxlxJkyGWHP14fCJ/8
 M9cXm1K9p6Oj2l/TqH/dyq6y6IXU1wJ6JuoZ/CSjOQatMCPUz1d+Z3epkigJd9Mp
 hB9ygxyMQoze8mWm04uFCfUaZIYwuR6yBYhwFiQi5ktMGgtg8cyhhaXAIuE7O5mV
 nuhz0TlPMgz8Ig5m5OlB8IABD0AG2IZTf7SQqFpjWKN0DP+pz5WHfTJOdl7W7ukC
 zym2o8CH706CYzla1Jey4+XNhVkrcoSBlp1N+4VydPpNSUty5DDoSvNwJOqJhG5g
 ==
X-ME-Sender: <xms:8_hdXfcaWcz1ZgMSbkiuqDVGsynnY1P-EtY6YyCUTFxWkcaMShr9Ag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeggedgheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgepud
X-ME-Proxy: <xmx:8_hdXeVdgZA4qQZ9obE1j3gp4nXreIAqYqfdYpLmiZc3DP-bXrmSAg>
 <xmx:8_hdXWVAmyc3F6D4dwG8VSJshHWd7ETIdRgsmgmrogk5x_Px74MKwA>
 <xmx:8_hdXQZVr3r3L3KsQ_HgEMPGaaE0H-X25Z3yfuQ5-lo1R9ESxu-7sA>
 <xmx:8_hdXSf_4U4byCHwsAE3mEXpQOOQ31_0pqA3OnIv15FJ12g7UaIHsQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 5A569E00A3; Wed, 21 Aug 2019 22:07:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <e9da04cc-65a5-4fa9-afb7-1b3ea2e0a210@www.fastmail.com>
In-Reply-To: <20190821055530.8720-2-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-2-joel@jms.id.au>
Date: Thu, 22 Aug 2019 11:38:03 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Rob Herring" <robh+dt@kernel.org>,
 "Arnd Bergmann" <arnd@arndb.de>, "Olof Johansson" <olof@lixom.net>
Subject: Re: [PATCH 1/7] dt-bindings: arm: cpus: Add ASPEED SMP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_190749_346230_512CA177 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 21 Aug 2019, at 15:25, Joel Stanley wrote:
> The AST2600 SoC contains two CPUs and requires the operating system to
> bring the second one out of firmware.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
