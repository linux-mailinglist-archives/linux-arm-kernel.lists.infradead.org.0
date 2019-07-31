Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D897CC96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 21:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbivN5Bs6unQ/bCIv7oC/hNftGh/0DjLetKntVaQls8=; b=MlmmJ8YIrhqypy
	1I/c+6t0DKS5swxq9YjFkr+RBUKOyZsTtq7kUlVMetzW8tulJKa3tyDXxR7IRCY5/oZ7tFsM9vBB+
	zZfX9EkTZ79jk2HIZRlTE7DSYpaGcUAUrvfscnq/m/uG3M0saSP94aNlEQF7xi3Q0qEVM7r4WENXB
	2znK+zx/nsplOrnUOyEfCuPxQkH/rdJqj652aMjrR0GHIVsfyof0aECMEhn+GdSxEkgChyimkn/gk
	XML/4J+FlevcOh1GMaAuW/tKJQip+U/ENhPd2p7pIUydIFqlh1+abIxQh4S85++tu/9+VPdaALDrq
	UyqjgXKQo/H5dJZxWB4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsu3P-0001OW-2q; Wed, 31 Jul 2019 19:14:27 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsu37-0001LE-Lg
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 19:14:11 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id DF9CA6D9;
 Wed, 31 Jul 2019 19:14:08 +0000 (UTC)
Date: Wed, 31 Jul 2019 13:14:07 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Phong Tran <tranmanphong@gmail.com>
Subject: Re: [PATCH] Documentation: coresight: convert txt to rst
Message-ID: <20190731131407.345e5935@lwn.net>
In-Reply-To: <20190711165201.31798-1-tranmanphong@gmail.com>
References: <20190705204512.15444-1-tranmanphong@gmail.com>
 <20190711165201.31798-1-tranmanphong@gmail.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_121409_724719_E867AD84 
X-CRM114-Status: UNSURE (   7.15  )
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
Cc: mathieu.poirier@linaro.org, linux-doc@vger.kernel.org,
 suzuki.poulose@arm.com, marc.w.gonzalez@free.fr, linux-kernel@vger.kernel.org,
 leo.yan@linaro.org, skhan@linuxfoundation.org, mchehab@kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jul 2019 23:52:01 +0700
Phong Tran <tranmanphong@gmail.com> wrote:

> This changes from plain text to reStructuredText as suggestion
> in doc-guide [1]
> 
> [1] https://www.kernel.org/doc/html/latest/doc-guide/sphinx.html
> 
> Some adaptations such as: literal block, ``inline literal`` and
> alignment text,...
> 
> Signed-off-by: Phong Tran <tranmanphong@gmail.com>
> Reviewed-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Applied at long last, sorry for the delay.

Thanks,

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
