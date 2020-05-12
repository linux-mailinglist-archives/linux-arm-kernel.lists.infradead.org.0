Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 890F41CEA01
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 03:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KO24NpbOt3QJliVwP8oPLH8hzXLp04woJGBi4KfVFM=; b=CKjansZn9QiOs1
	KnImWR1cOf0YeXafeFGLQgwouk0VT3XXpvkvwiFbtm7EiVFkTihkehpcPjSb9MYIfYVYXh62DzHz6
	dzivMmOir0EaJtHy8qRDR1XlM9YE/zzywlTHJgC09tFB1SUOvG6/NEAmGtQmGX3If/kVnW09hTbuT
	u68N2octZJnb2FbLQzdpP8Q2+xKsJEumPHvr8ikWOqxOy+HLfyKzSZT1o+G0zqH81Bg6vczdxSqH1
	3CgRcr8QKVNPZ3w6DbieiDrBgqUt/ECMBQ3bc6bsakYwUb530CLNSkXgxv5kjALSZpcytF0dEYPKF
	pzfDNvK8eI3hr5YCor+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYJQa-0001Q3-04; Tue, 12 May 2020 01:09:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYJQS-0001Oe-1l; Tue, 12 May 2020 01:09:41 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jYJQJ-00070l-IM; Tue, 12 May 2020 03:09:31 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] include: dt-bindings: rockchip: mark RK_GPIO defines as
 deprecated
Date: Tue, 12 May 2020 03:09:30 +0200
Message-ID: <2039286.bXBTDbpnOK@diego>
In-Reply-To: <20200511213605.GA14679@bogus>
References: <20200424151105.18736-1-jbx6244@gmail.com>
 <20200511213605.GA14679@bogus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_180940_088336_AD059873 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 11. Mai 2020, 23:36:05 CEST schrieb Rob Herring:
> On Fri, Apr 24, 2020 at 05:11:05PM +0200, Johan Jonker wrote:
> > The defines RK_GPIO0, RK_GPIO1, RK_GPIO2, RK_GPIO3,
> > RK_GPIO4 and RK_GPIO6 are no longer used. Mark them as
> > "deprecated" to prevent that someone start using them again.
> 
> What changed exactly? The binding changed, or just using raw 0-6 instead 
> of the defines? 

This ... they are just dumb mappings of RK_GPIOx -> x so we switched
over to just using the raw numbers, as the constants do not provide any
additional information.


> If there's not anything using these in tree, just delete them.

Ok, good to know that we can just delete them if noone is using them
anymore.


> It is still used in the binding doc.

I think Johan will provide a v2 with that.


Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
