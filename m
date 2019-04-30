Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A174FF109
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 09:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LDri49SNmYSvvjpaavXEtAiu0yU01n9GELh0EEkC7c=; b=PF5Tz970NXyX+8
	fAWWDD8Y90r6xsrBUrE3EheNS6gZcc96NVxK6X1Dapc8y5AleyhTeX98ItktggHc5Th/NnywQytcD
	c7BGXF5gXhsyLipkgAesUmKz3EESbMLHbTz8TWMpiu1NEzkwjSI3tvtXYSo8AeeEiUj7iDPuKmmIe
	8fZodoBV208j8IiK1GSQccj9BzGoSVAsEgPNTvnVpYCXL3AQAL8Cj45NIkc02vSYUKuPDg/42X9cl
	z9gBioG0kD9m+nH2GHCUFQyvVOD5h/lu0hbbsdRiqYcJ3ygkamfnsp+BhUo4VzIaoR0KmJiBP+tsq
	1CPLxl7cfcs269l3HY0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLN0t-0001IX-Cw; Tue, 30 Apr 2019 07:17:15 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLN0h-0001Hh-TW
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 07:17:09 +0000
X-Originating-IP: 109.213.14.175
Received: from localhost (alyon-652-1-31-175.w109-213.abo.wanadoo.fr
 [109.213.14.175]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id C432C1BF218;
 Tue, 30 Apr 2019 07:16:49 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] ARM: mvebu: arm for v5.2 (#1)
In-Reply-To: <20190429164610.lm4unu44n4zeej42@localhost>
References: <87v9z56tle.fsf@FE-laptop>
 <20190429164610.lm4unu44n4zeej42@localhost>
Date: Tue, 30 Apr 2019 09:16:49 +0200
Message-ID: <87wojc55em.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_001708_283810_68313A2C 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
 Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

> On Tue, Apr 23, 2019 at 09:58:37AM +0200, Gregory CLEMENT wrote:
>> Hi,
>> 
>> Here is the first pull request for arm for mvebu for v5.2.
>> 
>> Gregory
>> 
>> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
>> 
>>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
>> 
>> are available in the Git repository at:
>> 
>>   git://git.infradead.org/linux-mvebu.git tags/mvebu-arm-5.2-1
>> 
>> for you to fetch changes up to f0a4e491d96735eeaa79f6a48ecc8f75a2f6fba7:
>> 
>>   ARM: mvebu: drop return from void function (2019-04-21 19:02:54 +0200)
>> 
>> ----------------------------------------------------------------
>> mvebu arm for 5.2 (part 1)
>> 
>>  - remove improper error message on kirkwood
>>  - a couple a clean-up patch generated from automatic tools
>>  - clean-up in assembly code allowing using LLVM
>> 
>> ----------------------------------------------------------------
>> Chris Packham (1):
>>       ARM: mvebu: kirkwood: remove error message when retrieving mac address
>> 
>> Nicholas Mc Guire (1):
>>       ARM: mvebu: drop return from void function
>> 
>> Stefan Agner (2):
>>       ARM: mvebu: drop unnecessary label
>>       ARM: mvebu: prefix coprocessor operand with p
>> 
>> Wen Yang (1):
>>       ARM: mvebu: fix a leaked reference by adding missing of_node_put
>
> Please run checkpatch on patches you receive, so I don't have to.

I do have a script running chekcpatch when I apply a patch so I don't
know what happen with this one. Anyway, I fixed it and I am resubmitting
right now.

Gregory

>
> Not merged.
>
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
