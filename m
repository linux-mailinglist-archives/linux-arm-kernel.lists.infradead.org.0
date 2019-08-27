Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D76969E3C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BisGcpDyB5POFbSaNSscrMZyPQaoI4uIzqi9t4HONMg=; b=mZMQgBNz7eIxsO
	pV5O4gOJMblaTeDA9skyq0rqxxvq31wW6a2XHNOnQ4WY/pg2onPCnA5DBbip1ngP8deElRUpJEuuo
	1ew+/ZdB35/2hgN2SzshAqHXKJduvnCo3s0iG76fMpUu6gjsdQPqKEhVWgBWVuI0ikHETGXMdbRWA
	o0HRg521AStXdxSXz7KUvFYhoBVU0dB9WzZT/7czesgUbY0tjF2P7HbT3gvc0yzg6JmrWDuCF8p4r
	HMCWXAAOcm+54mTIvj8JGHQ2yRuUL+/afZc4iKgyKW1VRbJGvGtjAq9zLw86vt+Y/msKeo3a/x8sd
	LWdy2o68HI5PkBB+M3zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Xas-0008C6-2z; Tue, 27 Aug 2019 09:16:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XaG-0006ub-Nr
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4FZW6WpHVkghAQyfLmfyvtAtB0km+7CvKkK8paBRUnQ=; b=ju+ibQGosYVXbnQwwniWtU4Yp
 0aVH7H+p9liw4K108OWpO6QcPYzxpix3Hcf1wcqaXgCte5xhe6jgLLmOUBVMdh/dHK/OTIZNvpZ09
 H3KRlVUGA7QW1PLEXlY4l1FzF2dOpviRC4bODDpzzyJd+9BHkDsZERAAJ3fEs36lwX8TSZFMjDv7w
 HEVRVzUVsoOWMuKspApzHVghJVBdbP4Ywsp8l8hLpRs9LQ6GkwTUt7gLRxXhEMDEiyoAPhlOjiuDg
 vDqCLSvIyKIhQyvs4V8++WVrPAYzwZUwCrI1Mu0LQ6+rwcA2nEGG4ssqk2wCh/BwJrH1YI4diQXid
 HSbh4dMuA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:55136)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i2XXq-0003S4-CF; Tue, 27 Aug 2019 10:13:42 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i2XXk-0005dX-F0; Tue, 27 Aug 2019 10:13:36 +0100
Date: Tue, 27 Aug 2019 10:13:36 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Message-ID: <20190827091336.GI13294@shell.armlinux.org.uk>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <20190712034904.5747-2-chris.packham@alliedtelesis.co.nz>
 <20190823104621.GY13294@shell.armlinux.org.uk>
 <20190823105020.GZ13294@shell.armlinux.org.uk>
 <836653f04f526333e8dbd45361329731f8dfe2ea.camel@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <836653f04f526333e8dbd45361329731f8dfe2ea.camel@alliedtelesis.co.nz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_021612_858758_694E465A 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "patches@armlinux.org.uk" <patches@armlinux.org.uk>,
 "gregory.clement@free-electrons.com" <gregory.clement@free-electrons.com>,
 "bp@alien8.de" <bp@alien8.de>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 12:46:44AM +0000, Chris Packham wrote:
> Hi Russell,
> 
> On Fri, 2019-08-23 at 11:50 +0100, Russell King - ARM Linux admin
> wrote:
> > On Fri, Aug 23, 2019 at 11:46:21AM +0100, Russell King - ARM Linux
> > admin wrote:
> > > I can't apply this series - this file does not exist in my tree,
> > > and
> > > from what git tells me, it never has existed.  Maybe it's in
> > > someone
> > > elses tree?
> > 
> > I think the file is in my tree, just as arch/arm/mm/cache-aurora-l2.h
> > which is where it has been since it was originally submitted in 2012.
> 
> Sorry there is a missing patch that moves it next to the
> hardware/cache-*.h. I can send the missing patch or I can re-send the
> whole series. If I do send the whole series do you want me to rebase it
> against a particular tag/tree?

Just send the single patch to the patch tracker - having it against
5.3-rc is fine (I don't think anything has changed for a long time
with that file.)

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
