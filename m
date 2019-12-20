Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C27E127257
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=sQtId+r/mNwnDuf089nAXv4zkVRxCxPon1qOK9Hb/vo=; b=BS
	hYTMlix4DbSgB6NTYdklwOfkjM/20BEBSCUDOHGqyCM7j4xyhSSTyE4S+6u9R+zLKxfUK2wYP8ymu
	uONuTLPX1Y8HHLoeNx6tXuL9DbiJhJ5QGVhTrxxmo8K3sGgYhYxnNzO2DHS2JCGLY7wU3ls8HvqZS
	UhSZFqsDEKlQxnznMqRBB9B7OGZqEYmBI5Ldj+UsM4/CnExz+VHQ8lXCM03aDG1tGN+7PD0dHmqMb
	peLwOzXWxTzyKgpbbc4E2fdNXrTT2iDEDDMm/z7buvQU4lGz9mhz9xayzX39hJYQPRx1L5FGklwY4
	CRfNWSQmEJ9kT8Xlt+ciCQiy2vZ5xlcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii61q-0001yd-2Y; Fri, 20 Dec 2019 00:20:26 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5zj-0007SK-Ms
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:18:22 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191220001803epoutp028ea800077ba132b8e5d6166dd0b80587~h7Ds_01K30644106441epoutp02O
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 00:18:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191220001803epoutp028ea800077ba132b8e5d6166dd0b80587~h7Ds_01K30644106441epoutp02O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576801083;
 bh=LsS7Y5v4gHckhscaO7bdEkbINdoC+Eq455a3ddtFDaw=;
 h=From:To:Cc:Subject:Date:References:From;
 b=KCLa9sKpoVl5USantYCzF0kCOE10VqlAPnQO8bG43OIz7Bowz38KdMOAgMElV5PrT
 CdZ3KfyhNqVzywda8JlGnUwgzmkgBjelMJvjPRnGzO7a+zYWP3hm5uSIuQbpVaJW8P
 xSR4OshR8cxg/40M9Auv4SqUsCzfrd+0VrNJzM/M=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191220001803epcas1p15df8d25bf26bac9f895d5955d02f1478~h7DsZMUeR3044730447epcas1p1O;
 Fri, 20 Dec 2019 00:18:03 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.152]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47f8Th2gQZzMqYm1; Fri, 20 Dec
 2019 00:18:00 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 A0.14.48498.8331CFD5; Fri, 20 Dec 2019 09:18:00 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191220001759epcas1p131a41a619847d80c64470f7c1920121f~h7Do4W95c3044730447epcas1p1F;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191220001759epsmtrp1ebc539bbaf257bc316b74055d8111222~h7Do3UZVZ1705617056epsmtrp1N;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
X-AuditID: b6c32a36-a3dff7000001bd72-5b-5dfc1338e161
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6B.6C.06569.7331CFD5; Fri, 20 Dec 2019 09:17:59 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191220001759epsmtip15e131ad165cc815dec38651f097c191a~h7DomX5g82050220502epsmtip1x;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de,
 leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH v2 00/11] PM / devfreq: Remove deprecated 'devfreq' and
 'devfreq-events' properties
