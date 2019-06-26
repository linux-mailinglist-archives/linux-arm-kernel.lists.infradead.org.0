Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C4F57B88
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9WKnlIFFMRw2ofoeLQdqpGbmvyz2NbfIReOxiYtL+8=; b=pGbcIymEG5RDVi
	mn0AQm7WJ9Tr06hRgeS4pXSGNo4fhRHChbQxWIOtsTO35mX4TboanlB2Vf3/5SEZ5EGD9JxQGRJXC
	ZCgRooYulEeE9QeGQv8ekLm3RA+k8FEWWks7E9tgwJri5vLo95qWjlSVPwd+o4F9X1SYKPHxDfhiR
	RQHeMkFsnB/MVyoT45bjjhaCdTNn5kX8CIdoUZ7LdMuC9e+oX3Hx3jOOygfeXlhAnprFteQlMzldm
	Xd/yjgWFbXKIdZSFwouH33err/9KC4NPOML6oQqV6PYjwJ3HE1n6ZaTm2qUyQGL/4L7zP7uVHRT6d
	FHWFezryIjYI9w3yixSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN3h-0005kl-0p; Thu, 27 Jun 2019 05:34:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsq-0006ep-Lz; Thu, 27 Jun 2019 05:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GWrM+dN9D4Et8TcclfTlE9xf6mmy1IE2t2p8pJf1NRw=; b=RwrHTsZ6F4/qwmt3fQEuNj8OGh
 pjhIVad4LrGEXFe/xv9hVBaO4MQgk9ygJk6puWsJYBWoIscJ/HEvsuqNsO9lhsz7nYJV8pB5rYC3s
 gZG9pTuNgyWstl3t9nG5t82/ETHdzxblv75ucKNSKW8rtfO8hBoBYav4jkaUZN4+cN7cQPGskIhAn
 B26MuQbKHrAKprrymXgvuW4MYRvu6bJlemmjF78dDwSM2OPPrbO71UX93QBRCe17zk+ODxal5gA/U
 my2fx3p5DIqEY8AdvobxHCMjJmei3SjgRoDs2BETHtp+4CHUJHjqiyOUXOVYgr8bPPk0i+CkPHl9d
 Y6nqzziw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGKD-0006ri-Mb; Wed, 26 Jun 2019 22:23:35 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hgGK4-0004R2-4U; Thu, 27 Jun 2019 00:23:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: rockchip: add core dtsi file for
 RK3399Pro SoCs
Date: Thu, 27 Jun 2019 00:23:23 +0200
Message-ID: <1733690.4bxWPRXO5t@phil>
In-Reply-To: <20190530000848.28106-1-jay.xu@rock-chips.com>
References: <20190529074752.19388-1-jay.xu@rock-chips.com>
 <20190530000848.28106-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_232333_786824_8371BB42 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
 linux-kernel@vger.kernel.org, zhangzj@rock-chips.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 30. Mai 2019, 02:08:48 CEST schrieb Jianqun Xu:
> This patch adds core dtsi file for Rockchip RK3399Pro SoCs,
> include rk3399.dtsi. Also enable pciei0/pcie_phy for AP to
> talk to NPU part inside SoC.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

applied for 5.3

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
