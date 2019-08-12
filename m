Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCAE8A06C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leiQYtiXu9MZiw/jx8G4qYJKpsZATpunbJi9YbmGnIs=; b=Jo0g1+e1XSkhSs
	XyFaOv9Dyna5pbAiQgUGOZQZkhMMWc35h6SRIhUaD+M3ht3r2zd0N+U0b6mT54inG0IhVfmYvgl5G
	3M+bwUL+F50ysTIvEhkSFGbv//6IAWLZRIY9rC0X7XycETw9EGLGKjuUEa8WfZor9sxp1q0iZMcvj
	QEvzXi7GgYcmbk5tMSauZ76T+3b73lC8V8p8eyA6smhAQ/YU2VwmKn2uyQmP6vYKOT6gUzF2gZN+B
	xegqwJcUdE1zsSq4IqY//W6PX83K3DSMlRwqPb7rIZvYP8LcF3Y+21O6Pkizn0li9IsV1imibnnTM
	uYdg16DvNN92HCfNb8sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxB3K-0006JA-Ke; Mon, 12 Aug 2019 14:12:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxB37-0006Ig-Lr
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:11:50 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5777220679;
 Mon, 12 Aug 2019 14:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565619108;
 bh=Pz8gnq2FA5s5y8w7DuRNIWBIHEt1e36T4KvhlqHuyEs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ttPOM1rdYoG6U/v/9W/edMZLYgYSBb7BKBPPILdPez4HT85g3uHCdEWIYnDGoINik
 IlrD6tEhYt1DDqYinHwjqTIAwwP5tc4V4KWEMXsaYpCGQIKclLwU1ql0Wl373+5jpe
 FAhbsqzgpQde6Nt5fESgj4DOStxi95M5pkbGJ3m4=
Date: Mon, 12 Aug 2019 16:11:38 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Yuantian Tang <andy.tang@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: ls1028a: Add Thermal Monitor Unit node
Message-ID: <20190812141137.GH27041@X250>
References: <20190806053507.37069-1-andy.tang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806053507.37069-1-andy.tang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_071149_750457_A050A0E9 
X-CRM114-Status: UNSURE (   8.94  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 01:35:07PM +0800, Yuantian Tang wrote:
> The Thermal Monitoring Unit (TMU) monitors and reports the
> temperature from 2 remote temperature measurement sites
> located on ls1028a chip.
> Add TMU dts node to enable this feature.
> 
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
> Acked-by: Eduardo Valentin <edubezval@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
