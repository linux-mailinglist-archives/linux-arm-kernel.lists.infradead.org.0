Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843244D425
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6c2fCzYGQfQp9xz5mk3EMKslfO5fuH3eILGnEj6QyU=; b=hwuOW7waCQLdRb
	f4AFTXX92fdqirSGQH8vxixZBzQFqV2Ruk4copFI8GMt+lxuGSx7lrOOJo+lH3DWPOWVbjXOjS/p9
	KVGhgNyimk3vd1T+9pIhnP4jSWK3UCgWtRhRCq/0erg9R3Vww2Ek5IV6Y5zi0VSR/CQiag+WL03YS
	M8haQ2PnHJ1YvhQO96+WNHHBoorFz2Tl1Tu6grXFtLlmm3yKCqCnA1Bn3L3jcnPM4SlF8EWycjDgI
	wTHq0p0ZjY2cqyMVfHeP/yAcRyTOnfPc0730jeAWj1cX9MxGM/PrrZiSToRJlf5Nd8Yf+r+uVG7P1
	maxg20nPg9lA6UcGc26w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0Fi-00012x-QJ; Thu, 20 Jun 2019 16:49:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1he0FB-00010U-Cc
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:49:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 648012B;
 Thu, 20 Jun 2019 09:49:00 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 45C653F246;
 Thu, 20 Jun 2019 09:48:59 -0700 (PDT)
Date: Thu, 20 Jun 2019 17:48:57 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190620164857.GD25273@e107155-lin>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_094901_485671_C841AD02 
X-CRM114-Status: GOOD (  12.41  )
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
Cc: Al.Grant@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com, Sudeep Holla <sudeep.holla@arm.com>,
 andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 11:38:12AM +0100, Suzuki K Poulose wrote:

[...]

> >
> > I prefer to do this conditionally. It's unnecessary on systems which
> > don't ignore the TRCPDCR.PU and I really don't like them to be penalised
> > while we want to add this support for *broken* systems.
>
> It is conditional. i.e, you may disable the operation using a kernel/module
> parameter, which I think should be mentioned in the description here.
>

Thanks Suzuki for pointing this out. I completely missed this when I
read this email earlier. I am fine with that approach as long as the
default is flipped. Platforms must enable the feature and by enabling
save/restore they implicitly understand the latency impacts for idle.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
