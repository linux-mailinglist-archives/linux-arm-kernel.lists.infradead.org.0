Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75BB190D06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 13:05:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NIX+Sz/qL329DYnZQN/Eihn6E7gccV5SP+IJh4etKY=; b=u1noxmwXD7nVhi
	LafPdVubsTLgIVTx1u8UX8m+uED/WXW3D2MA33NDcD4oPocGaNnICL8rp9C0MZas20TTol62jYsIS
	J2mWTVmjKDPa2j/WoRUi8H5UOH/Vwa5hBLXX3+Qx1+03vf0aS51cIOp/vTtEFqgpifEEOgWb93tnn
	ACmzXUMe9Bb+qP1tQCZq3vv5+Rg25aJjRiDtOp0JtU9/L9ibSCXuVkkPdTayjilcOI99oEg3wpldq
	CGeC9EsJrTLoZY47ncWxXOe9W31tDS1rRUw7bXhh3Vr5beUS0IEIITs+YbvDwcOnulm9FJQ1GJTdw
	sOwap3i0kTglGoX6Ssgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiJ8-0001iU-Eu; Tue, 24 Mar 2020 12:05:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiIw-0001iC-4N
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 12:05:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 025EB1FB;
 Tue, 24 Mar 2020 05:05:08 -0700 (PDT)
Received: from bogus (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE9603F792;
 Tue, 24 Mar 2020 05:05:05 -0700 (PDT)
Date: Tue, 24 Mar 2020 12:05:03 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: Fix leftover entry-methods for PSCI
Message-ID: <20200324120503.GE21686@bogus>
References: <20200322115846.16265-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322115846.16265-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_050510_217425_1F3A4916 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, soc@kernel.org, arm@kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 12:58:46PM +0100, Linus Walleij wrote:
> These two device trees were either missed or added after
> the commit correcting the "entry-method" from
> "arm,psci" to just "psci" as per the binding.
> 
> Cc: Sudeep Holla <sudeep.holla@arm.com>

FWIW,
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
