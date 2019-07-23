Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889C9713D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VnYUZdbpw6WowWsEiPJ2FIIZ/VrekVy7ZLSLy+x4sE=; b=IZfLX39/X6IvFZ
	Jf9f8MkZCDDYwsxpxSMHGS7JVfIAP6uHuQpIJth7jn5yBYDz9RaUKl+2boQFpYJGVbB6lKTq20yEs
	6JLbOmPoA85Xk+gg6WLkSqo3kLurfpp/PjfrecPqlOjadvp5AzCto9hJN61LPIpUKKFJQMj4rbxFT
	E2rVTnvdRJV0AfEXigRg402CPUttVJo2MQUFr0J+oYsGxbw0N8MdRqq3sPUQHyb4IQxd970K85qg8
	OFyk89oBatwjn8GvrzWRVcIRCRQ6ewYjoEpnv++xExNw7sFhXiEy6DLV8xENd6+rmeXG/lLAHGN2R
	dQb0GjEXTR4vixMlFgHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpq3u-0005dU-G4; Tue, 23 Jul 2019 08:22:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpq3g-0005d1-3S
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:22:05 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9410A21BF6;
 Tue, 23 Jul 2019 08:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563870123;
 bh=UEpHLw2BTW7NVSDa7sgWZdDQMF8+2ZePXFU/+YxVZEs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LgBqPWcUdCLSC/SsJMyE95XylurUiezBNzH6Hx9z5pjTQhpJelnGmJfwDKhC4TcQB
 i412Q4yyYDI1IK2lEPhKAkhz9q8p8K1noFLsjtAxaqYH0EEJtB06TgcSKirZTp4B+U
 gbvP303542GWWV31gOuhU/hZjiwNPxba/FoXhYYI=
Date: Tue, 23 Jul 2019 16:21:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: fugang.duan@nxp.com
Subject: Re: [PATCH arm64/dts 0/2] arm64: dts: imx8qxp: add lpuart ports
Message-ID: <20190723082133.GR15632@dragon>
References: <20190722082824.15022-1-fugang.duan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722082824.15022-1-fugang.duan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_012204_162071_6423370C 
X-CRM114-Status: UNSURE (   8.27  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, daniel.baluta@gmail.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 04:28:22PM +0800, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> Add lpuart baud clock and add serial alias for imx8qxp lpuart ports,
> to let lpuart work on imx8qxp platform.
> 
> V2:
> - separate v1 patch to two patches, one is to add baud clock,
>   the other is to add serial alias property.
> 
> Fugang Duan (2):
>   arm64: dts: imx8qxp: add lpuart baud clock
>   arm64: dts: imx8qxp: add serial alias

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
