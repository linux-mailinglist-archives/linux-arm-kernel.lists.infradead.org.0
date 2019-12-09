Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099B61167DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbYWyS/HNuIeUhWaHqfwYFBEy1jGx1QloMSUFzDDsEM=; b=V2gqwMxOizESL/
	6fKXK05GuWGjOHQ3R8vvBISL5Fvo3hARbLXxS749YUGOMBecX2sf77HuSDLnNleDrJqHTgjHjGmEd
	5XAf8dRPXWHmUn4ODYFpPlT5mii8z/CV/qw8Y/Hv+OFP/2sVdwK/vT/iUpmbmZ6c+/F5A0FCK7R8H
	0OUZE+QOF1OKuYlJb4FM9dvTb2ZXZNZl9fj4cIK3qJx/f8DZjn2u53voVCPMpnmIIeWCGG/QvNK7Q
	Xst8b2tRMGChT4+AsL+t8pbP2CVklTx/gsSJ9SHnpLBpZulTBk8FuTrpds1vALziQVIlO27683Zsi
	85O71Jm9eefPrtn/fiHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieDxQ-0001SV-OH; Mon, 09 Dec 2019 07:59:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieDxG-0001Ro-7J
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 07:59:43 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E19D9206D3;
 Mon,  9 Dec 2019 07:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575878380;
 bh=/GDSAbwa+5Rfjx3NyL//+7tHWlsU4b2DACP4NCUjuqc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PQh3/U8SjkohY65/zdLAgeGBAo8aOdOXyNb6PLAJFEvqNzfnzHunAqqm6OAPkpmN1
 zrsk2OG9UhVlMNtJZx6Q4VDrKoalaOO1zFoH2L2L0O2q9eDWLYft0ZwJrSukUybUV7
 GkYpfIYsVDfjzjGtuSexH0VhF3BDfRmH/e08dX2U=
Date: Mon, 9 Dec 2019 15:59:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH] ARM: dts: colibri-imx6ull: correct wrong pinmuxing and
 add comments
Message-ID: <20191209075920.GJ3365@dragon>
References: <20191128171345.10533-1-philippe.schenker@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128171345.10533-1-philippe.schenker@toradex.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_235942_284875_C9CED456 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 05:14:14PM +0000, Philippe Schenker wrote:
> Some pinmuxings are obviously wrong, originating from a copy/paste
> error. This patch corrects that with the following strategy:
> 
> - Set all reserved bits to zero
> - Leave drive strength and slew rate as is
> - Add sensible pull and hysteresis depending on the function of the pin
> - Not used pins are muxed to their reset-value defined by the SoC
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

It doesn't apply to my imx/dt branch.  Can you please rebase and resend?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
