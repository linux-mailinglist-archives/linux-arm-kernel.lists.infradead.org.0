Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B52A616A321
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:53:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grqqNMOEnjMKll7HtuM9CBre4Zc8Z0/jrfHgeelcTmk=; b=FULiCfTRVypxRw
	bsmqnfPEfSDGVCO97PaRXEbSIpcW34O9HxENx2lUTpx/o/CVg9G93LbCDcbStq7AOUOhSI+n8qGXf
	w9UP6faIU/BHFLT/xnq3Zl1vreQ3uvGKVlxn5c9RPSMr3Z8z7Yw6GDRWV7YVW8nXxbBo3Qgk64psu
	yqRjnEKGfOGtgpspeFVxEACbzaEKnHqZ3SjQktBwgaxqVGk5RHvcnPt5NmKjeeU7i7kNqjSS281HC
	b1CV46t2LuWPr8wIFk4qIY1gJ2mvtCvL1fmus9KXTel/GH+/e7QnrJ6Fm+TZ+FLkGU3hs1Fy7kXCN
	Ht470bs+zrQlRvXYTaHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AQU-0007sX-8q; Mon, 24 Feb 2020 09:53:22 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69w8-0005WD-NR; Mon, 24 Feb 2020 09:22:02 +0000
Received: from [192.168.178.56] ([109.104.43.98]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MGi6m-1jA1oK1ycM-00DqDT; Mon, 24 Feb 2020 10:21:42 +0100
Subject: Re: [PATCH v2] irqchip/bcm2835: Quiesce IRQs left enabled by
 bootloader
To: Lukas Wunner <lukas@wunner.de>
References: <20200212123651.apio6kno2cqhcskb@wunner.de>
 <61cc6b74-3dd2-38d0-6da0-eb3fbd87c598@i2se.com>
 <20200223182445.n44wgrourk4cpfoq@wunner.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <1a5735e8-b876-92e4-9f1e-687f5abf8708@i2se.com>
Date: Mon, 24 Feb 2020 10:21:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200223182445.n44wgrourk4cpfoq@wunner.de>
Content-Language: en-US
X-Provags-ID: V03:K1:nvv+kzY7b4+AacEf0WpzQB8/RizEp3+ZM6DrnRkvntJts48S1Pw
 rOcsEq61Ufa2KgomwK6FKBjdHDbxoyzKZcaFckx5h0rSqwHToryJcMrXqIMg2baqOSOoVkL
 7kz9+JW7d2XTEd9ZaxchbR9jPOTPlhyIPA2jNxnH30QPJXyBXfnW9aGu8ZTbKx+czIe5xYo
 vmJkkzZJOQH6cNOLp4MBA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fAsX8aDpBAI=:/wSapfaezyq+vnt/TzdcWr
 HLvx64INvtF3e82wUf+qOZiYxrFUCJ/aIhLi9DTMRBxUOfcBjkk98VZVh7nwgY2plXye0Ngsv
 dRztdjzU3ZxL89f5kO6rrcSWfZ7mrg4iZK3U7SsZ1ZE/6Zi1xdZ0lWh0nweqf5KJ6tDzghp9t
 zN5V7RfjsNhus25gjZkFfecbY/PhjDbr808sukOEXuBZm8k8c7r6KnHRjAoJRVhMR8H4JP0An
 Ls4RU+jCZSCB+5zTrVKYrnORTpP4GF+eNgOFPPSnJNi7m+OmozV/Eg3PBtWitHIw3bA+PQjag
 Lx268ak1oVJHCiv6+R/dYSCbKjMnih/zEFf+sqw3//zrwNyaGkLo5uHwnuINzYZcch5p7Sl7s
 90k9ToxqbFTaMuwG473sB8X7A33ET5NxKm9e6cB+yNHWMzIHarGPZRADS2XG46v4j/Bw+4rlq
 gpPWn7HgX+fK7BFfE4VPj7DMQGNmKtLu9ScH8FEc70oh/Y5s3RsQexbjUZKizp1U4FHLcCJXB
 CVoeATEmafQAajFSf7y1hcNF883fL7pVuFI9lq0o1GxZcn5fBOsD1+6yx3wjuBc+gYiELf0Ev
 cMrgwCAr27zyIVZqWPyycA0QQbUxuiuSABK3LnaDl0qibNur/V8xO5upivU9ZSyvWT/CNZ5u4
 Zd3gMkLljB2uJpmPiXI/S94WskRRsJILUtGI4zzn8O8e0CjwhgmKIdt5whryEji03uFePjU5P
 GObo3F7YUN4HIIKv5f92OmJZpuAUiKt+AhLjlKmTHNPyKat7ZbYr8s2IIM6ABXkStqnSXVxEn
 mwTRduyOrKY0l9tCzlBOH3ZCGWkdWAdHj5Ueur/gtT218+bEFEpjAizflyQUGn5ay3BXm7X
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_012201_076127_5B62B773 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Scott Branden <sbranden@broadcom.com>, Marc Zyngier <maz@kernel.org>,
 Serge Schneider <serge@raspberrypi.org>, linux-kernel@vger.kernel.org,
 Phil Elwell <phil@raspberrypi.org>, Matthias Brugger <mbrugger@suse.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Martin Sperl <kernel@martin.sperl.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Kristina Brooks <notstina@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukas,

On 23.02.20 19:24, Lukas Wunner wrote:
> On Sun, Feb 23, 2020 at 06:59:56PM +0100, Stefan Wahren wrote:
>> thanks for all the investigation. Unfortunately the patch below doesn't
>> compile, since it lacks the definiton of REG_FIQ_ENABLE.
> Ugh, I recall fixing that when compile-testing.  I must have forgotten
> to invoke "git commit --amend" before "git format-patch".
>
>> Btw the name is a little bit unlucky because it defines a single flag
>> within REG_FIQ_CONTROL instead of a separate register.
> The Foundation's repo uses that name so I stuck by it to reduce the
> number of merge conflicts Phil will have to resolve.  Happy to change
> though, suggestions welcome.

readability has a higher prio. How about:

#define FIQ_CONTROL_ENABLE BIT(7)

Regards
Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
