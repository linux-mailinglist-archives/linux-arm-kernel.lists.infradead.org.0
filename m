Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D01130C12
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 03:26:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnqqZjQqq/M/K+ALmARDOoHclVK32c4uhKnpKNseUW4=; b=Ai/wog2AtLncj6
	hXoLoLr6dW2czDEZHW2c3dZy/Bo0kzUTskD1VimmE831OZ7XWRAG3dBN3FUtNHy+G2GNKBQ300kMR
	aEHgFWhKvfPaWoahwODfpksaBWCpLOMNyXmG21lEYGgQjzCwYbdJiR+aylHVImSopOhXeoYzBOW99
	9JD58KiWKRJdaYbLqChfRBXeu/eREW9rZWc1ZjaEX26Me0Hd2/VviSqF99udpdtWpvma+42IBdEeY
	kRK2VcOL/w1voxe3MnpgUbELmS7WzyjVk1ywMRvWZJkYiJnRFdCyCq3Z5GQwmaA+0eNKwUzq3liQY
	jSTGGZJuOlsgOhhBcQBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioI5k-0007Rd-M1; Mon, 06 Jan 2020 02:26:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioI5Z-0007RG-BQ; Mon, 06 Jan 2020 02:25:54 +0000
X-UUID: e72dd8d4ce6d403a932a538e7bd89b52-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=90we2HNJ1wSvFgeVfDv+pQLV73/5FIpxbNt+xxqxkIg=; 
 b=oMePjRk6ZHKZP/k5PhqascXLGAnBk8Mx1nsIYFdo30HT/gcHI1XAGXBE+g/YF+A64qn359k5ORjHsKl+FKoCFTCECwmkd+qTC5pKekcOd7QNVTECeoIIBfQR91wzR5MkS1CJg1TehaESXeB1gAwZ8pMd19O/uO7dvPS45cUpF/k=;
X-UUID: e72dd8d4ce6d403a932a538e7bd89b52-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1990732423; Sun, 05 Jan 2020 18:25:50 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:26:19 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 Jan 2020 10:25:12 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 6 Jan 2020 10:26:12 +0800
Message-ID: <1578277539.17435.5.camel@mtkswgap22>
Subject: Re: [PATCH v2 1/2] phy: mediatek: Fix Kconfig indentation
From: Stanley Chu <stanley.chu@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Date: Mon, 6 Jan 2020 10:25:39 +0800
In-Reply-To: <1578276653.21256.12.camel@mhfsdcap03>
References: <20200103164710.4829-1-krzk@kernel.org>
 <1578276653.21256.12.camel@mhfsdcap03>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 366D91C7E258C65393D58DF059721550643DFB395D1DB2ED4FF626D1C1DF7C892000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_182553_400504_E0B1D544 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-mediatek@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-01-06 at 10:10 +0800, Chunfeng Yun wrote:
> On Fri, 2020-01-03 at 17:47 +0100, Krzysztof Kozlowski wrote:
> > Adjust indentation from spaces to tab (+optional two spaces) as in
> > coding style.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > ---
> > 

Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
