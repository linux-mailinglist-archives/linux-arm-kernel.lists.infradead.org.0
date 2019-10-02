Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B2BC476C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 08:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=Of1evScpb48/zZB5veZPJ6KbfcR2vmhk+Gb3yCCGGzM=; b=YR
	TwhG9ZMTiUwLBiUCLom9K48/e3Oxr+RHjn7+04pShEULNtne3VuRSb6VU7FT8BSAuC9Ne82u26trQ
	xEB6XLSnx6aFamoFYUKTTbWbTvTFSDrLNs7nHRUtHM+8I5S1oUpxuvYXT2W5nkN8dRlZ1ViqJWhOH
	PJZx5Kjql9pWAZ1+wBB0rcs29iHrDODF5wHXF9vFj0GIz5OJBDmqjA4go7pNDcC8sL8jbQWyVcxla
	1H8CdKfOBjTpSfXnXhp5mmXqxpUpwcqXLKhhcCefKpRjNW131IClc0KeEFj6TDR7OqJIqL05topu9
	ETHYWbxbb7m1xr6r4Y9ah0eCxijtD4ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXlF-0004u5-G0; Wed, 02 Oct 2019 06:05:17 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXl5-00047X-EI
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 06:05:09 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191002060505euoutp02888e40799492e89ec5dc88b60d3debd7~Jv1I6zMqD1487014870euoutp02t
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  2 Oct 2019 06:05:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191002060505euoutp02888e40799492e89ec5dc88b60d3debd7~Jv1I6zMqD1487014870euoutp02t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569996305;
 bh=NytllPukyq1tG+apy35ps0plOj1W2VpVP3xn6Vx8gik=;
 h=From:To:Cc:Subject:Date:References:From;
 b=ldgkn4gpNdt5ySeqR5ExZJ7UrQsA0QYKmnv9gwtW42UBE+MW/LWLjkaWyjKePdRW5
 mmkVE3mz6NQywpJ942CooxgIPwhBxC0NXAnnPdeqH6DBdz6IDPzTLn6q6PNw/n68++
 pkRw1FLOEAOiwYSsQvkzzP9GXLwqclCZLgQ8GAb0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191002060504eucas1p11367b58f420449a3bdf213e3f5836661~Jv1IJSCTB1488114881eucas1p1H;
 Wed,  2 Oct 2019 06:05:04 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 1F.83.04469.01E349D5; Wed,  2
 Oct 2019 07:05:04 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191002060503eucas1p25fb14ebbf05a5599f8faeacbd3a15887~Jv1HxvYwO1256612566eucas1p2P;
 Wed,  2 Oct 2019 06:05:03 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191002060503eusmtrp11c8829126af2ec5c4aa698c30f229c97~Jv1Hw6rtf2145721457eusmtrp1G;
 Wed,  2 Oct 2019 06:05:03 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-3f-5d943e108bf9
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 4B.EB.04117.F0E349D5; Wed,  2
 Oct 2019 07:05:03 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191002060502eusmtip21b4ae8910443ee2f13c9788bef9054df~Jv1G3FiKS3183531835eusmtip2p;
 Wed,  2 Oct 2019 06:05:02 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/4] Exynos5 DMC interrupt mode
