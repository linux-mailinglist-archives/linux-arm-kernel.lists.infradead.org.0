Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9D71138F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 01:46:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzuRYVyut/BzkHvZhNOOzCyxfqVikJzDjO7vYyJAMNE=; b=LiYx2FI57pcP1h
	81Z8PAyfs7K4tVExuLo2GEx3wjH3Vqh+mK+vboB5ryzg8TQX9OVkwKQiaw2s9/trOvCfWaxJf/VdJ
	ZuyApjMQQF6s96LHbe2rvENFTSEYUHTZvftnh/skBmXMTWsRGHJEfWM0jXYNV9JShtPDzOfE/puZw
	oiQRV1maeZTFpMwx9p2PXTuf+BiXmrW9UDuLguwMid8vQGaFL4Ex8VFuMjH9uhEbSCcMZPwOFPeQp
	xA1vF+Z3xqaHR26groH1XP/U4MtBiPbEiQibmNHgnuuLM2koCf8fnAm8t1ZolWj7wVyc9GPo6y1/y
	jAOhMT1sMzDqdTszUxpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icfHU-0001fV-8Q; Thu, 05 Dec 2019 00:46:08 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icfHM-0001et-CL
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 00:46:03 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191205004553epoutp037743599f0e3c3da670b183cb293fde18~dUwuF88Wl1223412234epoutp03j
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Dec 2019 00:45:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191205004553epoutp037743599f0e3c3da670b183cb293fde18~dUwuF88Wl1223412234epoutp03j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575506753;
 bh=4yx3iV5vYirEct6BeRZWUx6tNEIRqMbuST2Pl2b84Hs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=CKwgtTgFa5Jd30MUoNnsnbxjFbkyhG+MrCoTT6s7hk/PrOJcHCcV8DCZJxziWG+z3
 EOsgpfmMMC+9i0vDL2dkQaRbVf+enjMsxUXMcSqkVJOCp4ScJ+ccnAeRhhlLHxUK7x
 XUgYhoSs6oqWgykqKUVL8Az5LSThCoP5bCiMgwA8=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191205004553epcas1p1ef977b6ac7d666fe7336f4405b9ec6d9~dUwtirXGF1335713357epcas1p1y;
 Thu,  5 Dec 2019 00:45:53 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.157]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47Sxpk4L7TzMqYkb; Thu,  5 Dec
 2019 00:45:50 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 70.32.52419.D3358ED5; Thu,  5 Dec 2019 09:45:49 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191205004549epcas1p29c48279019c4812fbdf92f3a744ac55d~dUwqORc0A0507205072epcas1p2V;
 Thu,  5 Dec 2019 00:45:49 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191205004549epsmtrp1737b8bc0f8edebc49190e5dd6bdd8852~dUwqNeHwq3139631396epsmtrp17;
 Thu,  5 Dec 2019 00:45:49 +0000 (GMT)
X-AuditID: b6c32a37-59fff7000001ccc3-2b-5de8533dd4de
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 41.E9.10238.D3358ED5; Thu,  5 Dec 2019 09:45:49 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191205004549epsmtip18584782c722c1abdc598c3b1606c927f~dUwp6c4oS0331103311epsmtip1i;
 Thu,  5 Dec 2019 00:45:49 +0000 (GMT)
Subject: Re: [PATCH RFC 0/2] PM / devfreq: Add dev_pm_qos support with
 minimal changes
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Leonard Crestez
 <leonard.crestez@nxp.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <f13d1b5e-0c33-4cf4-352d-d48ddf309b5c@samsung.com>
