Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF081812EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diqV/j3BCpjapCv8jlvxgiaZ9rkzChw15qhzS+pwo6g=; b=eIAmxJ5TLtMOAG
	sOT9eVSUYCShh58eVKYXjyIISidakH6NMh36R6oeBl4XHjaTyJ9iX5gIZhCjPw8awA33MDfGSOj38
	4NQEwGTLta1LLy9bwHlJ+UO9vFzKO3xc3J+BhibZhPj9Y2PcxSUYKDw1us87yPfAsYY9i05Nc8lqZ
	9kpCpbL1rvY6CYsIbPrTeeSd17YytXG8wCL2RGX1s5wqVkTXDtmMqCz3M6H5LhM2eVCUy++7AtMAK
	GgKpqz3CmIlTalWRrlEx4Y7o75CVbsVjHk2QmxAjVtQMFM7oWBBte38D1iCVBGCbr4552VtQOuyS8
	bQEsh0C3GCBl5tICNirQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwjh-0000Du-DX; Wed, 11 Mar 2020 08:29:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwjX-0000Dd-L2
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:28:56 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1D1D20848;
 Wed, 11 Mar 2020 08:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583915335;
 bh=AkNwWmijrRLrPwJAGAB1M4b0z3v3ic+ZDa6uWNJazkw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MmPG6mrrEm6wgI3f0MFM9dBaWp/1vgynHoRqpAPlO602v1jtAX26XWn8YrcnPD3I1
 2PolkjimR5gK6RZlIN6KCc9tYhvFurGcxgi01xSOunKpBi7Nmb9tz67j6Qwa3o9OR1
 GFvnsqqIZHZUUTmQhhCFC6b3tpjrZyTizoK5nAA0=
Date: Wed, 11 Mar 2020 16:28:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v4] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
Message-ID: <20200311082845.GC29269@dragon>
References: <20200227110246.8624-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227110246.8624-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_012855_716745_8CA348D7 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: s.riedmueller@phytec.de, chf.fritz@googlemail.com, robh+dt@kernel.org,
 kernel@pengutronix.de, c.hemp@phytec.de, contact@stefanchrist.eu,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 12:02:46PM +0100, Marco Felsch wrote:
> The current set minimum voltage of 730000=B5V seems to be wrong. I don't
> know the document which specifies that but the imx6qdl datasheets says
> that the minimum voltage should be 0.925V for VDD_ARM (LDO bypassed,
> lowest opp) and 1.15V for VDD_SOC (LDO bypassed, lowest opp).
> =

> Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.M=
X 6 SOM")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
