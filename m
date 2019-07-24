Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C83772C20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6aaUooHCaTMdNSVXeSt/4i3OwwDe//2AzoIk7Aa5r4=; b=iwq24RuvkEp8uD
	4tWVrLbwxCdgohsbjIrHe939GFROxRL2Izi0EzVXC88p+YumRWfJNBx5HqiQSpPALd5c9+3CgT6+l
	JtXsRw+SE8tdDXD2ANac9BkvDoUuzWee0HR0TxheTfzV1G+H5gqQgs6K25K4iru4M43XGQpSly0Gt
	8qLl1R1JNGNlHlQgKmvJUhgiMwMRlF241dWWuscB4oAQ2PFJl7QzGjwjNGe1EQQsjRzqwbEs0D6O1
	oXwJBJu8m4qh+s9SnVy8ZOzoS3uZYfZW2XcImHUDvHqmSRJZNcbp3l/Z6APyN2bhZ+2QFYCywX1cu
	WMNej7K2OjgpyWSUpGjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqED9-0005Vy-Oq; Wed, 24 Jul 2019 10:09:27 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqECu-0005UT-8s
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:09:13 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190724100907euoutp029b16f02d478a8b7b1a09378b44ef9563~0UAPUEJ-V0647906479euoutp02i
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 10:09:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190724100907euoutp029b16f02d478a8b7b1a09378b44ef9563~0UAPUEJ-V0647906479euoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563962948;
 bh=XetWQSqaXs6nRe3zf5etzeWMxZUCaNusJKBqu7npMnU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=hhLM2iJQPxFgojXY5kmm8dcM6yh+SMiJhK5fz3yF5sksiJEyxLbT+QqAcL6zdcNoz
 4fp7cNdqd9cEtKCavVw6kPQdARRzbXlR/OvGH2nB3dKa1mUtQ6KTOjC8yeR0mA2Ol0
 +xTB0NumOq2xZOAjf1pOG4L/W3VcZpx6GuIVletA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190724100907eucas1p29ef5c6bfbe6f34cc2b5508c641f07a0e~0UAOj5ott2173521735eucas1p2Z;
 Wed, 24 Jul 2019 10:09:07 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 78.51.04325.24E283D5; Wed, 24
 Jul 2019 11:09:06 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190724100906eucas1p27521c0ef99eda8954fb6462f1a3c40cb~0UANyeGHq1967719677eucas1p2N;
 Wed, 24 Jul 2019 10:09:06 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190724100906eusmtrp21c36cade0f3a6312c1cb5944314ec5cf~0UANkMPD91736717367eusmtrp2H;
 Wed, 24 Jul 2019 10:09:06 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-da-5d382e42ee22
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 9A.57.04146.14E283D5; Wed, 24
 Jul 2019 11:09:06 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190724100905eusmtip2dd6151f7506f21dbce67219eaad087da~0UAMxAXXg0828408284eusmtip2c;
 Wed, 24 Jul 2019 10:09:05 +0000 (GMT)