Date: Fri, 20 Dec 2019 09:24:19 +0900
Message-Id: <20191220002430.11995-1-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOJsWRmVeSWpSXmKPExsWy7bCmnq6F8J9YgycrBSzuz2tltNj+rovJ
 4vqX56wW84+cY7X4/+g1q0X/49fMFufPb2C3ONv0ht1ixd2PrBabHl9jtbi8aw6bxefeI4wW
 nx78Z7aYcX4fk8XCphZ2i7VH7rJbLL1+kcniduMKNovWvUfYHYQ91sxbw+ixaVUnm8fmJfUe
 G9/tYPK4ffAzs0ffllWMHtuvzWP2+LxJLoAjKtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTM
 wFDX0NLCXEkhLzE31VbJxSdA1y0zB+ghJYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpB
 Sk6BZYFecWJucWleul5yfq6VoYGBkSlQYUJ2xo3OrUwF16UrFn5cz9LAeE20i5GTQ0LARGLG
 sk8sXYxcHEICOxgl/l3cxwjhfGKUeLf4AhuE841RYtGMFcwwLd2HZkMl9jJKLJ42mR0kISTw
 hVHi6h8ZEJtNQEti/4sbbCC2iECGxMzXl1lBGpgFpjFLNN/7xNTFyMEhLJAqcX9nDkgNi4Cq
 RH/XGbB6XgErict/Z7JDLJOXWL3hADNIr4TAdzaJTefOsUAkXCT+rP0PZQtLvDq+BapBSuJl
 fxuUXS2x8uQRNojmDkaJLfsvsEIkjCX2L50MdgSzgKbE+l36EGFFiZ2/5zKC2MwCfBLvvvaw
 gpRICPBKdLQJQZQoS1x+cJcJwpaUWNzeyQZhe0jsOTOFBRIOsRJLHn1gnMAoOwthwQJGxlWM
 YqkFxbnpqcWGBUbIsbSJEZxItcx2MC4653OIUYCDUYmH1yHtd6wQa2JZcWXuIUYJDmYlEd7b
 HT9jhXhTEiurUovy44tKc1KLDzGaAkNvIrOUaHI+MMnnlcQbmhoZGxtbmBiamRoaKonzcvy4
 GCskkJ5YkpqdmlqQWgTTx8TBKdXA6LK0ZF2ovPAd99/V1z9WaD9mP37k84NFR+x2KMQcuq+o
 FhK/7SGnhG4A8+ZQwZreu/9iziRd+5B74OpD9Yfn/q7/dtBymxn/Ut+FUQ378rfWPF6nqVmc
 nDmRZ9+hXXu7xVNPvdA7lynPeqcnZmXf9EhxZmcWwz6N31NKJzic/v+w5J6k4JVaJSWW4oxE
 Qy3mouJEAHN6TIm6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGLMWRmVeSWpSXmKPExsWy7bCSnK658J9Yg1VXeS3uz2tltNj+rovJ
 4vqX56wW84+cY7X4/+g1q0X/49fMFufPb2C3ONv0ht1ixd2PrBabHl9jtbi8aw6bxefeI4wW
 nx78Z7aYcX4fk8XCphZ2i7VH7rJbLL1+kcniduMKNovWvUfYHYQ91sxbw+ixaVUnm8fmJfUe
 G9/tYPK4ffAzs0ffllWMHtuvzWP2+LxJLoAjissmJTUnsyy1SN8ugSvjRudWpoLr0hULP65n
 aWC8JtrFyMkhIWAi0X1oNlsXIxeHkMBuRok9t78zQiQkJaZdPMrcxcgBZAtLHD5cDFHziVHi
 y/8nrCA1bAJaEvtf3GADsUUE8iQ2bfzKDFLELLCMWWLC62awhLBAssS+T9PBGlgEVCX6u86A
 xXkFrCQu/53JDrFMXmL1hgPMExh5FjAyrGKUTC0ozk3PLTYsMMpLLdcrTswtLs1L10vOz93E
 CA5tLa0djCdOxB9iFOBgVOLhdUj7HSvEmlhWXJl7iFGCg1lJhPd2x89YId6UxMqq1KL8+KLS
 nNTiQ4zSHCxK4rzy+ccihQTSE0tSs1NTC1KLYLJMHJxSDYyxO4KtbmndfTbX9f4JZ9Hk34tb
 jVm3bdIx9nPhr5bf7rnY3yUwaONbrpTGvS9k+W+sf7T31tIfZsJTHt/f8fTCrvMpZ4/n2dld
 +9o+IUdX9LJ9SlHYzrSFqwy/8q6fd07+/fxT57aGeU9emlVYvTx11rnHGkqvDi2vOLbu4F6d
 xcrp9Ts/fL3yT4mlOCPRUIu5qDgRABu9dCZpAgAA
