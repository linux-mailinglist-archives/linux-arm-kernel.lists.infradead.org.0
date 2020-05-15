Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C890A1D42EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 03:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ST5AamJbYlE/oxcQifyzhnRW/rX7Z7yA8cFHJz79u1M=; b=nPCNZCDMTXiEra
	Jhf4GLVc33orNWkHZCJ2OEI/pQQR0Ig2PgPkxXtqDQe9kBCDZ1uUIa9YycOuwCH4GI4emf75WLXff
	GrWINqRAE0wDLMI6lmGpquI4zWxij8sH9EjnKKLBbg1glH8TInB4SAPQcEkqXcehisztXgE4hFeA+
	RM0s8IzfUF5YNq2uRGwVsyrqCpMEkwjJFi221l2MYnL9tqrWrIQaeN1bnIXb4uyt6FwHg4cGZ3WRk
	21TDHj1mKLKXBbXbq3GBM+pPwDYjt72Trwx23cFPQRZ756/ZV/iNhOh/nrXfPHQjQlYGDmEbO5ekr
	HNiei/Na2KVU5KItjDIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZP7M-0006Yk-02; Fri, 15 May 2020 01:26:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZP78-0006WP-3T; Fri, 15 May 2020 01:26:17 +0000
X-UUID: c9947cc7022d41218a7f3a373f9a0e07-20200514
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=fqRhhH59jTJIvLK90VopqKiASNWrF23G1ykGc4EPhlE=; 
 b=npz3Blg4aa1IlPD0nrV+b36oFGbaJo9n4E1wAGASNNpJ/AFraajOUrj8cPciHxutWyhWrLBGZj2hy8G/fWuIvgBfTQifnAC+x2UYjPt4dTugy61losQlmuXTKoWym/xMHdg7nc9QVGpFuUc+xSdOSU7gvbGLEo1Ot8iVRr+8t/E=;
X-UUID: c9947cc7022d41218a7f3a373f9a0e07-20200514
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1664807439; Thu, 14 May 2020 17:26:23 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 18:16:05 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 15 May 2020 09:15:58 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 15 May 2020 09:15:58 +0800
Message-ID: <1589505358.3197.101.camel@mtkswgap22>
Subject: Re: [PATCH v2 0/4] scsi: ufs: allow customizable WriteBooster flush
 policy
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Date: Fri, 15 May 2020 09:15:58 +0800
In-Reply-To: <158950485295.8169.36549719949053326.b4-ty@oracle.com>
References: <20200509093716.21010-1-stanley.chu@mediatek.com>
 <158950485295.8169.36549719949053326.b4-ty@oracle.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_182614_162128_C99BCB90 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bvanassche@acm.org, linux-scsi@vger.kernel.org, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Thu, 2020-05-14 at 21:10 -0400, Martin K. Petersen wrote:
> On Sat, 9 May 2020 17:37:12 +0800, Stanley Chu wrote:
> 
> > This patch set tries to allow vendors to modify the WriteBooster flush policy.
> > 
> > In the same time, collect all customizable parameters to an unified structure to make UFS driver more clean.
> > 
> > v1 -> v2:
> >   - Squash patch [3] and [4]
> >   - Remove a dummy "new line" in patch [3]
> >   - Fix commit message in patch [3]
> > 
> > [...]
> 
> Applied to 5.8/scsi-queue, thanks!
> 
> I had to combine patches 1 and 2. Otherwise you'd get compile
> failures due to the fields moving inside the struct.
> 
> [1/4] scsi: ufs: Introduce ufs_hba_variant_params to group customizable parameters
>       https://git.kernel.org/mkp/scsi/c/90b8491c0033
> [3/4] scsi: ufs: Customize flush threshold for WriteBooster
>       https://git.kernel.org/mkp/scsi/c/d14734ae3ae7
> [4/4] scsi: ufs-mediatek: Customize WriteBooster flush policy
>       https://git.kernel.org/mkp/scsi/c/f48b285ae658
> 

Thanks so much for helping the patch squash.

Thanks,
Stanley Chu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
