Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C4B1F59EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WstSwYhiMHbFM+LloLu2lobM9Qa+m3P32f7EXE6sRhY=; b=N39M6+H83Pqhlmc6xgY9oOaxrX
	p7cCjscjY3LWoa4dRAZVjP6vvGYQ60j4UpQtNxoQfaj8svYfQwcuLvr/Z1wzIiHjnqqJT70aqglfw
	ncHKAZbie5ReWxYl+aNHQbvRfDhnw+mpe2NX1qM19VIZOFSHQRS07ChPGDdWiwObG2XhuW9l+F4KJ
	qZTjenNx6QI29Xw3zlgBaBgQ+l98DtyNwVc7uWOPvP09UaJ8aBrWkq7BOap+LV9kRMnWg308nymii
	OFp3N3iBXUbHbZvyETG6WH7sWmPogw1W2+nJm3hbz7MmYNuWfQK7qA8NmP1aSiBB0I99zNoP3AP1y
	0oXgnxnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4LR-0005kE-Et; Wed, 10 Jun 2020 17:16:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4L4-0005f9-0w
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5611C1FB;
 Wed, 10 Jun 2020 10:16:33 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B65A63F6CF;
 Wed, 10 Jun 2020 10:16:31 -0700 (PDT)
References: <20200610122500.4304-1-benjamin.gaignard@st.com>
 <20200610122500.4304-3-benjamin.gaignard@st.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v6 2/3] media: stm32-dcmi: Set minimum cpufreq requirement
In-reply-to: <20200610122500.4304-3-benjamin.gaignard@st.com>
Date: Wed, 10 Jun 2020 18:16:25 +0100
Message-ID: <jhjsgf23kpi.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101634_120087_2FE77588 
X-CRM114-Status: UNSURE (   5.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.torgue@st.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, hugues.fruchet@st.com, mchehab@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/06/20 13:24, Benjamin Gaignard wrote:
> Before start streaming set cpufreq minimum frequency requirement.
> The cpufreq governor will adapt the frequencies and we will have
> no latency for handling interrupts.
> The frequency requirement is retrieved from the device-tree node.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

For the cpufreq qos / irq affinity parts:

Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
