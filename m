Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273A21DB15F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUCfc+Q2LsjMTDXx8SL7ZhxkNQYljQgaKXWqd51aFRM=; b=LKY01OWCHEwhTM
	itkNxAh9pWlmNdz2w4w2D8nOuw78Hm09s800LpTggpJ13/KF59Sg6wwO/iy9LwPUKI05IKv1Lz/gi
	MuT+UcOTS/z0T2Rxr+KrwpVS9MO8iFcDqohPUHhM4MNX49aB29DtHCPLxsRo4ARYDeqzsMAEEn71+
	gnDOsuNpTpcntPqBBNJNF3W0x8zScaC6OS4yfezKaL5Bsq6N2ukpP0dfwhCP3L1ynfZgsYzuD3U7R
	opnx4wbDijtllsZp/iuvRlgDCy1RdNJtcY7UrdTMJ93ObCTP4xuk9mOTgCYEaOeCG9dFip9Ibrq93
	XnzFAVozhSXDk/rFGUEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMky-0000ql-RO; Wed, 20 May 2020 11:19:28 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMkn-0000pu-TX
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hhlHkN1kByydnEQWyR3TLw/SDjYVkMwsfp32OLQh57w=; b=b/Rf6crtBrbP3SO1KMLW4j7P/
 1ln9lmZQherbT15oFm9GwUfUPH3isrOQ4HyLxU1wMNPn8+43TkHLHEeH7NQqeHrpdJ8VojCBHhto3
 XIE8bNbe4K6YTdOJoMlK8L1HdHHgTEn9B0/dBtfVegdyXahpN0ftWujW8vFNCwI+DbwNUjpgM1OpU
 LJRQYXgkrgGDeObQuTNmtgupE+VyR6nLsj7e2ip0Ryb0vQEgRjT8o/u4ESl/CJJPKwmiq9rA0OKTy
 yyuYLe7PvoDB8ta97fOOoZqBBWphzDAEy3duy7tY2mTfEnFHsgN6QBPfnfQFqC0rwNynHIwsIPGOu
 m3fISKySw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34586)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jbMkO-00085W-2L; Wed, 20 May 2020 12:18:52 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jbMkM-0006m8-DD; Wed, 20 May 2020 12:18:50 +0100
Date: Wed, 20 May 2020 12:18:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Matteo Croce <mcroce@redhat.com>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Message-ID: <20200520111850.GL1551@shell.armlinux.org.uk>
References: <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
 <20200509114518.GB1551@shell.armlinux.org.uk>
 <CAGnkfhx8fEZCoLPzGxSzQnj1ZWcQtBMn+g_jO1Jxc4zF7pQwjQ@mail.gmail.com>
 <20200509195246.GJ1551@shell.armlinux.org.uk>
 <20200509202050.GK1551@shell.armlinux.org.uk>
 <20200519095330.GA1551@shell.armlinux.org.uk>
 <CAGnkfhzuyxJDo-DXPHPiNtP4RbRpry+3M9eoiTknGR0zvgPuoA@mail.gmail.com>
 <20200519190534.78bb8389@turbo.teknoraver.net>
 <20200520111043.GK1551@shell.armlinux.org.uk>
 <CAGnkfhx2qHVSBNTRQf+RQiRWBHxF5hPE=5m+YVKBv6C97P=BOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGnkfhx2qHVSBNTRQf+RQiRWBHxF5hPE=5m+YVKBv6C97P=BOw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041917_952817_95A812D9 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 01:16:25PM +0200, Matteo Croce wrote:
> On Wed, May 20, 2020 at 1:11 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Tue, May 19, 2020 at 07:05:34PM +0200, Matteo Croce wrote:
> > > On Tue, 19 May 2020 12:05:20 +0200
> > > Matteo Croce <mcroce@redhat.com> wrote:
> > >
> > > Hi,
> > >
> > > The patch seems to work. I'm generating traffic with random MAC and IP
> > > addresses, to have many flows:
> > >
> > > # tcpdump -tenni eth2
> > > 9a:a9:b1:3a:b1:6b > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.4.0 > 192.168.0.4.0: UDP, length 12
> > > 9e:92:fd:f8:7f:0a > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.4.0 > 192.168.0.4.0: UDP, length 12
> > > 66:b7:11:8a:c2:1f > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.1.0 > 192.168.0.1.0: UDP, length 12
> > > 7a:ba:58:bd:9a:62 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.1.0 > 192.168.0.1.0: UDP, length 12
> > > 7e:78:a9:97:70:3a > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.2.0 > 192.168.0.2.0: UDP, length 12
> > > b2:81:91:34:ce:42 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.2.0 > 192.168.0.2.0: UDP, length 12
> > > 2a:05:52:d0:d9:3f > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.3.0 > 192.168.0.3.0: UDP, length 12
> > > ee:ee:47:35:fa:81 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.3.0 > 192.168.0.3.0: UDP, length 12
> > >
> > > This is the default rate, with rxhash off:
> > >
> > > # utraf eth2
> > > tx: 0 bps 0 pps rx: 397.4 Mbps 827.9 Kpps
> > > tx: 0 bps 0 pps rx: 396.3 Mbps 825.7 Kpps
> > > tx: 0 bps 0 pps rx: 396.6 Mbps 826.3 Kpps
> > > tx: 0 bps 0 pps rx: 396.5 Mbps 826.1 Kpps
> > >
> > >     PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
> > >       9 root      20   0       0      0      0 R  99.7   0.0   7:02.58 ksoftirqd/0
> > >      15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 ksoftirqd/1
> > >      20 root      20   0       0      0      0 S   0.0   0.0   2:01.48 ksoftirqd/2
> > >      25 root      20   0       0      0      0 S   0.0   0.0   0:32.86 ksoftirqd/3
> > >
> > > and this with rx hashing enabled:
> > >
> > > # ethtool -K eth2 rxhash on
> > > # utraf eth2
> > > tx: 0 bps 0 pps rx: 456.4 Mbps 950.8 Kpps
> > > tx: 0 bps 0 pps rx: 458.4 Mbps 955.0 Kpps
> > > tx: 0 bps 0 pps rx: 457.6 Mbps 953.3 Kpps
> > > tx: 0 bps 0 pps rx: 462.2 Mbps 962.9 Kpps
> > >
> > >     PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
> > >      20 root      20   0       0      0      0 R   0.7   0.0   2:02.34 ksoftirqd/2
> > >      25 root      20   0       0      0      0 S   0.3   0.0   0:33.25 ksoftirqd/3
> > >       9 root      20   0       0      0      0 S   0.0   0.0   7:52.57 ksoftirqd/0
> > >      15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 ksoftirqd/1
> > >
> > >
> > > The throughput doesn't increase so much, maybe we hit an HW limit of
> > > the gigabit port. The interesting thing is how the global CPU usage
> > > drops from 25% to 1%.
> > > I can't explain this, it could be due to the reduced contention?
> >
> > Hi Matteo,
> >
> > Can I take that as a Tested-by ?
> >
> > Thanks.
> >
> > --
> > RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> > FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up
> >
> 
> Tested-by: Matteo Croce <mcroce@redhat.com>
> 
> probably also:
> 
> Reported-by: Matteo Croce <mcroce@redhat.com>

Thanks!

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
