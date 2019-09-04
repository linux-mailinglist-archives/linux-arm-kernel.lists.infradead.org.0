Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A56A82AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cctdkCKqzUBatNCmwMIXYoPnvhSvBzZjSBfxvQf7pVw=; b=dI4Lhk8V3FmQqK
	eMEWCrcLS4UDn0Y+yMOlpM9qsLL1WK6KJhvvNKzVpMKJ/poONIMpkaJtPYVexgYL2jBRDB+BXTKXT
	hfxThtHjyOwhzOttLYEl8CokJvP3JHmCxhgJQ4lomT66jTnWSAF39mVKqBEw160ll+OPJT8febmEb
	02cjIf6iVp9N6yJkFpN2dwq1KVHj/PUEn2IeVMReR3sEFKC8WWGkww4rHKnKO1jQEluDah23BB0g2
	jUmyJYxOt0f+ezjWYGj4End/6+Q37WKQKnRxELa+egs3jkWcQWYm4P+671Pex5LR3ZWM37VZmEEyF
	EilwKNBDZLVQj2UyFeWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Uae-0000xa-1X; Wed, 04 Sep 2019 12:40:48 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UXj-0005g6-4Z
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 12:37:49 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190904123743euoutp01f0663b0eb1affddaefc5a02d808d0352~BPH93Mg-C0516205162euoutp010
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  4 Sep 2019 12:37:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190904123743euoutp01f0663b0eb1affddaefc5a02d808d0352~BPH93Mg-C0516205162euoutp010
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567600663;
 bh=yZLCbqKVi9Hs06e9qc3/1f9Heb7upU8Fu+6TMyHC/vo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=dHjeXkVM8Gw2Kk5MqD3+92QtRGeF91rT5l7SZ5aBrmfy3ZFoAx3KlwidQka33jRG5
 WbsFbXcMpie/O552ErZTanOHDaX3lA9XqqUiY0xJbFbOZsvoHzFvfYzruTVDV+WhVe
 Q1CUhkTMqGoZq8b+DBJjIK4Ooti6lFw50wc5hqzw=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190904123742eucas1p28bd5e121274d4c892f407674c960308f~BPH9UZ89C0909709097eucas1p2z;
 Wed,  4 Sep 2019 12:37:42 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id DB.1D.04374.610BF6D5; Wed,  4
 Sep 2019 13:37:42 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190904123741eucas1p1cdc036f1d841accce579f762d1130c96~BPH8ddrDr0994209942eucas1p1G;
 Wed,  4 Sep 2019 12:37:41 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190904123741eusmtrp2262ad688f2a83690e15b780748b3bed5~BPH8PVgeT1156311563eusmtrp2j;
 Wed,  4 Sep 2019 12:37:41 +0000 (GMT)
X-AuditID: cbfec7f5-92d689c000001116-e2-5d6fb016f89c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F4.D1.04166.510BF6D5; Wed,  4
 Sep 2019 13:37:41 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190904123740eusmtip1c12d0a0433e2d181c1b4ae6b5ae4e5dd~BPH7i7pLO0237302373eusmtip1e;
 Wed,  4 Sep 2019 12:37:40 +0000 (GMT)
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
To: Viresh Kumar <viresh.kumar@linaro.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <4e6379a7-0d4b-8e0d-c225-49976b2587e0@samsung.com>
Date: Wed, 4 Sep 2019 14:37:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820092113.gojhe3romdnvm7eu@vireshk-i7>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTURzGO7svu66uHKfpH5OiJYRFlrYPNxKpCBpBYVQQysiVFzPn226z
 rA+uQst36U0bC0XE5bB8mWnZMpjmssJZkSQaDZ3gS/viHGGG5rxKfvs9z/855/wfOAwh76PC
 mbTMK7wuU6NV0DKyo29+YE9oS5Z6X7NhO9da3UxxNb0DFFcxPkNwTmeLlGsbH6K4r10mmvOW
 9SKu2tkt4Z71/pBydS/mpFzBm14p1+pTcVZXH32IVbVZimjV6JCNVlnr81Xl7Rak8rZtTaAS
 ZXEpvDYtl9ftjU+WXaqfcaPsX/iax2xGBvSBLUYBDGAlWMcKiGIkY+T4KYKKiZFVMYfgo62T
 EoUXgf2HQ7p2ZKqiTyIOzAiMPVYkCg8C63wp7U8F4yNgW/AtM8OE4F0wNcz7bQJ/k0CXb4Vp
 HANl78qRn1kcD/emKwk/kzgSuusGV/zN+BzMunooMRME/Y/dpJ8D8AEwOmZp8c4wuDXXSIm8
 DTo9JkJcdEwKhps5Ih+FWusHWuRgmHa0r5aJgKVXNStlAN9GUPp6RCqKSgQ/HbVITB2EHsdn
 yl+GwFHQ3LVXtA9DQ9Mo8tuAA+G7J0jcIRDudVQRos3C3UK5mI6EBUuVRORwKHEvkZVIYVzX
 zLiujXFdG+P/d2sRaUFhvF7ISOWF/Zn81WhBkyHoM1OjL2ZltKHl3/Vx0eF7ibr/XrAjzCDF
 Jtb1JEstpzS5Ql6GHQFDKELYszatWs6maPKu87qs8zq9lhfsaAtDKsLYGxtcSXKcqrnCp/N8
 Nq9bm0qYgHAD2l12ejSRJzfPAR3rDl1MmGyQNeME3/AjidQVt3/nn2rTUODxfki+rHyvHdh4
 wHVCOXWqxjGoL4ltGmedTtPxyZTRabP39EvWE9VYKKnLM5vsN858OmnjnXdytOnH4pT38y8K
 E0X7nA/0O9S/+zvVg/FfcpPUg89DJx6SEW8VpHBJE7OL0Amafztk4alZAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJIsWRmVeSWpSXmKPExsVy+t/xu7qiG/JjDVadU7XYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLTZ+9bDY
 /OAYmwOvx6ZVnWwed67tYfPYvKTeo2/LKkaPz5vkAlij9GyK8ktLUhUy8otLbJWiDS2M9Awt
 LfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S9DKWvH7CWPBGoOLt8uWMDYyneLsYOTkkBEwk
 XvYfY+pi5OIQEljKKPH150zWLkYOoISUxPwWJYgaYYk/17rYIGpeM0psODSJCSQhLOAksef3
 VzaQehEBLYmXN1NBapgFrjJJLN5ziQWioYFV4vK5G+wgDWwChhK9R/sYQWxeATuJSa8mMIPY
 LAIqEvsWXQCLiwpESBzeMQuqRlDi5MwnLCA2p4ClxKzjn9hAbGYBdYk/8y4xQ9jiEk1fVrJC
 2PIS29/OYZ7AKDQLSfssJC2zkLTMQtKygJFlFaNIamlxbnpusaFecWJucWleul5yfu4mRmC0
 bjv2c/MOxksbgw8xCnAwKvHwPpibHyvEmlhWXJl7iFGCg1lJhDd0T06sEG9KYmVValF+fFFp
 TmrxIUZToOcmMkuJJucDE0leSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+
 Jg5OqQZGjsnlN97LNMpl/syrEX79RkMi6aJfVlX2doWpQnPqO91ZHib/nVyivCzpzds3ZuyM
 82Zt/ftTMf7158h5xz8/97e80BB+o0PlrLeLyb6jZ34xBggUmpk9Fnrb8pBZOvTynsap3x6l
 7Zc+4isns83oiMn26SprCqtO2XPMLji029Ar/SO/zpnlSizFGYmGWsxFxYkAkCSn4+wCAAA=
