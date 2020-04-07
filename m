Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DB91A02BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 02:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7cv7Caq3UgQj2Y/QvVXg9qcycMreTeFN75SgSlYdaY=; b=fWElvtbIkEyDgr
	AjjAr72uRKIOgqAhZki8b47zp07iKQX/alB8kI6ZKXXh+wDjaTiTgUE1jMPk6lSNKTMKyTZIhCxMz
	7d89tCh3jsDBC9GuxOhHzyNzPi91H29QnQZsKHp0z0JxsZeeFSDbAgZ/yMIXm0sxrN0CXXHf5tm0O
	tYtfAv56jNsJtRu94jcFoC5JhccAnzUdq7VhvcLuR2W2w+qMrY88pvTkDXMy9IrsfGQbfA7Metj0s
	VcwpR2xBN9o+JONPL6Rq9P93DntgSrOHqQzCMGy0I8rDhcQNVo9lGjFH7QJJnZUz5RXnHhT3PC3Yd
	JBLQ2i7fbr+UrTc/T0pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLblQ-0004A1-Qn; Tue, 07 Apr 2020 00:06:48 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLbk0-0002gS-69
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 00:05:22 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200407000517epoutp03a537749b529b6adc83bbb7115fb82e22~DYMqhWw2m1739317393epoutp03q
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Apr 2020 00:05:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200407000517epoutp03a537749b529b6adc83bbb7115fb82e22~DYMqhWw2m1739317393epoutp03q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586217917;
 bh=tzpVAjvJlF8U3nA9D3i9y31F8b3lBonoiViArwP4bx4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=px8ei+FoCPnU65Ti1oxup/jdjpes6gtaNBmgoKqMeE6EDKKJZqopQCZLQ74yAiQzb
 Qw01Qi3QCcMWz6hATMCpoEQJmj/f9J4Wr8274vWQtizMEka3JJshSGSSe4XV4Afji2
 kXAoA0aTE880LIvVqb5twdRnGwPGO9mBEJInHMME=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200407000516epcas1p13492e8bfe704a21592fce4ec848aa09f~DYMpcECR11546015460epcas1p1M;
 Tue,  7 Apr 2020 00:05:16 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.152]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 48x72b3fy1zMqYlr; Tue,  7 Apr
 2020 00:05:11 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 78.0E.04402.7B3CB8E5; Tue,  7 Apr 2020 09:05:11 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20200407000511epcas1p361a8982b0da2bc80b1b6e8cf9870093c~DYMkxoNIT1542515425epcas1p3e;
 Tue,  7 Apr 2020 00:05:11 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200407000510epsmtrp2862d3043e81792698814e1636a048611~DYMkwdmjI0035300353epsmtrp2H;
 Tue,  7 Apr 2020 00:05:10 +0000 (GMT)
X-AuditID: b6c32a35-753ff70000001132-8f-5e8bc3b7ce85
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F4.11.04024.6B3CB8E5; Tue,  7 Apr 2020 09:05:10 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200407000510epsmtip1001cc24d264d29a611749eef3a386d57~DYMkLEa1f0424704247epsmtip1c;
 Tue,  7 Apr 2020 00:05:10 +0000 (GMT)
