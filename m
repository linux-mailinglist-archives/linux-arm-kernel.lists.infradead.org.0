Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DDC3B96E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INtfyHaV6QYOH6L27wcR4RwTJatodL4nTdSyZt5HF2c=; b=KhPB0plztTmvvp
	id9YNhPNJqH2g5giwrWeYjRlaOhQE8c5wjEmMi2XkNpu2tGEZgOYQJMlWchuf6zIbi02eKmLE8DDS
	MdvvGcOBwQwJe9C59TIJxTmAppaVs/Ln4zFOQMBJz+h9v1CgTJWAdSbj/Hd/41vPuJAWc7ilK1gwg
	D+l7nQOQ5N4lsIgh10py6wD8uXvrAZsyqz80adVO2vwvBbru7rnG2ouHPWhWJ+PBRnQh63ra6r9ZI
	HPp4bDHUQUYuuJoT58xIkAn+iBT7RXxmemN2Q9JGM1Si6hJqqQNz7oaRcJZl2fJQWryDtLFRLfSWH
	yJEamwsVgVAMvgXHlqNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haN9z-0003Du-5V; Mon, 10 Jun 2019 16:28:39 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haN9b-000370-Q2
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:28:17 +0000
Received: by mail-pf1-x429.google.com with SMTP id s11so5587971pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 09:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pzj2b7hhZ6YD/6WjtCfGTasSPRqjwrp/TQaWna9lfxQ=;
 b=kXJKW/rTaV349rH2wd2kV6vNyJDRVZDsMUieB0amtC3z2MOtjzZbgDTCBZh5U5eSGS
 UxkGP6xS31s2n9lrkS+hvcUCsyD6X8O+nYZSPIWF+A6d/moRShUOf73RMiZsQNi3uq6Y
 bQtvKasAaLHPNTtI7oL1owlaJhtixBq1H3FOnMIye7VZDHUmKpBLD/IP7kvb8c9/yN7c
 sut9J6cyeFklUe+8T0UqEpTVVkFyOC+XTxdq+j6asKfP4bJwAWsJnLDQIuDEy3MO31T0
 ljyr4/C0QWt3Xe/J9v8peYKk2fSABVUaoMa2hTtvTRrQbO9tk3SUFEVLadOQgbFn1e7O
 fnAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=pzj2b7hhZ6YD/6WjtCfGTasSPRqjwrp/TQaWna9lfxQ=;
 b=K99fdb5IGZDqsOu3F7OO274Yz5Wos3Dt3woT2sG1wGvesqb7iJTU6Zd2cpZVb3SFxb
 T3p14DJ0CYPjuh+mvsBkWk1mfhR7uztqiBgm8AcVni3n4lDDAnxIzrGuzYePiS/Lermx
 9RrqNLaLCrrlrcwQxMnRAbFlW4Fb+88gfkM0LGmFcsiIrIKzUPchyB/t6nVNGIRQtNOB
 O6IJ0BiU9De3uqo04ZuhUPPJp+UHbL7M7psPy0rt9HAPf2Y3ZsWclmH81vEOhYk4zsKa
 Sch/xVzwyI5E+QDD99e6Lg220/21kXz8bYAkt51isyQvKBpZOEShrDld5hfLq4zo6ODF
 Psgg==
X-Gm-Message-State: APjAAAWKb/Vdw68JitlgsVG6RNaKWbflg2w6W1DhtBqg3MW1xZf0C2p5
 gCHKMZOC3nmhyGY/znlnsok=
X-Google-Smtp-Source: APXvYqzTViCOZCWdvHqZEgftq3IgTD0jneFi/Mem0y2YPV1OcS6ucnGC/wdKzKKtq7K2fg6dqre64A==
X-Received: by 2002:a63:5207:: with SMTP id g7mr15864200pgb.356.1560184094523; 
 Mon, 10 Jun 2019 09:28:14 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id m24sm13643054pgh.75.2019.06.10.09.28.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 09:28:13 -0700 (PDT)
Date: Mon, 10 Jun 2019 09:28:11 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ken Sloat <KSloat@aampglobal.com>
Subject: Re: [RFE]: watchdog: atmel: atmel-sama5d4-wdt
Message-ID: <20190610162811.GA11270@roeck-us.net>
References: <BL0PR07MB41152EDB169FE9ED1AD3B4C9AD130@BL0PR07MB4115.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR07MB41152EDB169FE9ED1AD3B4C9AD130@BL0PR07MB4115.namprd07.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_092816_027007_65DBF8D1 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "wim@iguana.be" <wim@iguana.be>,
 "alexandre.belloni@free-electrons.com" <alexandre.belloni@free-electrons.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 03:51:52PM +0000, Ken Sloat wrote:
> Hello Nicolas,
> 
> I wanted to open a discussion proposing new functionality to allow disabling of the watchdog timer upon entering 
> suspend in the SAMA5D2/4.
> 
> Typical use case of a hardware watchdog timer in the kernel is a userspace application opens the watchdog timer and
> periodically "kicks" it. If the application hits a deadlock somewhere and is no longer able to kick it, then the watchdog
> intervenes and often resets the processor. Such is the case for the Atmel driver (which also allows a watchdog interrupt
> to be asserted in lieu of a system reset). In most use cases, upon entering a low power/suspend state, the application 
> will no longer be able to "kick" the watchdog. If the watchdog is not disabled or kicked via another method, then it will
> reset the system. This is the current behavior of the Atmel driver as of today.
> 
> The watchdog peripheral itself does have a "WDIDLEHLT" bit however, and this is enabled via the "atmel,idle-halt" dt
> property. However, this is not very useful, as it literally only makes the watchdog count when the CPU is active. This 
> results in non-deterministic triggering of the WDT and means that if a critical application were to crash, it may be
> quite a long time before the WDT would ever trigger. Below is a similar statement made in the device-tree doc for this
> peripheral:
> 
> - atmel,idle-halt: present if you want to stop the watchdog when the CPU is
> 		   in idle state.
> 	CAUTION: This property should be used with care, it actually makes the
> 	watchdog not counting when the CPU is in idle state, therefore the
> 	watchdog reset time depends on mean CPU usage and will not reset at all
> 	if the CPU stop working while it is in idle state, which is probably
> 	not what you want.
> 
> It seems to me, that it would be logical and useful to introduce a new property that would cause the Atmel WDT
> to disable on suspend and re-enable on resume. It also appears that the WDT is re-initialized anyways upon
> resume, so the only piece missing here would really be a dt flag and a call to disable.
> 
Wondering - why would this need a dt property ? That would be quite unusual. Is
there a condition where one would _not_ want the watchdog to stop on suspend ?

If anything I would suggest to drop atmel,idle-halt completely; it really looks
like it would make the watchdog unreliable.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