X-CMS-MailID: 20190904123741eucas1p1cdc036f1d841accce579f762d1130c96
X-Msg-Generator: CA
X-RootMTR: 20190820092123epcas2p2170ae19467a5fb19fcfc1acdbecf9381
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190820092123epcas2p2170ae19467a5fb19fcfc1acdbecf9381
References: <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
 <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
 <20190819090928.pke6cov52n4exlbp@vireshk-i7>
 <b831d7c5-c830-fd65-20cf-02e209889c28@samsung.com>
 <20190819112533.bvfyinw7fsebkufr@vireshk-i7>
 <b7093aaf-ea56-c390-781f-6f9d0780bd8e@samsung.com>
 <20190820030114.6flnn2omeys3lih3@vireshk-i7>
 <06ccff05-2152-4bcc-7537-8f24da75f163@samsung.com>
 <CGME20190820092123epcas2p2170ae19467a5fb19fcfc1acdbecf9381@epcas2p2.samsung.com>
 <20190820092113.gojhe3romdnvm7eu@vireshk-i7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_053747_524449_E399C7F8 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 8/20/19 11:21, Viresh Kumar wrote:
> On 20-08-19, 11:03, Sylwester Nawrocki wrote:
>> On 8/20/19 05:01, Viresh Kumar wrote:
>>> Sorry but I am unable to understand the difficulty you are facing now. So what I
>>> suggest is something like this.
>>
>> The difficulty was about representing data from tables asv_{arm,kfc}_table[][]
>> added in patch 3/9 of the series in devicetree.  If you have no objections
>> about keeping those tables in the driver then I can't see any difficulties. 
> 
> The problem with keeping such tables in kernel is that they contain too much
> magic values which very few people understand. And after some amount of time,
> even they don't remember any of it.
>
> What I was expecting was to remove as much of these tables as possible and do
> the calculations to get them at runtime with some logical code which people can
> understand later on.

It might be indeed far from a good design but this is all what we get from the 
SoC vendor. AFAIU those tables are generated based on data from the production
process, likely from some measurements.

I am afraid I will not get more information for that fairly old SoCs in order to 
replace those tables with some sensible code generating the data programmatically,
I'm not sure it would be at all possible to do.

I could add some more comments, similar to description as in my previous RFC 
DT binding (https://patchwork.kernel.org/patch/10886013).

The tables are rather simple, it's mostly all voltage values, only selecting 
values per each frequency and chip revision might get a bit complex. 
I'm not sure we could change that now though.
>> Then IIUC what I would need to change is to modify exynos_asv_update_cpu_opps() 
>> function in patch 3/9 to use dev_pm_opp_adjust_voltage() rather than 
>> dev_pm_opp_remove(), dev_pm_opp_add().
> 
> That and somehow add code to get those tables if possible.

I have changed the code to use dev_pm_opp_adjust_voltage(). I was wondering 
though, what did you mean by "triplet" when commenting on this patch
https://patchwork.kernel.org/patch/11092245 ?

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
