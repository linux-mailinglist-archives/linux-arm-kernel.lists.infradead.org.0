Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A582603D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MNmsMFqAuMBrqK/eBrk1S2d+zlZQ3aT4UxwVGkvBKw=; b=T9fVC+daid7p1J
	/dPiEafmFjZXgZeST3FL6XZPDNDZIAb3Yf204QLOzsz4g9X8Fb6UYEkd41RoKFLkNmTHstemFjaj9
	0YnECG18arUb4oBuOIYkZ1LvBF52TDkW+JzFqFjYOzbk7LdsPPEDj9uqDhP2wiZzn5egXOtHkxn91
	WeKqDs/jKT6qMpZjnhE6uvqBFdLDcn7lS3JLOuxUpc1kBjjXNYlown8qbQ2tViYSRwxjB7gVs4vIo
	fhHjndvFfMn1irsclRtMppGF95MShz6ACRQXmfyd95pgPIYMV0vju412Ytoc6YQH1wYZDqKi3QUsi
	kungE2ZIRyPuUfr7Anpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNL5-0006zD-7v; Wed, 22 May 2019 09:15:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNKs-0006ye-L7; Wed, 22 May 2019 09:14:59 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hTNKp-0008JC-Ur; Wed, 22 May 2019 11:14:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: Use the GPU to cool CPU
 thermal zone of veyron mickey
Date: Wed, 22 May 2019 11:14:55 +0200
Message-ID: <3939310.vedCpJl8Cg@phil>
In-Reply-To: <20190520220051.54847-2-mka@chromium.org>
References: <20190520220051.54847-1-mka@chromium.org>
 <20190520220051.54847-2-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_021458_836850_9AB8737D 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 21. Mai 2019, 00:00:50 CEST schrieb Matthias Kaehlcke:
> On rk3288 the CPU and GPU temperatures are correlated. Limit the GPU
> frequency on veyron mickey to 400 MHz for CPU temperatures >=3D 65=B0C
> and to 300 MHz for CPU temperatures >=3D 85=B0C.
> =

> This matches the configuration of the downstream Chrome OS 3.14 kernel,
> the 'official' kernel for mickey.
> =

> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied patches 2+3 for 5.3

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
