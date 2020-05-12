Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D58B61CF16A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=UQgFNMAx/GAKYFiX0X/1EX+UeZk6lsBfx/GY2VxaIPI=; b=RLRr0XBgU3p0Ih
	JkGakXc4S92QS6xUU+BdltpFlKonhJe2v2wvsR+ccjHV2znqNTmjJTiCqxsV8D/YI5wZg8NIVQaJz
	x8utmOWkRSTZ2n6wv84DX4HlAMpRget1VuTR/qUPp68bnqtryNvLK6YssCG1e2o1s+cK7LHcmZpnY
	zbgKPY/HEA1CCoPDa69IA/M9MmYERWVC8O/jQPO0EOTt7s0EvdX9g+i1mQzjQPw3agKgxoIBLbUxZ
	bwf7zPnPMQfEhuDTFh5NjSpOf6TW2fWMFCzNkyT5WNVUB/aHbKssmJRwmuoUh/ZSbj2wyIDCV8IkI
	NyTJWRoJA5GFqqGTTEpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYR5i-0007QT-9w; Tue, 12 May 2020 09:20:46 +0000
Received: from m177129.mail.qiye.163.com ([123.58.177.129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYR5W-0007Pe-TJ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:20:37 +0000
Received: from vivo.com (wm-2.qy.internal [127.0.0.1])
 by m177129.mail.qiye.163.com (Hmail) with ESMTP id 641F05C3638;
 Tue, 12 May 2020 17:19:50 +0800 (CST)
Message-ID: <AP*ABgAXCELISG6y0r8HaKrn.3.1589275190376.Hmail.bernard@vivo.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: =?UTF-8?B?UmU6UmU6IFtQQVRDSF0gbWVtb3J5L3NhbXN1bmc6IHJlZHVjZSB1bm5lY2Vzc2FyeSBtdXRleCBsb2NrIGFyZWE=?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 157.0.31.122
In-Reply-To: <CAJKOXPekrkyDf2TMCnX7Nvbdaj-JQwuyqrsurFM4moALqVx8Sw@mail.gmail.com>
MIME-Version: 1.0
Received: from bernard@vivo.com( [157.0.31.122) ] by ajax-webmail (
 [127.0.0.1] ) ; Tue, 12 May 2020 17:19:50 +0800 (GMT+08:00)
From: Bernard <bernard@vivo.com>
Date: Tue, 12 May 2020 17:19:50 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSFVKQ0hLS0tLQ0xMSENLT1lXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhMTElJSk9LTkNCN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6K1E6ORw6Izg#NzIoPE0CSwlDMxowCRVVSFVKTkNCSUxOSkJLT0NDVTMWGhIXVRkeCRUaCR87
 DRINFFUYFBZFWVdZEgtZQVlKTkxVS1VISlVKSUlZV1kIAVlBTkhISjcG
X-HM-Tid: 0a72082ee4906447kurs641f05c3638
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_022035_360350_592BA380 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.58.177.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: opensource.kernel@vivo.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


From: Krzysztof Kozlowski <krzk@kernel.org>
Date: 2020-05-12 17:05:28
To:  Lukasz Luba <lukasz.luba@arm.com>
Cc:  Bernard Zhao <bernard@vivo.com>,Kukjin Kim <kgene@kernel.org>,linux-pm@vger.kernel.org,"linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,linux-arm-kernel@lists.infradead.org,"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,opensource.kernel@vivo.com
Subject: Re: [PATCH] memory/samsung: reduce unnecessary mutex lock area>On Tue, 12 May 2020 at 10:47, Lukasz Luba <lukasz.luba@arm.com> wrote:
>>
>> Hi Krzysztof,
>>
>> I am sorry, I was a bit busy recently.
>>
>> On 5/12/20 7:50 AM, Krzysztof Kozlowski wrote:
>> > On Fri, May 08, 2020 at 06:13:38AM -0700, Bernard Zhao wrote:
>> >> Maybe dmc->df->lock is unnecessary to protect function
>> >> exynos5_dmc_perf_events_check(dmc). If we have to protect,
>> >> dmc->lock is more better and more effective.
>> >> Also, it seems not needed to protect "if (ret) & dev_warn"
>> >> branch.
>> >>
>> >> Signed-off-by: Bernard Zhao <bernard@vivo.com>
>> >> ---
>> >>   drivers/memory/samsung/exynos5422-dmc.c | 6 ++----
>> >>   1 file changed, 2 insertions(+), 4 deletions(-)
>> >
>> > I checked the concurrent accesses and it looks correct.
>> >
>> > Lukasz, any review from your side?
>>
>> The lock from devfreq lock protects from a scenario when
>> concurrent access from devfreq framework uses internal dmc fields 'load'
>> and 'total' (which are set to 'busy_time', 'total_time').
>> The .get_dev_status can be called at any time (even due to thermal
>> devfreq cooling action) and reads above fields.
>> That's why the calculation of the new values inside dmc is protected.
>
>I looked at this path (get_dev_status) and currently in devfreq it
>will be only called from update_devfreq() -> get_target_freq()... at
>least when looking at devfreq core and governors. On the other hand
>you are right that this is public function and this call scenario
>might change. It could be called directly from other paths sooner or
>later.
>
>> This patch should not be taken IMO. Maybe we can release lock before the
>> if statement, just to speed-up.
>
>Yep.
>
>Bernard, you can send just this part of the patch.
>

Sure, I will resubmit a patch in v2.

Best regards,
Bernard

>Best regards,
>Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
