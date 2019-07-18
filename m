Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103A56CF64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 16:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i69S9iY0nIu8SaJqeYQd10fOFFRZDYCWMb7OLlux4Mc=; b=derPMiPbm+Uh/l
	j4UFNi/8OpjrRBlMV5OqjB4kGU1hh1IHwxyhzBfGeSdf/LYKxIMrvvNbTg6cPaMgOwiyHZRS3BWD/
	doOaOkzqVLGOMwrwybSOIWPBS5EV58tLfCPYTRBM30LxyO24vJ1k2SSbPJoqAbAWIbO4GbpczCoTr
	jjl83Gs9gZ9h/BZa8K9rPpiC3+ZgYO6YKit5pFY3QUCYF6WxbrU5BGL1oIAV6flymhefNiotB4Zgx
	YW6s3gUGlAbXhzF/O6qHyyo8pqnuB97u55D3jxyOH2nc01byRdwqtXELQcpBE1dzZ3o9xDBc7J4jQ
	YSNQpzg35RPzGXHOh+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6zh-0001Rc-J1; Thu, 18 Jul 2019 14:02:49 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6zB-0001QJ-55
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 14:02:19 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718140215euoutp01c31306aed48f3219f67833b0533a5941~yhUEML3xl2451924519euoutp01F
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:02:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190718140215euoutp01c31306aed48f3219f67833b0533a5941~yhUEML3xl2451924519euoutp01F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563458535;
 bh=Z73bues8FHpZhyrw8DETK5H+SvUwyqneslorNXufFSA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=lGeQJ168mF9cRylq7PPn861wlIbBWHfEi7RcWK4wxQdENSTvFNA8pF+Y/mDbLBP+8
 YnAO2Q4MfsZOt0uVdq6yUpC0GaJn4rPv/UuILJ6IcPMnX5dHCw2ajMmu4ZH24kia+n
 bngzQ+MjCHSaZxgLV3/J5aeoScEE63GSdwm+Qi90=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190718140214eucas1p1e762aaadd89f2291eb9f8832e13a6ebc~yhUDpzs3f1953719537eucas1p1g;
 Thu, 18 Jul 2019 14:02:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E4.91.04377.6EB703D5; Thu, 18
 Jul 2019 15:02:14 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190718140213eucas1p2c57432f2d3b1a0ef3d00e999398e482e~yhUC4pbo43145531455eucas1p2V;
 Thu, 18 Jul 2019 14:02:13 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190718140213eusmtrp17c783e7d0fbeafc43ecdfd3ddcaa3eab~yhUCqdvV70046800468eusmtrp1R;
 Thu, 18 Jul 2019 14:02:13 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-ce-5d307be6b25d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DF.03.04140.5EB703D5; Thu, 18
 Jul 2019 15:02:13 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190718140212eusmtip25c2c71a123cc20791e0f7de5d50e94d5~yhUCGsifr0049100491eusmtip2d;
 Thu, 18 Jul 2019 14:02:12 +0000 (GMT)
Subject: Re: [PATCH RFC 3/8] dt-bindings: exynos: Add ASV tables binding
 documentation
