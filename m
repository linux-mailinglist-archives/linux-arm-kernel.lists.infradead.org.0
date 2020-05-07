Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A7B1C88AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyOTcyuMGWGjzdlUCKs1bvW4axEErdKzG0dOre/VoSw=; b=T0n2s0oRaAbBfa
	mTwkVzlBaoT4E5uQKv9uoXXXdAv2X8vJviinZGPxU8Fbkn6kIacA5OB1qasjvkb055ilIHV5TYttl
	leHGYsx6+jqy/fnHZ4gVqoMxdTQ8jtua14DjsK//W9miA7QSeRqihfUeEODwFZ+dWwwFxPsc3UJWe
	pWCRTSrJ4UHazBVmhZ8TlMrUtXz8ufUp2EQlIsJPXFA4oLnT2AaPMcJ9xNh2HQIMCXAaH6aSb4Hj/
	KC6CKJgQf1bSyT4H5AMrJvjAEMnpIyvBuAesism6pYYtraR2Hj2x1xP02BX5lA2gbpH7rI/nGpAop
	6NkyprNnHU1lyC1/XS7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWexC-0000iQ-NM; Thu, 07 May 2020 11:44:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWex0-0000hg-3F
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:44:27 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200507114423euoutp02e4159f6e18633edccb05d0209a0989f1~MvFob59F42551825518euoutp02P
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  7 May 2020 11:44:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200507114423euoutp02e4159f6e18633edccb05d0209a0989f1~MvFob59F42551825518euoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588851863;
 bh=kpbXruaAjh/ByRT/sbjAJa08QbsfTMyfxI+LUHOHJjE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=cnOpLFckwjQQIyvwRtsLnf3maZtz+WKXlKNPIf5xjett/E2gUVW8+WAh9WPtRpz9r
 +eqTX670FuQmGIfVQBpkN7LDbEOkMtJaErAVibYcQuc+LWRmCfIo7lJPIWKMqVpB81
 y/to8SciCT1MTz3xxoTJ803t29entc+Az3Dc1VPg=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200507114423eucas1p1525d26c3c9881fe5dfb36759f5237d3c~MvFoKuJVH0889508895eucas1p1Y;
 Thu,  7 May 2020 11:44:23 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E1.23.60679.794F3BE5; Thu,  7
 May 2020 12:44:23 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200507114423eucas1p2e326eca146ccc5d6af1a2c70c96d5ff2~MvFn0XtWh2554125541eucas1p2Q;
 Thu,  7 May 2020 11:44:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200507114423eusmtrp27f55bf5f72794bd080a3753e993729e6~MvFnzu0Pa3262232622eusmtrp21;
 Thu,  7 May 2020 11:44:23 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-5a-5eb3f497779b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C6.75.08375.694F3BE5; Thu,  7
 May 2020 12:44:22 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200507114422eusmtip1d6bf9b1fa6e1bb1a25743cc9d4d460f3~MvFnPM7pO3002230022eusmtip12;
 Thu,  7 May 2020 11:44:22 +0000 (GMT)
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Saravana Kannan <saravanak@google.com>, Ulf Hansson
 <ulf.hansson@linaro.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <c9a2dccd-50c0-5e9a-5ca7-69ec063e3630@samsung.com>
