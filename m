Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3619D1A1DBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 11:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/QbFHL8AB4tkdconhp2eDVGyugeio/Clk4CLIwiijo=; b=RA2GmL4Xlyywx+
	g33rvcxoJ4MBjUkvsz2EDKsyHoA3p0MeX40uNurRQGQBitbD8B2u7ZZ38KLNDkinBfztETqSknuok
	6scaUyNBekGytFjd9Mz2QLpE2qP+j9mHYCew/2SUC5vVvK6fiT+uUNuRbfuZ/UKmo0AqaFqtayn5d
	/Fa9K0nS+FI+MNhfhVTDprnd44LsRAQJD3aAjWhLTkyL4Phocr68xIzUbakj8ThUDSy1QbJEX1mLG
	qV2EitxToBBibzLUac6KwX9pUk+Jq508fJ3K5axylvniI8AzQlh6BOq9w2RbrO9lWkjBMzbpGbdgw
	0XwEzd77qqdGE9xIntug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM6aJ-0007m2-Pi; Wed, 08 Apr 2020 09:01:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM6aD-0007lA-ET
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 09:01:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73DF731B;
 Wed,  8 Apr 2020 02:01:15 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D77F3F73D;
 Wed,  8 Apr 2020 02:01:14 -0700 (PDT)
Date: Wed, 8 Apr 2020 10:01:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Fredrik Strupe <fredrik@strupe.net>
Subject: Re: [PATCH] arm64: armv8_deprecated: Fix undef_hook mask for thumb
 setend
Message-ID: <20200408090111.GA27331@gaia>
References: <911db2f1-e078-a460-32ee-154a0b4de5d4@strupe.net>
 <20200407092744.GA2665@gaia>
 <a2b345a4-30a0-3218-8c8d-e84ec2317dc9@arm.com>
 <0d7b582a-1bd0-9db2-2fdc-04fc887f64c6@strupe.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d7b582a-1bd0-9db2-2fdc-04fc887f64c6@strupe.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_020117_530051_2C8DFC10 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 01:18:21PM +0200, Fredrik Strupe wrote:
> (Sorry for duplicate, something went terribly wrong with the formatting of
> the previous email.)

It's still wrong here with tabs converted to spaces. The patch doesn't
apply. Could you please send the patch separately as a v2? It looks fine
otherwise.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
