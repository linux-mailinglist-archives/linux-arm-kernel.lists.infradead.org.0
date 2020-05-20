Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504051DB14F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNfHSyMMPibfwLBq1wNYfl0XM3teAG4XHcPIG4ykaUY=; b=TNhN5+BslU1g+c
	N6diZJ4HfHG7tsYQVtWBB5wmW2rWs1yTLE+8k8XVaA1Mz8FUV1f803unOCAPMeP5TKljM3WOgOQaE
	4dVKpOigXtagL+XT5U4VeOd70NuJgjtx9YVYOIvVjYp104AVnGIORLVPValsXHCw7hVpfSc+yQyzl
	QAl1kLDxHXPKpwYEhIS1Htfk5WXl8VBMO07qedcY0GYTrQvRhdLiQKFCKwjtwwV4atBKWaJtIPT+X
	AzVq6+8GBti7Tk2Q0hW5k82iAyAx+L/iUoypJtCBxJrVktNaEym7dCZ6TvcmhdUvCzGdIUOt+PWzc
	l2Asjw0pbXfhWYKb7Tlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMix-0000Kr-E8; Wed, 20 May 2020 11:17:23 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMin-0000KC-5T
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:17:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589973430;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+3+XJ/Vfn9hEmmjKQHW1eZ3jCSPljvkuiuCcfSEsoMI=;
 b=Lk5+pc+V53e5JmA5lxF0AsbfqeP8wHqcvhI8Q94WRGPFONiKhIleTgV7U+ZM/in7b+gNhS
 SBmb5rkdg4nKIulAlSp7VSdxuTAZw/+mmeMiKFvWJji0ONAzJ1PZirQxOU1iJNXOykhzBi
 cXGaVRB9IRWoMuEK2tA7E66PJCJTuGc=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-7uHyIJUlN-CNDa1NVFYubw-1; Wed, 20 May 2020 07:17:02 -0400
X-MC-Unique: 7uHyIJUlN-CNDa1NVFYubw-1
Received: by mail-ed1-f72.google.com with SMTP id c10so1024929edw.17
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:17:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+3+XJ/Vfn9hEmmjKQHW1eZ3jCSPljvkuiuCcfSEsoMI=;
 b=ePM/Y7aRQC6r78AW5Jv5xuOLmXwXoVknKXUgI9l+6puNdJLNQ1N+bRlnV4sziZoIFi
 cKcJomskYzsemZnq7Jgod/FlSnk15OWWPcspIcGVe7zp6nNOd4TLELzVkoY2uW18HGcU
 dinxaEZ3M0t/TLlP1RiVCwIziUDHUdW0k54qjED8tGZvU/sXqiP0uZYczPzTYKarIh1X
 hYYjKxKBgTmJCGOtYEspQFN9SlPgpVxGjW1tBj2wXsNXF1rMZT26WnLiVGATSlhE8QLE
 SXDOLQwPhNS5lEOlD2LpWEm/IoJknkIh3XJUG8xKMiljzITu88HDOJO8VkKViliMsET5
 suPQ==
X-Gm-Message-State: AOAM533/St5GHzTHAcblKT0/lOzUZJZYbnldXacNqG6sWcH90esmMYy4
 2dtiEvi8ezabk2BPU6b+VII3R/sq5Jyfz3Ss8Rfydx2RwS35LBvv7vd3MmMQjUIm3SP4ztSGKC2
 1IN3IbZA4ftn8JsXAQYUVmjk3JOpKzi+Nr7q80f5xlN/V7YvCRMQ=
X-Received: by 2002:aa7:dc49:: with SMTP id g9mr2772104edu.62.1589973421133;
 Wed, 20 May 2020 04:17:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw9yaJKGnybcRqUxUy3GthqkOjqhNi4tj5jBm01HqNr4HhbfSnN0NrfDJG+uO9vI/xvh0Cix+t4RnN+OLDEWpE=
X-Received: by 2002:aa7:dc49:: with SMTP id g9mr2772082edu.62.1589973420888;
 Wed, 20 May 2020 04:17:00 -0700 (PDT)
MIME-Version: 1.0
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
 <20200520111043.GK1551@shell.armlinux.org.uk>
