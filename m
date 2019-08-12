Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEEA89E70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDkfGRj2Jir6jlYVhWdxm5jARjq3pEz8qvdqSg8Nw8w=; b=jIEwRRDknd44zm
	SwrBFtCMDxTCYCw26Z+v9rkQJUQfIeJjoWBivEJVK8U2+2W+Pr9R53nWBKG4V5rlvXcvPvpxnpOLW
	3p3aFQpQPW/2tkX0BoHbO7kRRcd1YXTfuCQGR0A3QpVElcJXYWDJPVlJtHRYKYdDFEhsrljzx3xLc
	GfB4KVDrwv0cJuixplzRGOhS01D5HmyRc0wxcRzBzBcQyk/e3kfxI9e2xlksg+F91PUNdobf/mu6S
	RtuNQKo2tIEgkonu2gXVVSIsc8blWOZ1EtmyjOuL3UKYLVTXewfIwI+NPil2C3r2tU58igm7CCuJn
	7HxgO+yIyGUAHvYo/FBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9Vq-0003BG-Pd; Mon, 12 Aug 2019 12:33:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9VT-0003AG-OD
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:33:00 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5359214C6;
 Mon, 12 Aug 2019 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565613179;
 bh=aLWVPZtEhIC0ZToFy8HKYrFEJRZhfGRRAZIOZ4qH66w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CyNEbnKcMBrF2RJKc3B5a3Jk2xvrM16+jGHdh6O/axkKJbUjtLWcFxPzuL+1P+EXy
 RUqVEMkW/BX+X6DdWbt9T9XIlYy4sR4Sg4ZU7swKek01UB5EMxVvitRgJAOXyn6spw
 VyojDy8iaxt8KMXx8ctdioAEApEYP9VGAwJD6Gao=
Date: Mon, 12 Aug 2019 14:32:46 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V4 1/4] dt-bindings: arm: imx: Add the soc binding for
 i.MX8MN
Message-ID: <20190812123245.GB27041@X250>
References: <20190619022145.42398-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619022145.42398-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_053259_807702_1EA998C0 
X-CRM114-Status: UNSURE (   9.12  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, bhaskar.upadhaya@nxp.com,
 manivannan.sadhasivam@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 andrew.smirnov@gmail.com, Linux-imx@nxp.com, u.kleine-koenig@pengutronix.de,
 devicetree@vger.kernel.org, pramod.kumar_1@nxp.com, s.hauer@pengutronix.de,
 j.neuschaefer@gmx.net, robh+dt@kernel.org, vabhav.sharma@nxp.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 10:21:42AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch adds the soc & board binding for i.MX8MN.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied 1 ~ 3, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
