Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031371A6832
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 16:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/kMOZwQFyWKSlO/OMeBfFdV/8Oq+2dgOpql/URUws4=; b=S4uVqoaLjw+QC4
	GGeSupkC2nWKGrP/NKvhs4mvy+rlImnX3JBMQEgM1Tim19LOdwL+LE0sJWHNS9s4rCieiIGpex434
	xo+8rfBLmy8qPfk78kzfDiZX7wyAjSS8DIXuud5NCa2WTRS1w5xNOiN2GdVIZZW+rhu3Ahh84ZToE
	kh1naoKRRAptbe5G4ADk2T3IfmyKx4LW7baQpO+5mF+uX7Wdq/2wnRvUTLEtvMQBtQb0RcVEdITco
	IutGmiycCup185MfTspEVPTgh2dMs+8sNc77N80NodlSN1xTT/ziWqZDv9B5dSreJJXWeIPOKmHPb
	EbCG8rRkL7fTrV+Cg4zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO08M-0007O4-FS; Mon, 13 Apr 2020 14:32:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO08F-0007Nj-Vs
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 14:32:17 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C0842072C;
 Mon, 13 Apr 2020 14:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586788335;
 bh=cG8nJZnXXu2zpiKMEPJZOwoNrpYPg+6gBdYhFrMKzBM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sNyVUNtXEsVJdoUKNbRkFq3CRsf2mveQbPWT989Lehp+oGTvitTyzDkMeY5z5w9+w
 62SDTOeex3Y+unfsq0/EGXTvhbrMkBZp50TQfwWpFFOI5wYCC6mNU/tKKZtyeA8hB8
 ykw5E+geIWmKCpDaMclGWoTOBIpsiCstPnAH/qmM=
Date: Mon, 13 Apr 2020 22:32:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V3] ARM: dts: imx6q-dhcom: Add DH 560-200 display unit
 support
Message-ID: <20200413143209.GC4722@dragon>
References: <20200330022222.1130643-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330022222.1130643-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_073216_044864_7A1199F8 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 04:22:22AM +0200, Marek Vasut wrote:
> Add DT bits to support the DH 560-200 display unit, which can be plugged
> into the side of the PDK2 board. The display unit contains a display, EDT
> ETM0700G0EDH6 and an EDT FT5x06 touchscreen controller.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> To: linux-arm-kernel@lists.infradead.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
