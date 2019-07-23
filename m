Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B28270EE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 03:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFXHHA3k1EQMZl7DCVdXm6V5maEZc2BDB7ik7MKWECQ=; b=dFgqiK7RwmC1r/
	XQ5elrGRxhaODDYb7h1SYnrj7fY0ji+Plsp44DeG/yVpNo+lPpFYgL49FrriOO2WVqeCqs7zCI/hU
	BWWqRTLADnzlrXgersa9zWtwuFVMlONFdQNPCG2/MnCQF6yecvz04d7nOIRT8SZkFr4cyrOzmbqka
	xLJbBbMOD61Mkbceq3DzbriMhqW29sqda//p32uQKzVUK7cHuK9rNF24zp3fPKfOWx/oi00N8zBjQ
	sUDY95+oYtQq/W7meSCFVvI4Le23uAUNPKoVbMzq5AjDRN3xsG206wlguo4Mspbr6xolLk4WWzkNU
	+eExT9aHNdefNzf9rztA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpk3C-0001HZ-HN; Tue, 23 Jul 2019 01:57:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpk2n-0001Ap-12
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 01:56:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3UPS6SnYVearlAWk6p3v30CJre0DZAAwQz9HmajYiJE=; b=cgn8c/EVPnhqqkTTKzJUTz8wH8
 zy+TZ0cFEj/uUyajGn9DuybbZeGoHdsRrI31SQOlsQaKyel8/mVddkZKIFWAwzhvOgj3cGNMYtCW+
 Ds11XZyT39fGEMdnjrAr5dMtFVwWB6PKcdR9ssXQsFwUge/zRukl81/256xZ2kQtxmEs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hpk2Z-0006U1-NM; Tue, 23 Jul 2019 03:56:31 +0200
Date: Tue, 23 Jul 2019 03:56:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Evgeny Kolesnikov <evgenyz@gmail.com>
Subject: Re: [PATCH 0/5] Add support for WD MyCloud EX2 Ultra (+ versatile
 UART-based restart/poweroff drivers)
Message-ID: <20190723015631.GI8972@lunn.ch>
References: <cover.1563822216.git.evgenyz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1563822216.git.evgenyz@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_185645_288477_E7A2D91C 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Mon, Jul 22, 2019 at 09:53:00PM +0200, Evgeny Kolesnikov wrote:
> This patchset consists of the DTS, which describes the WD MyCloud EX2 Ultra device,
> 'poweroff' and 'resert' drivers for power-managing MCUs connected to a board via UART
> (these drivers are more versatile than qnap-poweroff and could be used as a substitude),
> and DT bindings for these drivers.
> 
> The difference between uart-poweroff and qnap-poweroff is small, but important:
> uart-poweroff is able to send to an MCU a command of arbitrary length, and the command
> itself is defined in a DTS file for a specific device/board, thus making this driver
> applicable to wider range of devices.

Hi Evgeny

There is a lot of replicated code here, and in the original
qnap-poweroff.c driver. Please consolidate it by extending the current
driver. It should be easy to add a new compatible string, and turn
power_off_cfg.cmd into an array.

	  Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
