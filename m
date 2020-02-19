Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700351642E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:03:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3ysXUl88AeBRTRq8zMmuVsilYomvF7UlM8BOeXKJuw=; b=rmwfZL3QrY3Ute
	vw/KfvE6DdPrIyC/FgvYiTfFvOZ5l3xu1FXz3x0RmNS0svl5VYYPvEa8QTfg2/CtZHPJKMu+E5og2
	rUJFOn41Rh6YNmA185z2xmCjirRT/YOMj8ZZoUs91ZwrzSTVxrTQRG4G1ox52J7fqGG2zBQVNqoxH
	hQhY1Ku+9V8iOGiDng1q/iQNaBDwzkf9WJBm98e3FX2ipIRkfPfDUyD8/lScsqW5gBGKFqnFbvwKp
	0jk5gMArzCXTbLX7NJyaN3r4cCEC/U6GLxhdAHXAak0mOaMKaqfNCChUqQAIGvEoenciYXw1+/msY
	z5bYDTaCSFMKs76PAgdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4N93-0000TP-CI; Wed, 19 Feb 2020 11:03:57 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4N8t-0000Sw-2Z
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:03:48 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id CC46836A; Wed, 19 Feb 2020 12:03:44 +0100 (CET)
Date: Wed, 19 Feb 2020 12:03:43 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] iommu/arm-smmu: Restore naming of driver parameter prefix
Message-ID: <20200219110343.GG1961@8bytes.org>
References: <20200218172756.2131-1-will@kernel.org>
 <90975c71-9089-b857-6b22-804415e4d5cb@arm.com>
 <20200219110046.GC16824@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219110046.GC16824@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_030347_264566_7CD90DC8 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Robin Murphy <robin.murphy@arm.com>, Russell King <linux@armlinux.org.uk>,
 Li Yang <leoyang.li@nxp.com>, iommu@lists.linux-foundation.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 11:00:46AM +0000, Will Deacon wrote:
> Joerg -- please can you pick this up as a fix for 5.6? I don't have any
> other SMMU fixes queued, so it doesn't seem worth sending a pull request
> to you just for this.

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