To: Rob Herring <robh@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <4c0ad46b-6790-b154-9c55-587b87dc204e@samsung.com>
Date: Thu, 18 Jul 2019 16:02:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190429172337.GA30032@bogus>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJKsWRmVeSWpSXmKPExsWy7djPc7rPqg1iDRZt57PYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C02Pb7GanF51xw2ixnn9zFZrD1yl91i6fWLTBa3G1ewWSza+oXd
 4v+eHewOvB5r5q1h9Ni0qpPNY/OSeo++LasYPT5vkgtgjeKySUnNySxLLdK3S+DKOHn1HWPB
 Y+aKU6/2sDYw/mXqYuTkkBAwkVh0ZxeQzcUhJLCCUWLD7V+MEM4XRok7p0+xQjifGSXm3nwO
 lOEAa5n+UA8ivpxRYtLV2VBFbxkleqZ1soPMFRaIkGiaeYsFxBYRUJT43TYNrIhZ4CiTxIv3
 XWBFbAKGEr1H+xhBbF4BO4mGpu9gNouAqsSFUxvAbFGgQaeOzGOBqBGUODnzCZjNKaAtcbK7
 GWwOs4C4RNOXlawQtrzE9rdzmEGWSQg8Ypd4tvAFK8SnLhJXp3+C+lpY4tXxLewQtozE6ck9
 LBANzUAv7L7NDuFMYJS4f3wBI0SVtcTh4xdZQQHALKApsX6XPkTYUWLZiSvskHDhk7jxVhDi
 CD6JSdumM0OEeSU62oQgqlUkfq+aDnWClET3k/8sExiVZiF5bRaSd2YheWcWwt4FjCyrGMVT
 S4tz01OLjfJSy/WKE3OLS/PS9ZLzczcxAhPY6X/Hv+xg3PUn6RCjAAejEg9vQK5BrBBrYllx
 Ze4hRgkOZiUR3tsv9WOFeFMSK6tSi/Lji0pzUosPMUpzsCiJ81YzPIgWEkhPLEnNTk0tSC2C
 yTJxcEo1MHoUFwkXCFnftwv69231ceVTGq6NQWejr34/vGL/2aPfo04Yn0mo8Ty7WGmKcn6R
 bw3bzp2RiUsXHmF6Ubb/Cnuf1j8Z49lH1//XEHuuFWK79q9zc3fjpbOaV0/s+z79sNSKpJwd
 i4+ceD+7YFoCg/NEtZZzatbPslutvq9uXGpseXg17wejv6+VWIozEg21mIuKEwF+qOfaXAMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJIsWRmVeSWpSXmKPExsVy+t/xe7pPqw1iDc5eF7PYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C02Pb7GanF51xw2ixnn9zFZrD1yl91i6fWLTBa3G1ewWSza+oXd
 4v+eHewOvB5r5q1h9Ni0qpPNY/OSeo++LasYPT5vkgtgjdKzKcovLUlVyMgvLrFVija0MNIz
 tLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DLOHn1HWPBY+aKU6/2sDYw/mXqYuTgkBAw
 kZj+UK+LkZNDSGApo8ShJ7YQYSmJ+S1KIGEJAWGJP9e62LoYuYBKXjNK3Dz5jxkkISwQIdE0
 8xYLiC0ioCjxu20aK0gRs8BRJol9iz8wQXQ8YpRY/e4vO0gVm4ChRO/RPkYQm1fATqKh6TuY
 zSKgKnHh1AYwWxRo6qRrO1kgagQlTs58AmZzCmhLnOxuBpvDLKAu8WfeJWYIW1yi6ctKVghb
 XmL72znMExiFZiFpn4WkZRaSlllIWhYwsqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjNZt
 x35u2cHY9S74EKMAB6MSD29ArkGsEGtiWXFl7iFGCQ5mJRHe2y/1Y4V4UxIrq1KL8uOLSnNS
 iw8xmgI9N5FZSjQ5H5hI8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFx
 cEo1MC5yd+c5cYlTcwbHmVvNk6cfNZ3v3/V2qlXZgdjFezb+y5k3V4B1xeewfY48P6JrUpMm
 rlL/WrTMZ+9WvodFUrc6TS5WT50zzWXB0s37Y+NWHrY6ZDblvFpZYl7exLO7OiZ4fvp23mVe
 8eyJ5dbVJbUCG5+t2+yZtSx1XfEtIeGwO3EVTN8fWj9VYinOSDTUYi4qTgQAL/pWSuwCAAA=
X-CMS-MailID: 20190718140213eucas1p2c57432f2d3b1a0ef3d00e999398e482e
X-Msg-Generator: CA
X-RootMTR: 20190404172234epcas1p37667ec0996000aff9297f13639908dfc
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190404172234epcas1p37667ec0996000aff9297f13639908dfc
References: <20190404171735.12815-1-s.nawrocki@samsung.com>
 <CGME20190404172234epcas1p37667ec0996000aff9297f13639908dfc@epcas1p3.samsung.com>
 <20190404171735.12815-4-s.nawrocki@samsung.com>
 <20190429172337.GA30032@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_070217_953725_34584EAB 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 pankaj.dubey@samsung.com, linux-kernel@vger.kernel.org, krzk@kernel.org,
 cw00.choi@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/29/19 19:23, Rob Herring wrote:
> We already have OPP tables defined for QCom CPUs to do speed bining, and 
> I just reviewed something from Allwinner for similar purposes. We can't 
> have each vendor doing their own thing here.

I tried that opp-supported-hw bitmask approach but number of OPP DT nodes
was rather high, around 200 per CPU cluster.  So I moved OPP tables to
the driver. I'm going to post next version of the patch set soon.

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
