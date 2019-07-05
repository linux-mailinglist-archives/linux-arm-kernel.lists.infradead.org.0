Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C70360898
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWe1o4k9LiR77hLCa2EgK/1dQUI9UF8/b+obee8qgO8=; b=tyY3AgdIpjp8i+
	+6GCkPAMIDeRWRTuK6wVEnXyLzigauVIqRXdvKH4Axxoo1AxD2J9dO32xAWbq3EOUuudSDmD6O95y
	/ntDOZad4gg2e/JJV6C+fR0H6B6vdbU1rov8Hk7gSvy4bI555yE78/bQ/EDslWRhdY9n/prr7bRye
	pYB2tGwvbEY0kZJa3hsvxyGxCIY1T+hO2niqh6HvDgo1PloXTW4Z6iV4c+5XrRZ7FJCnG1/XDFl5l
	YJ5haBlAK6O8Q8TdymPpsdf/nOVCubMmmEVQ8/874OCLMTDCZaoD4sbAzF0ggB2+RiAyQ5OSSj6SJ
	CH8pAHKm/TewjzvWoC1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPik-0003Is-NU; Fri, 05 Jul 2019 15:01:54 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPiF-0002zd-FN
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:01:25 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190705150119euoutp02108f7fb5dda7a8272ca0ca3da1494704~uiu8I5sT73120331203euoutp02u
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  5 Jul 2019 15:01:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190705150119euoutp02108f7fb5dda7a8272ca0ca3da1494704~uiu8I5sT73120331203euoutp02u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562338880;
 bh=FKd6Mj3vNO8bNJ6GbhGke6sHU2mU2LiIRVp28H3TLR4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=TWKKUqOzCK07fvkKSXH6HpK01zIsLsgLERsQ+FRa2x0tgc0QoYk8ikkrYytfI6fqk
 xqCURAO8FcodOsb0nn5hVSEXy+xeVjNdrEg+6ZCHc67EXemLTgbEeOvjhU/+Ic9+8R
 /5726OCrtcXzRo1HL0PgcRqD+3o4CMp5Lr9Bt2R8=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190705150119eucas1p27fa85466a960f36410e358a8be20ce37~uiu7whjt_0759507595eucas1p2T;
 Fri,  5 Jul 2019 15:01:19 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 26.0A.04298.F366F1D5; Fri,  5
 Jul 2019 16:01:19 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190705150118eucas1p25cec76e92a4a50a68b7321f88be97f46~uiu6519UW1379413794eucas1p2k;
 Fri,  5 Jul 2019 15:01:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190705150118eusmtrp132bfbac3f00d63077f2cdf17fa13d980~uiu6r0CAe0410604106eusmtrp1v;
 Fri,  5 Jul 2019 15:01:18 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-27-5d1f663f413e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 09.46.04146.E366F1D5; Fri,  5
 Jul 2019 16:01:18 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190705150118eusmtip2a153eeb590dbc01f80a3fefc3f413e88~uiu6VAwZs1530115301eusmtip2J;
 Fri,  5 Jul 2019 15:01:18 +0000 (GMT)
