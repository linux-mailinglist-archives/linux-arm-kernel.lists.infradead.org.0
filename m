Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94180E4186
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 04:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/fvZmkv1pYxmQPnwkjXweR8zCMF82dfTDJm+/9Hifg=; b=fU594iAkr/oiwf
	GgXHDEMVYc49/HTL/q11LiYgmtwuf8Y3PEEtVUef+lw2Qp5erzxnaRTZOEWKmX1gGr+zxyCcfapxJ
	gwhCgcl5y71GoYnrGLO0w9a+8yKO82h6DrqInA+Z0u/hUh/nT6Flz6AUL1/vg5mJauFuJrwoLGS8F
	C+2jxxK9grzYUflimuqZopxB0hu475ANALANSoJIZ/7NCdXzGvylhxWmqtfRj9kgSuaZZql2rMoOI
	QXiD8fvq1k9B6sHXHHDRHSyv0kIVEHT2rR4+qWHH9UrUoaFfoJUCGf++Xj8pw1hKeBIrh4xZnrIwr
	a/0nOaGSCpcWdPFcysmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNpO7-0001ls-RJ; Fri, 25 Oct 2019 02:31:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNpNz-0001l5-JG
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 02:31:32 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEC7B206DD;
 Fri, 25 Oct 2019 02:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571970690;
 bh=wS+ZqOi0AxyDhn3tjgIiQc5vD2xB4fXHjduh81AOn60=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x/kHHoHqs74Cg37pKPiTkfnrPUKgh6AM+ieR+A4dSF5PHEy8UzPbyiASNrXJ5IleJ
 QvfPq/e2LqArQ++vhO5SPkcoXil9olRQQ8TkzbKa9vpyo8XXja+HceR/878vs1z0+M
 bhyMKZD8vHeQzhfxTtLX57QuGtooEj8U1VBgu7l0=
Date: Fri, 25 Oct 2019 10:31:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v4] arm64: dts: imx8mq: Init rates and parents configs
 for clocks
Message-ID: <20191025023110.GA30015@dragon>
References: <20190728152040.15323-1-daniel.baluta@nxp.com>
 <20191022161919.GA3727@bogon.m.sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022161919.GA3727@bogon.m.sigxcpu.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_193131_654643_F2AFB5FF 
X-CRM114-Status: GOOD (  11.24  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, baruch@tkos.co.il, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 festevam@gmail.com, s.hauer@pengutronix.de, angus@akkea.ca,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 Daniel Baluta <daniel.baluta@nxp.com>, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 06:19:19PM +0200, Guido G=FCnther wrote:
> Hi,
> On Sun, Jul 28, 2019 at 06:20:40PM +0300, Daniel Baluta wrote:
> > From: Abel Vesa <abel.vesa@nxp.com>
> > =

> > Add the initial configuration for clocks that need default parent and r=
ate
> > setting. This is based on the vendor tree clock provider parents and ra=
tes
> > configuration except this is doing the setup in dts rather then using c=
lock
> > consumer API in a clock provider driver.
> > =

> > Note that by adding the initial rate setting for audio_pll1/audio_pll
> > setting we need to remove it from imx8mq-librem5-devkit.dts
> =

> It seems this never made it into any tree, any particular reason for
> that?

There is some discussion going on and I haven't seen it reaches an
explicit agreement.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
