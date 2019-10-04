Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB97CB71A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLus2DIJKA1Lcc/ru9kJSAirVCtf918wIzFBLIqUoHc=; b=E0mAZ7M2yWTUJe
	iY6Y1L5i2UDQxZxE6505H6Uon7oKkYsk5LrDqrSJ8oYCH9f2K3lFmFJYi6vMrj8PcliMomdi3uFfE
	Tb4xXi2IZuEGMLN834uXTjLkW/68Xukznuw5xtebgQsruo/HL3T1XqEogQVRUyM3Ib9IzhroKJRwd
	Ej5+ooQiJAnh73hN6T5ZUZXJ1O8Js5W32bF23QTLiMJi/qsS0Lel0BoiWquYy/hEr8341TOMthOUT
	xP+85sgy6s0zqq4UjtwryqQrAN3LecPSf+ZqD+ti4yTD/tkIsrZM5Tf3o0NSftnAYSGO5zZ33vKsu
	LsR4gHsJf103lggEP0zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJds-000764-4n; Fri, 04 Oct 2019 09:12:52 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJdl-00074t-32
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qtILDKeXE+NCWyeY17J+cqlMaH7cJ64zwiZoTKzK//c=; b=UxFVRJC5SVp6RefPuhEn6OkIb
 ZoCa7/ug258G0mGIdFg3KwWzhohmWmqewT5hV4i/PEddZI7ERhiLfwJ2vOUqMohrz2GnwYTr//+nn
 9ySEqyKpm1VlmQJJikR8lJJBWk+V5rD5yoDDdOXQ1dnQVDEdbWjo6/f4yOkl35aF+cbuvQFvXriQT
 wOVHlRINtBS5/mwtcxdSQfS6oDjE8jE/gxqW/LR5rkcMAmhIA63kq/ct61ue6pIrvW8PSFlEfjhgz
 WgHQi6WayK1YcbHfrOsoIDd11aSLdOrn4ZCYqt0r/4TcOJTYNhMe+C7hbBNbrfifDGsMXHix4xc3v
 HSsqSLyFg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:51566)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iGJdL-0003GJ-Mr; Fri, 04 Oct 2019 10:12:19 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iGJdG-0002eU-9X; Fri, 04 Oct 2019 10:12:14 +0100
Date: Fri, 4 Oct 2019 10:12:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Chris Healy <cphealy@gmail.com>
Subject: Re: [PATCH v2 00/21] Refine memblock API
Message-ID: <20191004091214.GW25745@shell.armlinux.org.uk>
References: <20190926160433.GD32311@linux.ibm.com>
 <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
 <20190928073331.GA5269@linux.ibm.com>
 <CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com>
 <CAHCN7xKLhWw4P9-sZKXQcfSfh2r3J_+rLxuxACW0UVgimCzyVw@mail.gmail.com>
 <20191002073605.GA30433@linux.ibm.com>
 <CAHCN7xL1MkJh44N3W_1+08DHmX__SqnfH6dqUzYzr2Wpg0kQyQ@mail.gmail.com>
 <20191003053451.GA23397@linux.ibm.com>
 <20191003084914.GV25745@shell.armlinux.org.uk>
 <CAFXsbZrLkjsda8oM4SG6LOpfu7a=vwJ7eGM-FL8dzCKb0yzy5w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFXsbZrLkjsda8oM4SG6LOpfu7a=vwJ7eGM-FL8dzCKb0yzy5w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_021245_129485_C34B9D5D 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Fabio Estevam <festevam@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Adam Ford <aford173@gmail.com>,
 Christoph Hellwig <hch@lst.de>, arm-soc <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 07:46:06AM -0700, Chris Healy wrote:
> >
> > The iMX6 does not have MMUv2 hardware, it has MMUv1.  With MMUv1
> > hardware requires command buffers within the first 2GiB of physical
> > RAM.
> >
> I thought that the i.MX6q has the MMUv1 and GC2000 GPU while the
> i.MX6qp has the MMUv2 and GC3000?  Meaning the i.MX6 has both MMUv1
> and MMUv2 depending on which i.MX6 part we are talking about.

The report says iMX6Q with GC2000 - which is what I was referring to
here.  I'm not aware of what the later SoCs use, since I've never used
them.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
