Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 257FFD9A5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 21:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7S586g8hCvbaropWcSZXvnrVTBDaxg8IRbYMwmkPW+s=; b=Xf9W5fS8ei53Zo
	Z0L9CvNYIgUohM1P3oqEAZzukQJLAJLjV9DeQ9Zn8UHkEZgo6AITqzACDNfGTwsf3+domf0hrUdmC
	KYT1Tjj+/MC73nxoNbNiewrog1Wcn/8NhB4nKx3lBifxH3otaQQf7yN4gCRxuMKcAFp5gwZKV/Sxs
	rPSeT/zkyp+ed+aOG5aI1ewK9EpbZOgGW5k7/jYrtKmvFcWr9yaYeGO+Oykvdbfuia3P7KHwAdkb/
	6z99Lm8ArxpGqOP/pWzXgRc6JQ4MhlONMiI8zJAIPWJZAG9tDQ8K5R9WYgVKxxVjz3HuFdxvg/qK0
	T4HgrZLMnHHRuZQKKBbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpBI-0004cZ-Uh; Wed, 16 Oct 2019 19:42:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpB9-0004a1-NC; Wed, 16 Oct 2019 19:41:53 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iKpB5-00069G-QQ; Wed, 16 Oct 2019 21:41:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: rk3399-rock-pi-4: restyle
 rockchip, pins
Date: Wed, 16 Oct 2019 21:41:41 +0200
Message-ID: <3153873.PTcAyu4JSx@phil>
In-Reply-To: <20191015205852.4200-1-jbx6244@gmail.com>
References: <20191015191000.2890-1-jbx6244@gmail.com>
 <20191015205852.4200-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_124151_907370_CB75766E 
X-CRM114-Status: UNSURE (   8.76  )
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

Am Dienstag, 15. Oktober 2019, 22:58:51 CEST schrieb Johan Jonker:
> The define RK_FUNC_1 is no longer used,
> so restyle the rockchip,pins definitions.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied both for 5.5

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
