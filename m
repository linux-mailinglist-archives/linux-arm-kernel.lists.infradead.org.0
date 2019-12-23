Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FD11290B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 02:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/BswMVcrAuTBJx2HwLRETsckHi65F9R0xhWy3N6Eq4=; b=D4VbULpWrtDROq
	XBZVflWIl3pHc8wpOoegLQ/2On8INAVPOVxCWqqC6I49gDP0P1TdWt4Ok98xH+BqSt5sCYJf8kxgl
	dmzcEPmxgGFR8lj3cRZZFarCPztSs4mdDkJvELXaJOXz0x60DrYhnHrxXqY89wCedw0DYZihDPlOG
	lAyvuFw26NWHbWWaArKMfA6CUyNhOlmbSESfdfVzjzefQduolvf7RJDzzoJ1Ex3ftJEvCHiwVUR0c
	5rBa4tK0fHjXMKM3RQv2MKYhIG3nDmsVtwpaMU6D6GQrQdydyKW8lHBJU0DxOXr5QngImNMnM2klR
	6G2ql2J6LUp9/fbn9+Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijCjC-0007GJ-KY; Mon, 23 Dec 2019 01:41:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijCir-00075K-6s
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 01:41:26 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D14B2067C;
 Mon, 23 Dec 2019 01:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577065284;
 bh=E/kka9OXm0qYxQhxNuqLXHMpmTHBqe4nWeazON9zZ/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jgfU/fk9gHUM8QCkQdO6cQdmQC2ijdDDJqG4xyhXJXMGylA6GqCpjXufw2uZFLZ13
 2LfXz7kK/cbcceOrh3Q2dv2SVXm0yOdgcf2cK47KLfS5LIzhQg65Reoo0b9N7KXz7G
 N/2fcGyTZ0WOx5r4UKqAxx7Nn1HySFcNQznK70Q4=
Date: Mon, 23 Dec 2019 09:41:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/2] arm64: dts: lx2160a: add MDIO descriptions
Message-ID: <20191223014101.GC11523@dragon>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
 <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
 <20191211073330.GO15858@dragon>
 <20191216110253.GE25745@shell.armlinux.org.uk>
 <20191216113455.GF25745@shell.armlinux.org.uk>
 <20191216123442.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216123442.GG25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_174125_346594_42FB76BB 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jon Nettleton <jon@solid-run.com>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Rabeeh Khoury <rabeeh@solid-run.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 12:34:42PM +0000, Russell King - ARM Linux admin wrote:
> Okay, I finally found it at:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/patch/?id=6e1b8fae892daa7ffb48570264b8e43b3f807e9a
> 
> Note that that was unnecessarily difficult - google was unable to find
> it.  Ioana's patch should have been copied to linux-arm-kernel as per
> MAINTAINERS, but wasn't.  Is copying the appropriate mailing lists for
> a patch now optional?

Absolutely no.  I will remind people to copy appropriate mailing lists
when sending patches.  Sorry.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
