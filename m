Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00891DAB20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPFAtnwtziNsj2DLQga7DSG9M85ensGma6P3y4lPH+w=; b=EJ3NoIevHM34US
	fRfF+inTBXJ2b8sXkIrOvLqlVjg6XgwknBk7Ydk8oAu21wPN3+ieAUcG90uUzBHuNJaakTsTixsH5
	2Q6t9nmKeEJjYmxyJu5YMhkQyDeC9IU6SVbTISZarcJkqVkyxmYMwTA5vbPf01UzPRmj8UWntnd9J
	F4r42QW0fYNoX5WRQ6rkRb9kvx6QycrkAqXel6b0xXmL6W9kwM+H7njau3G2FFCRRuFaRd4pNHB6o
	HNR9QOVIf0eEbTut1G2rHLLuYsYjv+gmu5A1F9hcK8ylN3aO3b1J3ymixGLdO++enlpRdSkJv5azc
	EdhXIlIhPAspd0O37FIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIdM-0001oS-Kq; Wed, 20 May 2020 06:55:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbId7-0000gk-TO; Wed, 20 May 2020 06:55:07 +0000
X-UUID: eb52538a63c547959b194ce3a3e60208-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=5Lcz411vQymr8LOv9ZOMpOR7TAY9qOG8MgWx5t4pG8Q=; 
 b=kgNj5eFkW9mPa012Eif0MwO65NhHJv+kf3LAKjxzjF1JFTBJQtjE1QRHXVstaJqZ/PjloQMeqEOTLcV/u8sWiFpKGsIYMh1uWT1JownyyL4XLnw2zn69E2s2nlGFLJxE3JGdUNSMY5Es1LB3ZR+oX0ATl3WaUkXeRVeCHDWmiEI=;
X-UUID: eb52538a63c547959b194ce3a3e60208-20200519
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2133675788; Tue, 19 May 2020 22:55:03 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 23:55:00 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 20 May 2020 14:54:53 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 14:54:54 +0800
Message-ID: <1589957603.13912.2.camel@mhfsdcap03>
Subject: Re: [PATCH] iommu: Don't call .probe_finalize() under group->mutex
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>
Date: Wed, 20 May 2020 14:53:23 +0800
In-Reply-To: <20200519132824.15163-1-joro@8bytes.org>
References: <20200519132824.15163-1-joro@8bytes.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 255D14E269C30CBAC837F7C42790D730FB5613A0BD2417CC0B32DAEB4E59CBDF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_235505_965596_4504F68D 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Joerg Roedel <jroedel@suse.de>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-05-19 at 15:28 +0200, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> The .probe_finalize() call-back of some IOMMU drivers calls into
> arm_iommu_attach_device(). This function will call back into the
> IOMMU core code, where it tries to take group->mutex again, resulting
> in a deadlock.
> 
> As there is no reason why .probe_finalize() needs to be called under
> that mutex, move it after the lock has been released to fix the
> deadlock.
> 
> Cc: Yong Wu <yong.wu@mediatek.com>
> Reported-by: Yong Wu <yong.wu@mediatek.com>
> Fixes: deac0b3bed26 ("iommu: Split off default domain allocation from group assignment")
> Signed-off-by: Joerg Roedel <jroedel@suse.de>

Tested-by: Yong Wu <yong.wu@mediatek.com>

Tested on MediaTek-v1 mt2701 evb board.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