Date: Thu, 5 Dec 2019 09:52:03 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <5794906.l6Fuony6qs@kreacher>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBJsWRmVeSWpSXmKPExsWy7bCmvq5d8ItYg4eLlS0OHdvKbvH19ClG
 i+l7N7FZnD+/gd3ibNMbdosVdz+yWmx6fI3VouvXSmaLz71HGC0+b3jMaHG7cQWbxepzB9ks
 zpy+BJQ99JfNYuNXDwd+j/c3Wtk9ZjdcZPFYsKnUY9OqTjaPO9f2sHlsXlLvsfHdDiaPg+/2
 MHlsudrO4tG3ZRWjx+dNcgHcUdk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW5koK
 eYm5qbZKLj4Bum6ZOUCfKCmUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKLAv0ihNz
 i0vz0vWS83OtDA0MjEyBChOyM55t2sdWcFmu4sSuacwNjBcluxg5OSQETCQuPv3K2MXIxSEk
 sINR4vmxLYwgCSGBT4wSXQ8zIBLfGCXebd3ICtNx8t1CVoiivYwSE2a5QBS9Z5RY+vcqO0hC
 WCBC4s2/BiYQWwTIXvR1DtgKZoHpLBIdiyAmsQloSex/cYMNxOYXUJS4+uMx2GpeATuJmTsf
 M4PYLAIqEt1Nx8DqRQXCJE5ua4GqEZQ4OfMJC4jNCTRn1pI+MJtZQFzi1pP5TBC2vMT2t3OY
 QRZLCFxjl9j5awEbxAsuEqfmX4OyhSVeHd/CDmFLSbzsb4OyqyVWnjzCBtHcwSixZf8FqP+N
 JfYvnQy0gQNog6bE+l36EGFFiZ2/5zJCLOaTePe1hxWkREKAV6KjTQiiRFni8oO7TBC2pMTi
 9k62CYxKs5C8MwvJC7OQvDALYdkCRpZVjGKpBcW56anFhgXGyLG9iRGcyrXMdzBuOOdziFGA
 g1GJh7dh0/NYIdbEsuLK3EOMEhzMSiK82ySexgrxpiRWVqUW5ccXleakFh9iNAWG9kRmKdHk
 fGCeySuJNzQ1MjY2tjAxNDM1NFQS5+X4cTFWSCA9sSQ1OzW1ILUIpo+Jg1OqgbHEMV/4zdb9
 lmHzpJuMPknsW/ibrUiVs4mjVPv33rTl6+v/1fV8K/pi+7Lz39ql+6ce2lMV1lL2Z4Xmm4WS
 hw+yxS+/bH9++lyR9DC5E379z5Ula29FKh3KXCFh8zOa0apIeOG3r/KihT7rLi5/U/h1zdO6
 PGenfVcmCsTYH9cIYJl74rPw5qNKLMUZiYZazEXFiQA4bqVg+wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsWy7bCSnK5t8ItYg0svBC0OHdvKbvH19ClG
 i+l7N7FZnD+/gd3ibNMbdosVdz+yWmx6fI3VouvXSmaLz71HGC0+b3jMaHG7cQWbxepzB9ks
 zpy+BJQ99JfNYuNXDwd+j/c3Wtk9ZjdcZPFYsKnUY9OqTjaPO9f2sHlsXlLvsfHdDiaPg+/2
 MHlsudrO4tG3ZRWjx+dNcgHcUVw2Kak5mWWpRfp2CVwZzzbtYyu4LFdxYtc05gbGi5JdjJwc
 EgImEiffLWTtYuTiEBLYzSix/P4MVoiEpMS0i0eZuxg5gGxhicOHiyFq3jJKdF7ewQhSIywQ
 IfF+w0xmEFsEyJ61+gg7SBGzwEwWiaPrvrGBJIQE1jFKrDthA2KzCWhJ7H9xAyzOL6AocfXH
 Y7BBvAJ2EjN3PgYbxCKgItHddAzsCFGBMImdSx4zQdQISpyc+YQFxOYEmjNrSR+YzSygLvFn
 3iVmCFtc4taT+UwQtrzE9rdzmCcwCs9C0j4LScssJC2zkLQsYGRZxSiZWlCcm55bbFhgmJda
 rlecmFtcmpeul5yfu4kRHNVamjsYLy+JP8QowMGoxMPbsOl5rBBrYllxZe4hRgkOZiUR3m0S
 T2OFeFMSK6tSi/Lji0pzUosPMUpzsCiJ8z7NOxYpJJCeWJKanZpakFoEk2Xi4JRqYKw6uKz3
 7789apZGGfnRm7zP/lPw3sTzVO/UeuanXAfMd3H5OywrDatdyHsldOLWJYHK8Ws4kt995Q4I
 NtXfpsaxL2SF58rKo5dMdt7x/b0+Omd+2tf7liJ5dY1rptmucX1+uav1R+8HxW9uB2Tjfksr
 3pZf+CqZyz/Xb+WhvUfktPemPvoqbaPEUpyRaKjFXFScCACQ0ZgN5gIAAA==
