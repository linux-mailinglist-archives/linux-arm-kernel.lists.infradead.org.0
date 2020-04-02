Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F340219BF78
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 12:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gos5pkehB+wr++OoKEnNXVoiADdInXUNy0NGRiZYEy8=; b=N2rIZ2lz4tKCsJ
	Po+8ILtZF0+y1CV2q/OAKXTCluxK0RFisII8kRnYyJ+I8gpmZ/h/BPfyyQ9DFpThEjG4cuGXHpUz9
	TgBWyH/MX37CR84Y5FF5cJQbwxOACh3mPHrpUmEUyGCbWDA/QFaweEpUIgHJnhquKoq/u5ExelT4f
	FDAO/TKCfviUK9C3ERi2N3JA3MaL4+D+B47grILcFODyLc7kxuo81xVCHuyQQCSinKPRhesBR7f5t
	1UcNFOYRsEfKzIVgN7g5JOkjohxWjC5ApO9h9kbZ2flM5dTNPmnm1jPLancXGqbqoczrzO14e4nTP
	qNwZGVxpDd7I09p+pGLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJxF2-0002Jy-VK; Thu, 02 Apr 2020 10:38:32 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJxEx-0002JY-58
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 10:38:28 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 032Abb5C028468
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 2 Apr 2020 05:37:40 -0500
Message-ID: <c556467d63cd5de806b4bf1806caee013ba5a808.camel@kernel.crashing.org>
Subject: Re: [PATCH v2 6/6] dt-bindings: usb: document aspeed vhub device
 ID/string properties
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Rob Herring <robh@kernel.org>
Date: Thu, 02 Apr 2020 21:37:35 +1100
In-Reply-To: <CAL_JsqKZeCC352TKFGDNRRogSefF9vq+J=WqCEeg59PBsSOW1w@mail.gmail.com>
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
 <20200315191632.12536-7-rentao.bupt@gmail.com>
 <20200330192347.GA6388@bogus>
 <4dc3ac910c79dcca398eb5161dde44e1cc50baca.camel@kernel.crashing.org>
 <CAL_JsqKZeCC352TKFGDNRRogSefF9vq+J=WqCEeg59PBsSOW1w@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_033827_300798_2E637EDE 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Joel Stanley <joel@jms.id.au>, Tao Ren <taoren@fb.com>, rentao.bupt@gmail.com,
 Colin Ian King <colin.king@canonical.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-03-31 at 10:21 -0600, Rob Herring wrote:
> Surely the descriptor building code can be shared at a minimum.
> 
> Regardless of whether gadget configfs fits, usually it is pretty clear
> whether something belongs in DT or userspace. That should be decided
> first.
> 
> > Maybe we could expose the port as UDCs but not actually expose them on
> > the bus until the hub is "activated" via a special configfs entry...
> 
> If control of the hub is done by userspace, I'd think configuration
> should be there too.

It's not in the current driver. For now, I expose the hub when the
driver loads/initializes, and it creates UDCs for each port, which are
then controlled from userspace.

That said, I did it this way because it was easy, not because there are
fundamental reasons to do so...

The main reason to want to change the hub descriptor is for the device
to advertise a vendor/device ID rather than our generic linux one,
which some vendors might want to do for ... reasons. I didn't implement
that functionality initially as in openbmc case, we didn't care. But I
know some vendors would like to, if anything because from a user
perspective, it's actually nice to have the string tell you that it's
your BMC rather than Linux Fundation Hub.

Originally I suggested we allow that via the device-tree because it was
the simplest way to get there and I love have to deal with less code ..
:)

However, if we want to support the whole language string set etc... it
gets really clumsy. So if there's a strong will to get there all the
way, then configfs is probably the way to go.

In that case, some sugery will probably be needed to make the gadget
descriptor building code a bit less dependent on the overall gadget
stuff... either that, or pre-create a "hub" gadget at driver loading
time that userspace can modify before "plugging".

In that case, the discussion should move back to linux-usb...

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
