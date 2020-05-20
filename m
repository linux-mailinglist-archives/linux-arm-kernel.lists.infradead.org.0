Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCA21DB11F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J73Tz341jx5vtUDgVAW8+4e0f0yRUp78VzFoYHcuFZs=; b=tc97xSvy9tKXjh
	0GHYdvwY7wGgj5gf6l7aHTHs1OoRjKJUdyriHTsfNmcX23AtM4RTn+xeugVSbyEviZkCx079fFS6W
	cWde5sI0SjgoKvBpsnUQjqOyiQEvwB+BoH7ld6jBASOOLaJj/06uMuFzcY+SU1nookUv65uJiVqir
	RXxVdATIWCZbdEIB5HrkBahT+oUw9FRlaoE/0gut9UUb++Jysw+Bv+xzxyjqLHLAq4HQHogfGXqtp
	4nmbpl+2Yh2oHDn+kA9J2ymPE02e9IxP7sQlfGeSwF83NYxCJgtENP6LfddcjzDHNTJEdgASNEk5x
	r0x5nUhizEWA6kqUeHDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMdS-0003oB-DG; Wed, 20 May 2020 11:11:42 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMdI-0003lx-0i
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:11:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fqAPOef1FCKiJ9FRH0Qh+OpmYPyKJB/Y/621HbuNJf8=; b=yfGkXWArmbY+iLvUrDmklOTlU
 St92ynHs1LubA3CEHH8Wc2a5MkWi1sXO+mtpfg7jkQWGPcL14hs9zMYUbT2bpIae7vD462fejGVxg
 SZVGBvy1djwKgIrWjd7/TVTGDvTWW12TJqxP/cyEslpYEsUTRZYmaWNAeBlOvwoDipBJthx0JYRhn
 f75f6mxd4junUM+EuAvrTwgTf61b1YGvi4XcrK6tjGfAiXdPJ8yWsOAK5a8CzS7nWQYonqEx6bofp
 4Pd7Y8Ug140rODcHsw4zBF0p3Lrot3c7qpOF8fqFpNBNSNxJTodujLujx1/VbxJxwXELGPIvvBWOe
 w1D/ATkCg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42644)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jbMcd-00083m-VU; Wed, 20 May 2020 12:10:52 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jbMcV-0006lw-Ja; Wed, 20 May 2020 12:10:43 +0100
Date: Wed, 20 May 2020 12:10:43 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Matteo Croce <mcroce@redhat.com>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Message-ID: <20200520111043.GK1551@shell.armlinux.org.uk>
References: <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
 <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
 <20200509114518.GB1551@shell.armlinux.org.uk>
 <CAGnkfhx8fEZCoLPzGxSzQnj1ZWcQtBMn+g_jO1Jxc4zF7pQwjQ@mail.gmail.com>
 <20200509195246.GJ1551@shell.armlinux.org.uk>
 <20200509202050.GK1551@shell.armlinux.org.uk>
 <20200519095330.GA1551@shell.armlinux.org.uk>
 <CAGnkfhzuyxJDo-DXPHPiNtP4RbRpry+3M9eoiTknGR0zvgPuoA@mail.gmail.com>
 <20200519190534.78bb8389@turbo.teknoraver.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519190534.78bb8389@turbo.teknoraver.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041132_064345_F2A3E76D 
X-CRM114-Status: GOOD (  12.66  )
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

On Tue, May 19, 2020 at 07:05:34PM +0200, Matteo Croce wrote:
> On Tue, 19 May 2020 12:05:20 +0200
> Matteo Croce <mcroce@redhat.com> wrote:
> 
> Hi,
> 
> The patch seems to work. I'm generating traffic with random MAC and IP
> addresses, to have many flows:
> 
> # tcpdump -tenni eth2
> 9a:a9:b1:3a:b1:6b > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.4.0 > 192.168.0.4.0: UDP, length 12
> 9e:92:fd:f8:7f:0a > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.4.0 > 192.168.0.4.0: UDP, length 12
> 66:b7:11:8a:c2:1f > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.1.0 > 192.168.0.1.0: UDP, length 12
> 7a:ba:58:bd:9a:62 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.1.0 > 192.168.0.1.0: UDP, length 12
> 7e:78:a9:97:70:3a > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.2.0 > 192.168.0.2.0: UDP, length 12
> b2:81:91:34:ce:42 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.2.0 > 192.168.0.2.0: UDP, length 12
> 2a:05:52:d0:d9:3f > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.3.0 > 192.168.0.3.0: UDP, length 12
> ee:ee:47:35:fa:81 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.3.0 > 192.168.0.3.0: UDP, length 12
> 
> This is the default rate, with rxhash off:
> 
> # utraf eth2
> tx: 0 bps 0 pps rx: 397.4 Mbps 827.9 Kpps
> tx: 0 bps 0 pps rx: 396.3 Mbps 825.7 Kpps
> tx: 0 bps 0 pps rx: 396.6 Mbps 826.3 Kpps
> tx: 0 bps 0 pps rx: 396.5 Mbps 826.1 Kpps
> 
>     PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
>       9 root      20   0       0      0      0 R  99.7   0.0   7:02.58 ksoftirqd/0
>      15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 ksoftirqd/1
>      20 root      20   0       0      0      0 S   0.0   0.0   2:01.48 ksoftirqd/2
>      25 root      20   0       0      0      0 S   0.0   0.0   0:32.86 ksoftirqd/3
> 
> and this with rx hashing enabled:
> 
> # ethtool -K eth2 rxhash on
> # utraf eth2
> tx: 0 bps 0 pps rx: 456.4 Mbps 950.8 Kpps
> tx: 0 bps 0 pps rx: 458.4 Mbps 955.0 Kpps
> tx: 0 bps 0 pps rx: 457.6 Mbps 953.3 Kpps
> tx: 0 bps 0 pps rx: 462.2 Mbps 962.9 Kpps
> 
>     PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
>      20 root      20   0       0      0      0 R   0.7   0.0   2:02.34 ksoftirqd/2
>      25 root      20   0       0      0      0 S   0.3   0.0   0:33.25 ksoftirqd/3
>       9 root      20   0       0      0      0 S   0.0   0.0   7:52.57 ksoftirqd/0
>      15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 ksoftirqd/1
> 
> 
> The throughput doesn't increase so much, maybe we hit an HW limit of
> the gigabit port. The interesting thing is how the global CPU usage
> drops from 25% to 1%.
> I can't explain this, it could be due to the reduced contention?

Hi Matteo,

Can I take that as a Tested-by ?

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
