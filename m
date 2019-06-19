Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D464B77E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyHyNRnqcl9/ccQ3FTTZZk4A589BJM+wRn1dqyzL25Q=; b=CPQHmIBGiK4EK8
	uBNM5xp5JlZMEpKvT4vi2TQ6rGHZlCGLgVXsMEzgpa0Yd1R/wWrg5hkAfGa5fbTWqtXrj2lNklGai
	lqE6ONmRSO/d52FR6crQGoRgwPR6Yv3PtFz1qV2c1Ei7aQj+39nL6T6Qa+8EFB6pvBoy0lbeuKM/i
	CNxEMitJkA60VjaPcW7ykv61vGDLgydnQ3CRqdOJNPBYQE8yGARO/Xkzj508koysIMpMO1E1x65xp
	MpfZfdVBJycua3VpZDyupQdOAdW/kf3XPyQmGppXtY94HGLCCGjVWMusoGXpVBUAwXqE/rn00QZjp
	6b4sE+dXtYzc8HKMXeRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZB3-00054O-Oq; Wed, 19 Jun 2019 11:54:57 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZAq-000533-Kn
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:54:46 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5JBrda1035621;
 Wed, 19 Jun 2019 06:53:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560945219;
 bh=3j+Hx7J6UIRaUMzrnC2olgBVhCErI1MY48NNqOIHyYY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ZldXZqV2ajRvFOh5Xc3RmrMxeWp/jwvnvO7cE7c0S6Uz1xeynDttTxYllxLQqhrde
 RGnZPc76Ro6Yiaszg3BmIcsL3KSmslq64OUxJRS3GMGToJS067QdWws+xD2t3QlNgM
 5qqbQ/5czms25mb4+YvCQCuoQUxNgm09nmXE4Suc=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5JBrdLw015952
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 19 Jun 2019 06:53:39 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 19
 Jun 2019 06:53:38 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 19 Jun 2019 06:53:38 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5JBrZSd026049;
 Wed, 19 Jun 2019 06:53:36 -0500
Subject: Re: [RFC v3 0/2] clocksource: davinci-timer: new driver
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Kevin Hilman <khilman@kernel.org>, Thomas Gleixner
 <tglx@linutronix.de>, David Lechner <david@lechnology.com>
References: <20190605083334.22383-1-brgl@bgdev.pl>
 <1ac8cfcf-1d77-9b6b-4aab-4171f6cf80fc@ti.com>
 <67e4688a-09d5-61a3-7406-a91f55045004@linaro.org>
 <5250ca8e-81bf-6b93-1f00-8121605e9baf@linaro.org>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <92ed1030-db75-9da6-b990-0ff92c169fbe@ti.com>
Date: Wed, 19 Jun 2019 17:23:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5250ca8e-81bf-6b93-1f00-8121605e9baf@linaro.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_045444_781776_700F3FAB 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/06/19 11:33 PM, Daniel Lezcano wrote:
> On 14/06/2019 16:25, Daniel Lezcano wrote:
>> On 14/06/2019 12:39, Sekhar Nori wrote:
>>> Hi Daniel,
>>>
>>> On 05/06/19 2:03 PM, Bartosz Golaszewski wrote:
>>>> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>>>>
>>>> This is another version of the new davinci clocksource driver. After much
>>>> discussion this contains many changes to simplify and improve the driver.
>>>
>>> Does this look good to you now? If yes, can you please merge and provide
>>> an immutable branch to me so I can merge dependent mach-davinci patches?
>>
>> Yes, I think it is fine.
>>
>> http://git@git.linaro.org/people/daniel.lezcano/linux.git
>> timers/drivers/davinci
>>
>> It is v5.2-rc4 + (2 x patches)
>>
>> It is merged in clockevents/next which is exported to linux-next and for
>> kernel-ci.
>>
>> AFAIU, the patch was compiled and tested. If not, please let me know.
>>
>> Please, wait a couple of days I confirm the tests passed and you can
>> consider the branch immutable.
> 
> lkp complained, please do not use the branch.
> 
> I'm waiting for Bartosz to fix the issue.

Alright, noted.

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
