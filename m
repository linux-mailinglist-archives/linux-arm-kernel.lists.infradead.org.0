Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DB259C71
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 15:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWSIgDnvKjMxd1wTOC2U020iWoCXn8/Wv5RDL47WiqI=; b=ZnXUDBLDfZ+ZJd
	kyt6/TasOEUGtfMX92o9JoSgAuNyR2I36CaWy4OJ9dc8295mDFq21TFXhfYMtn+nZ+cneMlNnUDRz
	OTgx29HM1IqkhF+K9pSRQRNoGEaH9O8da3RYX0tcEWMe9hmRMdTo05SQPhvVy5lLgf98k/aQVeHuv
	uJ2VmyWMH9nBLcDrzOLN4I7WYiYjcH81lRS4JrBuoy1EhpR39gRih3Cf6MQ/+hltmolbN72KI+Msb
	J3EOgfP+UBNozAAAKT61+TIP7qBxq1ALTed6JV/5RZPChfFspxTlUQi/SpXYefCPLdYbYejjhvWbw
	Cwa9XAUdM7KPVYsx9SVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqXe-0002MJ-PO; Fri, 28 Jun 2019 13:03:50 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqXP-0002Lr-Kr
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 13:03:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190628130334euoutp027461a3d01e162619237893277f46c859~sXnH7KQsp1230212302euoutp02P
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 13:03:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190628130334euoutp027461a3d01e162619237893277f46c859~sXnH7KQsp1230212302euoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561727014;
 bh=VbBmh0lqoFIOdVgmHOPMjXBb/1mrJ2U1b6I2moJwAto=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=mwPlN3yBBU2PLxXQujGpz6gas1jzJ7a4jayeGBkTn5sIzg5RbJioLEWjPJhrBIkb0
 skaI2rgerQgpkgNFLQ+qI76Lm85PpNuboRHzwhp2DtulRUxtaIEvV1jzWp9sL91h3h
 6pqkp8naXK4UFMZSf1/tEbj5wUOmmd+gfYG+hWm0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190628130333eucas1p10bfb6c7946045e775963fb75e2007b62~sXnHPeKHD0052100521eucas1p1V;
 Fri, 28 Jun 2019 13:03:33 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EB.46.04298.520161D5; Fri, 28
 Jun 2019 14:03:33 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190628130332eucas1p2b302e7dfdae6ee7a73c650f7e10d3f6e~sXnGT8QcT0994209942eucas1p2X;
 Fri, 28 Jun 2019 13:03:32 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190628130332eusmtrp1b48d12dbc245b313516d2fc7055c34b0~sXnGF071t2018320183eusmtrp1M;
 Fri, 28 Jun 2019 13:03:32 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-6c-5d16102504fc
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E6.0C.04146.420161D5; Fri, 28
 Jun 2019 14:03:32 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190628130331eusmtip20a23949761c8468302efce2c8937874b~sXnFlrF7y0827408274eusmtip2X;
 Fri, 28 Jun 2019 13:03:31 +0000 (GMT)
