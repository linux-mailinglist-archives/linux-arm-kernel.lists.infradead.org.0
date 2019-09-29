Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3AFC1431
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 12:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVF9tj/6lklN2AugKD5Vs6lVnjmQIfV7MdDKCXR7224=; b=XCrWbhUuUv0Lr+
	6xYNgedPMLnXLaCsEpRRzbG5E9+P5gJnME4zc6xEZM7bXrGG7PngtSQv1JNiXP/Oh60WUyEEcVSWb
	L/iBfhuyfGCXMVZnK5Tsnzyy2m3V2dYX5CfFqrQva1w/OpMGcyHMbSm/XCxnzzjrp56MMdJhEBRqp
	dhZHY+1bCMUQTfnNgOyTrpGXchuOgyOImOlqGGGI+EzM8VVzsci+BZRkNe03Yrs+EOdF2TyHTK/Et
	KALzXPLKy131rhJzm1r/tRVjU4pvJXiHP2n2YiNLZxJZe/wi796V0/GD0ph8fyCMhEVelAqgk1wHg
	qQkRfI/S6CZIacsAwMoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEWFt-00089M-UZ; Sun, 29 Sep 2019 10:16:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEWFk-000894-HD
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 10:16:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18DBF1000;
 Sun, 29 Sep 2019 03:16:28 -0700 (PDT)
Received: from MBP.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7BB163F534;
 Sun, 29 Sep 2019 03:16:27 -0700 (PDT)
Date: Sun, 29 Sep 2019 11:16:24 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: ja.kaisrlik@gmail.com
Subject: Re: [PATCH] arm64: update Kconfig to better handle CMDLINE
Message-ID: <20190929101624.GA94161@MBP.local>
References: <20190920164249.6935-1-ja.kaisrlik@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920164249.6935-1-ja.kaisrlik@gmail.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_031632_614078_167E60DA 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 06:42:49PM +0200, ja.kaisrlik@gmail.com wrote:
> Added a menu to choose how to CMDLINE will be handled. Config strings
> were copied from arm32 port.

This was proposed before but we rejected it. Do you have a good reason,
other than arm32 having it?

https://patchwork.kernel.org/patch/9459341/

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
