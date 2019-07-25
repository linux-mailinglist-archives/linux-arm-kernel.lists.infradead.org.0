Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17B275925
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 22:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpXMIG7gfmoSYJVPhox5RTwYoW2BocTI8Dy8AfmRZto=; b=FbOjEr+atOBJHo
	vXh9byzhNcyZYgNd9lLq8RaEo8wq4k3+k1RiwRz0QAnyFN23kX7uPVg9N6vO5Lakhr7mPus4F8IVN
	2OYJY24krKu5eJg1jeS5cNmDwpLtLjnZkWUSJApS395e5sR6Uph6FF39vnQybmdSNGGzdkg6AWFN8
	Oahfb+1C4qRq4qpL6Ojjtu74bTzi2nmBr4NlMvgU6ebKyLVwbwehtyImw2r4QLxdvnbERLLSH4BbW
	9GUq0hWEyYgtGx1I342C3n7B7Ci+s6IoAwKygqbZEZy6bndY52e38rjB9MrDF+U7mb6f5JP6wFhL8
	3Zf5WdrXqBjhxzQsWwIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkiO-00041s-LM; Thu, 25 Jul 2019 20:51:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkiD-00040s-Ae; Thu, 25 Jul 2019 20:51:42 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqki6-000216-NC; Thu, 25 Jul 2019 22:51:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v3 3/5] dt-bindings: ARM: dts: rockchip: Add bindings for
 rk3288-veyron-{fievel, tiger}
Date: Thu, 25 Jul 2019 22:51:33 +0200
Message-ID: <9603810.NFohB8vNa9@phil>
In-Reply-To: <20190725162642.250709-4-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
 <20190725162642.250709-4-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_135141_524999_6CA20867 
X-CRM114-Status: UNSURE (   9.45  )
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 25. Juli 2019, 18:26:40 CEST schrieb Matthias Kaehlcke:
> Fievel is a Chromebox and Tiger a Chromebase with a 10" display and
> touchscreen. Tiger and Fievel are based on the same board.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