Subject: Re: [PATCH v3 2/8] PM / devfreq: Add generic imx bus scaling driver
To: Leonard Crestez <leonard.crestez@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <f091bc7a-c59b-ae05-2be8-2f654e03b61a@samsung.com>
Date: Tue, 7 Apr 2020 09:14:27 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <af1fd3a339a37123ee36179efcb90600c1e0f746.1586174566.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Tf0wbZRj2612vV7LqWUA+mw3ZzX9gsrUrnR8G0ERmLg5jAwkhGouX9gIN
 /ZVeuzgXA25DoYiubM1CdUBkbAWJ0lKg4BhZ6VRYYKKzI8JkERIXIiXYgQbF2HKo/Pe8z/s8
 ed/n/fKRmNwvUZBGi4OzW1gTTaTgg+PZytyh8SadsvnOXrTQVg/Q+q1JgK58dxOgh54RDC0u
 zAE01KpH7ZFpMfL3z+Ho4miAQD2eYRzdvt0nQVOnf5Ug3701MQosRsXItdmNoXhzBKCuuzMi
 FPW5xSjetwjQzOQxNPeuj0CfTd8g0KWHHgzVj0YkyBXeItDfUT+OHgQzUFdnFEP+deaFfYzH
 5QNMb1svYFZn6yXMx3UzONMRcDKBnkaCmY9eI5j+y7WMPxYSMR9tKZnN8XTmw2APYOKBTK3s
 tZqCao41cPYszqK3GoyWqkL6eFnli5Wao0pVriofPUtnWVgzV0gXl2hzXzKaEkehs06wJmeC
 0rI8Tx8uKrBbnQ4uq9rKOwppzmYw2fJth3jWzDstVYf0VvNzKqXyiCYhfLOmum2z3LYkfivY
 HifqQBR3ASkJqTzYsf65yAVSSDkVAnD1wtpO8RuAN1eu40KxAeCZ8Px/ltBPGzuqUQAHB74B
 QrEKYOjOX1hSlUqVwJXQZZDEadQpeG7q9LYDo2YkcME9K0o2CCoHjj2YJZL4MWo//OGPxW2D
 jCqCQ+7kViSJU0/DQMveJJ1OlcOJwbM7ksfhROsSnpRIKR2c/LQ0SWNUBvxxqV0k4Kfg0Mon
 WHIspEIk9G/0E0k9pIrhypflQphUuPx1UCJgBYzHRgkBn4LdExFC8DYAGBz7Viw01HCs6/z2
 ahiVDb8YOSzQ++Hwn5eAMPdRGFv/QCyMksGG9+SC5AD8/v49kYCfhJ3vNxLnAO3dFca7K4F3
 VwLv/8M6AN4DnuBsvLmK41U21e63DoDt75KjCYEL0yVhQJGA3iOrkDbp5GL2BH/SHAaQxOg0
 maK5USeXGdiTb3N2a6XdaeL4MNAkTu3GFOl6a+LzWRyVKs0RtVqN8lRHNSoVnSHz3DXp5FQV
 6+BqOM7G2f/1iUipog5oL5ZFX860th7LCU3nl57J3Lz6sx/vHjBUpBXdP/jLV8ZHzL/XLr9e
 3ITKtPGBhsLUWHfKM7eupl3zRzL84tTOiha1Xo6kpXtibG6fEXOev7HWO5vpXm5RvHNWrrBZ
 jyte1QVtr3ALzxfsk+V5wfAI6atdZefHr2e/McUfbN6icb6aVeVgdp79B1Zt3xFEBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTURiAO7t3d1dzeZ2aR0vLJUVS6qLgQCVFGJcKsgLREHXMm1pujl0/
 sn40q6VOrQw0/Ghqqcwl4ab4kYnk/EBlyhSnZKk5M384I9QMUaupgf8e3vd5zvnzkpiglOtF
 JsiSGYVMnCgkHPFGo9DneKMxJyqoOvMUmtSoAFru7wOoeqgLoKWC9xiyTo4D1FQkQWWdA1yk
 rx/H0cs2A4F0BS04Ghys4yHTw3ke0n75yUUGq4WL1Ks1GFrM6wSoatTMQRZtPhct1lkBMveF
 oPEMLYHeDnwk0KulAgyp2jp5SN2xTqANix5Hcw0eqOqNBUP6ZfqcN12g1gK6VlML6B9jKh5d
 ojTjdLkhhTbosgn6s+UDQddXPqD1C80c+tl6EL1qdKefNugAvWjwCeXfdDwTyyQmpDKKwOAY
 x3jNaph8hnu3oWyRUAILrgYOJKROwuaJXxw1cCQFVCuA5szW7YUnLDR3YWpA/mNXaDSyW44N
 wLwnw4TdcaWuQFtzJbCzG3Ufrs32YHYJo0Z4cP57+far0wBWzCo3C4Lyh+1zY5vsTPnCkd/W
 zZpPBcOm/Hcc+2845QcNL/bbx+5UGGyptHK2FBfYWzSD2xUHKgr2vb5uH2PUEbimGcK22AN+
 minjbPEB2GQrxZ4D1+IddfGOpHhHUrwjKQe4DngyclYaJ2VFcpGMSQtgxVI2RRYXIEmSGsDm
 zfgfbQbDldEdgCKB0Im/i5cTJeCKU9l0aQeAJCZ043vlZUcJ+LHi9HuMIilakZLIsB1gH4kL
 PfjfZN0RAipOnMzcYRg5o/i/5ZAOXkpwOcAbL03Ll0dMFxKHz1abZo2HHt8oGwjPClsiHjWJ
 YpRZEZE1fqFFB3NNU199e6/Z0p30lzIsFEflF5K0cmwqm7cn1yaJXIt3PtFjWrg6cZvbvvIn
 kBgNk6zWSFwCllW7M/tLQrUmYDo/H45fqOiO1oSu7L11WuCxwFx03hgT4my8WOSPKVjxX5Cv
 xMEvAwAA
X-CMS-MailID: 20200407000511epcas1p361a8982b0da2bc80b1b6e8cf9870093c
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200406120515epcas1p2331d9e8917c308ad7e2d005df4dd7420
References: <cover.1586174566.git.leonard.crestez@nxp.com>
 <CGME20200406120515epcas1p2331d9e8917c308ad7e2d005df4dd7420@epcas1p2.samsung.com>
 <af1fd3a339a37123ee36179efcb90600c1e0f746.1586174566.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_170520_845038_CA257759 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/6/20 9:03 PM, Leonard Crestez wrote:
> Add initial support for dynamic frequency switching on pieces of the imx
> interconnect fabric.
> 
> All this driver does is set a clk rate based on an opp table, it does
> not map register areas.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Tested-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> ---
>  drivers/devfreq/Kconfig   |   8 +++
>  drivers/devfreq/Makefile  |   1 +
>  drivers/devfreq/imx-bus.c | 138 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 147 insertions(+)
>  create mode 100644 drivers/devfreq/imx-bus.c
> 

(snip)

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
