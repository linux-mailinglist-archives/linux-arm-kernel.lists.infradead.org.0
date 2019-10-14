Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BC1D66A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 17:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjeU8wYzM3m3ylzGBTePJydAVZ2M/gJzUJX/YgqmJvY=; b=kL5TBX3BxAuGtg
	ByM/l8wIEO8FMuuWRDLxTJeD27dW5yztkBAZb2FkQqUfv+l/NZioF5ODRFk3XLd8BjnmEyncOFWyv
	dOWdibB36NGxCRPbAOFe7eQhSrq8PQdTadlNNwjnRZIbLlqv4aOlJCizdmAX63b84KGsptGX0td8K
	TnxDPk/MqXUTWL9L9lD/VclIqIJ1Nr6qg1Nixjp/3eTZaMZwA8MXXvqB4iN4yjpmGNgf+2S2xTF6i
	ZTJCUg44lpYF59QbnhIno4fHONmyFpHXI0BzjIqpbwP96aW4nuhTHK9UHTgiWwEn772gVfR9MD0sQ
	XIz3rgv0tX067vxvrUQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK2it-0003ic-Cs; Mon, 14 Oct 2019 15:57:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2ik-0003ht-Gv; Mon, 14 Oct 2019 15:57:20 +0000
X-UUID: e90314f07f8e453e8a868ef510a901b9-20191014
X-UUID: e90314f07f8e453e8a868ef510a901b9-20191014
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 215289654; Mon, 14 Oct 2019 07:57:13 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 08:57:12 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 23:57:10 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 14 Oct 2019 23:57:08 +0800
Message-ID: <1571068631.8898.8.camel@mtksdccf07>
Subject: Re: [PATCH 2/2] kasan: add test for invalid size in memmove
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Mon, 14 Oct 2019 23:57:11 +0800
In-Reply-To: <20191014150710.GY32665@bombadil.infradead.org>
References: <20191014103654.17982-1-walter-zh.wu@mediatek.com>
 <20191014150710.GY32665@bombadil.infradead.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_085718_566082_808D35AF 
X-CRM114-Status: UNSURE (   7.96  )
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
Cc: wsd_upstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-10-14 at 08:07 -0700, Matthew Wilcox wrote:
> On Mon, Oct 14, 2019 at 06:36:54PM +0800, Walter Wu wrote:
> > Test size is negative numbers in memmove in order to verify
> > whether it correctly get KASAN report.
> 
> You're not testing negative numbers, though.  memmove() takes an unsigned
> type, so you're testing a very large number.
> 
Casting negative numbers to size_t would indeed turn up as a "large"
size_t and its value will be larger than ULONG_MAX/2. We mainly want to
express this case. Maybe we can add some descriptions. Thanks for your
reminder.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
