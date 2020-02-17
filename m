Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785E3160BA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:34:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sR92JS0nvqx/4kEEd/7RSJv5lrqvvGguZsiltEW1KLk=; b=eyrjU9h6pEgYMH
	4r33kY6G8FTSWtabFX4PCWShQ49b7GPu2pGCDel9BpMMVX0WfxGuQDpgRGDyhLR73bM7kD1JnGReO
	tRaCdUL1/MoLQfwqzFD9wDlBhm3ZCLjmlmDgzQspMFewQgvsOlGhEI8GQPvpIi5rhC+p6ZGsk0Hmn
	0c4Upe5rvawJTxjJ8YS9ui7r+NqKdpLJq3q/prL7uNuEc/oIpNem3gaotYM0WvL6Wo5ORkhi+vpz2
	Lysbdx7jJO3jX3iCZaZMfQsirP0sfY3CJLaVwX+VHnJhycACdtTBCU4G9sKMB0GMpIxhgyhhuu73+
	SK1YIFZ2/jupa0o4+Ypw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3av2-0007gY-DD; Mon, 17 Feb 2020 07:34:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3aum-0007g7-G2
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:34:01 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A16120702;
 Mon, 17 Feb 2020 07:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581924840;
 bh=tNBv8M1oz0oCkR1qBf0U014EsCGTKHhm13pHF8rCiyY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yko3PBE32A8ns5DNSSNyu8oDVlFZtm8RjsN96TZXUvG8MyRZS4Iziy0rEuP2ev2si
 2Wr3xN1BuYRXLnU5gO0EcmHtHnZ0aJjLAZ6SFicwl2+zrnhkKfWdl0QCx5wj3R9k2O
 SmdeJfDrjRv47ydbel5lnq4GSIWz6dtccUxA+iJo=
Date: Mon, 17 Feb 2020 15:33:54 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl: make clks node name generic
Message-ID: <20200217073354.GH7973@dragon>
References: <1581649180-26086-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581649180-26086-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_233400_549792_A396AD7F 
X-CRM114-Status: UNSURE (   8.45  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 10:59:36AM +0800, Anson Huang wrote:
> Node name should be generic, use "clock-controller" instead of
> "ccm" for clks node.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied with squashing, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
