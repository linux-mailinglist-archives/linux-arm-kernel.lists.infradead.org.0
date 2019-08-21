Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD77971D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJv6abGgiNA3qPWLEFqv+j1NL/ktUnWk8ORWrzW6FtU=; b=Pp8Dt41sclnKcQ
	sTiRm5FJI+VQpffIoGAR8q8HvsSrOE+iq6JT87xPpzdq8f7YphjA9+rnZmH/1ZWm1mfDOmGEnr0+W
	7TgqGxCe9+x0qbfU4IHi7KU/hLgfaleCgm/lgIEncRBrXfU9KD3yw2YOh2brI8gOsbBUeUC6uf3RV
	RQcfQ6r0ZmOhS5fB7WOfzgEbh83RTsyIm8DOq/Fyaql3uSRZIBYUmTl+YT+NWBswYm1ewG1sYW335
	VmKEsKjJvxasIlF6Sw4PzXvJRMRvQ4lEcisLZI7SY4Ujohsd3EGPWllzeCqItfP5Cvh6PUkIDneXc
	/ENouJbt+8DaAZlyVcWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Jdm-0001ax-NP; Wed, 21 Aug 2019 05:58:38 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Jbk-0007nC-7N
 for linux-arm-kernel@bombadil.infradead.org; Wed, 21 Aug 2019 05:56:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z1gZdu3xLJGMMRcfM7coaKQ1nyQmvnZIViiTOc5+oHI=; b=eNhTSUqHv/ZHfXdpl9tCu8B4/9
 qOkmsgkeUS3C6glN6FKSwMKUXAxj0a7yoB/3H5R0c1sVNoepeEXwVdC73xAWCZVpQa2dPfiuFZRiv
 mlo0hTKFhSAO1tpchfbSQ4eHLKAAsKwvBIrtvDmR8xBw096i1Th2nFY2O9SOY6uZRxufTLYipgmfL
 cdNRcLQOMN8s7ejkXwGox/W6szw23rTqy9GQRtpzNfxrIiA5fWFJ8Z7Dph13X95EBS4Ys61AHa41d
 1wxlQ0Sw4aU0ZTFnWXxyBiJOVtVEDQkILpBx4ef5Oal9Ek6bza8WFZcE46YBDAQT6Zu94jvxfXj4N
 TpVc1snQ==;
Received: from mout.gmx.net ([212.227.17.22])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Jbg-0002GR-VM
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566366970;
 bh=z1gZdu3xLJGMMRcfM7coaKQ1nyQmvnZIViiTOc5+oHI=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=MexB0FslsXYmsYibspiLhrZJaEGckNHFLNzM5RMefGiHnn9wzWN2S/Wq2wG6f3qwO
 99PPAbeF/zex1pTN1t9UCwnQ3NLXoxsh+1ZjLRIDKPKFaGZ+6YeLshydOgSa230QU5
 Av1hDw3qI0XQd4OV6J1r6/mwZwC6yqUCwuS4Bsg4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MIdif-1i3u5k1DCX-00EZnZ; Wed, 21
 Aug 2019 07:56:10 +0200
Subject: Re: Build regression in Linux 5.3-rc5 with CONFIG_XEN=y
To: Christoph Hellwig <hch@lst.de>
References: <ebd95b7c-d265-cbf1-be50-945db1dd06ad@gmx.net>
 <825549ed-8aa4-b418-8812-15a9d3cc153e@arm.com>
 <0b019cdc-6f0e-c37f-2be7-c24293acb8cd@gmx.net>
 <20190820012415.GA21178@lst.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <f8ee890b-3bef-1147-101f-754f731d489e@gmx.net>
