Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A81E15BA1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 08:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0kySCGPbOJRudWDlXc6jwr/AVhRgL/w4qfYwgBOMVY=; b=YSp3965lW3H8oU
	r+/WpMXjnGZX/cSC2xa4fQX2D8JmGUdng0m5lzki/pInFPcVLSusVBQyQE8n9lBeo7oK7Ye74wP6P
	kKSjBhVI1AKmM/0TpB7nXuLyOBT5yjaaNAEkGeDIIdJKlI739snAnJ0VMhLJRfqJMNWwEvXkasFQN
	finp0D9xuNJJ5nIN6IT0d+XFiHZAS3h1WQ5lIs4MUaLCQoqFoJnGf6ms8SILt7ZLZsxZFxhEXLKg/
	iXJMe2vlv0dbqMDZv1T+JK5NBa8vGuXa0UXyKekhEOZViPHiLnf04+61zLxVZQG8KOO0XMT+gKMRR
	8oM/VtidO3sI/WSwa7+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j291s-00029m-OJ; Thu, 13 Feb 2020 07:35:20 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j291k-00027Q-WA
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 07:35:14 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200213073508euoutp014d3e488751612a521d23e381116a790a~y5gB8mHag3188531885euoutp01p
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 07:35:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200213073508euoutp014d3e488751612a521d23e381116a790a~y5gB8mHag3188531885euoutp01p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1581579308;
 bh=yxhnnZFN4xpeYqDaqMbGXmr4Z8OKTV5vkdpP58BDZ5M=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=m2mgv3kSEbxTscz3LG6e9/tq+1t3U6JNZz9LX7aCgI/4KEzqlMLwTJUo4H2fsWy9Q
 M7636dgSf2Fv9rqG15LeVYjvNIWpE6KEeGfkva4lLGSKfTjAqTJa8CY6GAXQr+0Jlx
 0YXzQm8VlxJdhusIMp0jZEW9h+TuI9nnSO/Cn4vo=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200213073508eucas1p16e119f10904f7a049c539aed4f0f076c~y5gB4Nelh2164521645eucas1p1S;
 Thu, 13 Feb 2020 07:35:08 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 09.AE.61286.C2CF44E5; Thu, 13
 Feb 2020 07:35:08 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200213073508eucas1p22d36cf1b15ea9ecd7a22d245e145fe05~y5gBbADf61499814998eucas1p2A;
 Thu, 13 Feb 2020 07:35:08 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200213073508eusmtrp289c345422080c6de682e12c374c70169~y5gBaYfrZ0470804708eusmtrp20;
 Thu, 13 Feb 2020 07:35:08 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-85-5e44fc2c385c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 96.1A.08375.C2CF44E5; Thu, 13
 Feb 2020 07:35:08 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200213073507eusmtip1b413deaca0d82eef849bc98c225005d1~y5gBFDLWm1173711737eusmtip1g;
 Thu, 13 Feb 2020 07:35:07 +0000 (GMT)
