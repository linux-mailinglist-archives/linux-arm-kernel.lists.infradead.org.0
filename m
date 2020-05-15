Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83431D5673
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toNnYzJnCDcfu0vkr1Ir7GUEcfKspjSoWPqymbiFWVg=; b=XrwZzFurcIhOBa
	nu7+jim0rdeIuVHH+fbJvj0ZZmCSJzXYuPUsYkK5XAlE9KnAJTYJVKCb8yI2PbMHYy7gpdrYzm+QI
	R8EhN+ClAOyeSv/7kZkqnzeXoZFZIfZ441pe6eqZOFsKJXIWZwpN0uY/bWmhnWExTLpQY4PpiXgvv
	GfHa6PPzEKAJ6dP9JyD0m0rsJYRgy3fph4VDp0bQLTSWD6saqhJCahGSRK8oCgCrA+/w+peZgJsqQ
	3T3i1xiEyJfuUSmGZO0Qu9EYi+2t9bDD8wv/xULkni2WgoHw9n0rrnlQa54qIHB2VMzzlS7rqZg2f
	dwHpWIdcd7uAc/iW60sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdU2-000353-VK; Fri, 15 May 2020 16:46:50 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdTu-000338-5u
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:46:44 +0000
Received: by mail-io1-xd41.google.com with SMTP id d7so3432227ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 09:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IMMZB+JJUc5qOhBX30QBDnuLbX4rAj6sJgfoOfzhTFo=;
 b=jd9ZIIqmnVwcFulPqO2uRcF1lTkQA5Qjj7Pz7UvCRcQNcFp6/T08hPQ8o5XsacIFkM
 7qe7gg1MRBRkL08HnDdyO6JIxIsnjS7zn/wu9kWXLSSetKntC80LPEf/z7+rer1D2hYW
 0w8CziOoGZoNwjORGfnl871aV7NgnO6G2a0lKUjhkmoz+grRZN1rmB+UH21bvQX9jxSY
 T9aWhxkeGHPAExBHJNx9G77/MilqiZEot7ElYC4NgTxp9AOr3UN+Cw3JCjcqblXpfNGk
 Rvq0HtS1hpo8ju5+/bjCUfIClpB2u0XgGkEZpf8Tp/Tf5i4rO42BIEUaDsbg6m1iY+Jt
 zdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IMMZB+JJUc5qOhBX30QBDnuLbX4rAj6sJgfoOfzhTFo=;
 b=l4SpfKM0SjimXBbIUG48Kbf5PCKqtbFIOpoWCsIiybdcqlpHOYb/pZE+Net/fv5N/i
 L14lqM8xvxSaLUrqHryaDS50AY/NQuzqxCITdS+tf8n4+XMqjV1wMphKr4z4tsUWrnni
 aSAKSpc8FzO3NTnae8rm2wRyo7fLO2P1VzwzwbECeKtd84CGdbY7jmbCpYmq4VNJc7iQ
 psqlxvS0WFgH8nRBI4lNct5hWP1D0ea3nOJHnwHCCCIW6DkTztoLFVLPXLu43VQc7tSM
 kjN2eCiYwZehUF3ssrYX5X98XLX44ybpN7fkpZDqlIEe+/wfJhROLNyTNSwbcuACWdfy
 SucQ==
X-Gm-Message-State: AOAM533v3D1PaktCR0HvfIwlQdupaD4K1m8Dcr7gpOlME6ndCDv8zOgq
 Mya8/pPPyeRj2i0jsdCdRDqbVm/h0oNIcWwXalU=
X-Google-Smtp-Source: ABdhPJzC3X3JusgKAS/v3FgUIMyfhdCffuY2x8sqOBBV7q9YUvBYNbZ+ftC93DN0kkxM1kr6nsLzm7Rn8ArTRZkg/CQ=
X-Received: by 2002:a02:70c8:: with SMTP id f191mr2113705jac.117.1589561200309; 
 Fri, 15 May 2020 09:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
In-Reply-To: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 15 May 2020 11:46:29 -0500
Message-ID: <CABb+yY1wJMzakpz0h6ZxAh4Z3OB718f+Wq3RP0R4NZ_U=vRMkw@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Viresh Kumar <viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_094642_220994_6903B8CA 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 12:17 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> - The hardware gives us the capability to write the register in
>   parallel, i.e. we can write 0x800 and 0x400 together without any
>   software locks, and so these 32 bits should be considered as separate
>   channel even if only one interrupt is issued by the hardware finally.
>   This shouldn't be called as virtualization of the channels, as the
>   hardware supports this (as clearly mentioned in the TRM) and it takes
>   care of handling the signal properly.
>
I'll leave this one open to bikeshed arguments.

> - With serialization, if we use only one channel as today at every
>   priority, if there are 5 requests to send signal to the receiver and
>   the dvfs request is the last one in queue (which may be called from
>   scheduler's hot path with fast switching), it unnecessarily needs to
>   wait for the first four transfers to finish due to the software
>   locking imposed by the mailbox framework. This adds additional delay,
>   maybe of few ms only, which isn't required by the hardware but just by
>   the software and few ms can be important in scheduler's hotpath.
>
As I asked you yesterday over the call, it may help if you could share
some numbers to back up the doomsday scenario.
I don't believe mailbox will be a bottleneck, unless you send commands
in a while(1) ... but even then you have to compare against the
virtual-channel implementation. (Not to forget one usually doesn't
need/want the dvfs, power, clock, hotplug all happening at the _same_
time)

Please note, SCMI... lets not pretend it is not about making scmi work
with mhu :) ...  itself uses shared-memory transfers and
wait_for_completion_timeout  in scmi_do_xfer().   If some platform
_really-really_ faced speed bottlenecks, it would come to want to
exchange 32-bit encoded command/response over the mhu register,
asynchronously and totally bypassing shmem... which is possible only
now.


> - With the current approach it isn't possible to assign different bits
>   (or doorbell numbers) to clients from DT and the only way of doing
>   that without adding new bindings is by extending #mbox-cells to accept
>   a value of 2 as done in this patch.
>
I am afraid you are confused. You can use bit/doorbell-6 by passing
0x40 to mhu as the data to send.

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
