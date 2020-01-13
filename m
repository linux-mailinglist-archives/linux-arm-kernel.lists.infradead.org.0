Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C9D138DCC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:29:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqQFYoTbn9j7AVOP+WmHl89hqQwW261TpTNa951WmdQ=; b=AbuD/y2r6OJ44o
	b59GG9+SIF8a2hPsS4vb7UjMXvBb6U4AG9u8CTNwzYEnWQHUa4piZVn3qTHmfx7aeB5ZutLBjAzcT
	M8CT8XeT5+VHCPFj1wH7Xco5EPJPOCQSJ3uZwURICVvam1AO/UOJGVyvCk7YPtFqG/46jI5i8+Mc7
	+atqcMlwXCn5lgQc5CeCuuq+VTLgjiz7DBhBZZ2vTro/HnNUAohtPVlIRHUTJydG0krS+SOAB+iS9
	+N8RzSei3xuystyhMsqIJ2VipablIKAM4sDQssp6P6JiD6H6RH0/vYqjg0G2KbpCcwMtNNXKgpStw
	MbMNR+Zo8jtVkOT/TgDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqw1n-00012f-8a; Mon, 13 Jan 2020 09:28:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqw1d-00011N-CA; Mon, 13 Jan 2020 09:28:46 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqw1Z-00021m-Ph; Mon, 13 Jan 2020 10:28:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [RESEND PATCH 3/3] arm64: dts: rockchip: Enable sdio0 and uart0
 on rk3399-roc-pc-mezzanine
Date: Mon, 13 Jan 2020 10:28:41 +0100
Message-ID: <7106354.sWKCicHN03@phil>
In-Reply-To: <20200109154211.1530-1-m.reichl@fivetechno.de>
References: <20200109154211.1530-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012845_563646_020E574F 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 9. Januar 2020, 16:42:10 CET schrieb Markus Reichl:
> The mezzanine board carries an E key type M.2 slot. This is
> connected to USB, SDIO and UART0. Enable sdio and uart0 for use
> with wlan and/or bt M.2 cards.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
