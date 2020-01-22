Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE0D1455E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 14:28:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+SZ9i1DuCQsHhQPR7T5K8Gc7nIKWRHWAamRV79R9us=; b=qFwimEnwX0mpV2
	JCfaFPzy8Kl1jH2FvCUIcTSXCgMnU3QjEixmAPMAfm/TRhSDUw2ZKvbE9cJPxWFqiuqFamqj+oH2r
	sv/IoacHnrAXXYK0h6C9tQR/zoqQPWM2lRFF+MgfRm2lnipkKM+skCA1KJc/PU9maJhLYo7FcyXwh
	8srRdOhsWWtxjolIG162+/7erxT5EYx+CS6XSBKlpxJ1+lEsMnnvDHgcIh/G45XKqqB8PWiVIC+EJ
	LiXD6fdUTlaemWy4HYRg7MtvOnbsYnkP+ZYJ3O1JfqEpZmK+tKFccwqk9Q0Nu+TeDKdKPx0uJX8Jx
	JHCy7boR64p0hteuVeUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuG3G-0008ES-AZ; Wed, 22 Jan 2020 13:28:10 +0000
Received: from smtp1.de.adit-jv.com ([93.241.18.167])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuG37-0008DA-6u
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 13:28:02 +0000
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
 by smtp1.de.adit-jv.com (Postfix) with ESMTP id C4B243C04C1;
 Wed, 22 Jan 2020 14:27:58 +0100 (CET)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
 by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x3LQ2mdH3c4V; Wed, 22 Jan 2020 14:27:53 +0100 (CET)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp1.de.adit-jv.com (Postfix) with ESMTPS id A14D13C00C5;
 Wed, 22 Jan 2020 14:27:53 +0100 (CET)
Received: from lxhi-065.adit-jv.com (10.72.93.66) by HI2EXCH01.adit-jv.com
 (10.72.92.24) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 22 Jan
 2020 14:27:53 +0100
Date: Wed, 22 Jan 2020 14:27:50 +0100
From: Eugeniu Rosca <erosca@de.adit-jv.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH v2] arm64: kbuild: remove compressed images on 'make
 ARCH=arm64 (dist)clean'
Message-ID: <20200122132750.GA16142@lxhi-065.adit-jv.com>
References: <20200121155439.1061-1-erosca@de.adit-jv.com>
 <20200122022626.797B324677@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122022626.797B324677@mail.kernel.org>
X-Originating-IP: [10.72.93.66]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_052801_404761_1BAA094C 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dirk Behme <dirk.behme@de.bosch.com>,
 Eugeniu Rosca <roscaeugeniu@gmail.com>, stable@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sasha,

On Wed, Jan 22, 2020 at 02:26:25AM +0000, Sasha Levin wrote:
> Hi,
> 
> [This is an automated email]
> 
> This commit has been processed because it contains a "Fixes:" tag,
> fixing commit: 0723c05fb75e ("arm64: enable more compressed Image formats").
> 
> The bot has tested the following trees: v5.4.13, v4.19.97, v4.14.166, v4.9.210, v4.4.210.
> 
> v5.4.13: Build OK!
> v4.19.97: Build OK!
> v4.14.166: Build OK!
> v4.9.210: Build OK!
> v4.4.210: Failed to apply! Possible dependencies:
>     f8fa70f392fa ("arm64: localise Image objcopy flags")

The heuristics of your scripts is correct.

Upon picking f8fa70f392fa ("arm64: localise Image objcopy flags")
first, the backporting conflict of ("arm64: kbuild: remove compressed
images on 'make ARCH=arm64 (dist)clean'") is avoided.

> 
> NOTE: The patch will not be queued to stable trees until it is upstream.
> 
> How should we proceed with this patch?

Shared my thoughts above. Any other input needed?

-- 
Best Regards
Eugeniu Rosca

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