X-CMS-MailID: 20191205004549epcas1p29c48279019c4812fbdf92f3a744ac55d
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191204104624epcas1p16af5e2778fe0691c1ec29b25f11dc385
References: <cover.1574179738.git.leonard.crestez@nxp.com>
 <CGME20191204104624epcas1p16af5e2778fe0691c1ec29b25f11dc385@epcas1p1.samsung.com>
 <5794906.l6Fuony6qs@kreacher>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_164601_359076_6987F083 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
 2.5 BITCOIN_SPAM_02        BitCoin spam pattern 02
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/4/19 7:46 PM, Rafael J. Wysocki wrote:
> On Tuesday, November 19, 2019 5:12:12 PM CET Leonard Crestez wrote:
>> Add dev_pm_qos notifiers to devfreq core in order to support frequency
>> limits via dev_pm_qos_add_request.
>>
>> Unlike the rest of devfreq the dev_pm_qos frequency is measured in kHz,
>> this is consistent with current dev_pm_qos usage for cpufreq and
>> allows frequencies above 2Ghz (pm_qos expresses limits as s32).
>>
>> Like with cpufreq the handling of min_freq/max_freq is moved to the
>> dev_pm_qos mechanism. Constraints from userspace are no longer clamped on
>> store, instead all values can be written and we only check against OPPs in a
>> new devfreq_get_freq_range function. This is consistent with the design of
>> dev_pm_qos.
>>
>> Notifiers from pm_qos are executed under a single global dev_pm_qos_mtx and
>> need to take devfreq->lock, this means that calls into dev_pm_qos while holding
>> devfreq->lock are not allowed (lockdep warns about possible deadlocks).
>>
>> Fix this by only adding the qos request and notifiers after devfreq->lock is
>> released inside devfreq_add_device. In theory this means sysfs writes
>> are possible before the min/max requests are initialized so we guard
>> against that explictly. The dev_pm_qos_update_request function would
>> otherwise print a big WARN splat.
>>
>> Alternatively devfreq initialization could be refactored to avoid taking
>> devfreq->lock but that requires several intricate changes:
>>
>> 	https://protect2.fireeye.com/url?k=0cd18bf1-51473286-0cd000be-0cc47a312ab0-56d7069e720c53c0&u=https://patchwork.kernel.org/cover/11242865/
>>
>> I considered making dev_pm_qos call notifiers outside the lock but
>> that's another complex refactoring and it's difficult to ensure
>> correctness. If two identical qos requests are made in parallel then the
>> second shouldn't return until all notifiers are completely executed for
>> the first and QOS is enforced; otherwise it mostly defeats the purpose
>> of making proactive requests.
>>
>> This series implements the minimal changes in order to implement dev_pm_qos
>> support for devfreq. It only costs a little defensive programming.
>>
>> This series is also marked as [RFC] because it depends on restoring
>> DEV_PM_QOS_MIN/MAX_FREQUENCY inside the pm core:
>>
>> 	https://protect2.fireeye.com/url?k=304e4bce-6dd8f2b9-304fc081-0cc47a312ab0-ae5dd24df5aed564&u=https://patchwork.kernel.org/cover/11250413/
>>
>> ---
>> Changes since "big version" v10:
>> * Drop accepted cleanups
>> * Work with current locking approach (split cleanups into other series)
>> * Drop acks and deliberately relabel as a new series. It still incorporates
>> most previous discussion but takes a different approach to locking.
>> * Don't print errors if devfreq_dev_release is called on error cleanup from
>> devfreq_add_device, just accept that requests and notifiers might not be
>> registered yet. I wish dev_pm_qos cleanups behaved like standard "kfree" and
>> silently did nothing when there's nothing to be done.
>> Link to v10: https://protect2.fireeye.com/url?k=221a9dd6-7f8c24a1-221b1699-0cc47a312ab0-2fdb90bdac06bfe8&u=https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=196443
>>
>> Leonard Crestez (2):
>>   PM / devfreq: Add PM QoS support
>>   PM / devfreq: Use PM QoS for sysfs min/max_freq
>>
>>  drivers/devfreq/devfreq.c | 151 ++++++++++++++++++++++++++++++++++----
>>  include/linux/devfreq.h   |  14 +++-
>>  2 files changed, 145 insertions(+), 20 deletions(-)
> 
> Please resend this series as non-RFC with the ACKs from Chanwoo included.
> 
> It may still be viable to push it for 5.5 during the -rc period.
> 

If Leonard resend this patch with Ack, I'll send the pull-request for -rc period
with the related minimal patches. Thanks.

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
