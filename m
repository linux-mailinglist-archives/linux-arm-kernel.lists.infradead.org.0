Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FD7108C58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 11:55:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PEQBm+79YQ0ye7+Lbk9HoMGd+2Ht4V+RFyvW3iqJ43M=; b=CtwDqKCJi2gkmGO3xGNu8y5kJ
	5/cQ0DQuPp3GazMcp5Ylpl8p33vsDt0V7y1h1GVzomz26xgOketcuQaeJW1XLtc8r/zZ1lVdwVAcX
	18iuEzS/7S+Vx3fsPi5hmirFfeGM05w7SSI6yqU3m7qewfoFBYcB97S2Fs43G583IzvYnxo4NsNdo
	QP3eaZjaPR3mmCD1Hyk0NFFBJxcCT4xJuU95fT8sGFSAzD2X7A4Zi6BhcWPwXW4HAELAR1Yn8VLsR
	yMLeA7QPAwSk0VEdfE9GoDh7Ih5QB4O+0kBSP4JqQKwwx6BX0lHX6TF8pC8fwOrpJ10NOAeQr3IG1
	UsY/5gpDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZC1W-0002KS-6V; Mon, 25 Nov 2019 10:55:18 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZC1K-0001Vt-Cc
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 10:55:08 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iZC1G-0007GU-5V; Mon, 25 Nov 2019 11:55:02 +0100
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2] kvm: arm: VGIC: Fix interrupt group enablement
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 25 Nov 2019 10:55:01 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191122185142.65477-1-andre.przywara@arm.com>
References: <20191122185142.65477-1-andre.przywara@arm.com>
Message-ID: <e2426986ebc9be4e14eb99028b28a43e@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: andre.przywara@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_025506_594768_BDA1C938 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-22 18:51, Andre Przywara wrote:
> Hi Marc,
>
> this is still a bit rough, and only briefly tested, but I wanted to
> hear your opinion on the general approach (using a second list in
> addition to the ap_list). Some ugly bits come from the fact that the
> two lists are not that different, so we have to consider both of them
> at times. This is what I wanted to avoid with just one list that gets
> filtered on the fly.
> Or I am just stupid and don't see how it can be done properly ;-)

I don't know about that, but I think there is a better way.

You have essentially two sets of pending interrupts:

1) those that are enabled and group-enabled, that end up in the AP list
2) those that are either disabled and/or group-disabled

Today, (2) are not on any list. What I'm suggesting is that we create
a list for these interrupts that cannot be forwarded.

Then enabling an interrupt or a group is a matter of moving pending
interrupts from one list to another. And I think most of the logic
can be hidden in vgic_queue_irq_unlock().

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
