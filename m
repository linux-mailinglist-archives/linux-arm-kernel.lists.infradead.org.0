Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFC82C4E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Esr/x825fhqAL1Ml8bt3/a2SJHciHZi8uKywIJxiULo=; b=OV47jjMTgCG9rJ18JA8Sect4/
	fqDlOLOE9FPu3HZIeDf5MIy6ryMGd3yZKInpKoC3cHcr1ZRnKgUiO+HEzxWRQkNha6WeUV2dE5Eb3
	mnA6EFYQTo8UJayaMrJtRRa0KAM16YE1bOJEN8r+1Eu85ZUiEynhN1UHChuR5cwtdD1UrB0ZfKOYM
	d7KK/gqFkl9mJ0cAPkOW/+7EojYs2xdulLIEICmKxyuurNlcZKHl9Ei8195ywu+1Kb5w8iExxQizw
	FJR5iSfZJE05S0y9z14ngltKLTGpsXDBWzvRVKOgDfRTroOZYUxLwVfLrySM2GC6j47nMXeJUi8xM
	rnE24uHEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZmd-0007LM-0q; Tue, 28 May 2019 10:56:43 +0000
Received: from icp-osb-irony-out6.external.iinet.net.au ([203.59.1.106])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZmV-0007KY-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:56:37 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AoAACTEu1c//aqqnwNWBkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgWWEJoQTg3uRH5M/hj4DVAkBAQEBAQEBAQE3AQEBhD8?=
 =?us-ascii?q?CgwE4EwEDAQEBBAEBAQEDAYZgAQEBAyMVQRALGAICJgICVwYBDAYCAQGDHoF?=
 =?us-ascii?q?qAadJcYEvhUeDHIFGgQwoi2qBQD+BOII2NT6HToJYBI1bhgKUHVkJgR5xXo4?=
 =?us-ascii?q?HhCohgh+KZolELYxBmAZXgSEzGh+DQIIYGo4yYI8WAQE?=
X-IPAS-Result: =?us-ascii?q?A2AoAACTEu1c//aqqnwNWBkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgWWEJoQTg3uRH5M/hj4DVAkBAQEBAQEBAQE3AQEBhD8CgwE4EwEDAQEBB?=
 =?us-ascii?q?AEBAQEDAYZgAQEBAyMVQRALGAICJgICVwYBDAYCAQGDHoFqAadJcYEvhUeDH?=
 =?us-ascii?q?IFGgQwoi2qBQD+BOII2NT6HToJYBI1bhgKUHVkJgR5xXo4HhCohgh+KZolEL?=
 =?us-ascii?q?YxBmAZXgSEzGh+DQIIYGo4yYI8WAQE?=
X-IronPort-AV: E=Sophos;i="5.60,521,1549900800"; d="scan'208";a="163258770"
Received: from 124-170-170-246.dyn.iinet.net.au (HELO [192.168.0.106])
 ([124.170.170.246])
 by icp-osb-irony-out6.iinet.net.au with ESMTP; 28 May 2019 18:56:25 +0800
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
To: Jann Horn <jannh@google.com>, Andrew Morton <akpm@linux-foundation.org>
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
 <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
From: Greg Ungerer <gregungerer@westnet.com.au>
Message-ID: <aa7f66ad-dab5-f0b6-ade9-7d3698d509a9@westnet.com.au>
Date: Tue, 28 May 2019 20:56:23 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_035636_195760_E2D6FBD7 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.106 listed in list.dnswl.org]
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, linux-m68k@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 kernel list <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 27/5/19 11:38 pm, Jann Horn wrote:
> On Sat, May 25, 2019 at 11:43 PM Andrew Morton
> <akpm@linux-foundation.org> wrote:
>> On Fri, 24 May 2019 22:18:17 +0200 Jann Horn <jannh@google.com> wrote:
>>> load_flat_shared_library() is broken: It only calls load_flat_file() if
>>> prepare_binprm() returns zero, but prepare_binprm() returns the number of
>>> bytes read - so this only happens if the file is empty.
>>
>> ouch.
>>
>>> Instead, call into load_flat_file() if the number of bytes read is
>>> non-negative. (Even if the number of bytes is zero - in that case,
>>> load_flat_file() will see nullbytes and return a nice -ENOEXEC.)
>>>
>>> In addition, remove the code related to bprm creds and stop using
>>> prepare_binprm() - this code is loading a library, not a main executable,
>>> and it only actually uses the members "buf", "file" and "filename" of the
>>> linux_binprm struct. Instead, call kernel_read() directly.
>>>
>>> Cc: stable@vger.kernel.org
>>> Fixes: 287980e49ffc ("remove lots of IS_ERR_VALUE abuses")
>>> Signed-off-by: Jann Horn <jannh@google.com>
>>> ---
>>> I only found the bug by looking at the code, I have not verified its
>>> existence at runtime.
>>> Also, this patch is compile-tested only.
>>> It would be nice if someone who works with nommu Linux could have a
>>> look at this patch.
>>
>> 287980e49ffc was three years ago!  Has it really been broken for all
>> that time?  If so, it seems a good source of freed disk space...
> 
> Maybe... but I didn't want to rip it out without having one of the
> maintainers confirm that this really isn't likely to be used anymore.

I have not used shared libraries on m68k non-mmu setups for
a very long time. At least 10 years I would think.

Regards
Greg




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
