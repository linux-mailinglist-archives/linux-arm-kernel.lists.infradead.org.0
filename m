Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02ADB69C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdnLz2bgampASikJshRD712/P8NyTN/0gyV+U6WPKY0=; b=MhPIrQ9kqWP0nv
	/4czhBQelN+zMBRMua05PM6N6bNC8knqq2n0LdscWgiX3mJf1ULl6dTQVxYFbzPEvEouHgGR7Cbg4
	/QZl+s7qDkLzMvl8D80juGOIlQETYWUqJe4TtjlCy6SbIMTLlx1dgOuQ/1Hr9iZeRO9RKMXaVjgNv
	5jbCGoAvqt4wCReVduE0K/DMiSPElG8XikRxhWObWcJQtq1YpymJzQ8MpGXqYtb3ml4wxY6mdYP4g
	ctVUPtzYMTf+M/K/rOBsMMeqEzP82rK6MtpHSFTabDH+zpbA/Q3O5Sv9lf8AXRpv6fiWr9WAYgvja
	dnEnulbLKzbAvN68WK8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqMs-0000LO-VO; Sun, 28 Apr 2019 20:25:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHR-0008H8-AD
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:20:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id k2so7440483lje.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dlCRCq5XOZvNqvkkykFE4VT5vfjkB2k3hFRnHbz5xho=;
 b=nQBYKV6Qdm0j77d3/7F76yPGwT4lYoJMUExIC4YFU8cu2xu6PnII1dNJMJw4FHftiA
 SG/qeMhyAPhap8sOeI+kHeP5kJG21IInlJe1ww9u2kWmdiYD5kJof+OA5QsDQmjxTYbq
 UHrLBVvDJiPBAsxALD6WA5SL1iNToT8e/r+1GMKg+LjErfGX1fIfwzUY/OZ3ngMWPHf8
 WLrJvVVdzL2x3Q6Uit8NAOeJfF4ulF48BzDoNUGcKXOgYbSlQXADhkhKk9IS90015cWJ
 yhWPSk17jTcSWbsxkB8+PaAKJwJ2BEIJaGmV7IZqbRRGwcTe/4hEZRTLmomNa8S0Al37
 Gixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dlCRCq5XOZvNqvkkykFE4VT5vfjkB2k3hFRnHbz5xho=;
 b=ZjfUikN0H1qrq6XN/vFvEyz8Wy9VWontjKaFzYsyCJBCMxV63LYjA9CwFuktZyR05B
 siH1iX05oJYrRtOrKKHobH/y+q7y3BD90r60IS14L26fYTi04oPbJUNlPg5ue9sEAyVM
 J3Pf5LvoO5AiJIDVB9Wb+gWOWk0MM20iOZIo6A4I1CS1SgD30P2ZQQy0zY21t9Ew8zx7
 RXzxeFeWQBqliDJuPAI6wpcrbLHdZLhXqrm22Sz0DrISPNKoFADyKgTkVn4Vo5JKR7tB
 MEdV4QwyhmJc/ugQCA1dwKTn86CIM3akCwANTMTlw+lsYm/k6m97+m1iS20CGnLg63V3
 wgFg==
X-Gm-Message-State: APjAAAVtbDqYHpSkvh4NMDxeTp5SPwgCbQivaoicvgr4Mhs64y1VeRm7
 7iqW+zS1Yxn+v41wyc5vv551Og==
X-Google-Smtp-Source: APXvYqxVH0bUH1Y52+Td7POxnwMzvi5nml2jAv7taWLdb+ChV3v66SFjbOafYBuO7/VdP4zQou/9vA==
X-Received: by 2002:a2e:858f:: with SMTP id b15mr16683176lji.144.1556482807724; 
 Sun, 28 Apr 2019 13:20:07 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id x2sm1701998ljx.13.2019.04.28.13.20.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:20:06 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:51:35 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 4/6] i.MX arm device tree update for 5.2
Message-ID: <20190428195135.dbbwxqivmno3bg6d@localhost>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-4-shawnguo@kernel.org>
 <20190423020804.GD16166@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423020804.GD16166@dragon>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132010_658905_EB7E8008 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 10:08:06AM +0800, Shawn Guo wrote:
> On Mon, Apr 22, 2019 at 04:28:34PM +0800, Shawn Guo wrote:
> > The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> > 
> >   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt-5.2
> > 
> > for you to fetch changes up to 2ea5c9b28fab2f34a0ac5d9b3d17216dd35d3162:
> > 
> >   ARM: dts: vf610-zii-dev-rev-b: Specify CS as GPIO_ACTIVE_LOW in spi0 (2019-04-22 09:16:15 +0800)
> 
> Hi Arnd, Olof,
> 
> I updated the tag to include the missing patch that adds #io-channel-cells
> in ADC nodes.  Otherwise, we have DTC warning below from ZII i.MX7 RPU2
> board support.
> 
>   arch/arm/boot/dts/imx7d-zii-rpu2.dts:46.12-50.4: Warning (io_channels_property): /iio-hwmon: Missing property '#io-channel-cells' in node /soc/aips-bus@30400000/adc@30610000 or bad phandle (referred from io-channels[0]) 
> 
> Shawn
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt-5.2
> 
> for you to fetch changes up to 4171797ff78fa1f351b890e18411b7959b506149:
> 
>   ARM: dts: imx7s: Specify #io-channel-cells in ADC nodes (2019-04-23 09:48:26 +0800)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
