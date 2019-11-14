Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A475FC524
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2siqOQGpJDrAdcPse7TGVRRP0m9irug5ItKXlDQG0HA=; b=ry+hd1zeGGzisW
	Qu/V18O0Yt0Omu1OcdF8e4dbZx3SLtxWmtMleax7EhL/n9RFbfezz75+rBS83FPIT5896ybqACfs/
	umlXqMhu1mp+gXOnA5LgL7tja0B9LJpU3XkgTN48OoEKQizB8SVQ4mLdQK01uQUHXN2aVQuZqM9qX
	u/HylcsvbTA+QkEFv6Jmyd3U3X62jmalbQv01TOvcX7lE/XQVgNbsMaoY5GpFGbhdlXF4+3H/wj16
	cDk5HVRIevZ+DHYeAlRy6aWCUHG1ua8MHcpmmuvvRasuVlU75EOO5QTxwSKBzG4GwAVzb9Xu48lUX
	9F1SB46QTNPzFWzSsTjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVD4A-0000fO-Ow; Thu, 14 Nov 2019 11:13:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVD42-0000eQ-1i; Thu, 14 Nov 2019 11:13:27 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVD3u-0001yy-Nm; Thu, 14 Nov 2019 12:13:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI Sound on rk3399-roc-pc
Date: Thu, 14 Nov 2019 12:13:17 +0100
Message-ID: <35001517.YkhzgzjICv@phil>
In-Reply-To: <c9db5599-743b-bb90-999e-5989be6556ac@fivetechno.de>
References: <c9db5599-743b-bb90-999e-5989be6556ac@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_031326_239102_E7ECC570 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 11. November 2019, 15:37:41 CET schrieb Markus Reichl:
> HDMI-Sound is the only available sound card on rk3399-roc-pc, enable it.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6 (probably)

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
