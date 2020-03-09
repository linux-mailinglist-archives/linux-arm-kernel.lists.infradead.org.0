Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CCD17D8C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 06:09:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Y5AmXSXfWIgjQEWM3XeJiYvlx6hLz50mP5kdcwvjSY=; b=qG6f6176S5zYGa
	EXFUX114/Kq77hz603pWHfipxWmWUJhAW6/EIkwu8WOubhRwTJqa/aEOTLXmltv/4ILG0O1agSfHq
	kVuVBmi/HryjPs63FjoUQdcw5ffoqgd3lOPFRNXxLAv/M4waPj6TxwcS19Au6wHEPNA7aXdnQsBAc
	2C9w7JesXMIk+MinZQEjhPB7iczwgHYKmR3YgmdjOa7l8yEfmqL4P06TQeNfUM1npK2EgWebDB4uL
	SY0ViPSDlrByWg5WFOioGN7wtYzfzcWmIkd3T/B+d1a+XgBxLRNrV6Bpc2G/a8P3qwSnBfIk9zd/U
	BfGjVKxWjDVUa4DkPqNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBAfB-0001ob-Qk; Mon, 09 Mar 2020 05:09:13 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBAf1-0001oG-LE
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 05:09:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4013B158B8EA5;
 Sun,  8 Mar 2020 22:09:01 -0700 (PDT)
Date: Sun, 08 Mar 2020 22:09:00 -0700 (PDT)
Message-Id: <20200308.220900.2003952585762736013.davem@davemloft.net>
To: elder@linaro.org
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver (UPDATED)
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200306042831.17827-1-elder@linaro.org>
References: <20200306042831.17827-1-elder@linaro.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 08 Mar 2020 22:09:02 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_220903_699356_D7AF167C 
X-CRM114-Status: UNSURE (   5.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, ohad@wizery.com, syadagir@codeaurora.org,
 ejcaruso@google.com, arnd@arndb.de, devicetree@vger.kernel.org,
 dcbw@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 evgreen@google.com, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, subashab@codeaurora.org,
 johannes@sipsolutions.net, linux-soc@vger.kernel.org, sidgup@codeaurora.org,
 cpratapa@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alex Elder <elder@linaro.org>
Date: Thu,  5 Mar 2020 22:28:14 -0600

> This series presents the driver for the Qualcomm IP Accelerator (IPA).

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
