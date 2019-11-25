Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CA3109303
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 18:43:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VFjvWGHvd/hPyVVCB0qLxtekdXH4rwhdRTA/aakMMc=; b=Q9SSr7an3cMgfq
	zgEJM+q6v3IAOO+6irHT/NrWCI0o8QRcGROZcDwLSQ6r8pMEZ1ikElCZKLreBjBmAmew8G8W0k8Ju
	Jr38lm1i26ekTWZVVI5an+vvxz17e0DijAP+s3It0CumzNeyd/+Bs/2oG6T9n+HioFVGTTQb/e4zL
	KUTCO++tVRzEKtMEK3p9CutnPcAQQQkmvhulCfX6I0IKLGRME/8O6kuwZHVRhmU2aprMiHoRUHRwY
	IQa1Sf4mgNoR+mr/RELuSpXWYsdi/ARRT/hSvDTsyiD+8Oz+v7xGNGKBtz0dP0PbRyZ+dBftE96fo
	/yOJR3uKkqn+LiDWRiKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZIOr-0001sL-Ag; Mon, 25 Nov 2019 17:43:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZIOh-0001rz-3d
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 17:43:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52EDC31B;
 Mon, 25 Nov 2019 09:43:38 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DED83F68E;
 Mon, 25 Nov 2019 09:43:37 -0800 (PST)
Date: Mon, 25 Nov 2019 17:43:30 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] arm64: dts: arm: juno: Fix UART frequency
Message-ID: <20191125174329.GA10102@bogus>
References: <20191119120331.28243-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119120331.28243-1-andre.przywara@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_094339_194184_365E2180 
X-CRM114-Status: GOOD (  12.79  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 12:03:31PM +0000, Andre Przywara wrote:
> Older versions of the Juno *SoC* TRM [1] recommended that the UART clock
> source should be 7.2738 MHz, whereas the *system* TRM [2] stated a more
> correct value of 7.3728 MHz. Somehow the wrong value managed to end up in
> our DT.
> Doing a prime factorisation, a modulo divide by 115200 and trying
> to buy a 7.2738 MHz crystal at your favourite electronics dealer suggest
> that the old value was actually a typo. The actual UART clock is driven
> by a PLL, configured via a parameter in some board.txt file in the
> firmware, which reads 7.37 MHz (sic!).
> 
> Fix this to correct the baud rate divisor calculation on the Juno board.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> 

Do we need fixes tag here ? Unless someone objects I will add and apply
this patch:

Fixes: 71f867ec130e ("arm64: Add Juno board device tree.")

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
