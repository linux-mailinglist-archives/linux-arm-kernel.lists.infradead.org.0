Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15531168A9C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 00:58:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IebXw6dXoVqwYcqRYvBBz9fk91gVc26cZ8Cv7Cr1iIc=; b=gVWgGY3O+OPNg1
	kFQSGctOVn1UNGpaFnHYNc9w16VbruMqT6mywJutfxxuG7vlvYhBghroyNWKQ0Tomo8JVtYIJlK0H
	HkEXpuakMODF1wkXyVOw3haco/u5xnWXOyZUdqVP6348UkjCCQvD6ghghzOx9RpAKl8XOyFdfAr2C
	IWXpIjZ+vwWr+1ZTL8JVNWyXia1rEZeMdErdCrNJKoREiDihCBFWZ+pIbgyo6Ot1ApxmR99dgAVT8
	E7lAeoF5c5TE1b4eNfklm+zowgT2bNllx9iPdGBdvpIhtDiCrKUSVBPVUMuV8jnsejyjuG6+FYb2R
	R3O91O1xA+HUiwJ61uOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5IBH-00078C-Al; Fri, 21 Feb 2020 23:58:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5IB6-00077V-Vk
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 23:57:54 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92B862068F;
 Fri, 21 Feb 2020 23:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582329472;
 bh=n0vjHVM2DuhbpPYoxUKATWLMuk00e4mnD7YQoWp4vUk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=OIc0H/6FEBoyV45z3mlrdQOZGlTjYb5cKOX8tyqwAiMmkIlY4O9/GD+thIk3aXxsG
 jIjtFlVnom2DIHf7DacvmaOFcDdyLjsT6f8EY9Pmpo3a9lwbkeFP/VA7/hGESogbek
 ZcPYRqs8Jucy3hrPeOGTK7yh2xCobn+qyOSRBAc4=
MIME-Version: 1.0
In-Reply-To: <1582266716-19821-1-git-send-email-Anson.Huang@nxp.com>
References: <1582266716-19821-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: pll14xx: Return error if pll type is invalid
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, festevam@gmail.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, peng.fan@nxp.com,
 ping.bai@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org,
 yuehaibing@huawei.com
Date: Fri, 21 Feb 2020 15:57:51 -0800
Message-ID: <158232947182.258574.584668677246692139@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_155753_036061_67179CE6 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-02-20 22:31:56)
> When pll type is invalid, ONLY output error message is NOT enough,
> should return error immediately.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