Date: Wed, 21 Aug 2019 07:56:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820012415.GA21178@lst.de>
Content-Language: en-US
X-Provags-ID: V03:K1:QZATAYirQLOIduivMgpncQ2CfI98TvCV4SMQF8HUui/JtOK6LYY
 hGl72BSxhSoQDV3BW6L3jqDzjQpeYkj2PcHaVldzddksqhK8iow286NGqtT1jFnOuUWpci6
 OPHxrHM4CBPbqjdcVYjG1Fp36X/BmEUm/Vkhl20LL5dQ7fEaCV9tVDTtvp5vSU5GFd26NMd
 Ji0amAZdMKuWNA1Oa5DrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yBimPWIgeWs=:TXG3Gr+BpVlMx2ujdefSej
 I/AjxYih0fkfHyhTpAI6vAtdifphteoSQdeWnT6xk557kCC7XHN0bypgqHC9AveTVxjZNUcDZ
 9nZmKT6RgG3poRVYsJ6Bs5KisRCUoUet0MAPglamSFj1gKtAQKCQAhkWQaw/48GIxF6eb3FDu
 VTVPSvsqIK8YW1dMvfpej62raHDSyUBs4PiJ6mgp7fA3aCXF/KIv6W4S2guzsUsgk0RCobqXx
 Fj6MTzLwFZObhKNMO79J0hn5RAKFKU4jEFJwNbULE8U6Kbnw7z/sTuI+QElfdm67CWL2VEa37
 /6OvbHdZHtXG4pjfV83xcYVY4kouItmIYYKiMjnEb6f+Ii98+P37aHrXWmz5NxpBUd+N2JFyZ
 9Us2XtgRj6zqtj8mOrli6hFmF9Wndx9Jyy7iYpAMFjOG+GUW9IciwnTEWuKFY/Z940Lchx5ou
 TL3X7mRpfUBOMt1TVJFW0Ngcl7GgmLJKuky1MZvTqOhiVjEWVBWd2N/Rg45gCbwpvb+AkFSZP
 0crDSU6CyhRMnnRvxdR6wdQJl+ttR+AKVUVqXtwJVrzkgf771Mzfq5tgk5GIaC2zWeT1QBmtI
 grbnWdvPEae42RfR4v3yx/MlqZYCXUksggH3xbaxmg1eykrjMU3QFzVG2cvnOs+2A7Fe64oaG
 6rWautZIr3AhfapB/47sGRj9gr6+5pVc+vbciOOBaOUJiPF4cphPGWlcSAVvrYU6yORnKVY5y
 uqatnknUtxKs++VWkyJr9gfVPic3qv3PShsl3/5WCn86Rdvgtzw8g7V0p45xJsZVuVIMDNP5v
 oN2q6dkw5tnqMc9HKgRwLbBmufu5o1ajKN6xWNymlqsyJ59JKO04rcEgPjX5HNHBRMLhQlNf/
 Fm+0Aew9PeRCZCkYapuXj8Ur+xY6GCKvU3LPEOMbgSxYQLI0niMbMWXpEzQXoN8P6Qr/Yb534
 1liGHWiO1vU3VWAHpdNksWm/pgGEQFVaGfaDgZNj2CEnTv2yjq9IiCoo/fLZvONd/8ASsBR1R
 Z5qWIaYjrPqoUy/70KPJdDJUuUJsijZCcPkQf3lkFibTAEKifnN7TXgjILug8NhYaQuts5Xq+
 /shZzQbaN22LO1JQetSuIfSuwf97/PizM40CGqRDZpJpj37EACHqO2fKCtuLzL7yyKw0fi6yy
 8xIwc=
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 20.08.19 um 03:24 schrieb Christoph Hellwig:
> Hi Stefan,
>
> please try the patch below.
>
> ---
> From e0570628d96faa50ebfc94ce8e545968336db225 Mon Sep 17 00:00:00 2001
> From: Christoph Hellwig <hch@lst.de>
> Date: Tue, 20 Aug 2019 10:08:38 +0900
> Subject: arm: select the dma-noncoherent symbols for all swiotlb builds
>
> We need to provide the arch hooks for non-coherent dma-direct
> and swiotlb for all swiotlb builds, not just when LPAS is enabled.
> Without that the Xen build that selects SWIOTLB indirectly through
> SWIOTLB_XEN fails to build.
>
> Fixes: ad3c7b18c5b3 ("arm: use swiotlb for bounce buffering on LPAE configs")
> Reported-by: Stefan Wahren <wahrenst@gmx.net>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
Tested-by: Stefan Wahren <wahrenst@gmx.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