Date: Wed,  2 Oct 2019 08:04:51 +0200
Message-Id: <20191002060455.3834-1-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSf0yMcRzHfZ/nnnuejrOvp8aH0HbTVjalZL6b1grj/PjDH+aPEo6epXVX
 uacfOjYnFDfUQmQpv3K5Urlut6IadZUtukrU2GFOqylNLo0x4/GE/97f9/v1/r7/+XA0X8ks
 4lLSMgVjmk6vUaoUzs5vPStwzIXElaVujty7XMeQwakRhlS4ehhS6B2jidtdz5KneeMseWle
 TOzeFwx5dr9MSXxnXYhcdrdS5K7Lw5LKwT6KvDpWpSQnW1wsaR8vYMj043codp62prwGaZuu
 eFit3XZaqW24dVT7aKKZ0p5z2JDWZ1+6nY1XRScJ+pRswRges1d1YKr5K5XhVB/6ZC5RmNFn
 lQX5cYCj4KtjnLEgFcfjKgTHC78r5McUAvODh5RE8diHwG6L/tsoryidgawInCeKlP8a73uH
 kAVxnBKHQaPtoFQIwDcRTLfHSwyNnRS8tU0zUuCPI6HsdQOStAIHw8VXw6zUVeMYOFerlseC
 oLr+IS11AdtZyO+fRHKwAXryWxlZ+8OHLgcr68XQff6MQtYimM9en+GPgLfw6gyzFtq7+hhp
 i8ahUHc/XLbjoONW7R8b8FwY+jhPsunfsth5iZZtNZzK52U6BBxneilZzwdrTcnM51qo7pj8
 g/M4EZ73rypCS6/8n7qGkA0tELJEQ7IgRqQJOWGiziBmpSWH7U832NHv4+n+2fW5EX3p39eG
 MIc0c9RDO84n8owuW8w1tCHgaE2AOvpHcSKvTtLlmgRj+h5jll4Q21Agp9AsUB+e9TaBx8m6
 TCFVEDIE49+U4vwWmZHlDTaI/A1Pal6ZdefG+pGikEt3moOGBzT+6Rl1scsuMAN5C0c1wpqS
 yF0mC7t5tWl5yFj5pq02yjGk8DxZwrZUG6N8y0yRCeHrc+y+wJZ3o52henTMz1QePMJug/qI
 21XFW7p7jaGbCipydmdZZnuzJ5zrmuL64w0Z+5usoFGIB3QRy2mjqPsFhJGOdjgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPLMWRmVeSWpSXmKPExsVy+t/xe7r8dlNiDbbt1LLYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht7jVIGOx6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUeB9/tYfLo
 27KK0ePzJrkA9ig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy
 1CJ9uwS9jC97fjAVbOOt+NAwjaWB8RNXFyMnh4SAicS8+TNZuhi5OIQEljJKfPp9hQUiISYx
 ad92dghbWOLPtS42iKJPjBLrOncxdzFycLAJ6EnsWFUIEhcRWM4ocWzVW2YQh1ngCJPE0dXX
 GEG6hQWMJObc2wxmswioSky9/ZQdpJlXwE6ibx0vxAJ5idUbDjBPYORZwMiwilEktbQ4Nz23
 2EivODG3uDQvXS85P3cTIzDwtx37uWUHY9e74EOMAhyMSjy8DUGTY4VYE8uKK3MPMUpwMCuJ
 8Nr8mRQrxJuSWFmVWpQfX1Sak1p8iNEUaPdEZinR5HxgVOaVxBuaGppbWBqaG5sbm1koifN2
 CByMERJITyxJzU5NLUgtgulj4uCUamDU1t1cxWsYb7Wla12t74ekXcrByWHBrRG5d38nnas+
 efvmou1zhFO9l1TutXj9ccovnom/8hr/95abVbxy+sW26RzD8T0CxsbevL63vppO+3X/fph6
 w6E5O6tE436cy4mccuBs0fm5rI+5hG1erPl9M97WQnTyIqcq6/0ehd9+fv7qdGxL7BYLJZbi
 jERDLeai4kQAjv/6a5ICAAA=
X-CMS-MailID: 20191002060503eucas1p25fb14ebbf05a5599f8faeacbd3a15887
X-Msg-Generator: CA
X-RootMTR: 20191002060503eucas1p25fb14ebbf05a5599f8faeacbd3a15887
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191002060503eucas1p25fb14ebbf05a5599f8faeacbd3a15887
References: <CGME20191002060503eucas1p25fb14ebbf05a5599f8faeacbd3a15887@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_230507_622953_421010B5 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, robh+dt@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This is a v3 patch set for the Exynos5 Dynamic Memory Controller
driver which could be found in Krzysztof's for-next branch [1].

It adds interrupt mode which does not relay on devfreq polling.
Instead of checking the device state by the framework, driver uses local
performance event counters which could trigger interrupt when overflow.
Thanks to this approach the driver avoids issues present in devfreq framework,
when default polling check does not occur.
The algorithm calculates 'busy_time' and 'total_time' needed for devfreq
governors (simple_ondemand) based on requests transactions traffic.

Changes:
v3:
- added information in bindings about interrupt names, since the code is
  sensitive for it as pointed out by Krzysztof
v2:
  changes suggested by Krzysztof
- added interrupt line for the channel 1
- added description for bindings with interrupt lines
- fixed fallback path in probe function
- added comments, blank lines, removed unneeded dev_dbg() in irq handler

Regards,
Lukasz Luba

[1] https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=for-next

Lukasz Luba (4):
  dt-bindings: memory-controllers: Add Exynos5422 DMC interrupts
    description
  ARM: dts: exynos: Add interrupt to DMC controller in Exynos5422
  ARM: dts: exynos: map 0x10000 SFR instead of 0x100 in DMC Exynos5422
  memory: samsung: exynos5422-dmc: Add support for interrupt from
    performance counters

 .../memory-controllers/exynos5422-dmc.txt     |  11 +
 arch/arm/boot/dts/exynos5420.dtsi             |   5 +-
 drivers/memory/samsung/exynos5422-dmc.c       | 345 ++++++++++++++++--
 3 files changed, 335 insertions(+), 26 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
