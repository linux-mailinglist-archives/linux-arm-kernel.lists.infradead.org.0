Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C99481A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AuKm5OwcgVT1dlWij4qhH/ZNG3CFzTypKbTs1YjgDc=; b=V7a6LrV0k3pVgP
	Kk4uNilT8ydpb76vr49sG+q8wcCQBuGuOWOPU7tKkcjDUKeNWSXPnB17R5rw+W06QYQBlvdj1cWj6
	C9JRMEtIeSIi3hMIwuBSv0mbYKZFTZuyaiYO9VjNEsPoNT3a+lVc0Hf7MOCYNAIKAUkZAV3nPlbdN
	e7iuTnQ2LGqR5TrpWX3yqWcu0AF9lW9oM51IiZ4EPZfEZ9Xd0myKFCb1hWwoL8JHjcX2iS7jZHGEt
	VUF878BFq6udpOl/e/d29xqUE6+rGMh+4ZoePcAe9zwe4NsZBMck90eug6I9My/eksRZVr2EsO36t
	9XP/z9YkLhCgwiX/1q2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqX6-0000E1-KM; Mon, 17 Jun 2019 12:14:44 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqWx-0000DS-0B
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:14:36 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hcqWl-0004e6-Eg; Mon, 17 Jun 2019 14:14:23 +0200
Message-ID: <583907409fad854bd3c18be688ec2724ad7a60e9.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 17 Jun 2019 14:14:21 +0200
In-Reply-To: <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 (sfid-20190611_135708_651569_0097B773)
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 (sfid-20190611_135708_651569_0097B773)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_051435_044787_1D7F2CF8 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 linux-arm-msm@vger.kernel.org, abhishek.esse@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Networking <netdev@vger.kernel.org>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-11 at 13:56 +0200, Arnd Bergmann wrote:

[...]

Looking at the flags again,

> #define RMNET_FLAGS_INGRESS_DEAGGREGATION         (1U << 0)

This one I'm not sure I understand - seems weird to have such a
fundamental thing as a *configuration* on the channel.

> #define RMNET_FLAGS_INGRESS_MAP_COMMANDS          (1U << 1)

Similar here? If you have flow control you probably want to use it?

> #define RMNET_FLAGS_INGRESS_MAP_CKSUMV4           (1U << 2)

This again looks like a hardware specific feature (ipv4 checksum)? Not
sure why this is set by userspace.

> #define RMNET_FLAGS_EGRESS_MAP_CKSUMV4            (1U << 3)

This could be set with ethtool instead, I suppose.

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
