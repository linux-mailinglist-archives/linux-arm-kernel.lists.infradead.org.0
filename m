Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E645F1CBBAF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 02:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sm1BJSsQpsirxtV3fjEcXN1dPr39swoVpKGmZ2NibD4=; b=rGdjdiV9trQCNt
	lzVotpFjxzcvvgVLd7bckv4OFTVQtUAZnwFgGablOZOpyaNwaOPyDAqbfkvktu5OQJoTlf0IHg0cI
	8rhNet5ip2cPOAGbpMpKhqqu0xu7IF3z60msLbU0m8UFS0DJemDmteCfkp6CKBBii4+HgTcfLKmtF
	gyYWtOWraUZnnXEMyAPZFR8ka+AMY99lz6m8zPuMgyH/AYZCh8tKM/pLCpm4r1uQ0tqkS0NrvaXRM
	0mcJNtq3Ts2aNuA6gzK69Zccer16+zi4K3L30ABdNdiI8/HdnnAmriWsM00OYRImDyUVYlRzL77RA
	RRC7KnrqBzrhq9n1mowA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXD7y-0007J0-7V; Sat, 09 May 2020 00:14:02 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXD7j-0007CW-Ki
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 00:13:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588983224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZhMKYaxcr11NMRkCgTBjG7GpLbTFZxzwIgvmF68ljDw=;
 b=aEpI4ZLVLCUewXoSm6o5jrYBCYBnyIFwA7XCBFy6vQKm4I5dmLtq5rK9tTO76VIqHtgGc6
 0pjBooXJGgKl15mrfBs0UFLe+MQ17cbPCeF4GudBmYFZcnZMIQlzBfDGuVElOk3VBxQdTK
 xvWo9g8/vztS7Iuwgre5+05DU17c2Mg=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-334-WTx-7eKOMniR8dpgA_cJLw-1; Fri, 08 May 2020 20:13:35 -0400
X-MC-Unique: WTx-7eKOMniR8dpgA_cJLw-1
Received: by mail-ej1-f72.google.com with SMTP id c22so1356637ejm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 17:13:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZhMKYaxcr11NMRkCgTBjG7GpLbTFZxzwIgvmF68ljDw=;
 b=cRqp6WxjRxwQvSq8ReVGGiENlx5gm9U8V2Tbdxxi6fJqfRkBrs7t6F+hFdfY27cCe8
 7Hi6dTjNFw6SKs/+HBmcfeZMbYuO+0KisdKYOkJcTOc/vzAMNAVssJWNhn4XGzYWrJ4+
 C6DN0dwvwKNW1H3Ip0E1M0H8REuHuKhYjeJ0Y+aSiHzcKebk768BzI/D5M93dFWtIO+Q
 r1ROlRijI/+7Qm1LrTLuCbKLF0HztGDRENFbifXFexUtZ/Shxx4ocTkhJyj8ZdvyJ2G2
 g5MIH/CIS4pAbN9EsuHSBQ8LK6MeovxmsLwEJRuV2NZL6jmt8Xl+m8Vis7XM0LCkhMPE
 0T+g==
X-Gm-Message-State: AGi0Puab8/Ig9jhvinyYNsMNhGIKy79ajfvoJHHDnLtliH3QrQce1nCZ
 GpUulHNwVTkLWvkjfRkJTJq2Z34xdHdRiZPzPa628Q0yD+ogT0mFemVKU2TbPlacS4eX2mdj1lw
 7WeidGqO4wEK0Nmq4YvsULKw7rLConKKhbqJ9Fs5bWVGxhN3k8TA=
X-Received: by 2002:a17:906:328c:: with SMTP id
 12mr3850935ejw.69.1588983213652; 
 Fri, 08 May 2020 17:13:33 -0700 (PDT)
X-Google-Smtp-Source: APiQypJqN+TFhvtZqdkdpPo6lJw1R9Pu/We69ZDkgECDwa6VM+i564ZjE0uPtDGVAOi0WNgy1fVhvrOMu14Ja9Aja74=
X-Received: by 2002:a17:906:328c:: with SMTP id
 12mr3850919ejw.69.1588983213332; 
 Fri, 08 May 2020 17:13:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
In-Reply-To: <20200423170003.GT25745@shell.armlinux.org.uk>
From: Matteo Croce <mcroce@redhat.com>
Date: Sat, 9 May 2020 02:12:57 +0200
Message-ID: <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
Subject: Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts to handle
 RSS tables
