Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB6416AC30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pibp1jW2mBZ9Y+QhyssLoM0DTfHhZTioP0VxjcXFrOU=; b=fsZbScdOtSbCAG
	UKAZCQUHTcbDDcu53AC63mK/obmaghcxB2HuWp3sIFr4DDoPfifvWQ1yUIGznHjH3CWYGMRpbI+gy
	ooDUaFaa6ii9n+YYRQ5KFxtBKr92r3FQLRX86sG04mEH9A/9MNic9XhAz7fOhhynWwrrzrOI7r7Jf
	8Mpunwx5936O83YpqBSfc/Yy23UVzWq7mp87TWP+Fq74tAGNruOHTFH4b4DGDtON8/8u+W5JCAwqL
	qTUbCZwteaMaL1TCDwzqy1YTn0Rv/H1Js1HARp73UwpsBIgkLUxvcVapMMWiuyUrr1G9D4K3JvrkK
	Sxcsk/ypVtOOocAw6AFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Gyk-0006xx-6P; Mon, 24 Feb 2020 16:53:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6GyZ-0006xZ-JU
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:53:00 +0000
Received: from localhost (unknown [122.182.199.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79A3820836;
 Mon, 24 Feb 2020 16:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582563179;
 bh=+BKg+9ltuyXskzUKcp22gQ/z3orass0x9uHtufnBFpQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kn/iCHRYniCjGtSCaGsKiFYWh1Ke7ajdlj2I59KwyP9Fq8RJa7U29becT7gHJE0aS
 P9roAjpb1/PZi5nJdRyuXiLRk/tKs2BRkPjZvT3VDpsUZT34Ju5B1xnqoUfWny6V98
 sVdAS0Bzfc+vNBbXjSkbOFdt7qcwpAV9hnPEv9Ow=
Date: Mon, 24 Feb 2020 22:22:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 0/4] STM32 DMAMUX driver fixes and improvements
Message-ID: <20200224165255.GC2618@vkoul-mobl>
References: <20200128094158.20361-1-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128094158.20361-1-amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085259_665087_B990A742 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28-01-20, 10:41, Amelie Delaunay wrote:
> This series brings improvements to the DMAMUX driver with support of power
> management and probe function gets a cleanup.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
