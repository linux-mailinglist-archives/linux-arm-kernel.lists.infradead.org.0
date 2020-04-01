Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F1319B5A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 20:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUUPsgE0KntcvT7wkuFi8tjK4RbtltA33CsyldL3GMU=; b=o6rSlGDDic2EJY
	ZYWphpe8MLTZK+q5eQJ/Hg+PkSt/M7ew4DyMzt0soJT+ikAxTMnlH4Ae2HuFja6xy9wdgw1fa+Ob5
	WrK9wqL4FEE+OjGFDs9oxKXa4g224bgKdUv5iS6FnHE8Q5by4US8IDq0sxlnKkPORISypr2yrOESL
	2bbTKG4EZWFIJ2D/x8xyktrqIXZyi64Wq/YcGmfvm51sGZYWGxaXqrfrXOfOmlEOcLG27nGrOEOyr
	Pvk8U+uL8HthO5vnmlh6b6nW9I42Q4Q2o83hrIrNl+Gm8cOMjjBjIZQO2pezbD+1stCwY83G+VpAN
	jBgqSDNGmBeVcMOXdIXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJiE8-0001Uv-TD; Wed, 01 Apr 2020 18:36:36 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJiE1-0001UB-BO
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 18:36:30 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2585C11E3C074;
 Wed,  1 Apr 2020 11:36:28 -0700 (PDT)
Date: Wed, 01 Apr 2020 11:36:27 -0700 (PDT)
Message-Id: <20200401.113627.1377328159361906184.davem@davemloft.net>
To: olteanv@gmail.com
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
From: David Miller <davem@davemloft.net>
In-Reply-To: <CA+h21hpAnWbnQihTVGyB-TyRYad+gWCdF7suzsXRFJg-nsU9xg@mail.gmail.com>
References: <cac3d501-cc36-73c5-eea8-aaa2d10105b0@ti.com>
 <590f9865-ace7-fc12-05e7-0c8579785f96@ti.com>
 <CA+h21hpAnWbnQihTVGyB-TyRYad+gWCdF7suzsXRFJg-nsU9xg@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 01 Apr 2020 11:36:28 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_113629_390861_6DD23231 
X-CRM114-Status: UNSURE (   7.61  )
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
Cc: peter.ujfalusi@ti.com, grygorii.strashko@ti.com, arnd@arndb.de,
 robh@kernel.org, netdev@vger.kernel.org, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, t-kristo@ti.com,
 devicetree@vger.kernel.org, m-karicheri2@ti.com, olof@lixom.net,
 kuba@kernel.org, linux-arm-kernel@lists.infradead.org, rogerq@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 1 Apr 2020 21:27:04 +0300

> I think the ARM64 build is now also broken on Linus' master branch,
> after the net-next merge? I am not quite sure if the device tree
> patches were supposed to land in mainline the way they did.

There's a fix in my net tree and it will go to Linus soon.

There is no clear policy for dt change integration, and honestly
I try to deal with the situation on a case by case basis.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
