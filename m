Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591DE1C92C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2zXREVK3LzB/zCDokkB0tLNROez8rTnIoBAJ4BbD20=; b=E7iu6UxbwB/CP1
	4OzhkclCCoVxNIk5kSh2gPBi9FAyXHyHbY889dnxVBC6OA7vD7PAgGF1ZMUyxnVOMKftR9cKq1Lau
	MnXnQHdvUm+jqxZ9yI5D0OGzANfhcnEC7k3METGUkoIBUZuFPPxgeeBXDRcR1suWJSwgsr5PxY1HW
	2zjwnghQ0G0agyiqoGccuolA4L+Bs+2i5V1mGnX7jF4W2ZRoowth2zuWhiF+sWchJFKF4rCbFjuvc
	q7G09aesG8EawRctnbdNq1WrK8ZVDuHbtYVlblE7fMjT52+YdDpTSiwJPzgiLmctWuZj5Ss8tLUYC
	3SKcxoSqewmzUBikyO8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhyg-0000GX-I7; Thu, 07 May 2020 14:58:22 +0000
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhyY-0000FM-H9
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:58:16 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 81493CEABE;
 Thu,  7 May 2020 10:58:11 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=RvoqLAm6E1F9sc8szmi/z/waAck=; b=l6R4ig
 oyu55Dk2igYtcQHsvFbjMaF9RGXKq9et/a9WIv+BUueIGjitLer8bItqCdJqh7lL
 Pjaw8xItuPbCTu8pav5dimqp/OY8Wy5hvgS5ssYwu9ldzFEOdWrRhE7f6xzzuTKA
 G3twC2VRgX2P7K7nnM5girhHM5g2ssditrfV4=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 78D2ECEABD;
 Thu,  7 May 2020 10:58:11 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=avpgv82DmbB3yL/GA/TaTqceQa67MoZ6ohBnqrkR+4Q=;
 b=l0QLt9nNFzBYHAvu3zUntQuIDzb6t+XapKITA1VEv/wFKgMySZYT3gCggWCEz5wK11I4HgOhqw/6XPXclTA47eqzjUH005vsdKSClfRzx7PgpoqklvJ69vaNublc4kwZFnzUdE4PZmqxxWNPSeSzArIWhNv7AyHQTIJpFS7oQyE=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 6A4CFCEABC;
 Thu,  7 May 2020 10:58:08 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 65CA42DA0CE1;
 Thu,  7 May 2020 10:58:06 -0400 (EDT)
Date: Thu, 7 May 2020 10:58:06 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH/RFC] ARM: dts: rza2mevb: Upstream Linux requires SDRAM
In-Reply-To: <20200507080528.547-1-geert+renesas@glider.be>
Message-ID: <nycvar.YSQ.7.77.849.2005071056450.5637@knanqh.ubzr>
References: <20200507080528.547-1-geert+renesas@glider.be>
MIME-Version: 1.0
X-Pobox-Relay-ID: 29C2F538-9073-11EA-B970-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_075814_626883_351F2D51 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Magnus Damm <magnus.damm@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-renesas-soc@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020, Geert Uytterhoeven wrote:

> As upstream Linux does not support XIP,

What?


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
