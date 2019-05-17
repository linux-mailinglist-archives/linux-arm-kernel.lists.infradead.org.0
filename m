Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418C72140B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yhlmaboaxjwKwtRx3r475AX5qemxaA2aZNu65CKgXQ=; b=HXbx9qzxL6W5n7
	p6JMaOoCi99D8mqjL2Fi7PoBOq+0LPg93WfCVQdGzQlGAoIdEKVhT78uMYcacEyPAe3tGEawwGRwU
	34xIBTgpo9j8Alhelh0yfK6EkGzeDsKYgcNWPIbMBOWz3TxYhWVqsx4qk2SRSrVSETGQejCakwdQP
	K+Jwu9PAVMJc7h5wZNdlQyJx2eWLNdkJT4IG1Sdesy6Aor3xpaB4mewhTuUdbR9Xz+G4ygVJwV0MF
	SzxzbqvNOWLDn5QEDO8w63APlkCwU17V+9WEti12YipAIfrHszhSoZeoO1ujKKbq4l588L9426L3L
	qqCircU+XgiIYuKdsJiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRX4Y-00012M-0j; Fri, 17 May 2019 07:14:30 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRX4R-00011Y-GT
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:14:25 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id EF981E0002;
 Fri, 17 May 2019 07:14:01 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL v2] ARM: mvebu: arm for v5.2 (#1)
In-Reply-To: <CAOesGMh8EOkSYFQrDh3QsRD79we16dcnbiw3vMRR3KPqFHmEpw@mail.gmail.com>
References: <87v9yw5525.fsf@FE-laptop> <87sgti1j1w.fsf@FE-laptop>
 <CAOesGMh8EOkSYFQrDh3QsRD79we16dcnbiw3vMRR3KPqFHmEpw@mail.gmail.com>
Date: Fri, 17 May 2019 09:14:01 +0200
Message-ID: <87y335zh6u.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_001423_697963_4F3E0576 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Olof Johansson <olof@lixom.net> writes:

> On Mon, May 13, 2019 at 8:16 AM Gregory CLEMENT
> <gregory.clement@bootlin.com> wrote:
>>
>> Arnd, Olof,
>>
>> > Hi,
>> >
>> > Here is the second version first pull request for arm for mvebu for
>> > v5.2.  I fixed the coding style issue dtecting by checkpatch in the
>> > commit "ARM: mvebu: fix a leaked reference by adding missing
>> > of_node_put"
>>
>> Any news about this PR?
>>
>> I sent it less than 24 hours after being rejected by Olof because of a
>> missing space, so I hope this branch will be finally merged.
>
> Hi,
>
> It won't be in the batch I am sending in tonight, but I'll pick it up
> in a late branch.

OK, Thanks!

>The contents are mostly looking like fixes so that
> should be fine. Stay tuned.

Indeed the content is between clean-up and fixes.

Gregory

>
>
> -Olof

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
