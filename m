Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C828C1E23D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 16:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0Yj4oZUI3yeaFZIrt87HzUDCqxjKcmbs3Wx3Q/ojq0=; b=iY9boI2MOw6OAj
	PBeD3WSbKche3NyiKJe6q5bpsbrfDdGAkzA6YHn+wX39Sv/5bjU1EPgClPi2GfYCRBC0tWZOnNWAz
	SYTVCI0CM98yib5BNT2etDPWG2aq6iLzyPxXPizPEc2FO3uEonu6ldztyLyUgzC4lyGtQKGVB0Xm5
	J4p+7etntx+9cw1V9SpKZ2KbA9SeNjBJvhsEXWU+5lu/0TzjtUiI7btEtCHfda5TEGOTPpNjVQHtG
	zEMCa+z2aPtF8N9R/lfFJTsXEhJq1fPob0WZKfhTc2xDvGgFr7OElSF+UmLb7+9jD+FGNUHdRcAFd
	Lm1Z1xUboVfJYOilDHhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdaNa-0002vS-6D; Tue, 26 May 2020 14:16:30 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdaNQ-0002uU-US
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 14:16:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZEZ1+yG3T0vEd58X58pERPcfzN4dbTvcTqCMRc8b9RQ=; b=mwjDL+wWgCxatP4XIvGOhsucBR
 sYYetvGOeYtDiCDaYnPMf19gGi5la/8GEIhcC3Me4+QEzKqUEPzQ8E2INyTB3j6c8qBAew7S/s4g3
 Yr6FjMBwCT5Re5vMGbX/NZ4MqVfNEmWtY8VJFGpTnXQwMYyiIMn+3pRNonmA+TDQxhQI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jdaNB-003HxR-V6; Tue, 26 May 2020 16:16:05 +0200
Date: Tue, 26 May 2020 16:16:05 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH v3 7/7] [not for merge] netstats: example use of stats_fs
 API
Message-ID: <20200526141605.GJ768009@lunn.ch>
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526110318.69006-8-eesposit@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526110318.69006-8-eesposit@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_071620_981341_1E480A35 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 01:03:17PM +0200, Emanuele Giuseppe Esposito wrote:
> Apply stats_fs on the networking statistics subsystem.
> 
> Currently it only works with disabled network namespace
> (CONFIG_NET_NS=n), because multiple namespaces will have the same
> device name under the same root source that will cause a conflict in
> stats_fs.

Hi Emanuele

How do you atomically get and display a group of statistics?

If you look at how the netlink socket works, you will see code like:

                do {
                        start = u64_stats_fetch_begin_irq(&cpu_stats->syncp);
                        rx_packets = cpu_stats->rx_packets;
                        rx_bytes = cpu_stats->rx_bytes;
			....
                } while (u64_stats_fetch_retry_irq(&cpu_stats->syncp, start));

It will ensure that rx_packets and rx_bytes are consistent with each
other. If the value of the sequence counter changes while inside the
loop, the loop so repeated until it does not change.

In general, hardware counters in NICs are the same.  You tell it to
take a snapshot of the statistics counters, and then read them all
back, to give a consistent view across all the statistics.

I've not looked at this new code in detail, but it looks like you have
one file per statistic, and assume each statistic is independent of
every other statistic. This independence can limit how you use the
values, particularly when debugging. The netlink interface we use does
not have this limitation.

	     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
