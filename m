Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DF23D304
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9L70BOyGGPNA1/Se4cZnAJoqoeMXp7aSXrMEgnZXekI=; b=TsuOl3IwOd2sFiFdoneFI/VTq
	LvCKPzPGQk0qX1mIp3iG+Qo3mPt4oofetgttLfRaXAWQdurYi0GbGXQxkarj/30ZoONnVW4YTiZiS
	y2ma0I/4nzG25EuYfSY2e64ir1FZfptCdisMHw0op9rXFjndBHOMoU0bL4l7y0bWxK6mT0IGCFkty
	Fje11PqOM3a/anCQ4mDz4EnyBw2cpZnRx/Kc5waik6yeNAi5gvibM7grcYARHfYjJq3VQOlyeakb2
	NAJfTD7Ifw/vNLMMiXXkLjwHldfxLah733H6jXIb5qCyibUwXKpPbKLLX+wFIkXTmdndW3uXKYDC4
	zoU4zmqZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hak13-0003gf-81; Tue, 11 Jun 2019 16:52:57 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hak0U-0003Ut-2S
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:52:23 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5DA7460734; Tue, 11 Jun 2019 16:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560271938;
 bh=EWaGYlUEtSJujntfkWWkNzZfnY+gc4hFdn9MEawiOP4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m2CioZUe39qanfZOhd2/d8dal/I3jVR8/l4r4reFyc8TdLHfBORMaDr9wqALUZid1
 tXv4GBBedi4ZFLoniNZB84Jz3pJncerK1B8KHYBYPZ0lwqMJ2Pm6o+sdLcalqm5fda
 Jh5Mw12a9TpP1nz3RdfIl4YYyZs/3ttYhu6i+BJY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 49EEC60271;
 Tue, 11 Jun 2019 16:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560271937;
 bh=EWaGYlUEtSJujntfkWWkNzZfnY+gc4hFdn9MEawiOP4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GVUgVMbHCn+CkS+MkbgWO1xjbxVXlrgAfcqcLDDPrYmv53U3DmsA9KqaY+VVMcCAX
 LbNUFiCHvOuzzsXWd0/6RoLBMJMwiGH8pqqtxv8asl/vqenfY07xMTVVUgyX7E4/FX
 qU+52UHW3jdR4ObZArHFdrEDpecgTRN8yqq634QI=
MIME-Version: 1.0
Date: Tue, 11 Jun 2019 10:52:16 -0600
From: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
To: Dan Williams <dcbw@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
In-Reply-To: <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
Message-ID: <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
X-Sender: subashab@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_095222_133495_10DBAB36 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 David Miller <davem@davemloft.net>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Networking <netdev@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, Johannes Berg <johannes@sipsolutions.net>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> The general plan (and I believe Daniele Palmas was working on it) was
> to eventually make qmi_wwan use rmnet rather than its internal sysfs-
> based implementation. qmi_wwan and ipa are at essentially the same
> level and both could utilize rmnet on top.
> 
> *That's* what I'd like to see. I don't want to see two different ways
> to get QMAP packets to modem firmware from two different drivers that
> really could use the same code.
> 
> Dan

qmi_wwan is based on USB and is very different from the IPA interconnect
though. AFAIK, they do not have much in common (apart from sending &
receiving MAP packets from hardware).

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
