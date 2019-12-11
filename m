Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B52A11A15C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onOTyzfK8gLT4asv/dvxNNUNUWQ8mIet3XpMbl9zot4=; b=EtaMuVHe9TxjjS
	IpCOg5WEi/nNCATz+sJdOv9XhOTeqVb2FkXCJSwCz17P1lYowjlRLal8sTKdThh/QTQAG/YXM+IgN
	c2cFk0I6dvtLaIvwWhLnsfJsE4xI8130imX+l5OTxWhyoZa42ZWIHiKm6Fuy2UsC/vz5rnForE/uo
	0Sn/1uQPpD1T7HEGNFqKC+1nFNIjpJjER73JZmP92usof/Ko/jM5A7zeLfNReg8qpQVsEOKR0tmif
	Lim4UdrZ0hOCL2gks/1uEp4CX3xMLaJTeduA5/fXcM3d10cwLEZYs6yjEqckJU4oAKdOtUi6+TZXW
	89LDTdGDsgjHU7YyYzuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierlh-0003x8-VR; Wed, 11 Dec 2019 02:30:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierlV-0003mZ-DU
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:30:14 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C48872073B;
 Wed, 11 Dec 2019 02:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576031413;
 bh=frtUdnj+D71Mu+MJl3zzbeOBwOwnAhUFwCH2A9LwaKk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zjoeliSg6WT/5GREXL53EzEawKMEDzTPi3swgm9Dw5nyKrwNNWyxjAAMA/WVFHBTp
 BDakvErYX83z11XQH7u7tl0PWtusYnQd+o0/A5DXysOvmG15ooVjSts8aeyRXae5FC
 ZJI3104vBTVi4U600rcHSwo3Ai/MzRUOaOAkj2pM=
Date: Wed, 11 Dec 2019 10:30:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx6: RDU2: link eDP bridge to panel
Message-ID: <20191211023003.GC15858@dragon>
References: <20191202141705.31880-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202141705.31880-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_183013_487673_AE0145DD 
X-CRM114-Status: UNSURE (   8.79  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 03:17:05PM +0100, Lucas Stach wrote:
> This makes the eDP bridge chip aware of the panel, so it properly
> advertises eDP instead of DP to userspace and allows for proper
> backlight control through the panel abstraction. This patch is just
> to add all the required nodes, actual linking of the display chain
> will be done by the bootloader depending on panel detection.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
