Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB71238A35
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/XVTyy/rFg/VM5vATObjJYKhn6j/7zAUO/3REzGYjU=; b=bPz4K8UjWIXhN3
	rSpsbqulnU3GeIGQnxVzakUMtj8qXPdM0mWfqvCc4f1GgjmHBNHbYbxW1bLvmy1cNFNTEgYZo8Py6
	fDWAAuaxe/u064iDaq1tggvcqGZ3X48fZrXgX6xQy/WLzCc+rVVEs17DU5DmoBc+eYa7MgcKb5hPX
	7kvfXXNzUtvL+MrKT2IEUg8PliAtoPlviTyCgJSq281gvNQfrzgELEqPZKTPI11qk3GNTDtX7RwIS
	1fqDuY4w7m7vi4zsPs0oZFfCSaA+OBWiHSdqal18x7yXNEb28N9tKPXhcdL5hQc6Co+DjF9zaW7Uh
	+V/miJ0ODdiH876EQiBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZDwj-0004a0-GW; Fri, 07 Jun 2019 12:26:13 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZDwY-0004ZR-0E
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 12:26:03 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190607122559euoutp0172a92e0d4e1c37458626f52cdc124067~l6jUIu-A23070430704euoutp01N
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  7 Jun 2019 12:25:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190607122559euoutp0172a92e0d4e1c37458626f52cdc124067~l6jUIu-A23070430704euoutp01N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559910359;
 bh=v55UW7qRKcueFOO4F7D06p3S+rnoOobSIhpjaAMDbnw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ajetDQ4u/o85Fuo7OgszrawNg6lMFIq6qjY9097sQx3y1rP6qGHGuKp3u5APbugaZ
 q45ujPeadoAkOgKxqXT00D60EkasrnnrxzvX3EVKm4D+W4+9xCPtWxhLWBWFBDH6AR
 ACCKsuPkrVLRWx67YskG6e7Q43L2ZfjOufEtdHBA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190607122559eucas1p1d5c895dc98fbc36b3a6532d394d5158c~l6jTyfblQ0424004240eucas1p1h;
 Fri,  7 Jun 2019 12:25:59 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 74.D4.04298.6D75AFC5; Fri,  7
 Jun 2019 13:25:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190607122558eucas1p147ed7c29bc60ff99073f4ba67375ad3e~l6jSy4Dd-0422904229eucas1p1c;
 Fri,  7 Jun 2019 12:25:58 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190607122557eusmtrp14c6b9319e71cfd1a95f35383f12c4bee~l6jSjXncA3225232252eusmtrp1V;
 Fri,  7 Jun 2019 12:25:57 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-f2-5cfa57d6fced
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 2F.D7.04146.5D75AFC5; Fri,  7
 Jun 2019 13:25:57 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190607122557eusmtip1f514c8a5b30bdfd4282244140bb9c9ff~l6jSNtPUm2114021140eusmtip1R;
 Fri,  7 Jun 2019 12:25:57 +0000 (GMT)