Subject: Re: [PATCH v4 5/5] DT: arm: exynos4412: add event data type which
 is monitored
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <694617ed-5c02-40cc-2f27-82e8bb0ac6fe@partner.samsung.com>
Date: Wed, 24 Jul 2019 12:09:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190723175853.GA29195@kozik-lap>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOKsWRmVeSWpSXmKPExsWy7djPc7pOehaxBpteG1tsnLGe1eL6l+es
 FvOPnGO16H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWLtkbvsFkuvX2Sy
 uN24gs2ide8RdovDb9pZLb6deMToIOCxZt4aRo+ds+6ye2xa1cnmsXlJvUffllWMHp83yQWw
 RXHZpKTmZJalFunbJXBltC+ZwFawgq3i1rFTzA2MzaxdjJwcEgImEqtWT2DqYuTiEBJYwSjR
 t34VM4TzhVFi/+rlbBDOZ0aJoz83MMO07N9+mh3EFhJYzijRfE4Hwn7LKPGqhR/EFhaIlHh/
 bz1YjYiApsT1v99ZQQYxC8xilrh2fRaQw8HBJqAnsWNVIYjJK+AmseewCojJIqAqsX65M0in
 qECExOUtuxhBbF4BQYmTM5+wgNicAvoSC///A7OZBcQlbj2ZzwRhy0tsfzsH7H4JgUYOifkz
 TzFCnOwicW5tKxOELSzx6vgWdghbRuL/zvlQ8WKJht6FUPU1Eo/750LVWEscPn4R7GJmoFfW
 79KHCDtK7N2/nwkkLCHAJ3HjrSDECXwSk7ZNZ4YI80p0tAlBVGtIbOm5ALVITGL5mmnsExiV
 ZiF5bBaSZ2YheWYWwt4FjCyrGMVTS4tz01OLjfNSy/WKE3OLS/PS9ZLzczcxApPb6X/Hv+5g
 3Pcn6RCjAAejEg9vBZN5rBBrYllxZe4hRgkOZiUR3sAGs1gh3pTEyqrUovz4otKc1OJDjNIc
 LErivNUMD6KFBNITS1KzU1MLUotgskwcnFINjPrbvqiZpkhtWqZkW5Sz9WmC2MRwc82y516n
 fzUvibngNrOwKlWreGt6XuK9Nh+RGwfv+Qaurv9v6vHZqr708sEHWWpXzkr4LHCwmblmrmaC
 /ucLcpdrKiM2+fc2MRteUrug7rfyaJ3i28jw4zIhh7dvaS1LWazaNv1991Tht7NenK+SNZLo
 UmIpzkg01GIuKk4EAN4fLctqAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrDIsWRmVeSWpSXmKPExsVy+t/xe7pOehaxBvvOMlpsnLGe1eL6l+es
 FvOPnGO16H/8mtni/PkN7BZnm96wW2x6fI3V4vKuOWwWn3uPMFrMOL+PyWLtkbvsFkuvX2Sy
 uN24gs2ide8RdovDb9pZLb6deMToIOCxZt4aRo+ds+6ye2xa1cnmsXlJvUffllWMHp83yQWw
 RenZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehltC+Z
 wFawgq3i1rFTzA2MzaxdjJwcEgImEvu3n2bvYuTiEBJYyijxuv8OG0RCTGLSvu3sELawxJ9r
 XWwQRa8ZJU48XwuU4OAQFoiUOHkgE6RGREBT4vrf76wgNcwCs5glVh48wATR8I5R4tnq6cwg
 DWwCehI7VhWCmLwCbhJ7DquAmCwCqhLrlzuDjBEViJDoa5sNdgKvgKDEyZlPWEBsTgF9iYX/
 /4HZzAJmEvM2P2SGsMUlbj2ZzwRhy0tsfzuHeQKj0Cwk7bOQtMxC0jILScsCRpZVjCKppcW5
 6bnFhnrFibnFpXnpesn5uZsYgTG97djPzTsYL20MPsQowMGoxMNbwWQeK8SaWFZcmXuIUYKD
 WUmEN7DBLFaINyWxsiq1KD++qDQntfgQoynQbxOZpUST84HpJq8k3tDU0NzC0tDc2NzYzEJJ
 nLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6OOtYbRg8gtrc/zv15umr5x5Zak1DaOt/ahW869
 PnTtf8PffJW4e9vrok+b1exk3cK1TZNrZU79dUXm7v2ya0RvWijHTRKQlnv5bE1Qt9eX28+W
 T204NnfzyiN2fA0Nxo4valyF/v7x1WRnqlrOMult17rqniMnNvJY1dfvfPlPZC233TSOyweU
 WIozEg21mIuKEwHH8dNt/wIAAA==
X-CMS-MailID: 20190724100906eucas1p27521c0ef99eda8954fb6462f1a3c40cb
X-Msg-Generator: CA
X-RootMTR: 20190605091305eucas1p136332cc3d1a299d90617bddcb365bee0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091305eucas1p136332cc3d1a299d90617bddcb365bee0
References: <20190605091236.24263-1-l.luba@partner.samsung.com>
 <CGME20190605091305eucas1p136332cc3d1a299d90617bddcb365bee0@eucas1p1.samsung.com>
 <20190605091236.24263-6-l.luba@partner.samsung.com>
 <20190723175853.GA29195@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_030912_453009_3EA51DCF 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 kgene@kernel.org, b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, cw00.choi@samsung.com, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 7/23/19 7:58 PM, Krzysztof Kozlowski wrote:
> On Wed, Jun 05, 2019 at 11:12:36AM +0200, Lukasz Luba wrote:
>> The patch adds new field in the PPMU event which shows explicitly
>> what kind of data the event is monitoring. It is possible to change it
>> using defined values in exynos_ppmu.h file.
>>
>> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
>> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
>> ---
>>   arch/arm/boot/dts/exynos4412-ppmu-common.dtsi | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
> 
> I tried to apply this... but prerequisites were not merged into
> v5.3-rc1. This one will have to wait then till next release.
Indeed, I will ask Chanwoo for ack for patch 4/5.

Regards,
Lukasz
> 
> Best regards,
> Krzysztof
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
