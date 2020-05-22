Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABAF1DF157
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 23:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6nzWT9Rp7/TGTMXHE+WQChUdwAV0bvs+f4OSyBoV0M=; b=VWEJXd/Ue+p4XD
	cp4g8S4GU+R3uaG2A/DYZdUzSJKZHk6uuIYrDxZTemEW94fYK0tJzU3X9jpSd1j+1ZGen0g0C+lq4
	yqm7E4grvX071SIv+XkvQGVeaQefqYq+2C4ZEltP5lmEOQDOoIfHuKJNyzGpSscZsYSHBXxkosiz/
	NSD6HbL7e25uxWzFVH5VSlk2erKVK+PWd51JtC5bccjindY6cuFRWndP5pSXDYylwSyXHG3EYQiwC
	uAAJlERzDfO+zi+vYbt+wlCo9hl/803ch8U7EePH/hP7qaaXpw4mGLuuDJCvpVJd9r04sAMdXXwTf
	88J+xVg7TJddcaXKIXjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFLl-0006DC-0m; Fri, 22 May 2020 21:37:05 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcFLe-0006Cm-AD; Fri, 22 May 2020 21:36:59 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D6961127298FB;
 Fri, 22 May 2020 14:36:56 -0700 (PDT)
Date: Fri, 22 May 2020 14:36:56 -0700 (PDT)
Message-Id: <20200522.143656.1986528672037093503.davem@davemloft.net>
To: matthias.bgg@gmail.com
Subject: Re: [PATCH v5 00/11] mediatek: add support for MediaTek Ethernet MAC
From: David Miller <davem@davemloft.net>
In-Reply-To: <1f941213-7ca2-c138-3530-85c34ebf0d53@gmail.com>
References: <20200522120700.838-1-brgl@bgdev.pl>
 <20200522.142031.1631406151370247419.davem@davemloft.net>
 <1f941213-7ca2-c138-3530-85c34ebf0d53@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 22 May 2020 14:36:57 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_143658_351158_B4B0595B 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: edwin.peer@broadcom.com, devicetree@vger.kernel.org,
 stephane.leprovost@mediatek.com, arnd@arndb.de, bgolaszewski@baylibre.com,
 netdev@vger.kernel.org, brgl@bgdev.pl, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, pedro.tsai@mediatek.com, fparent@baylibre.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 andrew.perepech@mediatek.com, john@phrozen.org, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 22 May 2020 23:31:50 +0200

> 
> 
> On 22/05/2020 23:20, David Miller wrote:
>> From: Bartosz Golaszewski <brgl@bgdev.pl>
>> Date: Fri, 22 May 2020 14:06:49 +0200
>> 
>>> This series adds support for the STAR Ethernet Controller present on MediaTeK
>>> SoCs from the MT8* family.
>> 
>> Series applied to net-next, thank you.
>> 
> 
> If you say "series applied" do you mean you also applied the device tree parts?
> These should go through my branch, because there could be conflicts if there are
> other device tree patches from other series, not related with network, touching
> the same files.

It's starting to get rediculous and tedious to manage the DT changes
when they are tied to new networking drivers and such.

And in any event, it is the patch series submitter's responsibility to
sort these issues out, separate the patches based upon target tree, and
clearly indicate this in the introductory posting and Subject lines.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
