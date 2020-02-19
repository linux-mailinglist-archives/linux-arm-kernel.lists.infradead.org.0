Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F7164D13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 18:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyoVlZQ9ycIKEgzjNwTrZWty5loi9U2N5sbgBH9xijw=; b=MHnqCzYt1gPT5J
	8dd+mk0KSvG673M540GcSzSSH1TXmCojvSNZsPqI/bzHXnpeTh7tA9Ixxs0HNj7izYFnhR+oRb0zt
	UmDCBNSEvKirzcAotSDix4gevL31pcdrfcB7+dByscIJFfUVihebLMndTWcrY3JukqRqpnrmorH5o
	PlRlg6nZHFogaWOenG89e38o57CVJ8+18dY4NGqBYjP7uwYOaTJbcfIJM0LxbUcaeuiHAhwkFL9vG
	f+nOlEY7Gc5NFjfQkkvdL9l4LWkNN54nRcyCxIfFxYc7RSn80msrJPrnX8yyc9kl9S+kWj2TWeHhk
	jfewfYRhFa0+sJrDjbcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4TZh-0003t5-KY; Wed, 19 Feb 2020 17:55:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TZZ-0003s6-6X
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 17:55:46 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5AE8424656;
 Wed, 19 Feb 2020 17:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582134944;
 bh=0eNz+cJ/RDBy8ecXQcT3uWelqBClMaKMm/vujLw3wPI=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=X9DfPOXTQdazkkB9KKYHAGBB/qbfFUSw7v4KWR36gblDg8aWhRB6Yl5FRMUOlSH64
 QxGlDNLaoGdgyN43GmxAc3hxxn5SrQYKCeRJRNW17BqRwEk9VYQEv8gXa8SDvLB9JT
 lXx2AuZfm3Xe7FRtuYhyvv15XxsDEA+/C7v34sLU=
MIME-Version: 1.0
In-Reply-To: <20200218171321.30990-9-robh@kernel.org>
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-9-robh@kernel.org>
Subject: Re: [RFC PATCH 08/11] clk: Remove Calxeda driver
From: Stephen Boyd <sboyd@kernel.org>
To: Alexander Graf <graf@amazon.com>, Andre Przywara <andre.przywara@arm.com>,
 Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh@kernel.org>,
 Robert Richter <rrichter@marvell.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, soc@kernel.org
Date: Wed, 19 Feb 2020 09:55:43 -0800
Message-ID: <158213494351.184098.7525629518595844644@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_095545_262660_AB8529FC 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 netdev@vger.kernel.org, Cornelia Huck <cohuck@redhat.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, iommu@lists.linux-foundation.org,
 James Morse <james.morse@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rob Herring (2020-02-18 09:13:18)
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
