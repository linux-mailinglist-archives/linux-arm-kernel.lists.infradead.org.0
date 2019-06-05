Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1824335944
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMMBwVd1EaNrJF+xv8Msz7wbXgP+qpT/xJzxUNgHL/A=; b=joUABSOciY9ktr
	6zNTkMgCyjgV+I82rM+S8Eg0ergm6ZylPC6Eyh5i2WeZIh3kBX0z8sc2OGGiYOrek65WJNE6zyZ9f
	MG0OsnmFQXXWL7bvW+S7xfMrgIhbW4TmkZ2dCePzYBMdUCcpQTVHb5eT39DaTT4Ih5jLC3pZl4d1j
	deidaF29Vvw2eRyZ8smt+iTwMbmRo6LNOleBxgcnSJJ3hhbEjgdS3pzpNrlDimFgqhIbHbXWL2Xg5
	sTrM9UMYilsGwv7cVnSbFbvPPCiIxFFxpRYHm2ygxllmctnsQ0DCYP552J4D3hP6XzB06LWrBDfmw
	ydcjzskmUnHjpEBohk9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRrs-0007f3-OL; Wed, 05 Jun 2019 09:06:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRrm-0007ef-A4
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:05:55 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DE1D2075C;
 Wed,  5 Jun 2019 09:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559725554;
 bh=Pz8YyhuVAwCFqXMPjBkm0rXnp/wYpoIIb3ZnyUKQR9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KXhfq/jef0DTyI4dpjhJOr/cbHlgFXdhlDWgp6xowWFON7r5FMh/3IF6Agq8QmeQz
 4flXb7AgIdZRiCFrGMfXQD7vZ4XHbCsv5PHPV91oSLyOZDqxZs57ayVjrVXl8uRRLK
 fFOEhex0mtbrW+u1E6OnnEeicHHRPvBZ0CZe5lkg=
Date: Wed, 5 Jun 2019 17:05:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
Subject: Re: [PATCH v2] arm64: dts: fsl: imx8mq: add the snvs power key node
Message-ID: <20190605090533.GK29853@dragon>
References: <20190528161101.28919-1-angus@akkea.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528161101.28919-1-angus@akkea.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_020554_361365_1C18C5D7 
X-CRM114-Status: UNSURE (   8.97  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Fabio Estevam <festevam@gmail.com>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 09:11:01AM -0700, Angus Ainslie (Purism) wrote:
> Add a node for the snvs power key, "disabled" by default.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
