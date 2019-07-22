Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB946FDD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbvtuJYTV7SOIS3DeDFfCxzhwVNv23UsVkYyw+V9P0Y=; b=Qevacp3xRuSeXk
	2zsUeXn7ckg5J8U+rRibYnsbHjDVUvQMnHdh4Y9X4xh82pgqI3f00THTSPgFE4rutNF3FWLcmNqGR
	Fbc6xNrfuc26mWuskqmYJ+++oD7Vc+dZ6Em69AF+bSoKg4IHBW+UDgDspSp3ZHcK7i6q0/1oZviDC
	3/6yWnShOVZ1tYZfHgQ7zDtuaiEBJ483vVzVKUvqq3/1SVJLtpupAhnj+YclO1p9X5DWKCxxhMH25
	/iJjHILlmDbdEcVxmfYpAyNL4OKKvOA85rl8GqBgc3vB0Izl2TleSk51JPJMNbnT/PY0CIr4Yfgwd
	6gklpqYeiH/cdwanduLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVbQ-00023D-EH; Mon, 22 Jul 2019 10:31:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVbG-00022d-G2
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:31:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A65D28;
 Mon, 22 Jul 2019 03:31:20 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C4F303F71A; Mon, 22 Jul 2019 03:31:18 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:31:16 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 2/3] arm64/sve: Factor out FPSIMD to SVE state
 conversion
Message-ID: <20190722103116.GA60625@arrakis.emea.arm.com>
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
 <1560355234-25516-3-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560355234-25516-3-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033122_572624_69CE2820 
X-CRM114-Status: UNSURE (   9.44  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Will Deacon <will.deacon@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 05:00:33PM +0100, Dave P Martin wrote:
> Currently we convert from FPSIMD to SVE register state in memory in
> two places.
> 
> To ease future maintenance, let's consolidate this in one place.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Now that we are at 5.3-rc1 and Will is queuing fixes, he can take this
patch as well (I didn't queue it for the merging window because of a
dependency on the first patch).

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
