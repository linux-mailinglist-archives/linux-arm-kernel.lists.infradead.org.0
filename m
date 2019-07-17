Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A686BA7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhq6r+71WSas5kvVjzzlEBMD5sveV4qgTTVlxuUKb/U=; b=rCNh9lZ0YhMNHo
	UCqAn67lWLqjc2go30S9+Z8ZCvbR2gUHLq5oNLZFb33j95msroKB+g9tMnyjqQDVq0sxZmddKC/We
	Gywg2i4+Q8wYgAaR0ku2K5UwoCNYpzGyBNCirIyxmr8ZsIWmM+yySRTDyPGUkb4gG6NE9MBMW0LiO
	iwlZqq/eqB7s6IfhUYclbKknptW9a6tDGEIdXe15JSsNqYcQKCG0tpd+uuQVZ470u7wN9HLHGMo6A
	XkRHjgkNXoBlLz6bwLlo2wCRiCrI18LzFZ7tBPQLfkmIUv9uCF6M+gKlWLkXjo25T1m/eGZNRjUlu
	11JQ2ggp7df+upQS0/ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhOY-0004NY-SZ; Wed, 17 Jul 2019 10:42:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhOP-0004Mm-BA
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:42:38 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 987452173B;
 Wed, 17 Jul 2019 10:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563360157;
 bh=Vc4dK7Q1LgrSjNRykc3aqEyJGyahGuK990ZvfYWGOLE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z4qLwUVYKFf3kN6p6YQf6jic8Hvvrno7rna1CHIKYbQDNkfyhvlOYJm1ZavvUMX6e
 j7uHoKmtGlYxgcwiN00A9jR9dgo8IU8pF148s0cTMdR+DIJslPMRqsqG3tgeDXZ67G
 1tcARC+sYw074brfrRpFECtFhkxWm8NdG9hpluFk=
Date: Wed, 17 Jul 2019 18:42:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH v3 1/2] ARM: dts: Add ZII support for ZII i.MX7 RMU2 board
Message-ID: <20190717104219.GG3738@dragon>
References: <20190624183044.30240-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624183044.30240-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_034237_402762_DA8F7149 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Liang Pan <Liang.Pan@zii.aero>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Bob Langer <Bob.Langer@zii.aero>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 11:30:43AM -0700, Andrey Smirnov wrote:
> Add support for ZII's i.MX7 based Remote Modem Unit 2 (RMU2) board.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Bob Langer <Bob.Langer@zii.aero>
> Cc: Liang Pan <Liang.Pan@zii.aero>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: devicetree@vger.kernel.org

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
