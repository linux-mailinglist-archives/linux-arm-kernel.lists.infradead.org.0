Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2754CC41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 12:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I03nkymu5eC5vTVpqp8gBVu1rOAgIOpQEkQOHLfL0yg=; b=nv+JhgPpcSuDdE
	JPSyjmGl1OWd/fJ/AcRL4JQ3bXcGx9NO8VT/CIzmOto19g2KEnR0K3bswpaObUQWSoM92BOvUW79M
	DxAINBZfW8NERhV4K0VfwrKtEmeHqSCpBmZf5ug4vg3TnhYrEH1o2jZt0uhIrRraVNHhTn/teiErJ
	4szu+94alPs1WR8i/1omRo8BBoL8WKwLhCndLCXuCRqm1OZm8yZo03bXy9s3wojCOqlo+Whh4ezj5
	KsTrBpvcgO66KwRqqLC3Ntpu2upowgN3sVSO74/bpjh7SLhRlygPW2cu4X/PyVfOCez55UAlEshzb
	G+yoyircZbZBO3MbPsfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduep-0005vT-Vb; Thu, 20 Jun 2019 10:51:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdueO-0005uw-PI
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 10:50:42 +0000
X-UUID: 084b0000e29941c084424869fbb86346-20190620
X-UUID: 084b0000e29941c084424869fbb86346-20190620
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <lecopzer.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 88240860; Thu, 20 Jun 2019 02:50:33 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 03:50:31 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 18:50:23 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 20 Jun 2019 18:50:23 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <julien.thierry@arm.com>, <marc.zyngier@arm.com>
Subject: Re: [PATCH] genirq: Remove warning on preemptible in
 prepare_percpu_nmi()
Date: Thu, 20 Jun 2019 18:50:24 +0800
Message-ID: <20190620105024.24935-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190620091233.22731-1-lecopzer.chen@mediatek.com>
References: <20190620091233.22731-1-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_035040_831936_64F6A7D3 
X-CRM114-Status: UNSURE (   4.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: peterz@infradead.org, tglx@linutronix.de, yj.chiang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks a lot for reply!!

I just misunderstood how a PPI is registered and thought
I have a chance to eliminate the code.
This patch seems nonsense now, please ignore it.

Sorry to disturb you guys.


Thanks,
	Lecopzer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
