Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70FA1FCC0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=UGJfcEe/CuzDiIP8vVKsLox9OKwn3nc8jK2RVi7p3Sw=; b=Al
	VidyuiRYRvui72BuJdKDKEAZI4jk4i+e6FEAL02pjD2oDINPleN+VAd5opLO0/6LoEetLyfx3qaei
	KMmG2ShBkrKpPap3Hb5DJpgAVjpu7HLnI8YxBLEAIJhupE7TplQJ6kmkQtIksfoi4Io+k98shKfJY
	FDNRTIxPV2D0bfjIJ22DI8K+t11piT7bhfSE2vwCeqVtH5CMok4a8FUvZ8rp/sF848kmRv5EOR7IF
	le/JtsNrAqLloMK4n+J/rvleMrMwABFiJu4OKBLL3e96BNrLfwm8stwUGR6+7JSBE6Of2HzOuSOwO
	0m1SPH0+6ubHUnMPESXx5zLhJ/MiyRsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlW4J-00054T-Mb; Wed, 17 Jun 2020 11:17:23 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlW4A-00053Z-0q
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:17:15 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200617111708epoutp04f98b8d353932797bae51f2626682c03d~ZUKiy-qLF1362313623epoutp04J
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 11:17:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200617111708epoutp04f98b8d353932797bae51f2626682c03d~ZUKiy-qLF1362313623epoutp04J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592392628;
 bh=De11PZoZWlcQRwwo0Y8/mr/Pxhnq+Txfs9hPs4x5UzQ=;
 h=From:To:Cc:Subject:Date:References:From;
 b=MIEmoOwMZwBbGlks8DVr4ZZ0gmwE19zwK6jWDXf8QbmZA2jxeJ48oPRPOEVKlIxYL
 qruR5Ef8YTcNrq1kmbGvVum3ME5mVxxXE4gdNFLEqMnNddTSsL7/Hyqp7um7ojJt/C
 ewYmDNfTiF1caAmFXhGyJPcWa2QIYyBfIgwVjNCk=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200617111708epcas5p1c4e0e139b4bc55695b8bd93eea5fc4e9~ZUKiJfXDm1538915389epcas5p1N;
 Wed, 17 Jun 2020 11:17:08 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DF.BD.09703.3BBF9EE5; Wed, 17 Jun 2020 20:17:07 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200617111707epcas5p3fcb86caeac4a852d44f37ae40759c8a1~ZUKhd7jLw3226032260epcas5p3F;
 Wed, 17 Jun 2020 11:17:07 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200617111707epsmtrp2629be9449835228b4369f02e6d3e5021~ZUKhdPlaY3247232472epsmtrp2B;
 Wed, 17 Jun 2020 11:17:07 +0000 (GMT)
X-AuditID: b6c32a4a-4cbff700000025e7-45-5ee9fbb3f906
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 28.4E.08382.3BBF9EE5; Wed, 17 Jun 2020 20:17:07 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200617111705epsmtip28dc31d81babdd092756d80f3eeda4d79~ZUKf9xn730587705877epsmtip2h;
 Wed, 17 Jun 2020 11:17:05 +0000 (GMT)
From: Tamseel Shams <m.shams@samsung.com>
To: kgene@kernel.org, krzk@kernel.org, gregkh@linuxfoundation.org,
 jslaby@suse.com
