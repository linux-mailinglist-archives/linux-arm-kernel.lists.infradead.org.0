Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90C4160A23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 06:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXJhzuOhylZ4v0Yq/irY0ne7TkIPG1tsczQZqp/zlSU=; b=PQ35eJ6uRD+eQp
	3jpA194qTDZKY08QuwHmmAJGIqByZ6E9Q6JoQzuHHL6sKnGjcRI4LlaCTNKK619p+k4jc5RfNWpIg
	xMaDJaSxa/JKS2X7PSTFBMrVMMFgdyjC6ZheLv8HhR3LK3lw+xnoJRvhbZawAyNL9SgfEe0Le7FVh
	Y7NS4tCFTfeXU+6vXiQ/bCMFZhlSWVGUidGNDbcMBWNG/CJCfJCxKuRozArCNbgehyUP2r4NPHY2P
	Kkc1HteGm3E2t0b3pofHFT5YnE7/kZdWqcEXCW08n2kpDWYzud3GwnIjnKEklAKOG5ORK82Xxz/mD
	8N+wi6z8QnlWg2ktd+6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ZL6-0008Ta-En; Mon, 17 Feb 2020 05:53:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ZKv-0008TH-PH
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 05:52:55 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCEAA206F4;
 Mon, 17 Feb 2020 05:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581918773;
 bh=3XZW45+oxiEd21pjOWOS/xVC/P/jx/HU3Cb4pITE3fw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JqETqfL1YBqAvtHF2RyHkOTqG5cmAmPwE4k5mGeoZTCzh7dkTO64l6Ji1Vb7Vjgaw
 cW9NWvgHNKBqOABc7ypk7UGIeKFonKSY95I1ug/KaPQc/oyChxB559B3aAkqtzqXpi
 6fAWeyngRMt5SOm3kvRFJ9GXX5eepwXlmifhDhx0=
Date: Mon, 17 Feb 2020 13:52:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: support external trigger timestamp
 fifo of PTP timer
Message-ID: <20200217055246.GD6042@dragon>
References: <20200211045758.8231-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211045758.8231-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_215253_842661_AF7195CD 
X-CRM114-Status: UNSURE (   8.70  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 12:57:58PM +0800, Yangbo Lu wrote:
> There is an external trigger timestamp fifo for PTP timer
> of LS1028A. Add property fsl,extts-fifo for that.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
