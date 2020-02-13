Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5310A15B634
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 01:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcxHiIJwXinfsZ17Ol3lni/QcW4yUS+7FrZg1MqlXOk=; b=QmN+nPF4YRjyEa
	FVOR3J8x1d28L8eou7DhqEVQSx4c8igqSoFQwoBlkWVDRRdToTsiE7NoKxj6eyURRsHU4AmwvQGCs
	8iJBOxEYVyepfnNCWEn3DSMAI7Oi7hNKsd672ChCQ52aoOrj+Xt4zG6lOgURmwpQVGV030pK7129l
	vh5vI7JkuQNg/75U39ttuLQmQ8cLrfAIgQFFV5Sk27OJNYVaJqxrNvRR04R1j7dUGAGVIj/plXjGa
	XrwWnjEiWoSplVNzshgKuO+ZKMCamzpI0YDnK7wbe7mXlBdaFsh4tVZBjMMEhTxNvWGksMxgpkf3H
	nqmTMbD2qRUzWldoS3ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j22mj-00009m-42; Thu, 13 Feb 2020 00:55:17 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j22ma-0007Ns-3I
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 00:55:09 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 967B9EB3;
 Wed, 12 Feb 2020 19:54:52 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 12 Feb 2020 19:54:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=kvIcpzMnZDBTrKFTCocK1+6gG8eemWb
 Co4P6LYqLFvs=; b=UDW8jybLIIdDBBt9Ku/iP0HlGSMGGALp9ncys+sWCqk9rIu
 z8z14n2X3kds4Jen2mHXJvHiY8wXI57LdB1vdI2Zrf51g7VhVnaVKg/zmxl7FOCk
 URzgO8f/f7OsRbaxvKjhGN/dLZMKYIH90g83pBr6F6+FYay7MdI3i18K1thyor0S
 vgitlZFPD5KQ/I7EjW1hylmtElfuZ5UQ23hq8yAjuncEDV99TiDYw7Ka/ScKXOt5
 JwgTKrD24wt0ea4VkH6JviGjE7wEX51KbG4WVKUTYftSdmhr4up+zIRSFDf7BvJe
 SBR6ot6ROmM5+zLXfQo5oSa6zp4N1QqCM7BFM3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=kvIcpz
 MnZDBTrKFTCocK1+6gG8eemWbCo4P6LYqLFvs=; b=I3yYMJOj1MN3yYFnfM0cx1
 RcbLzFg3aKsvsWTCDkMm1yPaly/2WKE4wm5JUWjoGJN8C0Vs+onpJfxwH24AVE8z
 cgQ+1hMpI8J+BxMoOjlQZ6GgU1cEmw3wLJXZPYBUe+3YDQLyU4/z3H/Y/avphF8V
 mRKGoylgYXVXn2LGN+Gdt1S45/GlG0jYY8p4RXzLddWoEKskcaLOZmRYmMXxskyE
 I2TUqIXlUZgEucs3NTxRWJXNWIQrr68EJfF2UzJtdcPHw84Ht1wjksg84wklpVOT
 8UCakDbMVO+/SDT3NIhE5bz7aRrqhFPZ+X2s2iEckqJDZVwwgJoHsp9Wx5jG71sQ
 ==
X-ME-Sender: <xms:V55EXkAzRdV4rAbWN03GGELs2jHu3cs-01UwlblbWiYJoOgPXIrvpQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieejgddvkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:V55EXitAfaithfdZSxrv88Msl9bhCOoJmXkykQyPueu75xmPlVwuwg>
 <xmx:V55EXqeqPTGQoKHodorareVjiqYA8HOLTpOiIWw9CxYW_twfnSqy5g>
 <xmx:V55EXpa1i15G_s792VwBSjznbgXfEnso0YAI-Mir6eD5GF57kUnqTA>
 <xmx:XJ5EXjdH7gkCb21m1W2jjnwGtewnUIkhfZxrbk93jpDtiNPh0k1oIQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id F3F98E00A2; Wed, 12 Feb 2020 19:54:46 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-802-g7a41c81-fmstable-20200203v1
Mime-Version: 1.0
Message-Id: <288ba2d7-77dc-40a7-90e8-f2781b3fe067@www.fastmail.com>
In-Reply-To: <CACPK8Xdg0ocBzDqtkoo8cSCpUq+QjHQ1PKrsVZd8NPUvPFeFCw@mail.gmail.com>
References: <20200206170234.84288-1-geissonator@gmail.com>
 <CACPK8Xdg0ocBzDqtkoo8cSCpUq+QjHQ1PKrsVZd8NPUvPFeFCw@mail.gmail.com>
Date: Thu, 13 Feb 2020 11:24:36 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Andrew Geissler" <geissonator@gmail.com>
Subject: Re: [PATCH v3] ARM: dts: aspeed: witherspoon: Add gpio line names
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_165508_191808_63B4DC3A 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Geissler <geissonator@yahoo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 10 Feb 2020, at 12:59, Joel Stanley wrote:
> On Thu, 6 Feb 2020 at 17:03, Andrew Geissler <geissonator@gmail.com> wrote:
> >
> > From: Andrew Geissler <geissonator@yahoo.com>
> >
> > Name the GPIOs to help userspace work with them. The names describe the
> > functionality the lines provide, not the net or ball name. This makes it
> > easier to share userspace code across different systems and makes the
> > use of the lines more obvious.
> >
> > Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
> 
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> 
> I will wait for  Andrew before merging, but this looks good to me.

To the best of my knowledge this is the only supported approach.

I haven't checked the mapping of gpio lines to functions, but for
the concept:

Acked-by: Andrew Jeffery <andrew@aj.id.au>

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
