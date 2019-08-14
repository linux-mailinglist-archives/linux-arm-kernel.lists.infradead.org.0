Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9508C527
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 02:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEvnpC+KUjVAjtY+o6G58PSl6V+53vveo28ib7I4nuk=; b=BgrLKxFOn/iZWs
	rCG+fHV7+PuI78ofaKLclfYH6ukPYj6YCBhy6//XL23qC4GLNo3oX8H6wXWQ7YqNNIo95Mp7oEBJy
	uwV1oBEyyBg+AdzOBe5z3zFqluP3vf6bVRwE2W+DbElI3oGFR7lSKve4OMaZ3iU4R/dWnP2SKBKJf
	bhHrZj0KS24bgPe+Lg9uXDZASAFs6pCxDCi4mfIFxQ/dz0ZDhxdMEhnqTYU7k4q6gfCDaLPuCUfNn
	IXFAlaUmbddXOrlwJLwZC0BQmYhqDQDRriFSFvyFesXrkA8W3oHG2VSsUbWfJ5AcXPdxjMLESajzs
	XMFn33po/2ksy6P5rQEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhH7-0008Il-Vx; Wed, 14 Aug 2019 00:36:26 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhGk-0008I8-8k
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 00:36:03 +0000
Received: by mail-pg1-x549.google.com with SMTP id c9so11147540pgm.18
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 17:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Cu+36JF78r6qebD+fzAIMoP3auw3DHa5JgHDYnbOQS4=;
 b=agaAlbCOXwpWZ1rEpbIgzA1nhq8apU3jhz4rB11Ox7zK2Akab4jmWCwf1eFEYcSdqk
 6vSzssiCyk0/Re2v8sDIDWJ0TNqu3TPrBbrYEhpamBw7VPCYw0DtfRLzMGPGZ3ryAuIY
 +qHlW4a7XJ9GTFQfBxavwd5WnKw8JvZ+DRo4ZAw1+MRqM6Zpxjwrt8YWX1/zQBy8AeXw
 N8cmA2+as9UuCYoxAgtnQ7vA8hs3USlmTxaGwekpWHOaWHSMUJ8nqvq5B1nzDcS1y1kD
 OjjMABjUm1UW60sNRsPCd+Rrebhhd9kq7lHrLZbpzG36YubdO0UzANYILQCGIsskE5Ud
 R7uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Cu+36JF78r6qebD+fzAIMoP3auw3DHa5JgHDYnbOQS4=;
 b=ot9IURuJTFN2lOpXusKth+JjAZ5oYj9nFGkVU5a1H2mjqz0G+Q1HYMybJSAAMft1ve
 Ua6u5mVLXYEW0yG4jxDNi3Vfibq96y27SQ1jaGn631GU6DnQynfJ5Q9c+yJXXWJwxjbI
 gpul6gF+JjO26GzhOe4OTADW7TJ/iDbH+6l1oNxzej8Ah0ZTWe9FOazruFTgK8sDb/va
 sQCkxzvJYgNHjx0pwlaC8nrw0/TS1vaP1DyrKuAgMZ9QRtXwVCan3GQaid2INA3Nczy5
 UZsk3bMN+Ftxu9mKLZeJMylCa+gIoI8IJtjtxjNAEP5hoysCoVoH4V/dLmLzoy8+6BUi
 rGqw==
X-Gm-Message-State: APjAAAVE5bnwZF7Znui7GgTPLmGBnnYLr+bizjKOvbNfts84kpvotn/V
 uaV5fQjuVae3HcTKderJi5dbS7rpoQ==
X-Google-Smtp-Source: APXvYqx9gRONA4IxsGp99a+6zL2GKJFiLbvPKafeGJacjMPJ8nB+SZ7n6psXm+8vxgexYBchbRllgwxBVdM=
X-Received: by 2002:a63:5f01:: with SMTP id t1mr9981095pgb.200.1565742960704; 
 Tue, 13 Aug 2019 17:36:00 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:35:57 -0700
In-Reply-To: <CANLsYkzH-ZWV3qF4p4Yvfy3EfBvZUYyDH+SDdUyuS3fGw9h_Fw@mail.gmail.com>
Message-Id: <20190814003557.97004-1-yabinc@google.com>
Mime-Version: 1.0
References: <CANLsYkzH-ZWV3qF4p4Yvfy3EfBvZUYyDH+SDdUyuS3fGw9h_Fw@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: Re: [PATCH v3] coresight: Serialize enabling/disabling a link device.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_173602_334499_DEFB862A 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> The patch isn't difficult to do but does go deeper in each link
> drivers (ETF, funnel, replicator).  Let me know if you are not
> comfortable with the idea and I will see what I can do on my side.

I am comfortable with the idea. I chose to add lock in coresight_enable_link() just because it
is the smallest change. But a refactor probably is better for maintainance.

Feel free to upload a new patch fixing the problem. I can help to test it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
