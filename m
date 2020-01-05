Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4AA130660
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 07:59:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HBwJA2+1kIvB04nZAou+52c2NXd0djP+Tp+P0tIQJjg=; b=u9UlOnSKK5mt0qG+oXjP9M7XvS
	mo3nz5AShI8sgB03JVJr27hsBhtCGUo5BsIyojROirxdayS1Y+DCx8qoyxKvYbEeSiL3x1DPS71gF
	ttleInG4LvvCsal9DA2aSTPaQ7qy2T1UGk0zGqNbPQpGDlrg+JJwbjpdNuRqz7snVWS17F67H9pkO
	6b7CWAs/2AHj0ANFKF22KGepb2ZTIa8aud4BuysG4UVYeK5/MxJT4f3K7C67mMIgdjH5C55VTs8ic
	SMLKo49y2qVlv3nmz/2VEkVqJmulOz0Dx4HN2RSJ2bwuZ6+ujFfsBRa/VCVMbxkfVHLDfdKqvAOJM
	l3tBn25Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inzsn-0004eD-P2; Sun, 05 Jan 2020 06:59:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inzsi-0004dT-CF
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 06:59:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A548207FD;
 Sun,  5 Jan 2020 06:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578207559;
 bh=Dz8BMkWPePwNlSRW+VsrOys9MKhbsKCrsIWV/XdLeuw=;
 h=In-Reply-To:References:Subject:To:From:Date:From;
 b=o3Hd5C5hc7S50UyYcrHmiXYihlPT19KyrK8iG0dwWfVqn0kJU4wElPsL6mL16zaSW
 bVk+IOsIoByWDis6bhcO8OofVb+14c6xWfWrSMhkXyc9U1AHbSvC6NaNRoAI2AVCL5
 ZrRsrzrLz/BfJM/fSGMs8px2gBP0f7s13xKFDAAE=
MIME-Version: 1.0
In-Reply-To: <1578050744-3761-1-git-send-email-sricharan@codeaurora.org>
References: <1578050744-3761-1-git-send-email-sricharan@codeaurora.org>
Subject: Re: [PATCH 0/2] Add Global clock controller support for IPQ6018
To: agross@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org, robh+dt@kernel.org,
 sivaprak@codeaurora.org, sricharan@codeaurora.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sat, 04 Jan 2020 22:59:18 -0800
Message-Id: <20200105065919.4A548207FD@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_225924_436125_4E035954 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sricharan R (2020-01-03 03:25:42)
> The IPQ6018 is Qualcomm\u2019s 802.11ax SoC for Routers,
> Gateways and Access Points.
> 
> This series adds Global clock controller support for ipq6018.

Can you fold the fixes in?

> 
> The patches were a part of https://patchwork.kernel.org/cover/11303075/,
> now moved it outside based on Stephen's suggestion.

Thanks, but I still got the other pinctrl patches :(


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
