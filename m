Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD44EF6BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 08:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38j/fLCfwXyx/mluCRGJrqrP9g1t6Axy98LRqeHv8+o=; b=JDteACv4Y9lvio
	YrJ3uAohrINm/WPYoxKrjHDbUPFXyOdEcgW5vwgTYaNrRNqJUoPrgKlFIl6uDjU1OkXwqPrA/5aiK
	bqKK31kcTQiPl65BrdRi3KbbaPsP+XkX5T57yt2CzULF5Gu4Yq/ADnQzgJWnjvvZLmH3JI/CF1IFd
	1+NJEhimok6Q+ulMDAZpmISDITR3xI036kiQyavHjlbQQMRxr6fqSCPraysYCbUJAwxMTa4UU2l6s
	CKaKUduGTafyArJ3XpPTKENyiaVgGagBdHx2nJDnvCoSQGND40BHuTJY0Y7FJw6MQaM3pnnE5cCzL
	SmPENqriZv9/DM0GW+0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtkd-0001b3-QU; Tue, 05 Nov 2019 07:59:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtkV-0001Zn-9d; Tue, 05 Nov 2019 07:59:36 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iRtkO-0006JG-1g; Tue, 05 Nov 2019 08:59:28 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH v1 2/3] thermal: rockchip: Support the RK3308 SoC in
 thermal driver
Date: Tue, 05 Nov 2019 08:59:27 +0100
Message-ID: <6051603.qgEBi1WluI@diego>
In-Reply-To: <1572923846-23310-3-git-send-email-zhangqing@rock-chips.com>
References: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
 <1572923846-23310-3-git-send-email-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_235935_480516_2DB71B0A 
X-CRM114-Status: UNSURE (   7.12  )
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
 amit.kucheria@verdurent.com, huangtao@rock-chips.com, linux-pm@vger.kernel.org,
 xxx@rock-chips.com, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 xf@rock-chips.com, edubezval@gmail.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, andy.yan@rock-chips.com, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 5. November 2019, 04:17:25 CET schrieb Elaine Zhang:
> RK3308 SOC has two Temperature Sensors for CPU and GPU.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
