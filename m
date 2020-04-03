Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2805419E15C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 01:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgUL325fw12gi6kToJpCBj7zXlItixxoVtWd9O7/IAE=; b=Z2eM2pplEE6wI9
	S+gZAo84PxjNm/uE4fcBzPctY/DdoQg0/8X4id1GNl7XPC8T7059Szt3weEdorVbI4mJfBNEkk2w1
	dq4r34LAw7a/lcIlDqK8uV80gV8ta2p1FFP6a7fyGlVpqv67OMRZaLlfSwa3VVqCA/itnbCe3H2ST
	mF3wDJBIjbrAN+MPofWPiHw4Y9/IhiqJTIX8yCmBuihTTCc8PDgltQio55nokywpJICEaW6JG+s7e
	8ZHiNoNOpVfSMXYIVLrZL+WRhtBPFtvGVKfs52hT02X2f56mnrAz1bonH6cGPjLrsrBnkTkJLl0ae
	9WWZujfTZ5laMY1kGXCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKVW3-00077M-BZ; Fri, 03 Apr 2020 23:14:23 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKVVv-00076c-QS
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 23:14:16 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A8596121938E8;
 Fri,  3 Apr 2020 16:14:14 -0700 (PDT)
Date: Fri, 03 Apr 2020 16:14:14 -0700 (PDT)
Message-Id: <20200403.161414.635525483978443770.davem@davemloft.net>
To: christophe.roullier@st.com
Subject: Re: [PATCH V2 0/2] Convert stm32 dwmac to DT schema
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200403140415.29641-1-christophe.roullier@st.com>
References: <20200403140415.29641-1-christophe.roullier@st.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 03 Apr 2020 16:14:15 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_161415_861021_E8614267 
X-CRM114-Status: UNSURE (   5.84  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 narmstrong@baylibre.com, martin.blumenstingl@googlemail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandru.ardelean@analog.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christophe Roullier <christophe.roullier@st.com>
Date: Fri, 3 Apr 2020 16:04:13 +0200

> Convert stm32 dwmac to DT schema
> 
> v1->v2: Remarks from Rob

I am assuming that the DT folks will pick this up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