Subject: [PATCH] serial: samsung: fix spelling mistake
Date: Wed, 17 Jun 2020 16:29:07 +0530
Message-Id: <20200617105907.7143-1-m.shams@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNIsWRmVeSWpSXmKPExsWy7bCmhu7m3y/jDM4/sbF4MG8bm0Xz4vVs
 FlM2fGCy6H/8mtni/PkN7BabHl9jtbi8aw6bxYzz+5gszizuZbe427qY3YHLY9OqTjaP/XPX
 sHtsXlLv0bdlFaPH+i1XWTw+b5ILYIvisklJzcksSy3St0vgyuh69YO1YAdrxfSTy1gbGHex
 dDFyckgImEhMvHyMuYuRi0NIYDejxPm/P9ggnE+MEqe7ZrFDON8YJZo2bgHKcIC1LL0YDhHf
 yygx4+06RginhUni3/MdjCBFbAKaEsfPc4OsEBEIkXh3dgtYDbPASUaJvZsbwHYLC5hJrD3Q
 wA5SzyKgKjFtqixImFfAXOLWqrnsEOfJS6zecIAZwj7HLtH3IQPiBheJi5fLIcLCEq+Ob4Eq
 l5L4/G4vG4SdLzF/3iqo1gqJlRfeQNn2EgeuzGEBGcMMdOX6XfogYWYBPone30+YIKbzSnS0
 CUFUK0r8390PNV1c4t2KKawQtofEv9vLwCYKCcRKvHx0n3kCo8wshKELGBlXMUqmFhTnpqcW
 mxYY5aWW6xUn5haX5qXrJefnbmIEx7+W1w7Ghw8+6B1iZOJgPMQowcGsJMLr/PtFnBBvSmJl
 VWpRfnxRaU5q8SFGaQ4WJXFepR9n4oQE0hNLUrNTUwtSi2CyTBycUg1MUx1U9k79cXn3jDiZ
 v/NevD748dqKgAK1jdw8rafsG959vH173jN7Ru3l25LevjVi0iz46nrZylFlU9TvSS4Pjxbm
 T9nBeT4/4Y7l/29er7fNsLxYv3bGdqaXNw0k6rx2KR39/3qG6MbcbaHbF/yIfdLhdGVxJI93
 q77iUz6LHZ9zXHZuOq3wjT3U2jx9m9ULr2vvz+y6eiYwaumLa6f0UifceTKL5b/fFMZLj+aY
 /FvU1yJ+8n7ue+mviyMrZV1O1CxblvmbT8pxssuK6W99Jj04ePjqPrad/+15971Z4vfzRHrO
 zufi97TLdgger+juE7wxY7a7sd6slRahAn7/vti9Lnhpk5jQ66G5V6GPafMmJZbijERDLeai
 4kQAIHwlMm4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnluLIzCtJLcpLzFFi42LZdlhJXnfz75dxBgu3c1k8mLeNzaJ58Xo2
 iykbPjBZ9D9+zWxx/vwGdotNj6+xWlzeNYfNYsb5fUwWZxb3slvcbV3M7sDlsWlVJ5vH/rlr
 2D02L6n36NuyitFj/ZarLB6fN8kFsEVx2aSk5mSWpRbp2yVwZXS9+sFasIO1YvrJZawNjLtY
 uhg5OCQETCSWXgzvYuTiEBLYzSgxc8khxi5GTqC4uMS0X/uhbGGJlf+es0MUNTFJfLt/nBGk
 mU1AU+L4eW4QU0QgQmLmxxqQEmaB84wSO4+vZgLpFRYwk1h7oIEdpIZFQFVi2lRZkDCvgLnE
 rVVz2SHGy0us3nCAeQIjzwJGhlWMkqkFxbnpucWGBYZ5qeV6xYm5xaV56XrJ+bmbGMFhpqW5
 g3H7qg96hxiZOBgPMUpwMCuJ8Dr/fhEnxJuSWFmVWpQfX1Sak1p8iFGag0VJnPdG4cI4IYH0
 xJLU7NTUgtQimCwTB6dUA1OV3YnmfHbj1AV/b/De4vZeOJe9ie2xZ0hZYd7Dja+Uetjv79KV
 k5m3sMs/6tGNvaG9J00FfnaFzJ/0P3lB6Q2tiKmTauLeBNkIn/Nclsq35kB38Jc7d93vnd/z
 XuRs2o3uvPxN247uaTFp135z2fnH9qk30tgVHBtNnpfdPR986pvtE91pGc2HVGR3X+EVtLuv
 aOT7cvOj6P3bpEyOXPbKK9z2UGHOpRlr7z9od5nd+HGpzMOArUeWvWHzmqr5b9L+/SrMj7bK
 SbCefvC868/TTzfSszm95TS7fKqCuXr9gralvzo7gUPwyJvKure5KxbLul/LsL4mYr7MSEtv
 p/v/Oxxzrs7ivHjad+ZZax0WJZbijERDLeai4kQAXXhHFaICAAA=
X-CMS-MailID: 20200617111707epcas5p3fcb86caeac4a852d44f37ae40759c8a1
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200617111707epcas5p3fcb86caeac4a852d44f37ae40759c8a1
References: <CGME20200617111707epcas5p3fcb86caeac4a852d44f37ae40759c8a1@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_041714_302360_DF3E2810 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org, alim.akhtar@samsung.com,
 Tamseel Shams <m.shams@samsung.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a spelling mistake in a comment. Fix it.

Signed-off-by: Tamseel Shams <m.shams@samsung.com>
---
 drivers/tty/serial/samsung_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 6ef614d8648c..050a47fecdef 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -6,7 +6,7 @@
  *	http://armlinux.simtec.co.uk/
  */
 
-/* Hote on 2410 error handling
+/* Note on 2410 error handling
  *
  * The s3c2410 manual has a love/hate affair with the contents of the
  * UERSTAT register in the UART blocks, and keeps marking some of the
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
