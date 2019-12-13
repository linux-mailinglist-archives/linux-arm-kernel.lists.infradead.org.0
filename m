Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084DF11E176
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 11:05:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vpa6ounRIUaWnGO3AMse1KlqimGvG673rKIm12cnBAE=; b=dtQABnqsyaI2uJ
	TAfk2zEaeWjC4SY9ZPcXSwxsoc4ezBE0vB9Ok+AytGo5QGe1xzdLfZTRbvA7jbnYgLjeQl7M7+qXN
	4xlyI6qki13CDvC7+/UexD+70v0ucsEVBxSAYQFUXC7KgbeJVbfMaZbfdWws7umQFd4J5pZHjfTdR
	6MsTI+hxxzYGIlJlb+0okW5xgmNOSCsTAcR2F9Y4y+2vrLwu1g0ctrAkz+KZBR7c89ZUynnF7v7U2
	Tuo6FRQt+BZSESOSMmCZ6oUESSM2n+W7ED6rMk+y4a+rfPzWxx1o+3nCmxwo0Uutu0qFX4UOZDpaw
	B1YtnjN81csmy/Xyq1iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhoe-0005q4-Lp; Fri, 13 Dec 2019 10:04:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhoT-0005o3-CQ; Fri, 13 Dec 2019 10:04:46 +0000
Received: from wf0651.dip.tu-dresden.de ([141.76.182.139] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1ifhoC-0000yW-Aw; Fri, 13 Dec 2019 11:04:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jack Chen <redchenjs@foxmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add missing cpu operating points for
 rk3288-tinker
Date: Fri, 13 Dec 2019 11:04:27 +0100
Message-ID: <47785260.740ClddZN9@phil>
In-Reply-To: <20191202153540.26143-1-redchenjs@foxmail.com>
References: <20191202153540.26143-1-redchenjs@foxmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_020445_569914_E03686AD 
X-CRM114-Status: GOOD (  10.45  )
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
 robh+dt@kernel.org, Jack Chen <redchenjs@live.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 2. Dezember 2019, 16:35:40 CET schrieb Jack Chen:
> From: Jack Chen <redchenjs@live.com>
> 
> The Tinker Board / S devices use a special chip variant called rk3288-c
> and use different operating points with a higher max frequency.
> 
> So add the missing operating points for Tinker Board / S devices, also
> increase the vdd_cpu regulator-max-microvolt to 1400000 uV so that the
> cpu can operate at 1.8 GHz.
> 
> Signed-off-by: Jack Chen <redchenjs@live.com>

applied for 5.6

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
