Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4691ED878
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 00:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:From:Subject:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2ibIjjRMfRGbdQqeNA8ebqVfVm/TI3yfn3kIAaQi2I=; b=qGggJWwGu0dPNY
	eRFEEenDGioQFU1pHeC8Xk8/KN+cISgV/Rc6KcBIYmTyIEniWFeIXuXT+CdjyxEWtIm8pdpIZKW0L
	56E4x/+4EXgXcM9eox3R0yxkdvaJCPv3kSf1IjTCxoGacJvOyG9VqyK2c/f9SqgouL4bHrabEXTTo
	QiJWD/k5YgTTBAeP/ZwocfevDjdBdUQKNkCdQwQ6HjVRW67dvJTGyJFI4KnOT0zHgTqePy94msVLa
	uG+WyTAfW+6RCGuixgL1xdCZS+Ew1zEJIbbQjyZNxID/7l3+BB3LJok5EH9HoPvlIaoQfmgMwkZpU
	5a9cUPu5lBFULFPP36YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgbfK-0000Bo-W6; Wed, 03 Jun 2020 22:15:19 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgbfA-0007ll-TO
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 22:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1591222509; x=1622758509;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version:subject;
 bh=5CLSuOEl6kp/m5zDZRq2EDb6vpTaiAn/I7znqlFCqRY=;
 b=sReUeHvwaCq0m5/SEX06N9Vrq7yxbFHKEaKTi2Qa91kywkGGfTaDBznA
 iCiN8qBXkA1VOxyIQ1pC7ZEkzQQbOnpU+9e+lLs70kRUFY9D4HLEgRv/y
 jNw2wBAIXw0E5fqdX8sDdg1/5xEePvqtA/i9D+B7uL5I1Mgf9VHeV7h24 s=;
IronPort-SDR: 7hvDfCXNo8Vr7FgXXyGQZNr75iNAVfSbjODKi+Nx9uHtlKKxhu1o9kNG4QhtvP3RxxpPGjN+i0
 TO8KiY5N0iCA==
X-IronPort-AV: E=Sophos;i="5.73,470,1583193600"; d="scan'208";a="35664223"
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Thread-Topic: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2b-baacba05.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 03 Jun 2020 22:14:52 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-baacba05.us-west-2.amazon.com (Postfix) with ESMTPS
 id 16D47A17E3; Wed,  3 Jun 2020 22:14:51 +0000 (UTC)
Received: from EX13D02UWB003.ant.amazon.com (10.43.161.48) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 3 Jun 2020 22:14:50 +0000
Received: from EX13D21UWB003.ant.amazon.com (10.43.161.212) by
 EX13D02UWB003.ant.amazon.com (10.43.161.48) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 3 Jun 2020 22:14:50 +0000
Received: from EX13D21UWB003.ant.amazon.com ([10.43.161.212]) by
 EX13D21UWB003.ant.amazon.com ([10.43.161.212]) with mapi id 15.00.1497.006;
 Wed, 3 Jun 2020 22:14:50 +0000
From: "Herrenschmidt, Benjamin" <benh@amazon.com>
To: "maz@kernel.org" <maz@kernel.org>, "Saidi, Ali" <alisaidi@amazon.com>
Thread-Index: AQHWOQ5TND6+7PCCIEqxmbZ5Z514UqjHAeMAgAB0yQA=
Date: Wed, 3 Jun 2020 22:14:50 +0000
Message-ID: <f9e9d8c37eb92e4b9576bfcb4386ff6ef00eddce.camel@amazon.com>
References: <AE04B507-C5E2-44D2-9190-41E9BE720F9D@amazon.com>
 <622fb6be108e894ee365d6b213535c8b@kernel.org>
In-Reply-To: <622fb6be108e894ee365d6b213535c8b@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.100]
Content-ID: <C15F2A7576D9BC408321F94A140F8E8E@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_151509_082873_EB857C92 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [52.95.48.154 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>, "Machulsky,
 Zorik" <zorik@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Zilberman,
 Zeev" <zeev@amazon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "Woodhouse,
 David" <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-03 at 16:16 +0100, Marc Zyngier wrote:
> > My original patch should certain check activated and not disabled.
> > With that do you still have reservations Marc?
> 
> I'd still prefer it if we could do something in core code, rather
> than spreading these checks in the individual drivers. If we can't,
> fair enough. But it feels like the core set_affinity function could
> just do the same thing in a single place (although the started vs
> activated is yet another piece of the puzzle I didn't consider,
> and the ITS doesn't need the "can_reserve" thing).

For the sake of fixing the problem in a timely and backportable way I
would suggest first merging the fix, *then* fixing the core core.

Cheers,
Ben.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
