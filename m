Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD7612B043
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 02:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u6jsxtX8rcg8Hv5gx9liZSwIauz16hid0U7kqvNB9qY=; b=HEZbX6AwVM6esSrxkVDP00lUwe
	WWnNIIVU9JnZ+DRiGHIIPrqQ27fvWyN0mLETtPSCxaCrDH28NPdUN5v2NS1m8g/oMDkLuTl8+CcX6
	HA9xL26fENLePBIF/7PJm54lAKj6XTEtrE+UHhix1S0MHPoHNC/Zn8b4li+MBinf5xMh4Do931dde
	rVjIR61zy3OaLD/C5unvROKOFETZ6A0CdrkUahGx3fnqN+nRgV+ehtkHEhZ5T+hwqUI0cPkqVJbdp
	PcmhiI0PCPANO2h97F3KGqurVo2eUEgojZT/zPpUtpzXeZWBLghvcADbZEIfyI08FkyAdPMyhKPjv
	kOR87k/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikeVv-0007CP-K2; Fri, 27 Dec 2019 01:34:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikeVl-0007Bj-Mw
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 01:33:54 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CB292080D;
 Fri, 27 Dec 2019 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577410433;
 bh=qaY83pBKOFqCF2j6sSNOsyRRud62S9BGBHikCZv7I9Q=;
 h=In-Reply-To:References:From:To:Subject:Date:From;
 b=jYFgvh2Onwrf7oOpuwoLj2e8Wg+JrUQHEIlDA0bV93IyV8mM7tORkZjX88BoxPW9K
 v7/fNXdSlhrLZoDZOrxdnkT8ECzFA3R2biM1f16oJIgTJNQYWfKgOBxO3Pa7eqt0i7
 XQamt9Jw1x1kzXx6dVPIojhOnjURO0edKx5QHJZc=
MIME-Version: 1.0
In-Reply-To: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
References: <1576752109-24497-1-git-send-email-sricharan@codeaurora.org>
From: Stephen Boyd <sboyd@kernel.org>
To: agross@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org, robh+dt@kernel.org,
 sivaprak@codeaurora.org, sricharan@codeaurora.org
Subject: Re: [PATCH V2 0/7] Add minimal boot support for IPQ6018
User-Agent: alot/0.8.1
Date: Thu, 26 Dec 2019 17:33:52 -0800
Message-Id: <20191227013353.4CB292080D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_173353_764598_5A806EA7 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sricharan R (2019-12-19 02:41:42)
> The IPQ6018 is Qualcomm\u2019s 802.11ax SoC for Routers,
> Gateways and Access Points.
> 
> This series adds minimal board boot support for ipq6018-cp01 board.
> 
> [v2]
>  * Splitted dt bindings  and driver into different patches. Added missing bindings
>    and some style changes.
>  * Added ipq6018 schema
>  * Addressed review comments for gcc clock bindings.
>  * Removed all clk critical flags, removed 1/1 factor clocks, moved to new
>    way of specifying clk parents, and addressed other review comments.
>  * Sorted nodes based on address, name, label. Removed unused clock nodes,
>    Addressed other review comments.

Can you just send the clk and clk binding to me in a different series?
I don't want to review all the other patches in the same thread.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
