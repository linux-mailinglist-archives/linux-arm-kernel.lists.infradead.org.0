Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAB11A6FE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 01:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYMNlgEkb1Jg4lN+w+TinF4n43LEDEdEByu9MhQWGp0=; b=u6gLyM8iwBurkz
	ttXk+z5vl1e5rjm3tfee/1YpLONL+FOC72ogzSZCV2DoQTXHQiIAFYpC9Sst1+1Pas5uBQURv/Nrj
	hesarFGkk1lhdEg1WtF1UYMjyuwooRqAL33Jjf9hiZMqMzsaKuZxesisGgHhqGrK7Nc9gMU4Tz8om
	C4pUjbvLDAQp91AhD/uv0jOX4tfZzhU+9HEDnD54Z0mI1qAPVu9K8B0XgcADoncJiOzPNrvqsqZ7Q
	RhwT1gUbqjLJNnSkWvhE1qY7OosFobh8EkfDQAX7fURNUccsGvd4lbm+mc2yaZq2aNNV/e9Sbrqeo
	pSACLeQjRsZjabIlv5gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO8lm-0004kj-OA; Mon, 13 Apr 2020 23:45:38 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO8le-0004kD-00
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 23:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586821528;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fkuIBZXpOYtkdAminZQBHReCbB6Qkdy15KJRjC2e7/Q=;
 b=NO2PwfmYILoerZoBT/VmdUg9+UHg2IU+/2DMlssy7EJE1Q08kKG6lGI+9gVtN3n+sojPPB
 ASjY/NBjxbarFowlJiIPxYjR0jqCoX/mr0Kz3Jb3MbokvHzIUx+ugkstbksDz9gGaoYgP9
 q0c1VoxMh2qEIA2gPl23thMK2WMmCXY=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-113-SIBlkhU6M1CWu4kf4ALqNA-1; Mon, 13 Apr 2020 19:43:40 -0400
X-MC-Unique: SIBlkhU6M1CWu4kf4ALqNA-1
Received: by mail-ed1-f72.google.com with SMTP id f25so7728064edt.23
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 16:43:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xqr4dsXCGQ7mBSR00NAzM1Q6acm6mNGXK+xaVCuI9s0=;
 b=WjAlLDjpJUcZ9pxR7IEIrjVgrVQYNUNcxcM89XjG/xGvxpHy9ssIgtTweQytipiWNu
 h0Hm9Jp3bYfVXcMMhHleGa1Vi7cBgdXPeizFzgCe5bNQmld46uiDESxZvE/DdU9WN0G9
 ZVrlB7ngDhiu+GrW6s/+j22Mq0VNAabT252k8aYYeWXMLS7WtD46FMInRj2g1eug36oW
 M+gNtQYeUzvd9pw4cCI1Ie7hyZZYLsPQfBnyJSc2CmyuuJDtq/hermoF3ZVKTsWSPLmf
 imzjwApyHyBPIsBCiUyhtGZMT8ZFZcyFXNHxssX4C3SRMiD5WY9kbLh/cF20IMUEiePD
 zNdg==
X-Gm-Message-State: AGi0Pua12XvvGNsH5TbQAfDCQU4z7VpgbeCfkvtUhN5PP6JOZqPIGY6g
 KOKbd+ENlBARA799aBwPd6/TIhwm6bZkQ2eogPVgjLrAUcWHdJtIzG1gGayT1pVQ7RjkSnNuZxp
 d70pwTqQK5QUaPenWcyE/EemsIn+Lqk3hJ9bHcmhemtyFrghG7nI=
X-Received: by 2002:a17:906:a418:: with SMTP id
 l24mr4284473ejz.362.1586821418588; 
 Mon, 13 Apr 2020 16:43:38 -0700 (PDT)
X-Google-Smtp-Source: APiQypKa/t6ZDKsi78psOMm2ofYlu33r+ev1cgYcUx7E9J7maeva3YKq+x4SEnS8Mxo6UUPZcXftIkJxkGJxL//DCa8=
X-Received: by 2002:a17:906:a418:: with SMTP id
 l24mr4284462ejz.362.1586821418314; 
 Mon, 13 Apr 2020 16:43:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
In-Reply-To: <20190524100554.8606-4-maxime.chevallier@bootlin.com>
From: Matteo Croce <mcroce@redhat.com>
Date: Tue, 14 Apr 2020 01:43:02 +0200
Message-ID: <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
Subject: Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts to handle
 RSS tables
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_164530_120474_039CEEE2 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 netdev <netdev@vger.kernel.org>, gregory.clement@bootlin.com,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, miquel.raynal@bootlin.com,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 1:21 AM Maxime Chevallier
<maxime.chevallier@bootlin.com> wrote:
>
> The PPv2 controller has 8 RSS tables that are shared across all ports on
> a given PPv2 instance. The previous implementation allocated one table
> per port, leaving others unused.
>
> By using RSS contexts, we can make use of multiple RSS tables per
> port, one being the default table (always id 0), the other ones being
> used as destinations for flow steering, in the same way as rx rings.
>
> This commit introduces RSS contexts management in the PPv2 driver. We
> always reserve one table per port, allocated when the port is probed.
>
> The global table list is stored in the struct mvpp2, as it's a global
> resource. Each port then maintains a list of indices in that global
> table, that way each port can have it's own numbering scheme starting
> from 0.
>
> One limitation that seems unavoidable is that the hashing parameters are
> shared across all RSS contexts for a given port. Hashing parameters for
> ctx 0 will be applied to all contexts.
>
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Hi all,

I noticed that enabling rxhash blocks the RX on my Macchiatobin. It
works fine with the 10G ports (the RX rate goes 4x up) but it
completely kills the gigabit interface.

# 10G port
root@macchiatobin:~# iperf3 -c 192.168.0.2
Connecting to host 192.168.0.2, port 5201
[  5] local 192.168.0.1 port 42394 connected to 192.168.0.2 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   941 MBytes  7.89 Gbits/sec  4030    250 KBytes
[  5]   1.00-2.00   sec   933 MBytes  7.82 Gbits/sec  4393    240 KBytes
root@macchiatobin:~# ethtool -K eth0 rxhash on
root@macchiatobin:~# iperf3 -c 192.168.0.2
Connecting to host 192.168.0.2, port 5201
[  5] local 192.168.0.1 port 42398 connected to 192.168.0.2 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   860 MBytes  7.21 Gbits/sec  428    410 KBytes
[  5]   1.00-2.00   sec   859 MBytes  7.20 Gbits/sec  185    563 KBytes

# gigabit port
root@macchiatobin:~# iperf3 -c turbo
Connecting to host turbo, port 5201
[  5] local 192.168.85.42 port 45144 connected to 192.168.85.6 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   113 MBytes   948 Mbits/sec    0    407 KBytes
[  5]   1.00-2.00   sec   112 MBytes   942 Mbits/sec    0    428 KBytes
root@macchiatobin:~# ethtool -K eth2 rxhash on
root@macchiatobin:~# iperf3 -c turbo
iperf3: error - unable to connect to server: Resource temporarily unavailable

I've bisected and it seems that this commit causes the issue. I tried
to revert it on nex-next as a second test, but the code has changed a
lot much since, generating too much conflicts.
Can you have a look into this?

Thanks,
-- 
Matteo Croce
per aspera ad upstream


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
