Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AEA1861B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:34:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3crdiGXnbvKAAoAZ9fES6gXm1tiiYagKoTZea5i+t94=; b=jxY8YFV9wL8K5d
	Hh5rwLdUsud1KYSGlSadpEBY2soxYcOVpCsiOQjZg61o2Y9vW0vEgYm7ZCRKq9BGsjfBlpbSJNVtx
	bFx5kjB2obUtibIQ7MU9pQfLEKEelAMDO/3FK006AZoBDG7pfheoWL0OG9eGAJBmTXbju4m2/xOsI
	M+D/rYU9tPrFFCALOai6dIhzlqo5N+GdzfhD85VPEa66wMpCVrrcDDEWhs5obIHKTgjDwVXpAsiyh
	qBtA7Jiau9LRi2CZYYT3/qeK8AKPZHDnFFG7zvI5/I8UUSVgkyQ0/2WkOyqgaxFUh0OPFusn277dN
	iU1lTmDnN2DZPOX25L4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfa2-0002Wq-G5; Mon, 16 Mar 2020 02:34:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfZ5-0001s9-Pm
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:33:17 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92B57206BE;
 Mon, 16 Mar 2020 02:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584325995;
 bh=JECNvcwgpBCM8o9+C4c1LowfMDmUIeZF7Y+YMfYbyQY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2ff1qLXS+iJ0mRFvywRJpgkqmkJRDQUzJtasC4snv9dFEbWMnpN8z9nldKCs/nWRz
 grOQkoeW5Tpi2uN6/U8i/WwVc2MYzBhjdLvomg0LHhOaytjUAQnmiRuVsRS/8obwW+
 b7F/hZEG6p9C1nUQ2E6O3V6RqG8/C/jSAIg3VHy0=
Date: Mon, 16 Mar 2020 10:33:08 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH 2/2] arm64: dts: ls1028a: disable the felix switch by
 default
Message-ID: <20200316023308.GW17221@dragon>
References: <20200312164320.22349-1-michael@walle.cc>
 <20200312164320.22349-2-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312164320.22349-2-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193315_909408_7AAC995B 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 05:43:20PM +0100, Michael Walle wrote:
> Disable the felix switch by default and enable it per board which are
> actually using it.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