Subject: Re: [PATCH] ARM: bcm2835_defconfig: add minimal support for
 Raspberry Pi4
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <5adcb2de-3570-9c4d-5e5b-726b94fb2029@samsung.com>
Date: Thu, 13 Feb 2020 08:35:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <a1d66025baa13b2276b12405544fc7107aac8d6c.camel@suse.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBKsWRmVeSWpSXmKPExsWy7djPc7o6f1ziDN7ON7DY9Pgaq8XlXXPY
 LCbe3sBusW3WcjaLTStusDmwemy9ZeqxeUm9x+bT1R6fN8kFsERx2aSk5mSWpRbp2yVwZSx9
 +oypoIuz4tOq+8wNjMvZuxg5OSQETCQuP//F2sXIxSEksIJRomP9D2YI5wujxLKORiaQKiGB
 z4wStz47wnR0TNrACBFfzihx4okpRMNbRolZU/6ygiSEBUIktnTOAZskIrCQUaL57kGgSRwc
 zAJaErOupILUsAkYSnS97WIDsXkF7CQmb78GtoxFQFXiw+4GMFtUIFbizLHvrBA1ghInZz5h
 AbE5BVwlDmz8AHYEs4C8xPa3ILtAbHGJW0/mM4HslRCYzi4x9csjFoirXSQad12DsoUlXh3f
 AvW/jMT/nTANzYwSD8+tZYdwehglLjfNYISospa4c+4XG8QHmhLrd+lDhB0lnm7bxA4SlhDg
 k7jxVhDiCD6JSdumM0OEeSU62oQgqtUkZh1fB7f24IVLzBMYlWYheW0WkndmIXlnFsLeBYws
 qxjFU0uLc9NTiw3zUsv1ihNzi0vz0vWS83M3MQLTy+l/xz/tYPx6KekQowAHoxIPr8Rr5zgh
 1sSy4srcQ4wSHMxKIrzijUAh3pTEyqrUovz4otKc1OJDjNIcLErivMaLXsYKCaQnlqRmp6YW
 pBbBZJk4OKUaGB0emwce4+98vOLeDkulHa+jJZdocK5S3JDluZJJaouF8fuaDfNU7gpac+/Q
 n37Ff7b/tIdTuCdsDt/66Ci3+i73ikcBlb1fFe/8X/2mrf+YevK8Ny/rCm44T9Fbkcte2Pd7
 0YZbirqLRe+dnhxl5iM0P+a5z9JZOVfklwbNFJrzWruyrl73KLcSS3FGoqEWc1FxIgAkZKGk
 KwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsVy+t/xu7o6f1ziDHYfFbTY9Pgaq8XlXXPY
 LCbe3sBusW3WcjaLTStusDmwemy9ZeqxeUm9x+bT1R6fN8kFsETp2RTll5akKmTkF5fYKkUb
 WhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZSx9+oypoIuz4tOq+8wNjMvZuxg5
 OSQETCQ6Jm1g7GLk4hASWMooMe/rEyaIhIzEyWkNrBC2sMSfa11sEEWvGSW2HjzACJIQFgiR
 eNK7jB0kISKwkFFi9qe9QFUcHMwCWhKzrqRCNJxhlNg/7zDYOjYBQ4mutyCTODl4BewkJm+/
 BraNRUBV4sPuBjBbVCBW4tj2NnaIGkGJkzOfsIDYnAKuEgc2fgBbzCxgJjFv80NmCFteYvvb
 OVC2uMStJ/OZJjAKzULSPgtJyywkLbOQtCxgZFnFKJJaWpybnltsqFecmFtcmpeul5yfu4kR
 GFPbjv3cvIPx0sbgQ4wCHIxKPLwSr53jhFgTy4orcw8xSnAwK4nwijcChXhTEiurUovy44tK
 c1KLDzGaAj03kVlKNDkfGO95JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6
 mDg4pRoYF63cvCfwQ3td9TW2JCnxQjfXzFtL9Ww/iu7/VVFx5rC5Z3FEelwnuy7TsU+Rr5Ze
 LN8b/l18f+GljD+Tn+y4f6fSuaruW0h/fBWrwp7Gdx2LfjTVLIhZlLz5seal6gV9bL+qbv/l
 99nI//51VYeE7/uZm8r47/9q7Z/l+M/vqlzi+p8+DD/MlViKMxINtZiLihMBqTtoY78CAAA=
X-CMS-MailID: 20200213073508eucas1p22d36cf1b15ea9ecd7a22d245e145fe05
X-Msg-Generator: CA
X-RootMTR: 20200212102022eucas1p1c49daf15d3e63eda9a56124bc4eafb57
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200212102022eucas1p1c49daf15d3e63eda9a56124bc4eafb57
References: <CGME20200212102022eucas1p1c49daf15d3e63eda9a56124bc4eafb57@eucas1p1.samsung.com>
 <20200212102009.17428-1-m.szyprowski@samsung.com>
 <a1d66025baa13b2276b12405544fc7107aac8d6c.camel@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_233513_211089_562CC17D 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas

On 12.02.2020 19:31, Nicolas Saenz Julienne wrote:
> Hi Marek,
> On Wed, 2020-02-12 at 11:20 +0100, Marek Szyprowski wrote:
>> Add drivers for the minimal set of devices needed to boot Raspberry Pi4
>> board.
>>
>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Just so you know, the amount of support on the RPi4 you might be able to get
> updating bcm2835_defconfig's config is very limited. Only 1GB of ram and no
> PCIe (so no USBs).

Yes, I know. A lots of core features is missing: SMP, HIGHMEM, LPAE, PCI 
and so on, but having a possibility to boot RPi4 with this defconfig 
increases the test coverage.

> FYI I've been working on getting a workable configuration for arm32, short of
> creating a new config altogether:
> https://www.mail-archive.com/linuxppc-dev@lists.ozlabs.org/msg163770.html
>
> That said, if you insist on booting with bcm2835_defconfig, I have no problem
> with the patch.

Right, having a proper multi defconfig with LPAE is also needed on other 
boards. I would add VIRTUALIZATION and KVM to it too.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
