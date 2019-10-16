Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0C4D9768
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m2fv2w1s3FamurM8mXu39X8q4nK2W799ghaHozbBEDU=; b=BDKTX5ny6t21tORHuYbwG+dS+
	6Wan0dKnxL/ncqUbeW0wKkYo6vBvRp8bxF26sB0YKvVRtWp+QthRosunHAAUhfPHBUyKV/VXUuPPY
	rrTApQ+3jrnvp845WhqKIn0JKLXHgLJsVJ6NRqzRd9fC0kL2K4JGqMcKkUuKRQhBetUSTySB1G+zY
	SdDOw1kP92b+5lzgllIaTCvmO6taSEIVLO8ZLQe4vVljqMp5TxrVyiQVoc53K7fiGnlMwTnKuizLl
	r1WHblgViO73DnAhw5bvN56lS4BzBXpsobh9EqjWnw94DTBouLSFIx5syjSvUJ/LWRsVeKgfs7McC
	0TCBEzbiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmCw-00034f-Db; Wed, 16 Oct 2019 16:31:30 +0000
Received: from vulcan.natalenko.name ([104.207.131.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmCg-00033D-Oy; Wed, 16 Oct 2019 16:31:16 +0000
Received: from mail.natalenko.name (vulcan.natalenko.name
 [IPv6:fe80::5400:ff:fe0c:dfa0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 6EDFE604743;
 Wed, 16 Oct 2019 18:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1571243469;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f5ClBeSGQZuxuvvXCwUIlZlu0fB+e4NrR7Ixq109qtA=;
 b=iE77W2j8VjWmzkRi/PaQJs9KBZb+JRoq905SOA3jxnUN0ya9MuZ6FLFA4MZ2EOwPwOBqY1
 vYRKZ3u/eXr+hC+h/9/VqBG42FtUILGopQs/N8dtrpLXv6xezUQNH3Al6HsUZ5NUfJm9Xs
 d3qEHU6kHT30Nqw9HYLnPAGR4myTvh0=
MIME-Version: 1.0
Date: Wed, 16 Oct 2019 18:31:09 +0200
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: Re: mt76x2e hardware restart
In-Reply-To: <f7695bc79d40bbc96744a639b1243027@natalenko.name>
References: <deaafa7a3e9ea2111ebb5106430849c6@natalenko.name>
 <c6d621759c190f7810d898765115f3b4@natalenko.name>
 <9d581001e2e6cece418329842b2b0959@natalenko.name>
 <20191012165028.GA8739@lore-desk-wlan.lan>
 <f7695bc79d40bbc96744a639b1243027@natalenko.name>
Message-ID: <96f43a2103a9f2be152c53f867f5805c@natalenko.name>
X-Sender: oleksandr@natalenko.name
User-Agent: Roundcube Webmail/1.3.10
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name; 
 s=arc-20170712; t=1571243469;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f5ClBeSGQZuxuvvXCwUIlZlu0fB+e4NrR7Ixq109qtA=;
 b=EJlYGk6WtfIdQNWtMr2cQy9J8J7w28KTQLCRDdRHUa6oxniLZklcRFvYgF2g6mTRl3kBNh
 BKWTFueWGni/EjMP8AJQaXYrdeiOYsbjJk88ugWY98jLPwAQZDwktXhL5Stx8WhyrOWI5J
 jtiAdepknOAnKo2f2TYUEwqzAsYBrP0=
ARC-Seal: i=1; s=arc-20170712; d=natalenko.name; t=1571243469; a=rsa-sha256;
 cv=none;
 b=jJrQEg6/HMw06QL5mt4o5gVFnTj55BAufh0fnZYwOph+/Zla/u4ds82EcRRkFszIQdYDPV
 Ghplm+tOxd3O/p9j55laqVbtbQy30GsDKV5Ol/rOG4saVke9YVU9wm/lHzsD24mqmZ5amP
 DfKMcjCDf9SVTnJXreOUpcdtkGpS2ko=
ARC-Authentication-Results: i=1; vulcan.natalenko.name;
 auth=pass smtp.auth=oleksandr@natalenko.name
 smtp.mailfrom=oleksandr@natalenko.name
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_093115_126225_0660FD55 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [104.207.131.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello.

On 15.10.2019 18:52, Oleksandr Natalenko wrote:
> Thanks for the answer and the IRC discussion. As agreed I've applied
> [1] and [2], and have just swapped the card to try it again. So far,
> it works fine in 5 GHz band in 802.11ac mode as an AP.
> 
> I'll give it more load with my phone over evening, and we can discuss
> what to do next (if needed) tomorrow again. Or feel free to drop me an
> email today.
> 
> Thanks for your efforts.
> 
> [1]
> https://github.com/LorenzoBianconi/wireless-drivers-next/commit/cf3436c42a297967235a9c9778620c585100529e.patch
> [2]
> https://github.com/LorenzoBianconi/wireless-drivers-next/commit/aad256eb62620f9646d39c1aa69234f50c89eed8.patch

As agreed, here are iperf3 results, AP to STA distance is 2 meters.

Client sends, TCP:

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  70.4 MBytes  59.0 Mbits/sec  3800             
sender
[  5]   0.00-10.03  sec  70.0 MBytes  58.6 Mbits/sec                  
receiver

Client receives, TCP:

[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.06  sec   196 MBytes   163 Mbits/sec  3081             
sender
[  5]   0.00-10.01  sec   191 MBytes   160 Mbits/sec                  
receiver

Client sends, UDP, 128 streams:

[ ID] Interval           Transfer     Bitrate         Jitter    
Lost/Total Datagrams
[SUM]   0.00-10.00  sec   160 MBytes   134 Mbits/sec  0.000 ms  0/115894 
(0%)  sender
[SUM]   0.00-10.01  sec   160 MBytes   134 Mbits/sec  0.347 ms  0/115892 
(0%)  receiver

Client receives, UDP, 128 streams:

[ ID] Interval           Transfer     Bitrate         Jitter    
Lost/Total Datagrams
[SUM]   0.00-10.01  sec   119 MBytes  99.4 Mbits/sec  0.000 ms  0/85888 
(0%)  sender
[SUM]   0.00-10.00  sec   119 MBytes  99.5 Mbits/sec  0.877 ms  0/85888 
(0%)  receiver

Given the HW is not the most powerful, the key point here is that 
nothing crashed after doing these tests.

-- 
   Oleksandr Natalenko (post-factum)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
