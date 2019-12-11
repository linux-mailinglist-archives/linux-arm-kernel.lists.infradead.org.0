Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4031411A2E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 04:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1CO3YkgzwjslYq/IyvR7HgLYy53ltHYzXVuaTkjLvE=; b=jziFlUT9NPK38E
	UQueZV6rKSxvrWD+IZbkOZZfx/E9EknIlORZaNsWxN5sn2F3QFwLBDhEMsn1AmtgvbWlzBqEG3t4f
	JI5NSg0oE+w/H6urPNQpw/OnVf32NwF/yfm0YqGvnnJ9jmKcnJPRJxOxd67uZdj6r1JxdFSmfHro4
	7FVdc0Q6px0PBqLTSUMx/duVFcyyK73TOmx04a45DYmrCxgIFQF5I70CTKeECSyt0T1XpNhNjZxau
	/xyIr1zbJNY2bbWL0Ydwdbin8fBVw4ryWolAu+PMu3GCfuZ/QLCLQHeuXSDfFmTuFk19QMaDOoIfq
	+bq0N2mEDFvK5nMg2HWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iesSR-0004QX-84; Wed, 11 Dec 2019 03:14:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iesSJ-0004Pp-6M
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 03:14:28 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7843D2073B;
 Wed, 11 Dec 2019 03:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576034066;
 bh=Ut608EWmoKpCpeQTzJgsEa7BVoL4dGTgh87HRiPQsmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KH6ClGGtvP3KOoN6fGzLlT//jCsfFMl66C9rsYgWPb4Gc2MIJXVDtLmhlxYyHVDom
 LtVYKsWNLUnCZ3yhw1nH/NzhUFDjk+arbWJ2xGwlYiug7CznrvCAPGRPGwEDHt/j/Q
 0pb2BWHkcJHw9B4ZYqdCX3fMsSljpBIDu75tWOFA=
Date: Wed, 11 Dec 2019 11:14:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ashish Kumar <Ashish.Kumar@nxp.com>
Subject: Re: [Patch v2 0/5] Add dts support for various NXP boards
Message-ID: <20191211031413.GG15858@dragon>
References: <1575457098-18368-1-git-send-email-Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575457098-18368-1-git-send-email-Ashish.Kumar@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_191427_258327_6668963B 
X-CRM114-Status: UNSURE (   9.65  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 04:28:13PM +0530, Ashish Kumar wrote:
> This patch series add dts support for various boards like 1028ardb,
> 1028aqds, ls1046afrwy, ls1046ardb and ls1088ardb.
> QSPI dts nodes are sorted alphabeticaly and dtsi nodes are sorted
> addresswise.
> 
> Patch 1 adds support for ls1028ardb and ls1028aqds.
> 
> Patch 2 adds support for ls1046afrwy.
> 
> Patch 3 adds support for ls1046ardb.
> 
> Patch 4 adds support for ls2080a.
> 
> Patch 5 adds support for ls1088ardb and ls1088aqds.
> 
> Ashish Kumar (4):
>   arm64: dts: ls1028a: Add FlexSPI support
>   arm64: dts: ls1046a: Update QSPI node properties of ls1046ardb
>   arm64: dts: ls208x: Remove non-compatible driver device from qspi node
>   arm64: dts: ls1088a: Add QSPI support for NXP LS1088
> 
> Kuldeep Singh (1):
>   arm64: dts: ls1046a: Add QSPI node for ls1046afrwy

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