Date: Thu, 7 May 2020 13:44:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAGETcx-kC18pwF7uDYE4XwVOWBJN8Lx48LD74LECgDts+VB0gA@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCKsWRmVeSWpSXmKPExsWy7djP87rTv2yOM1g2Wcxi7uxJjBZnfuta
 TPmznMli0+NrrBaHpu5ltNg2azmbxf89O9gtug79ZbNYfmoHi8XxteEOXB5r5q1h9Lh87SKz
 x8Szuh4LNpV6bFrVyeZx59oeNo/NS+o9Np+uDuCI4rJJSc3JLEst0rdL4MpYceY2e8F9zorT
 b/MbGK+xdzFyckgImEjc39jO2MXIxSEksIJR4u+ZBywQzhdGieU9j9ggnM+MEpPXboNreXT2
 AxNEYjmjRMOvtVAt7xklXu28xwpSJSzgKfH63RImEFtEIEhibvcBVpAiZoGrTBLL7y4GS7AJ
 GEp0ve1iA7F5BewkFr++DmazCKhIvDh4FaiGg0NUIFZi+rUQiBJBiZMzn7CA2JwCgRItu1eA
 lTMLyEtsfzuHGcIWl7j1ZD7YdRIC19gl+p/9Z4U420Wis+UeM4QtLPHq+Baod2Qk/u+EaWhm
 lHh4bi07hNPDKHG5aQYjRJW1xJ1zv9hALmIW0JRYv0sfIuwosaTjIVhYQoBP4sZbQYgj+CQm
 bZvODBHmlehoE4KoVpOYdXwd3NqDFy4xT2BUmoXktVlI3pmF5J1ZCHsXMLKsYhRPLS3OTU8t
 NspLLdcrTswtLs1L10vOz93ECExbp/8d/7KDcdefpEOMAhyMSjy8Fh83xwmxJpYVV+YeYpTg
 YFYS4eX5sTFOiDclsbIqtSg/vqg0J7X4EKM0B4uSOK/xopexQgLpiSWp2ampBalFMFkmDk6p
 BkYZM93YtepN2+N32P0rF3lavFSG6/YBtXAGhtVuwst5Ig0ia/skfU1kv5d2fX2gGuUez9/+
 MtPgu5VPwplZGsv4zWdP8j74t/jXnpb3xrxrKyQSmtRjxNsEXa64fCv5tVLsbPryulPb/+7g
 0AiNm3036PF3dcaspbttq0M5V/3Ijle7cMfnuBJLcUaioRZzUXEiAHlwggNXAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCIsWRmVeSWpSXmKPExsVy+t/xu7rTv2yOM5jJbDF39iRGizO/dS2m
 /FnOZLHp8TVWi0NT9zJabJu1nM3i/54d7BZdh/6yWSw/tYPF4vjacAcujzXz1jB6XL52kdlj
 4lldjwWbSj02repk87hzbQ+bx+Yl9R6bT1cHcETp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZ
 WOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZaw4c5u94D5nxem3+Q2M19i7GDk5JARMJB6d/cDU
 xcjFISSwlFHi040tTBAJGYmT0xpYIWxhiT/Xutggit4ySnzZN58ZJCEs4Cnx+t0SsAYRgSCJ
 2d1z2EGKmAVuMkks+/CKDSQhJHCTWaL5mDKIzSZgKNH1tgsszitgJ7H49XUwm0VAReLFwatA
 gzg4RAViJVouakKUCEqcnPmEBcTmFAiUaNm9AqycWcBMYt7mh8wQtrzE9rdzoGxxiVtP5jNN
 YBSahaR9FpKWWUhaZiFpWcDIsopRJLW0ODc9t9hQrzgxt7g0L10vOT93EyMwRrcd+7l5B+Ol
 jcGHGAU4GJV4eC0+bo4TYk0sK67MPcQowcGsJMLL82NjnBBvSmJlVWpRfnxRaU5q8SFGU6Df
 JjJLiSbnA9NHXkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxl4V
 /TO8C6XfTbCa+U/pdc6xuOhmS16Fg8I+droH5I89U/vfL5IZox+95//mK55rYn8ckdTckzr5
 CtNvT3ulH+tD+yw7f6bsi4lTqH1zQVXcUnojl4TfO0f+fUovOi9demF3Z0N8m6p0zydBm4dW
 zXee5Pydo3Bya9Zk1gl2iVel3kv0/1CQUWIpzkg01GIuKk4EAHnc+2bnAgAA
X-CMS-MailID: 20200507114423eucas1p2e326eca146ccc5d6af1a2c70c96d5ff2
X-Msg-Generator: CA
X-RootMTR: 20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
 <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
 <CAGETcx8Cn-b6L2y10LKb91S3n06b6+Be2z_A0402EyNy-8yECg@mail.gmail.com>
 <CAPDyKFrt01tDrCgdf7hjLDTqzOYWJ=m7fNMo-2PB-uHEOzZkmw@mail.gmail.com>
 <CAGETcx-kC18pwF7uDYE4XwVOWBJN8Lx48LD74LECgDts+VB0gA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_044426_273888_48890357 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Saravana,

On 04.05.2020 21:28, Saravana Kannan wrote:
> On Mon, May 4, 2020 at 12:11 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>> In principle we should then be able to rely on the regular defered
>> probe mechanism, just that it's the dummy device that is being defered
>> probed (if we fail to read PID/CID).
>>> Any reason to not do something like that? I'd think that should clean
>>> up a whole lot of this code. Also, if we are primarily dealing with
>>> AMBA devices created from DT, then we might even be able to massage
>>> the fw_devlink feature to optimize this even more when fw_devlink=on.
>>>
>>> Just my 2 cents.
>> Someone should try to implement this to see if it fits well.
> I don't mind taking a stab at this if people are actually okay with
> this approach and will test and merge it if it works. I have no
> platform to test this. I'll wait to hear what others think before I
> jump on this.

The time I've prepared my patch I've also considered something like 
that, but I gave up because timer or notifier based approach was much 
simpler. If you have some time to implement your idea I would be happy 
to test it.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