In-Reply-To: <20200520111043.GK1551@shell.armlinux.org.uk>
From: Matteo Croce <mcroce@redhat.com>
Date: Wed, 20 May 2020 13:16:25 +0200
Message-ID: <CAGnkfhx2qHVSBNTRQf+RQiRWBHxF5hPE=5m+YVKBv6C97P=BOw@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041713_296175_4F4AB1E4 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Wed, May 20, 2020 at 1:11 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, May 19, 2020 at 07:05:34PM +0200, Matteo Croce wrote:
> > On Tue, 19 May 2020 12:05:20 +0200
> > Matteo Croce <mcroce@redhat.com> wrote:
> >
> > Hi,
> >
> > The patch seems to work. I'm generating traffic with random MAC and IP
> > addresses, to have many flows:
> >
> > # tcpdump -tenni eth2
> > 9a:a9:b1:3a:b1:6b > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.4.0 > 192.168.0.4.0: UDP, length 12
> > 9e:92:fd:f8:7f:0a > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.4.0 > 192.168.0.4.0: UDP, length 12
> > 66:b7:11:8a:c2:1f > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.1.0 > 192.168.0.1.0: UDP, length 12
> > 7a:ba:58:bd:9a:62 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.1.0 > 192.168.0.1.0: UDP, length 12
> > 7e:78:a9:97:70:3a > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.2.0 > 192.168.0.2.0: UDP, length 12
> > b2:81:91:34:ce:42 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.2.0 > 192.168.0.2.0: UDP, length 12
> > 2a:05:52:d0:d9:3f > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.3.0 > 192.168.0.3.0: UDP, length 12
> > ee:ee:47:35:fa:81 > 00:51:82:11:22:02, ethertype IPv4 (0x0800), length 60: 10.0.0.3.0 > 192.168.0.3.0: UDP, length 12
> >
> > This is the default rate, with rxhash off:
> >
> > # utraf eth2
> > tx: 0 bps 0 pps rx: 397.4 Mbps 827.9 Kpps
> > tx: 0 bps 0 pps rx: 396.3 Mbps 825.7 Kpps
> > tx: 0 bps 0 pps rx: 396.6 Mbps 826.3 Kpps
> > tx: 0 bps 0 pps rx: 396.5 Mbps 826.1 Kpps
> >
> >     PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
> >       9 root      20   0       0      0      0 R  99.7   0.0   7:02.58 ksoftirqd/0
> >      15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 ksoftirqd/1
> >      20 root      20   0       0      0      0 S   0.0   0.0   2:01.48 ksoftirqd/2
> >      25 root      20   0       0      0      0 S   0.0   0.0   0:32.86 ksoftirqd/3
> >
> > and this with rx hashing enabled:
> >
> > # ethtool -K eth2 rxhash on
> > # utraf eth2
> > tx: 0 bps 0 pps rx: 456.4 Mbps 950.8 Kpps
> > tx: 0 bps 0 pps rx: 458.4 Mbps 955.0 Kpps
> > tx: 0 bps 0 pps rx: 457.6 Mbps 953.3 Kpps
> > tx: 0 bps 0 pps rx: 462.2 Mbps 962.9 Kpps
> >
> >     PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
> >      20 root      20   0       0      0      0 R   0.7   0.0   2:02.34 ksoftirqd/2
> >      25 root      20   0       0      0      0 S   0.3   0.0   0:33.25 ksoftirqd/3
> >       9 root      20   0       0      0      0 S   0.0   0.0   7:52.57 ksoftirqd/0
> >      15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 ksoftirqd/1
> >
> >
> > The throughput doesn't increase so much, maybe we hit an HW limit of
> > the gigabit port. The interesting thing is how the global CPU usage
> > drops from 25% to 1%.
> > I can't explain this, it could be due to the reduced contention?
>
> Hi Matteo,
>
> Can I take that as a Tested-by ?
>
> Thanks.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up
>

Tested-by: Matteo Croce <mcroce@redhat.com>

probably also:

Reported-by: Matteo Croce <mcroce@redhat.com>

Thanks,
-- 
Matteo Croce
per aspera ad upstream


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
