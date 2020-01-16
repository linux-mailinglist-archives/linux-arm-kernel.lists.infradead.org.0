Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AEE13FA0B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 20:53:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAfVOGRsAbcNhgQiwVKSF7z2bC4kdqmw8fBobODSJNM=; b=IKPsfKxdPjUubZ
	WcSEYt6Neia+Z+PeVCkMBUGLLIWZIol2LdWEvDwZC5hoZ2ejRZodcvn0anwCSTP9j4xoopOKSWXF1
	bJO1bLzmhHnPZa3Yc9WzII0/a1cKu6EGV6kcCDXRI8F+wCoK0bb1YONSpl2VUOnjT8godEvSPwxmc
	DQxNVUhorOfZ7hbRqtks5g9s0IQlXPjy4iqkkZ1u61hQ1wQJQ3G+Z2Y92A8Fam/4ayIASc91WsPQ5
	WwiK1ypBT587ZbiyA7nFIvZXCv8i2WY2IloKgObfWs+JkQ3M5j7+rKXjcTPJ1EpBkoZdyLLmwq3Di
	DNNMAdPFLZ7jDaPp58GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBDE-0003H9-Bk; Thu, 16 Jan 2020 19:53:52 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBD5-0003Gl-Ft
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 19:53:45 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 1A06B1E5;
 Thu, 16 Jan 2020 19:53:34 +0000 (UTC)
Date: Thu, 16 Jan 2020 12:53:33 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] Documentation: Call out example SYM_FUNC_* usage as
 x86-specific
Message-ID: <20200116125333.5de68e48@lwn.net>
In-Reply-To: <20200115184305.1187-1-will@kernel.org>
References: <20200115184305.1187-1-will@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_115343_542017_451DE73A 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Jiri Slaby <jslaby@suse.com>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Jan 2020 18:43:05 +0000
Will Deacon <will@kernel.org> wrote:

> The example given in asm-annotations.rst to describe the constraints that
> a function should meet in order to be annotated with a SYM_FUNC_* macro
> is x86-specific, and not necessarily applicable to architectures using
> branch-and-link style calling conventions such as arm64.
> 
> Tweak the example text to call out the x86-specific text.
> 
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Jiri Slaby <jslaby@suse.com>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---

Makes sense to me, applied, thanks.

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
