Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 222511AE3A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YRTeajD9cHL4XC4Kjw4Tj8NCo5TqStLKX5aE4qLPdMU=; b=Pp2kiWURY6JjTmhoEzmIItQIy
	e6iDZD4s/HJFCAPnvvwthr08kY5nr9lhJ7+QhhYuK437AMdTrM07frnwm9NnCD/4RYPphW9FyhhW5
	T/5/D9PIcdd21YI3Z2a6AwDfoxR2Op2Gtb4j8iJ6kWwAsHSzWBLMsPADvTZrJBEh4nDUKiPt29zdm
	kCtj/WeClMILAIh0+CrGOyUtJpvbE3WTQ1Y6UDhPF7cfGJRJYwd147D8arANK3PAne7NzHwAu5ipo
	Lj+7uxydO+tZj3mdDB/ajCKWeeK/joAQS/EonPKNDJXKZ1QVq0kYm9lfwTrPyz5RD9ZOd8ZbCFKZe
	Qg3L1fxJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUd5-0006IH-91; Fri, 17 Apr 2020 17:18:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUcu-0006Hi-TH
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:18:06 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF28E2078E;
 Fri, 17 Apr 2020 17:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587143884;
 bh=VCLkhpZJoywZlpzhEBTJApIPKcECQYX7x276NlVZDFA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FsGs/zvgF2wpjZPqw2JjueIJwPsTS669phOeZa3g2G7oUW7m24hEsCUKZIqpQW7p1
 HMDAgXmY5CqbA6VqKhXAMZvErC87iS5sQxO+iJxou6sn7f6iPx0lDTd5XUiWVgrxQM
 PYkGWJmT0LtYJyUrPzMv/Cz1YFzNKrc1fWE4G1Jk=
Date: Fri, 17 Apr 2020 13:18:02 -0400
From: Sasha Levin <sashal@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH AUTOSEL 5.4 095/108] ARM: shmobile: Enable
 ARM_GLOBAL_TIMER on Cortex-A9 MPCore SoCs
Message-ID: <20200417171802.GV1068@sasha-vm>
References: <20200411230943.24951-1-sashal@kernel.org>
 <20200411230943.24951-95-sashal@kernel.org>
 <CAMuHMdVrp25m_SDKSC=ntNWxsumcw4JKvHNDeFZT_JnpfQmCxg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVrp25m_SDKSC=ntNWxsumcw4JKvHNDeFZT_JnpfQmCxg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_101804_959540_D59B0E32 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 10:44:01AM +0200, Geert Uytterhoeven wrote:
>Hi Sasha,
>
>On Sun, Apr 12, 2020 at 1:11 AM Sasha Levin <sashal@kernel.org> wrote:
>> From: Geert Uytterhoeven <geert+renesas@glider.be>
>>
>> [ Upstream commit 408324a3c5383716939eea8096a0f999a0665f7e ]
>>
>> SH-Mobile AG5 and R-Car H1 SoCs are based on the Cortex-A9 MPCore, which
>> includes a global timer.
>>
>> Enable the ARM global timer on these SoCs, which will be used for:
>>   - the scheduler clock, improving scheduler accuracy from 10 ms to 3 or
>>     4 ns,
>>   - delay loops, allowing removal of calls to shmobile_init_delay() from
>>     the corresponding machine vectors.
>>
>> Note that when using an old DTB lacking the global timer, the kernel
>> will still work.  However, loops-per-jiffies will no longer be preset,
>> and the delay loop will need to be calibrated during boot.
>
>I.e. to avoid this delay, this patch is best backported after backporting
>8443ffd1bbd5be74 ("ARM: dts: r8a7779: Add device node for ARM global timer"),
>df1a0aac0a533e6f ("ARM: dts: sh73a0: Add device node for ARM global timer").
>
>While the former has been backported to v5.[45]-stable, the latter hasn't,
>probably because it depends on
>61b58e3f6e518c51 ("ARM: dts: sh73a0: Rename twd clock to periph clock")
>
>So please backport the last two commits first.

Done, thanks!

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
