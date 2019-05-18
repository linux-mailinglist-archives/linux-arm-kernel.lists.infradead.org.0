Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3502221DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 08:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NZ6UhXBGamRHXCr7kiz4gZ2PG1zUowJPgwMIlPaJCI=; b=qfzv8yC2pecP36
	E/WhvP4M8R3hXFKSTsxNRc2Tr70vDzvSW5wheUMmYF7wMETMaMX8uw9NWX7vcBpwS6TrN6jU0c+iR
	i/CEVGmH7YuImWAX5ua95cdDPGIwUtxE9QHZBqhN7Ra9rVXbtB0oILrwJp5tmZOgomFVKqzNZtww8
	EOnHlnTlwhhmsvM88LXq4D8gtXv2mwDwB6Own4tX4h5VrzDN6gxvANOn1gycPWXlb4tESato4Pc3+
	TL5XbBAvR1yZRRcwtKjXgEJapHy6OgylLEvQf3qIRZac1G1Zt3VWoT9AwAS6ShORu7dcPIpah/ZHa
	l/rwx70kldFyHmdOaTlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRszJ-0003n6-TZ; Sat, 18 May 2019 06:38:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRszD-0003mn-O4
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 06:38:29 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 638EA2087E;
 Sat, 18 May 2019 06:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558161506;
 bh=2LLwg0/5cQYv9Vcr/G7BBkP5kOFgZkGQpwMneedf788=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A4QfEuLJ6rV4yxzjDwFIC5j5KQPz9WG+dk0DG3dE4gf5bHuSeLWniP0H34ZLtHROi
 v4AewFfcJJmIIp7NkvdCKleWOUkrlYK3jELjeRHSt+AtK5uezvEJePsZ/6oHMUxH+G
 c4NG7MtOtZaORfrHVej2NVWLxTv4TbpM5UtUZyPg=
Date: Sat, 18 May 2019 08:38:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "George G. Davis" <george_davis@mentor.com>
Subject: Re: [PATCH v3] ARM: dts: imx: Fix the AR803X phy-mode
Message-ID: <20190518063824.GC26163@kroah.com>
References: <20190403221241.4753-1-festevam@gmail.com>
 <20190513171826.GA18591@mam-gdavis-lt>
 <20190514004539.GG11972@sasha-vm>
 <20190514011606.GA18528@mam-gdavis-lt>
 <20190514020742.GJ11972@sasha-vm>
 <20190514152240.GB18528@mam-gdavis-lt>
 <20190517222502.GA1844@mam-gdavis-lt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517222502.GA1844@mam-gdavis-lt>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_233827_802618_1C1A0575 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, andrew@lunn.ch, baruch@tkos.co.il,
 Fabio Estevam <festevam@gmail.com>, ken.lin@advantech.com,
 stable@vger.kernel.org, smoch@web.de, stwiss.opensource@diasemi.com,
 linux-imx@nxp.com, kernel@pengutronix.de, aford173@gmail.com,
 Marc Kleine-Budde <mkl@pengutronix.de>, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 06:25:04PM -0400, George G. Davis wrote:
> Hello Sasha,
> 
> On Tue, May 14, 2019 at 11:22:40AM -0400, George G. Davis wrote:
> > On Mon, May 13, 2019 at 10:07:42PM -0400, Sasha Levin wrote:
> > > On Mon, May 13, 2019 at 09:16:07PM -0400, George G. Davis wrote:
> > > >On Mon, May 13, 2019 at 08:45:39PM -0400, Sasha Levin wrote:
> > > >>On Mon, May 13, 2019 at 01:18:27PM -0400, George G. Davis wrote:
> > > >>>On Wed, Apr 03, 2019 at 07:12:41PM -0300, Fabio Estevam wrote:
> > > >>What's the commit id in Linus's tree? I don't see it.
> 
> Finally:
> 
> commit 0672d22a19244cdb0e5c753125c1a55a120db5d0 upstream.

Now queued up, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