X-CMS-MailID: 20191220001759epcas1p131a41a619847d80c64470f7c1920121f
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220001759epcas1p131a41a619847d80c64470f7c1920121f
References: <CGME20191220001759epcas1p131a41a619847d80c64470f7c1920121f@epcas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_161816_154032_A39490DF 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-rockchip@lists.infradead.org, Chanwoo Choi <cw00.choi@samsun.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chanwoo Choi <cw00.choi@samsun.com>

The devfreq and devfreq-event subsystem provided the following two properties:
- Provide 'devfreq' property in order to get the parent devfreq device
  by devfreq_get_devfreq_by_phandle() if devfreq device use passive governor.
- Provide 'devfreq-events' property in order to get the devfreq-event device
  by devfreq_event_get_edev_by_phandle().

But, two properties name is not proper expressing the h/w
and 'devfreq' word is name of linux subsystem instead of any h/w name.

Hand over the rights for deciding the property name for getting
the devfreq/devfreq-event device on devicetree, to each devfreq driver.

So, replace 'devfreq' and 'devfreq-events' property with following property
name according to each devfreq driver:
--------------------------------------------------------------------
Old property  | New property       | Device driver name            |
--------------------------------------------------------------------
devfreq       | exynos,parent-bus  | exynos-bus.c                  |
              |                    |                               |
devfreq-events| exynos,ppmu-device | exynos-bus.c, exynos5422-dmc.c|
              | rockchip,dfi-device| rk3399_dmc.c                  |
--------------------------------------------------------------------

Changes from v1:
- Edit function name by removing '_by_node' postfix.
- Split out dt-binding patch to make it the separte patch.j
- Add Lukasz's tag for exynos5422-dmc

Chanwoo Choi (10):
  PM / devfreq: Remove devfreq_get_devfreq_by_phandle function
  PM / devfreq: event: Add devfreq_event_get_edev_by_node function
  dt-bindings: devfreq: exynos-bus: Replace deprecated 'devfreq' and 'devfreq-events' property
  dt-bindings: devfreq: rk3399_dmc:  Replace deprecated 'devfreq-events' property
  dt-bindings: memory: exynos5422-dmc: Replace the deprecated 'devfreq-events' property
  PM / devfreq: exynos-bus: Replace the deprecated 'devfreq' and 'devfreq-events' property
  PM / devfreq: rk3399_dmc: Replace the deprecated 'devfreq-events' property
  memory: samsung: exynos5422-dmc: Replace the deprecated 'devfreq-events' property
  ARM: dts: exynos: Replace deprecated property for Exynos bus and DMC
  arm64: dts: exynos: Replace deprecated property for Exynos bus on TM2

Leonard Crestez (1):
  PM / devfreq: Add devfreq_get_devfreq_by_node function

 .../bindings/devfreq/exynos-bus.txt           | 22 +++----
 .../bindings/devfreq/rk3399_dmc.txt           |  4 +-
 .../memory-controllers/exynos5422-dmc.txt     |  8 +--
 arch/arm/boot/dts/exynos3250-monk.dts         |  2 +-
 arch/arm/boot/dts/exynos3250-rinato.dts       | 18 +++---
 .../boot/dts/exynos4412-itop-scp-core.dtsi    | 16 ++---
 arch/arm/boot/dts/exynos4412-midas.dtsi       | 18 +++---
 .../boot/dts/exynos4412-odroid-common.dtsi    | 18 +++---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 34 +++++------
 .../dts/exynos/exynos5433-tm2-common.dtsi     | 20 +++----
 drivers/devfreq/devfreq-event.c               | 53 +++--------------
 drivers/devfreq/devfreq.c                     | 25 +++-----
 drivers/devfreq/exynos-bus.c                  | 58 ++++++++++++++++---
 drivers/devfreq/rk3399_dmc.c                  | 16 ++++-
 drivers/memory/samsung/exynos5422-dmc.c       | 37 ++++++++++--
 include/linux/devfreq-event.h                 | 14 ++---
 include/linux/devfreq.h                       |  6 +-
 17 files changed, 198 insertions(+), 171 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