Subject: Re: [PATCH v3] video: fbdev: atmel_lcdfb: add COMPILE_TEST support
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <7f6b5d26-de84-c38a-7510-fee1f7e7eea3@samsung.com>
Date: Fri, 7 Jun 2019 14:25:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190601210651.GB3558@piout.net>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNKsWRmVeSWpSXmKPExsWy7djPc7rXwn/FGHycZGDR/m4Zu8WVr+/Z
 LDY9vsZqcaLvA6vF5V1z2CxerL3OarF980JmB3aPeWuqPe53H2fy2Lyk3uPOj6WMHp83yQWw
 RnHZpKTmZJalFunbJXBlfH6wiK3gM3vFyg3PmRsYd7N1MXJySAiYSKxYeJGxi5GLQ0hgBaPE
 rNtXmCCcL4wSd199ZoZwPjNKnDs6iRmm5fvBF2wQieWMEqdalkC1vGWU2PLuBCtIlbCAt8Sy
 LxfBbBEBU4nWxl1gHcwCbxgl3uxaADaKTcBKYmL7KkYQm1fATqL/6l4WEJtFQEXi6LXP7CC2
 qECExP1jG1ghagQlTs58AlbDKaAncfx6J9gcZgFxiVtP5jNB2PIS29/OAbtbQmAbu8TbY2tZ
 IO52keg9txPqbWGJV8e3sEPYMhKnJ/ewQDSsY5T42/ECqns7o8Tyyf+gOqwlDh8H+YcDaIWm
 xPpd+hBhR4kfXR8ZQcISAnwSN94KQhzBJzFp23RmiDCvREebEES1msSGZRvYYNZ27VzJPIFR
 aRaS12YheWcWkndmIexdwMiyilE8tbQ4Nz212DAvtVyvODG3uDQvXS85P3cTIzAJnf53/NMO
 xq+Xkg4xCnAwKvHwerD/jBFiTSwrrsw9xCjBwawkwlt24UeMEG9KYmVValF+fFFpTmrxIUZp
 DhYlcd5qhgfRQgLpiSWp2ampBalFMFkmDk6pBsZI6cXfCprM0iWEdMWDfsc6f7KomPSJU+iD
 Qv4l610zVqlZtbCvTHiRVjo/usJOmkvYeOGz7XHrfh6omdAraxcWu7a/Z7WhfMH9rt+2ShdZ
 dRcy/bgyu61gthrbtO+TZt61L1z0aa73PqdLy7Y92H268d3EVdlcLx7bF33dnf7r4e4uk1ec
 T88osRRnJBpqMRcVJwIAoD56jT4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDIsWRmVeSWpSXmKPExsVy+t/xu7pXw3/FGPw7rG3R/m4Zu8WVr+/Z
 LDY9vsZqcaLvA6vF5V1z2CxerL3OarF980JmB3aPeWuqPe53H2fy2Lyk3uPOj6WMHp83yQWw
 RunZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehlfH6w
 iK3gM3vFyg3PmRsYd7N1MXJySAiYSHw/+ALI5uIQEljKKLFsyyTGLkYOoISMxPH1ZRA1whJ/
 rnVB1bxmlHi68wY7SEJYwFti2ZeLrCC2iICpRGvjLrAiZoE3jBJ/zv9lhOjYxiixueEYE0gV
 m4CVxMT2VYwgNq+AnUT/1b0sIDaLgIrE0WufwaaKCkRInHm/ggWiRlDi5MwnYDangJ7E8eud
 zCA2s4C6xJ95l6BscYlbT+YzQdjyEtvfzmGewCg0C0n7LCQts5C0zELSsoCRZRWjSGppcW56
 brGhXnFibnFpXrpecn7uJkZgzG079nPzDsZLG4MPMQpwMCrx8Dow/IwRYk0sK67MPcQowcGs
 JMJbduFHjBBvSmJlVWpRfnxRaU5q8SFGU6DnJjJLiSbnA9NBXkm8oamhuYWlobmxubGZhZI4
 b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxpnOC6JDl8nMYZP4mrPC7NPKC6zXDm/IDbn5z/X3
 dM8baif/fTHZYS1qGXnKeZP91P8iDjGSJsFXTlx4svLxwyeOWwx/c65V6Fy77h8by5c/vrqh
 Lzs0YlPcZKTDcixNcu1L9t+RuTn98MT1C1h62q/M4H6jXzv/O/cCbzWR0+emz9x2esNSubNK
 LMUZiYZazEXFiQAbay/ZzwIAAA==
X-CMS-MailID: 20190607122558eucas1p147ed7c29bc60ff99073f4ba67375ad3e
X-Msg-Generator: CA
X-RootMTR: 20190530123016eucas1p2e18747b8ac1d156657232eab52876a61
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190530123016eucas1p2e18747b8ac1d156657232eab52876a61
References: <CGME20190530123016eucas1p2e18747b8ac1d156657232eab52876a61@eucas1p2.samsung.com>
 <69cd6b8b-1fd1-86fa-2070-99d0ce15a868@samsung.com>
 <20190601210651.GB3558@piout.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_052602_348676_71629681 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/1/19 11:06 PM, Alexandre Belloni wrote:
> On 30/05/2019 14:30:19+0200, Bartlomiej Zolnierkiewicz wrote:
>> Add COMPILE_TEST support to atmel_lcdfb driver for better compile
>> testing coverage.
>>
>> While at it fix improper use of UL (to silence build warnings on
>> x86_64).
>>
>> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Thanks, I queued the patch for v5.3.

>> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
>> Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
>> ---
>> v3: fix build warnings on x86_64
> 
> Hopefully, no building errors anymore ;)

I hope so. :)

>> v2: add missing HAVE_CLK && HAS IOMEM dependencies
>>
>>  drivers/video/fbdev/Kconfig       |    3 ++-
>>  drivers/video/fbdev/atmel_lcdfb.c |    4 ++--
>>  2 files changed, 4 insertions(+), 3 deletions(-)
Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
