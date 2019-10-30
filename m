Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CB0E9D4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:17:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlBGhDp1rfYCz4n8pyowwKmBJTI7KKnPFowZYJNNvHc=; b=rAMnZ9O5cvHMs3
	IGSxmXnBp4jBNXjTVv8ojX3qBrfH3FPAJ1FXLr4RJwv9fTl5pqVVsABmS0Y3qtWs/A0yqW7Q8/i9N
	6vB4CyaedsEIKIGTNA2sRfVUEW7IpbguWmCzPsB5sDrhwzLrs1mgfAyWcwcWWwXzTRuItRyRpZTqg
	fNgtuHmgGUud3VHFn+3ta8/+bAr+lflmc6HvEcTpTiaKy1EtpDfGehQjQGjpn0yYLABu9IPNbLxUe
	1vpF5FFcv02gvDGayc3puOf8REmH1BtX5W0jnAW8seOeKuaE4w4MNwFZwczNTwUxmZ/nfS5psLmfg
	rE6eoSEDXNe7cedjfvUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPonG-0000uq-TV; Wed, 30 Oct 2019 14:17:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPon4-0000uY-F0
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:17:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 925BE1FB;
 Wed, 30 Oct 2019 07:17:35 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 062473F6C4; Wed, 30 Oct 2019 07:17:34 -0700 (PDT)
Date: Wed, 30 Oct 2019 14:17:32 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191030141732.GA13309@arrakis.emea.arm.com>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191024214207.20588-5-broonie@kernel.org>
 <20191030121307.GB10294@arrakis.emea.arm.com>
 <20191030124153.GB7218@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030124153.GB7218@sirena.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_071738_548330_5B04860C 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 12:41:53PM +0000, Mark Brown wrote:
> BTW it'd be rather helpful to get patch 1 applied due to the constant
> conflicts in cpufeature.h, it's safe by itself.

Since we moved to using topic for-next/* branches, usually based on
-rc3, I'd rather see patch series on top of the vanilla kernel. We can
handle the trivial conflicts.

Of course, if there is functional dependency, we can discuss which
branch to base it on but I'd avoid for-next/core as a base as that's
rather volatile.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
