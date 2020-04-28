Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AC61BB94F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGV8RQf3Qp1dnUZkpnlY9DSys1Sr8R9hJDENYMLs9uE=; b=n0sLhiiYAO6UKJ
	egLLhMkggTXIZp7HyrYZzJ1+OPxH7zkHU9BYFuBpnkl7wP8vtPc/cFt2+M5b50z/c1BNkVJ0m27si
	3JGzX1To9x8nGrxWtEclgn4D6v5JgETzuH/2Q10Sc13a3RnBeB68A63W4WklbmY6iO7qYCS5QZfyK
	CqgWGVW2sMP/AKtNUcMDtOJe7BvFJfhbVCy0PVGQ4zDVdDHgpwo+iTQJ0Ic55Fw5EUecFzpzMUDWK
	nCXL976UQzXe/6iRWFQhf7xs0ssdau+a+dPv1T03fCYZvsGJi7JgzWlC5dB/isPza/Dk6GJ5ZGzI5
	HzS+mzlWY5q+odue1Y2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTM2a-00078S-QF; Tue, 28 Apr 2020 08:56:32 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTM2G-00074h-Ng
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588064171;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ag/nIHIIOCwHrm+u9Ds/YPYwbuQscrF+6RvhQwuBjfs=;
 b=Q8vfFfIetbJDWdoQyXvI5xZCpGviRuvtLyWVzpTdQXHAj6AbObMFkHtysTRbHR2yj68AC7
 m+XAawWM/RioV3Kw5qP1Boyz5a7pzFm2MRP/22Y0QkeIhwoU+UkIyv9Qwhr4tbDhO9gXe6
 73jDldxXFdu4KmU5kZIvBE6ydYlkvMg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-7X7UlH-EPGaiqqYM_zNc1g-1; Tue, 28 Apr 2020 04:56:09 -0400
X-MC-Unique: 7X7UlH-EPGaiqqYM_zNc1g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46BA6100CC8E;
 Tue, 28 Apr 2020 08:56:08 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-127.bne.redhat.com
 [10.64.54.127])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D90275D9E2;
 Tue, 28 Apr 2020 08:56:05 +0000 (UTC)
Subject: Re: [PATCH] arm64/mm: Reject invalid NUMA option
To: Will Deacon <will@kernel.org>
References: <20200424045314.16017-1-gshan@redhat.com>
 <20200424101132.GC1167@C02TD0UTHF1T.local>
 <f83c0ce1-b1b2-31f4-60c8-15567b87a8ff@redhat.com>
 <20200427225406.7cacc796@gandalf.local.home>
 <20200427225944.185d4431@gandalf.local.home>
 <20200427230920.3d606a2e@gandalf.local.home>
 <7e85ea83-de5f-c789-2e3c-e468a50ed4bd@redhat.com>
 <20200428072509.GA4049@willie-the-truck>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <858cb997-d187-e605-446e-24ac4169b147@redhat.com>
Date: Tue, 28 Apr 2020 18:56:02 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200428072509.GA4049@willie-the-truck>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_015612_858809_CE350792 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 shan.gavin@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 4/28/20 5:25 PM, Will Deacon wrote:
> On Tue, Apr 28, 2020 at 02:35:20PM +1000, Gavin Shan wrote:
>> On 4/28/20 1:09 PM, Steven Rostedt wrote:
>>
>> [...]
>>
>>>
>>> Could this be a bug in the implementation of strncmp() in
>>> arch/arm64/lib/strncmp.S. As I don't know arm64 assembly, I have no idea
>>> what it is trying to do.
>>>
>>> But strncmp("o","off",3) returning zero *is* a bug.
>>>
>>
>> I think it's false alarm. The patch has been in my local repo for a whil=
e.
>> I checked out 5.7.rc3 and tried passing "numa=3Do" to the kernel, @numa_=
off
>> is unchanged and its value is false. I also check the return value from
>> strncmp() as below, it's correct. Nothing is broken. I should have retes=
ted
>> before posting it. Sorry for the noise. Please ignore the crap patch :)
> =

> Hmm, it's still worrying that you had that patch kicking around though, as
> it sounds like it /used/ to be broken. Would you be able to test the LTS
> kernels (5.4, 4.19, 4.14, 4.9, 4.4) to check that we're not missing a
> backport, please? Sorry to be a pain, but I'd like to get to the bottom of
> this!
> =


Sure, There are nothing to worry. I tried the following branches of the sta=
ble
tree. They all looks good in this regard.

    linux-5.6.y
    linux-5.5.y
    linux-5.4.y
    linux-5.3.y
    linux-4.19.y
    linux-4.9.y

linux-4.4.y isn't tried because the corresponding parameter starts to exist
from linux-4.7.y: 1a2db300348b ("arm64, numa: Add NUMA support for arm64 pl=
atforms.")

    # git tag --contains 1a2db300348b | sort -V | head -n 3
    v4.7
    v4.7-rc1
    v4.7-rc2

In the experiment, the following pr_info() is added and I got same output
from above branches:

diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
index b1e42bad69ac..1e0e3491de54 100644
--- a/arch/arm64/mm/numa.c
+++ b/arch/arm64/mm/numa.c
@@ -44,6 +44,8 @@ static __init int numa_parse_early_param(char *opt)
         if (!strncmp(opt, "off", 3))
                 numa_off =3D true;
  =

+       pr_info("=3D=3D=3D> numa_off=3D%s\n", numa_off ? "true" : "false");
+


[    0.000000] NUMA: =3D=3D=3D> numa_off=3Dfalse



There is unrelated compiling warnings in linux-5.3.y:

drivers/pinctrl/pinctrl-rockchip.c: In function =91rockchip_gpio_set_config=
=92:
drivers/pinctrl/pinctrl-rockchip.c:2783:3: warning: this statement may fall=
 through [-Wimplicit-fallthrough=3D]
    rockchip_gpio_set_debounce(gc, offset, true);
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/pinctrl/pinctrl-rockchip.c:2795:2: note: here
   default:
   ^~~~~~~


> Thanks,
> =

> Will
> =


Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
