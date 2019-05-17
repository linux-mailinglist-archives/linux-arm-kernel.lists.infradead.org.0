Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C87216F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 12:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6PlyeNFtSGNPupvSdRVj/Rxdi73q5wts5qn1Ka0XEoQ=; b=h4JkqwjN2AqYgz
	lJWYHpYLZAjVCG2AaoqfyzQC0QG5xmgXGwQw0JmvkYnzzpznKxWThisHlI68z7ukHoOpE6nb+sj2s
	Q7rI45gMPbKESSeTEoa8InOrPlOBFh/GShS3WBnpG6w5FnhxcbbmQIEzDwCh48R1Bep08r/qghsmA
	+ZUdXcfjzoOEcaTmm8PizUccFgGFBKKlNNqYoGrTGfvMBJul8bJ2mpGuX093l5AoTTUgvYProIMsK
	8rvukxqC29uWolfzrqolxFaeO5yavE+F+d8wF2n7R2pnRmVtbxfvpdbLqqGYxHZEoojZNs3Ows/4E
	TzYHRtr7nW78swKBX8ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRaBo-0000Pw-4e; Fri, 17 May 2019 10:34:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRaBg-0000PA-Te; Fri, 17 May 2019 10:34:06 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hRaBc-0001Qh-LY; Fri, 17 May 2019 12:34:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on
 Rock960
Date: Fri, 17 May 2019 12:33:59 +0200
Message-ID: <2079428.WrHPkSWNQI@phil>
In-Reply-To: <20190517040625.14607-1-manivannan.sadhasivam@linaro.org>
References: <20190517040625.14607-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_033405_109456_58B2A2D2 
X-CRM114-Status: UNSURE (   8.80  )
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 17. Mai 2019, 06:06:24 CEST schrieb Manivannan Sadhasivam:
> Enable SPI0 and SPI4 exposed on the Low and High speed expansion
> connectors of Rock960.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

applied both patches for 5.3

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
