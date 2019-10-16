Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429BED9A59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 21:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nD+eO9q0zjKNWfKE48+cK8INZ7SY88ygguI+u/IL87U=; b=eqdSRrFPRtJfdw
	pMSvWm0mHTF64Vj4hKGrYCLx0JvtLcqigCoE72zdjsmP/MgTB00ZNHRMD/IMUTjgkuGNrgw7S4Pbm
	wP7O35U9gbNzw2+KJGGsHrOYPjt2ZYm5Sdn5WdNB0h1ddHCqlHlSVAcv4eFYZvMSDLEAIa5CwMHcP
	uCUJWh09FYXhVRU08ip1/FXlEwiKTUUQjYXggpkC8e/y9fmV3VaK1YrnZmqDYhlwANozX1ZjHM9jJ
	Anbll3n6jgIg/TqNpTMw+YE+kpSpNqJEP7DSRIdUrTWlkuoStREfGTsb6iUN08XOy/fDg6AFpWVck
	jj9OcEk07mkwD6K5R4fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKp8S-0002j3-9y; Wed, 16 Oct 2019 19:39:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKp8J-0002i6-8Y; Wed, 16 Oct 2019 19:38:57 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iKp8D-00067a-46; Wed, 16 Oct 2019 21:38:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: rockchip: remove some tabs and spaces from
 dtsi files
Date: Wed, 16 Oct 2019 21:38:42 +0200
Message-ID: <14689689.bILFhtanru@phil>
In-Reply-To: <20191014210619.12778-1-jbx6244@gmail.com>
References: <20191014174521.11611-1-jbx6244@gmail.com>
 <20191014210619.12778-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_123855_450714_ED7A7EBE 
X-CRM114-Status: UNSURE (   9.11  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 14. Oktober 2019, 23:06:19 CEST schrieb Johan Jonker:
> Cleanup the Rockchip dtsi files a little bit
> by removing some tabs and spaces.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.5

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