Subject: Re: [PATCH 07/12] fbdev: da8xx: add support for a regulator
To: Bartosz Golaszewski <brgl@bgdev.pl>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <8c9f36c1-1c55-a2af-8b2f-4c6811e029f3@samsung.com>
Date: Fri, 28 Jun 2019 15:03:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190625163434.13620-8-brgl@bgdev.pl>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEKsWRmVeSWpSXmKPExsWy7djPc7qqAmKxBrP7JC2+zD3FYrHrwTY2
 izNv7rJbLGoQs7jy9T2bxYovM9ktnm5+zGRx/+tRRospf5YzWWx6fI3V4kTfB1aLy7vmsFns
 793A5MDr8f5GK7vH4mu3WT12zrrL7rFpVSebx6f+k6wed67tYfO4332cyWPzknqP4ze2M3l8
 3iQXwBXFZZOSmpNZllqkb5fAldH85jtrwSGWiqsrn7A3MD5i7mLk5JAQMJG43fGRqYuRi0NI
 YAWjxPNLq6CcL4wSL6c2M0I4nxklDv/6xwbT8unUI3aIxHJGiZsX+qGq3jJKvDu1mAWkSljA
 RWLm5o1gS0QE1CUWrLsHNpdZ4CizxMvLq8FGsQlYSUxsX8UIYvMK2EkcuwjRzCKgKrH5+Xqw
 GlGBCIn7xzawQtQISpyc+QSshlPAWOLThlYwm1lAXOLWk/lMELa8xPa3c5hBlkkItHJITLjc
 ww5xt4vE7I5jUG8LS7w6vgUqLiNxenIPC0TDOkaJvx0voLq3M0osnwzztbXE4eMXgc7gAFqh
 KbF+lz5E2FFiZdMvFpCwhACfxI23ghBH8ElM2jadGSLMK9HRJgRRrSaxYdkGNpi1XTtXMk9g
 VJqF5LVZSN6ZheSdWQh7FzCyrGIUTy0tzk1PLTbMSy3XK07MLS7NS9dLzs/dxAhMeaf/Hf+0
 g/HrpaRDjAIcjEo8vD94xGKFWBPLiitzDzFKcDArifBKnhOJFeJNSaysSi3Kjy8qzUktPsQo
 zcGiJM5bzfAgWkggPbEkNTs1tSC1CCbLxMEp1cDY7nZxt8bua3/rYxT9f/9Zq8YV/6st3H3W
 +1wh499XbKWiFGo/LL9xP3i/xXknxRMzb/vmTf/3J1m/pi3F7fv+eMEVImJ9LnNuvyyRVee7
 c6jh6ifTs7Fzb1ZOWvBQuvOB55mNvKt/LXPYzcazayP/y9ebDCrNM/bcXp/xWd5Rwj3tSFm/
 elKgEktxRqKhFnNRcSIAtY1X63UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEIsWRmVeSWpSXmKPExsVy+t/xe7oqAmKxBss7pC2+zD3FYrHrwTY2
 izNv7rJbLGoQs7jy9T2bxYovM9ktnm5+zGRx/+tRRospf5YzWWx6fI3V4kTfB1aLy7vmsFns
 793A5MDr8f5GK7vH4mu3WT12zrrL7rFpVSebx6f+k6wed67tYfO4332cyWPzknqP4ze2M3l8
 3iQXwBWlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5eg
 l9H85jtrwSGWiqsrn7A3MD5i7mLk5JAQMJH4dOoRO4gtJLCUUWLbevEuRg6guIzE8fVlECXC
 En+udbF1MXIBlbxmlGhb8AKsV1jARWLm5o1gtoiAusSCdfeYQIqYBY4zSyx8MQWqYz2jxP3N
 3xhBqtgErCQmtq8Cs3kF7CSOXVzMAmKzCKhKbH6+ng3EFhWIkDjzfgULRI2gxMmZT8BsTgFj
 iU8bWsFsZqBtf+ZdYoawxSVuPZnPBGHLS2x/O4d5AqPQLCTts5C0zELSMgtJywJGllWMIqml
 xbnpucWGesWJucWleel6yfm5mxiB8b3t2M/NOxgvbQw+xCjAwajEw7uASyxWiDWxrLgy9xCj
 BAezkgiv5DmRWCHelMTKqtSi/Pii0pzU4kOMpkDPTWSWEk3OB6aevJJ4Q1NDcwtLQ3Njc2Mz
 CyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjOJe8rPaa3WOeqR/s184terPkoWvP2/vt9ye
 99fZSkW8zeuSyG/Vw/K1iksEj/+8JBRpZa09Kyzufuyz16Er+UJWnhRgi1a5nHjMN+vxdpFv
 Czbu49W0kV2tuOTe8ZQFCy6+7ViX+tVo2al3fQv2H/yhnjcv/6GrpPQH645TIhJPsx8e+3V0
 f6cSS3FGoqEWc1FxIgD3ihLoBQMAAA==
X-CMS-MailID: 20190628130332eucas1p2b302e7dfdae6ee7a73c650f7e10d3f6e
X-Msg-Generator: CA
X-RootMTR: 20190625163511epcas1p20ccb516dce9a56e222779ecfd0a1084f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190625163511epcas1p20ccb516dce9a56e222779ecfd0a1084f
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <CGME20190625163511epcas1p20ccb516dce9a56e222779ecfd0a1084f@epcas1p2.samsung.com>
 <20190625163434.13620-8-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_060335_815531_6E48A0F1 
X-CRM114-Status: GOOD (  12.98  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-fbdev@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/25/19 6:34 PM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> We want to remove the hacky platform data callback for power control.
> Add a regulator to the driver data and enable/disable it next to
> the current panel_power_ctrl() calls. We will use it in subsequent
> patch on da850-evm.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

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