To: "David S . Miller" <davem@davemloft.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_171347_757837_908DE154 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Antoine Tenart <antoine.tenart@bootlin.com>, netdev <netdev@vger.kernel.org>,
 gregory.clement@bootlin.com, LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, miquel.raynal@bootlin.com,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 7:00 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Apr 14, 2020 at 01:43:02AM +0200, Matteo Croce wrote:
> > On Tue, Apr 14, 2020 at 1:21 AM Maxime Chevallier
> > <maxime.chevallier@bootlin.com> wrote:
> > >
> > > The PPv2 controller has 8 RSS tables that are shared across all ports on
> > > a given PPv2 instance. The previous implementation allocated one table
> > > per port, leaving others unused.
> > >
> > > By using RSS contexts, we can make use of multiple RSS tables per
> > > port, one being the default table (always id 0), the other ones being
> > > used as destinations for flow steering, in the same way as rx rings.
> > >
> > > This commit introduces RSS contexts management in the PPv2 driver. We
> > > always reserve one table per port, allocated when the port is probed.
> > >
> > > The global table list is stored in the struct mvpp2, as it's a global
> > > resource. Each port then maintains a list of indices in that global
> > > table, that way each port can have it's own numbering scheme starting
> > > from 0.
> > >
> > > One limitation that seems unavoidable is that the hashing parameters are
> > > shared across all RSS contexts for a given port. Hashing parameters for
> > > ctx 0 will be applied to all contexts.
> > >
> > > Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> >
> > Hi all,
> >
> > I noticed that enabling rxhash blocks the RX on my Macchiatobin. It
> > works fine with the 10G ports (the RX rate goes 4x up) but it
> > completely kills the gigabit interface.
> >
> > # 10G port
> > root@macchiatobin:~# iperf3 -c 192.168.0.2
> > Connecting to host 192.168.0.2, port 5201
> > [  5] local 192.168.0.1 port 42394 connected to 192.168.0.2 port 5201
> > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > [  5]   0.00-1.00   sec   941 MBytes  7.89 Gbits/sec  4030    250 KBytes
> > [  5]   1.00-2.00   sec   933 MBytes  7.82 Gbits/sec  4393    240 KBytes
> > root@macchiatobin:~# ethtool -K eth0 rxhash on
> > root@macchiatobin:~# iperf3 -c 192.168.0.2
> > Connecting to host 192.168.0.2, port 5201
> > [  5] local 192.168.0.1 port 42398 connected to 192.168.0.2 port 5201
> > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > [  5]   0.00-1.00   sec   860 MBytes  7.21 Gbits/sec  428    410 KBytes
> > [  5]   1.00-2.00   sec   859 MBytes  7.20 Gbits/sec  185    563 KBytes
> >
> > # gigabit port
> > root@macchiatobin:~# iperf3 -c turbo
> > Connecting to host turbo, port 5201
> > [  5] local 192.168.85.42 port 45144 connected to 192.168.85.6 port 5201
> > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > [  5]   0.00-1.00   sec   113 MBytes   948 Mbits/sec    0    407 KBytes
> > [  5]   1.00-2.00   sec   112 MBytes   942 Mbits/sec    0    428 KBytes
> > root@macchiatobin:~# ethtool -K eth2 rxhash on
> > root@macchiatobin:~# iperf3 -c turbo
> > iperf3: error - unable to connect to server: Resource temporarily unavailable
> >
> > I've bisected and it seems that this commit causes the issue. I tried
> > to revert it on nex-next as a second test, but the code has changed a
> > lot much since, generating too much conflicts.
> > Can you have a look into this?
>
> This behaviour on eth2 is confirmed here on v5.6.  Turning on rxhash
> appears to prevent eth2 working.
>
> Maxime, please look into this regression, thanks.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up
>

Hi,

What do you think about temporarily disabling it like this?

--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -5775,7 +5775,8 @@ static int mvpp2_port_probe(struct platform_device *pdev,
                            NETIF_F_HW_VLAN_CTAG_FILTER;

        if (mvpp22_rss_is_supported()) {
-               dev->hw_features |= NETIF_F_RXHASH;
+               if (port->phy_interface != PHY_INTERFACE_MODE_SGMII)
+                       dev->hw_features |= NETIF_F_RXHASH;
                dev->features |= NETIF_F_NTUPLE;
        }


David, is this "workaround" too bad to get accepted?

Bye,

--
Matteo Croce
per aspera ad upstream


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