Subject: Re: [PATCH 08/11] video: fbdev: w100fb: convert platform driver to
 use dev_groups
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <ca07c35b-7af1-9573-6378-c7b7bcca40fa@samsung.com>
Date: Fri, 5 Jul 2019 17:01:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190704084617.3602-9-gregkh@linuxfoundation.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTYRTHe/ZeN5o9TsuThcMRRkKa1IelpSmGg750I6RmtvLNSzpl816h
 mJiYzZygbCgaeUs0xURLy4UjZ4jXhQ4/qJWUBZKXBK3U3F4lv/2fc37nnP8fHpaQVFPubKw6
 mdOoVfEyWkS2964OHg26LY04Nl8ukX9c/knLHzxrpuWtX8YoeZ9unpJbO8tpea61njhDK0wV
 jYxi6pFFoHhZnaUY2shlFEutHuepq6JTUVx8bCqn8Q28IYr5Zpqlk8xUenV2KZ2NxskCJGQB
 n4DCr2V0ARKxElyPoLlngeQfvxDkLegJ/rGEoNj4FG2P6Cbe0HYtwXUIWheBh+YQVNismxMs
 64KVMDSdZmdc8XEoGjAydobAjQiGDROMvUFjfyh+2OBYKsaBsNI94NAkPgR1kyuOA3txOEz1
 tlA84wwfDDMO30IcBH9nywi7JrAbTMxUCngthY65codrwC8YGBotFdgNAQ6F6apwPoAL/LC0
 Mbw+CP0lheQWj2Atf3ZruANBXck6zVMBYLaMUPZFBD4CzZ2+fDkY2oYrGH6/E9jmnHkPTqBv
 LyP4shjy8yQ87QUttS309tmC18+JJ0hm3JHMuCONcUca4/+7VYhsQG5cijYhmtP6qbk0H60q
 QZuijva5lZjQijb/Tv+6ZfEVWh692YMwi2S7xX0h0ggJpUrVZiT0IGAJmatYdXGzJI5SZWRy
 msRITUo8p+1BB1hS5ia+u2v6mgRHq5K5OxyXxGm2uwJW6J6NMpevNymuXLalH75EDReF3m80
 dqw3OVWmhnhWnc16e7LPfE/ZFTIu+HyhxmujPDJH6G87ZxrT568OKt4xaiJAt2aSfn9/2mqo
 CS/eb/b2nPnNBfczSnbSozpMrJTuC4pT5kRP75kS1Zq79dRIdq5u3NC0QIb5ZcR9snY9NvyR
 kdoYlZ83odGq/gFufRYLNwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOIsWRmVeSWpSXmKPExsVy+t/xe7p2afKxBo9OiVhc+fqezaJ58Xo2
 i02Pr7FanOj7wGpxedccNouWyyuYHdg89s9dw+5xv/s4k8fmJfUe5/+3sHt83iQXwBqlZ1OU
 X1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5egl/F8/wu2gsOs
 FUsaprE1MF5n6WLk5JAQMJHou7WHrYuRi0NIYCmjxLSP9xi7GDmAEjISx9eXQdQIS/y51gVV
 85pR4nrzFFaQGmGBGInzD8pBakQEjCX6z85iB6lhFljDKLHs9yEWiIbjjBLzlx9kBqliE7CS
 mNi+ihHE5hWwk/ix7yyYzSKgIrH83g82EFtUIELizPsVLBA1ghInZz4BszkF7CX+vJgONodZ
 QF3iz7xLULa4xK0n85kgbHmJ7W/nME9gFJqFpH0WkpZZSFpmIWlZwMiyilEktbQ4Nz232FCv
 ODG3uDQvXS85P3cTIzDSth37uXkH46WNwYcYBTgYlXh4TzjJxwqxJpYVV+YeYpTgYFYS4U0M
 AgrxpiRWVqUW5ccXleakFh9iNAV6biKzlGhyPjAJ5JXEG5oamltYGpobmxubWSiJ83YIHIwR
 EkhPLEnNTk0tSC2C6WPi4JRqYHTSOPaD54AfR+PNq9PaVm86mBl0dtuxtQKZ32P+zFkdZlZx
 TTeVb1Lafa7MaU9e9b2eXqyTO31BJPOklTfLBJP2R3Fmh+6X+z5FPO/r3ET/m98TXqfqqj9f
 m/Ji249/xtY7DnL9nnY14PK93sa6vzfu/riXODvre9eHX+deOhzk4v2XfiK8zMBEiaU4I9FQ
 i7moOBEAxTk02soCAAA=
X-CMS-MailID: 20190705150118eucas1p25cec76e92a4a50a68b7321f88be97f46
X-Msg-Generator: CA
X-RootMTR: 20190704084708epcas1p18ca1621224d6726fa07276e186c198ad
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190704084708epcas1p18ca1621224d6726fa07276e186c198ad
References: <20190704084617.3602-1-gregkh@linuxfoundation.org>
 <CGME20190704084708epcas1p18ca1621224d6726fa07276e186c198ad@epcas1p1.samsung.com>
 <20190704084617.3602-9-gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_080123_687718_EB2224AE 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tony Prisk <linux@prisktech.co.nz>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 7/4/19 10:46 AM, Greg Kroah-Hartman wrote:
> Platform drivers now have the option to have the platform core create
> and remove any needed sysfs attribute files.  So take advantage of that
> and do not register "by hand" a bunch of sysfs files.
> 
> Cc: Tony Prisk <linux@prisktech.co.nz>
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-fbdev@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
