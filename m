Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152B77138C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dj+F8F3ABRt1NPJ/a6uVd1cKhRTL6ZW24Ou7CNC5mlw=; b=MZOB9xjMXjlOyw
	KptQ2w2CQ/l4mjgLFlr3RJ5apFjrZzib6KrpAcJF94lRUqJOC+gxoFFkHMarHPpdFzI0W/YxpkMPI
	9b7GjGgS60vu5shcBvTOLJf0BSe9lmClyJqjZEKqp3uEfqweiI+3MKTj8DsgIRM1ukd6Zse4Gi4Du
	ucOlrawkBT2rQKC40VcY7nh48E3Rhs6ICXb2Tu+ouIPwRYJbgRBoo6o7i/0a/41TDxYxx5rkoYJxD
	d7EFb2v4/dBtQpj529x4mdDvdaW0DUGE3nPqHniU1MgpoS/akJvEpVl1XZRecdZW4jtui27S7H8AR
	GT2g2mBXbNkc4oyUX9tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppld-00040y-Mi; Tue, 23 Jul 2019 08:03:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpplN-0003wg-QV
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:03:10 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C503D2070B;
 Tue, 23 Jul 2019 08:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563868989;
 bh=NzZJIzqSuCySKVu8QSAWnsLQ14sMCDdVbIeGxQTQNRA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mi3vYfKaXr5oRK/kshsr8aZ5LrMQ/AeIld8NL4LT9AuE1yJKJDDB179X7XCXTTokE
 XjUDMTO2L6Ng9NXLwtYvBjMXK4hApAtF433+cEZov/Wn8FGHWxkrBoUEEeTVWpuIpP
 3c94I8tQNLPOKKEsoXfHcmIxnJ1NqJIOhxUNqAzM=
Date: Tue, 23 Jul 2019 16:02:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v2] arm: dts: imx6qdl: add gpio expander pca9535
Message-ID: <20190723080234.GO15632@dragon>
References: <20190719104615.5329-1-gilles.doffe@savoirfairelinux.com>
 <20190722075341.e4ve45rneusiogtk@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722075341.e4ve45rneusiogtk@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_010309_882303_1D51366B 
X-CRM114-Status: UNSURE (   8.03  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Gilles DOFFE <gilles.doffe@savoirfairelinux.com>, s.hauer@pengutronix.de,
 rennes@savoirfairelinux.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, jerome.oufella@savoirfairelinux.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 09:53:41AM +0200, Marco Felsch wrote:
> Hi Gilles,
> 
> can you adapt the patch title, I assumed that the base dtsi is adding a
> gpio-expander which makes no sense.

More specifically, the prefix should be something like:

  'ARM: dts: imx6qdl-rex: ...'

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
