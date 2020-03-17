Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE279188CF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 19:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zQ4neDntPg2jzszQVbQZ+Nn2nhqhYSZq6yImflURMEk=; b=lDgj8qN4QtDt6UR/JpG1wPHM8
	bZMZNdNhCJj5E4dsa4UZy8wd6xb++uwuHHCPR1Ew5evtXeX9yotqu5nVTyaxMS7Ce2qdr6MVBCzJR
	0ODNtzltfR08BYdxWTQHfbvGP44xe1NJd87YgcI0Aig2MOzwI6XX8cpd/4wfEvNmDoUFN3VF72fv8
	o0j9rFPTn5T7Z+ocA2wend5Ygi2/2weM6zQxM7Xv9OmBCoxeTrOe5oKdstw+WaLYVy7pOKrrwASqH
	6kD+COhh3LvNumYU4tMckG3pzWllDgejPQVb3Lc/Vhvp8AYkZGWWz+sixd+j7i5gZOXXZ55vXZR+e
	ViqRJKuyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEGlJ-0001x3-2s; Tue, 17 Mar 2020 18:16:21 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEGl7-0001wM-0k
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 18:16:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Message-ID:References:In-Reply-To:Subject:Cc:To:
 From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LOiksUFklkg8wSbbFyDEYhs3LWuousOngRMWqAii9i8=; b=AIqIR7RZkQor4tIE+CJQZ1ubky
 cWI+1loIE7+hQieD4z4bM3dtv6C6dwYOQqN8U37FWkOGJHRhVf2xczQslWNHNVhxOc53wvM5rbcPe
 E5T35/G5SXiwyC/BcgujPt2qdLbkM+ZkO6NNQHLKWFdQ5MjOnx0iO+jhh3kYt2IoPNXDXHQGEMMc4
 ldbP3l3RSGR5T3vRhyMjjQaZlYOQ5jiJ+s3aVevvXYKL+//T2rIZV+e8Tn79oGsFgxQsHAlrq1Qxz
 DtEEL7xUzKvtzj3VJzKyCoWjMLIJXfvZWzmQGrVBUUIofutubM4SowbeRNx3SamkSNWunjclcUEnD
 RjlKv+0A==;
Received: from spamrelay.zxcs.nl ([185.104.28.12]:39506
 helo=mail-slave01.zxcs.nl)
 by web0081.zxcs.nl with esmtp (Exim 4.92.3)
 (envelope-from <dev@pascalroeleven.nl>)
 id 1jEGkv-0048Ip-Pm; Tue, 17 Mar 2020 19:15:57 +0100
MIME-Version: 1.0
Date: Tue, 17 Mar 2020 19:15:57 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Emil Lenngren <emil.lenngren@gmail.com>
Subject: Re: [RFC PATCH 0/4] pwm: sun4i: Properly turn pwm off and fix stuck
 output state
In-Reply-To: <CAO1O6sccq7c_S8ZMsChBKcVcCn-DDv6awZzNr2BEnh8TH6ZxGg@mail.gmail.com>
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
 <CAO1O6sccq7c_S8ZMsChBKcVcCn-DDv6awZzNr2BEnh8TH6ZxGg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.2
Message-ID: <f96002831730bf262ee61df38642e042@pascalroeleven.nl>
X-Sender: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_111609_199712_B5736228 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K?= =?UTF-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-17 17:45, Emil Lenngren wrote:
> Hi all,
> 
> Den tis 17 mars 2020 kl 17:00 skrev Pascal Roeleven 
> <dev@pascalroeleven.nl>:
>> 
>> Hi all,
>> 
>> For the last few days I've been debugging a lot to get pwm working 
>> again since
>> recent changes in 5.6-rc1 broke it for me.
>> 
>> Testing shows the pwm controller crashes (or the output gets stuck) 
>> when the
>> period register is written when the channel is disabled while the 
>> clock gate is
>> still on. Usually after multiple writes, but one write can also lead 
>> to
>> unpredictable behaviour. Patch 3 and 4 fix this.
>> 
>> Patch 2 contains a fix which wouldn't completely turn off the pwm if 
>> the
>> output is disabled. The clock gate needs to stay on for at least one 
>> more
>> period to ensure the output is properly disabled. This issue has been 
>> around
>> for a long time but has probably stayed unnoticed because if the 
>> duty_cycle is
>> also changed to 0, you can't tell the difference.
>> 
>> Patch 1 removes some leftovers which aren't needed anymore.
>> 
>> Obviously these patches work for my device, but I'd like to hear your 
>> opinion
>> if any of these changes make sense. After days, this one is a bit 
>> blurry for me.
>> 
>> Thanks to Uwe for some help with debugging.
>> 
>> Pascal.
>> 
>> Pascal Roeleven (4):
>>   pwm: sun4i: Remove redundant needs_delay
>>   pwm: sun4i: Disable pwm before turning off clock gate
>>   pwm: sun4i: Move delay to function
>>   pwm: sun4i: Delay after writing the period
>> 
>>  drivers/pwm/pwm-sun4i.c | 53 
>> ++++++++++++++++++++---------------------
>>  1 file changed, 26 insertions(+), 27 deletions(-)
>> 
>> --
>> 2.20.1
>> 
> 
> I also worked on sun4i-pwm some time ago, fixing a bunch of issues.
> One was that disabling the pwm sometimes didn't turn off the signal,
> because the gate and enable bit were modified in the same clock cycle.
> Another was that the current code used an unnecessary sleep of a whole
> period length (or more?) in case of an update to the period, which
> could be very time-consuming if it's a very long interval, like 2
> seconds.
> 
> Note that the behaviour is not unpredictable, if you know how it works 
> ;)
> I fiddled around a long time with devmem2, an oscilloscope and the
> prescaler set to max to figure out how works internally.
> 
> Please try my version I just posted at https://pastebin.com/GWrhWzPJ.
> It is based on this version from May 28, 2019:
> https://github.com/torvalds/linux/blob/f50a7f3d9225dd374455f28138f79ae3074a7a3d/drivers/pwm/pwm-sun4i.c.
> Sorry for not posting it inline, but GMail would break the formatting.
> It contains quite many comments about how it works internally. I also
> wrote a section at http://linux-sunxi.org/PWM_Controller, but it might
> be a bit old (two years), so please rather look at the code and the
> comments.
> 
> /Emil

Hi Emil,

Thank you very much, this is helpful. Ah it was your note on the wiki. 
That is indeed where I took the idea of keeping the gate on and 
disabling the panel from. As a scope is still on my wishlist, the rest 
was just trial-and-error. Judging from your code, there are more edge 
cases which might occur. I will test your code and try to integrate it. 
If it's okay with you, I can post it on your behalf?

If you ask me, it's really unfortunate Allwinner didn't provide a timing 
diagram for such a picky controller.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
