Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEA2ED752
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:52:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vij4hd6l7oJgLmwXt+IdIyWsxBSyXJiQx9jQo97IkUI=; b=bNBPT+FBAPRX5k
	it7p+YPGomIgqgtmYB0P9Z0wO4sBew2n9GTuHH7NHJW/ZDF1rR/+9g1y4QS+nMj+zPVgS3tyNNCUG
	By3I5PoTY0K4Hzujak6FLIwJo/KnVVJH5aa29BhrNCdK6NSLplTEDqDgrJoWS7NQfzMBqnHAWrHwE
	hsvMKyuobiBh3a7OSY+G9zCRNBNBVU1VuvhV1FhmFVziswawR6s+l1lWBApelu/SIpds72hGiqxXC
	mWdvSlyiZwP+5M36X9kU6K7jf0rbIsTfEbDQtk5xVBbTj42WPM2+z+fOqynXl4hJWRD3ZJ+87A4kB
	O+8+Lgz+5pPsoCuvII7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRX8-0000l8-9i; Mon, 04 Nov 2019 01:51:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRWy-0000kl-7x
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:51:45 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55184217F5;
 Mon,  4 Nov 2019 01:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572832303;
 bh=i/t4E/d8x2s1PbrvEGG/bDDGFhRvRZ77Yjugxqxg3N8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I1dOR6SqaDADSs33+pBWSCwM5mN/zQ6ReKld+h+Ic6h0y50E5QXkAsA3F7lY82qAN
 ub4VXUWkM/uI8SFCnJKyFtnNEVAMvlgr+OHmpOZ+g9NogUkMTknJNF3Rw4BYLJ1+vy
 FVh3Q7BvkIIESgrzI20YWPkmkjvjyLf7Q07MscPc=
Date: Mon, 4 Nov 2019 09:51:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v4 3/3] ARM: dts: imx: add devicetree for Kobo Clara HD
Message-ID: <20191104015115.GL24620@dragon>
References: <20191026195748.14562-1-andreas@kemnade.info>
 <20191026195748.14562-4-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026195748.14562-4-andreas@kemnade.info>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_175144_303993_AD825CA2 
X-CRM114-Status: UNSURE (   8.80  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, marex@denx.de, Marco Felsch <m.felsch@pengutronix.de>,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 09:57:48PM +0200, Andreas Kemnade wrote:
> This adds a devicetree for the Kobo Clara HD Ebook reader. It
> is on based on boards called "e60k02". It is equipped with an
> imx6sll SoC.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
