Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC44F721F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQcfxvOE95vVTk++fIOmDB+u9GnpbrlBs6ntoOj3VKY=; b=TY+7OWo53BWPzD
	Iy2UVomfTK99N12Zrl55zto/dadx+IZp1XDOWbGkhQyPfhbFkf5xQWLjwxGW9s0vGxtnaSR9kihr/
	DK75T8khhvGX4nOSUB0+tASKL/go0evxgCYyE+nFKUKI7Y2qdg5lV2ImUGwMuPHPPg4NpLUE8RCvb
	saRRc8ohYGY3IUFeEzaub5XvzrSTLETpaaiBFzM0RhN+0logX9qEp69kMmDeU2+hPWpIbbaqAdvT6
	MKzJCtHtG0sJ0q+HRXvdcy/5LMABoofR768CWAqbhVOwrxKHP/MJQVUZsjNgslaDdhS2fRUYAivhq
	AbToOqMTMq6TZnUZrUew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq2vt-00081I-J6; Tue, 23 Jul 2019 22:06:53 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq2vd-0007zX-7F
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:06:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E/LUBzLCJzpcb95mBekwKy8gZoYu7sAEuAiBQdoSSiA=; b=UDfC2FY/7QnEVtXmemf42irTpU
 wU+REj/7meBbBTKOigPdM0rK6mIj3oswO4Bdc7VYYvfx5qdrK5OpFJyfuxReqODGFI0trlm5EdvGr
 m42/sfxUKYVUo1HAOnCi5EjUPA9+2Ww25yW4X+SG4wGN1XWbm/QhPu4BR/KHE+CwXnPM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hq2vU-0003aB-QJ; Wed, 24 Jul 2019 00:06:28 +0200
Date: Wed, 24 Jul 2019 00:06:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Evgeny Kolesnikov <evgenyz@gmail.com>
Subject: Re: [PATCH 0/5] Add support for WD MyCloud EX2 Ultra (+ versatile
 UART-based restart/poweroff drivers)
Message-ID: <20190723220628.GA13517@lunn.ch>
References: <cover.1563822216.git.evgenyz@gmail.com>
 <20190723015631.GI8972@lunn.ch>
 <c2ffe662-6975-351b-87b8-af760984ef4d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2ffe662-6975-351b-87b8-af760984ef4d@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_150637_415185_7284718F 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, linux-pm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 07:48:49PM +0200, Evgeny Kolesnikov wrote:
> On 23/07/2019 03:56, Andrew Lunn wrote:
> >On Mon, Jul 22, 2019 at 09:53:00PM +0200, Evgeny Kolesnikov wrote:
> >>
> >>The difference between uart-poweroff and qnap-poweroff is small, but important:
> >>uart-poweroff is able to send to an MCU a command of arbitrary length, and the command
> >>itself is defined in a DTS file for a specific device/board, thus making this driver
> >>applicable to wider range of devices.
> >
> >There is a lot of replicated code here, and in the original
> >qnap-poweroff.c driver. Please consolidate it by extending the current
> >driver. It should be easy to add a new compatible string, and turn
> >power_off_cfg.cmd into an array.
> 
> Hi, Andrew.
> 
> I've considered extending qnap driver, but I have some doubts about this
> approach.
> 
> First of all there is only a poweroff counterpart. As there is no
> qnap-restart driver, what should I do with uart-restart? Is it OK to have
> xxx-restart-poweroff driver (never saw anything like that)?

Hi Evgeny

There are a few options. You can refactor all the code into a library
and small drivers which wrap around the library. Or you can make the
driver handle both, using the compatible string to determine which it
should do.
 
> While I can add cmd as a parameter to qnap driver (having it converted
> into an array) it should be optional as original qnap relies on two
> hardcoded values for its devices.

That is not what i meant. You can make the current code more generic
by changing the single byte in power_off_cfg to an array. DT should
describe the hardware, not bytes you poke into registers. So it is
perfectly valid to have the bytes hard coded in the driver.

	  Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
