Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3BC16AC8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RQcnbqwCvOwtPMF99HU1vdMW5vNvfP8U4vVqytjt+0=; b=O3It6qyKMNiI+b
	7NdPzGWYvcF9NHDahvl/cZoHaUjAkqhmib/nwvWwLC0qTzNLw6sDYcgvN0LAgljpZuhR58QKiFRYf
	0csvHXFO/TJAiY0fLPdGL8RjC07Pk3Vo0bfD0uLfVGcIMn0ZYOJMOez0gAnuRxlcDnQ46L++0ZED7
	QyqpCpH8DYIfcypy/W/bfp4UurT1q6prafQQdhpfLV7ao2AdDC2WGsm2jRDN5taNTMpcOQlvAUB/N
	+RAfy9s9HGyeC4a1Wq1EmSRwgQFSEs4YpkYR9sKYfD2oZl7Mu4QzEqQeUSa//XCY+t6CiMQY3AP5Z
	AfWWXjYXipSzAIevv0TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H7N-0006Db-GL; Mon, 24 Feb 2020 17:02:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H7D-0005xR-RO
 for linux-arm-kernel@bombadil.infradead.org; Mon, 24 Feb 2020 17:01:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=d38vHUOYrA5Mqm0L22ZQxg4+Zp7TO9gMLCtMLvSyNbU=; b=tiKrNiqWHdq1aOLWg8u0YlvIm9
 cOzRDRsotltdtcCt0Z5T6To72uKqN7AYW/qDAn3VAAzFybT+ynrUC2w5t6Ue6gqwt2KrVXhXTfdFn
 KgKTR/A72L7ceJ+22s3ZrCejzOztcielXw7cvTy6BOylWtJgtrnYiVJDoZ5a22CYEhGOvrlgrje0Y
 nw1x61+ULUxS+O5bSo5Q2TbNDksR0Lz2Uh63RnEG/FkCN+2/J6fOlmpb9FPE2KLhDnhnuj4FwgCrX
 QtCQGiqD13fI1VkDXE0uSBgnnhg3oRVNrS8beAiRCRI/ZxRSPkGAiTBzofcJNZbisfNkd41wokscH
 gjxvkKpA==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Gvx-0002OS-TY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:50:18 +0000
Received: from localhost (unknown [122.182.199.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74E0F20637;
 Mon, 24 Feb 2020 16:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582563016;
 bh=GUn4MNd/CYw0+WpEjK/beMt3O/nBhBrB0RzoGtzcI8E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JF4umC8CRxfeuYkpdniHpcft7/Jjj5SFyBNEyJJI0OQX2Vtn6yqOvqNnG1KebGkyu
 UwBybDebLapoJuPaZ5eh9raqocKdq8+ey1hVmwZQdZneolm3YIGA8FLPGBtEfrtdDk
 Rrfh/v71QseZ5QGSxWrsF3XHXXjWedXhOm7hbA8A=
Date: Mon, 24 Feb 2020 22:20:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 0/6] STM32 MDMA driver fixes and improvements
Message-ID: <20200224165012.GB2618@vkoul-mobl>
References: <20200127085334.13163-1-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127085334.13163-1-amelie.delaunay@st.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 27-01-20, 09:53, Amelie Delaunay wrote:
> This series brings improvements to the MDMA driver, with support of power
> management and descriptor reuse. Probe function gets a cleanup and to avoid
> a race with vchan_complete, driver now adopts vchan_terminate_vdesc().

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
