Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95AF1353B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIbM2o0VGmn1OGcAaG5+G/8ioBizM95lE193wQVOjdI=; b=GtMU/xhekXRRWO
	3CfdELUfIwARtJCPSo03kZZ3nFZcFbpCeX+SmfphIGvE8c6cnYDVBHOvRJvzsxiHi38W7wb9evsa5
	55AUyvZpJxmUROYy0ifgqOfob2rXidHNgacpqwDujrnWutxD3juX8do/HNqpc8tObjfKLUpb+E5+K
	7NjlLRIyVbpfYyf+HApkEmkkV+nF154a21mN3EFqNmgS5s1OXkCmkimA/zG3rz5JOMv9+eHQ9A8r1
	jx9uKHK59yNxIXsBG4uTcwEkO/q+1tAWLL8aqjq+ONskWujl+I+fXuCeBxrVylyXdsA3lvlYsyPRg
	AH6L7m85nn8WumW32Avw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSJU-0007vp-Ag; Thu, 09 Jan 2020 07:33:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSJM-0007v8-Ds
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 07:32:57 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C19520673;
 Thu,  9 Jan 2020 07:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578555175;
 bh=wcVi1/6fyTeRg/lzzRwOSNC1NG1kV7B6YyRNZoDe0nc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bzrZ4RRo+QNNAffwj8P7j2UYtUrUMs9uJ2x4R4MGnGXaAmcEZW2fl26C27PZ8naAl
 YgsRYdF6GrlkGo+i0tKv+KtJEy91ym/SBqDBqwXz/1gaDYDJv84Nl/8/JPERl0JCpu
 1vNs2lNWjYG8oY6fOcd7nsKXnq6GOSdLCmbRSA+k=
Date: Thu, 9 Jan 2020 15:32:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls208xa: Update qspi node properties for
 LS2088ARDB
Message-ID: <20200109073244.GC4456@T480>
References: <1576867954-17756-1-git-send-email-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576867954-17756-1-git-send-email-kuldeep.singh@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_233256_493235_9FE5486B 
X-CRM114-Status: UNSURE (   8.25  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 21, 2019 at 12:22:34AM +0530, Kuldeep Singh wrote:
> LS2088ADB has one spansion flash s25fs512s of size 64M.
> 
> Add qspi dts entry for the board using compatibles as "jedec,spi-nor" to
> probe flash successfully. Also, align properties with other board dts
> properties.
> 
> Use dt-bindings constants in interrupts instead of using numbers.
> 
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
