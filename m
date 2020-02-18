Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028E1162B41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:03:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njPTr4ZmsvENdqE0AthnRKuvxfLkgFanC0vrQsIL8B0=; b=CPFjRrP9LFDoEF
	1bzf6A6utG8D9DhtRErmC4NTWd2ZK23iAIDcTY+Px5+7ynoGvNiTbiIBZIWNQfPi4HAriQtXkwLOK
	vr1EXPZQ/DV3DbWZYP6jGAKbrLpfDrM8toYP28MscG7SG3R16D6L0hMtUzPjVx8XR2ZcsYfj5i+QM
	I2W+QMZueXHVIwNPXk+LJArGQZbHCZsbitdkh6cmkkd42Qdw/S30PKj2B5Ao7QPPH3g4kQqMHA4LT
	b9OmBT42BGcnunxUkw6mAczUo/uVbcat4ChTul6C+SaZgo9GyMXubzxchkhvLK59xkHUsInOdwlzV
	oC+jaSLmoY+LuUP0vZPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46HV-0005dO-Nk; Tue, 18 Feb 2020 17:03:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46HI-0005ac-Sp
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:03:22 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 752762176D;
 Tue, 18 Feb 2020 17:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582045400;
 bh=4HPxvqnC6UqFtjlcs923XdmHSklZVIjwOZJGhLHI9E0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=SIoO0LaSqKVcr6DysnyVNulKqi+wnRRx/DTyXMXVnbFml/Lt3Z2DVAORt/kAn3jpx
 LxnFENKsj1Chh13YvUoUStL8WovXF/f1ZMO7bPay0AHy00m2/SvWixBYzMygKg2BNX
 wFwbzlTQhi+/9Nv2wfCDXcjIN99kQGG++yp0BCvw=
MIME-Version: 1.0
In-Reply-To: <1582023806-6261-2-git-send-email-Anson.Huang@nxp.com>
References: <1582023806-6261-1-git-send-email-Anson.Huang@nxp.com>
 <1582023806-6261-2-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/3] clk: imx8mm: Remove unused includes
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, festevam@gmail.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, peng.fan@nxp.com,
 ping.bai@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Tue, 18 Feb 2020 09:03:19 -0800
Message-ID: <158204539974.184098.18375010474603889245@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_090320_955928_7CB2B06B 
X-CRM114-Status: UNSURE (   4.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-02-18 03:03:25)
> There is nothing in use from init.h/of.h, remove them.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
