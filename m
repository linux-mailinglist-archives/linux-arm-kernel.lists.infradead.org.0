Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3197611AE2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2PGfIWf2r+9WktcLr3XLy1umcZRjVF4gPh5ybFcm3oo=; b=sj6pKTUzveB/iEOzIVmDupBIhb
	A2EeKFxocX5WQZC8/ZrbEhNVTK5NhfOAm1SZgpZKM2WVrSNcn+68Vciu8ZEthKBoQsXQK7aQLVaGq
	o+aEU78SL82DD945q5tBAJAwvYjVhG07ejL8MP/tK5fWRqJkSUiEBqWvg8Cu4v1fKjdIoTaUL3S1b
	hqfWy+AR1vw2eSPp3SM4BUOI6jzkHzSA4j7cP3O1HHmGlm8yg0F1mejMbUS90hNlbQO2YtLLbUxlF
	q1x/dYfxdrw/fVteEgbrPm8pnEcLQTsO9gixdQloj2fwLH9vlIhQedZV5wsqFzm525xpNJ8PqzO+V
	Y5TWNlEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3Gq-0003OR-IF; Wed, 11 Dec 2019 14:47:20 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3GO-00039c-K9
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:46:54 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191211144650euoutp02684c22763921bd50452ff77109a53a89~fWGrR0b0C1096710967euoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:46:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191211144650euoutp02684c22763921bd50452ff77109a53a89~fWGrR0b0C1096710967euoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576075610;
 bh=qTaGKuC9cCAB+1j7GCP6On5IHmid3yqkEWyTajSdyOk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Rs85drgLpVj2uyoqmt/9tZLkFzB9W3qW4usI43aCwWTvXYFVNryQguA06YfAwd6XA
 7Pt0OLc+o7NpuvkOuJrrX1WJlt6Zr8zQ6suSygzuyhTatg1v73ddBMvmqyCiIaQDTT
 g0gcNte8vnb6EqOR2lbyFSBkP7Ia49t8rjEZ8x1U=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191211144649eucas1p10daab46774e3fe745a10ea188a13a1e2~fWGq2ACyk3190531905eucas1p1E;
 Wed, 11 Dec 2019 14:46:49 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id FB.0E.60698.95101FD5; Wed, 11
 Dec 2019 14:46:49 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191211144649eucas1p1b882634306383e225dbab70629d2f222~fWGqTXSmH1750817508eucas1p1a;
 Wed, 11 Dec 2019 14:46:49 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191211144649eusmtrp2f9accd69be9afcf8a453ba1f947b6715~fWGqSsvuR0169801698eusmtrp26;
 Wed, 11 Dec 2019 14:46:49 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-a8-5df101596e99
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BF.9A.07950.95101FD5; Wed, 11
 Dec 2019 14:46:49 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191211144648eusmtip1fe02aa74fd490787f74d96f1003eafb3~fWGpmIbrv0888708887eusmtip18;
 Wed, 11 Dec 2019 14:46:48 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-usb@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/4] ARM: dts: qcom: Correct USB3503 GPIOs polarity
Date: Wed, 11 Dec 2019 15:46:36 +0100
Message-Id: <20191211144638.24676-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211144638.24676-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTURzGObv3bneryfUqeLRIHGkU5gtW3siiIPTWh+qDvVmSKy822qbt
 qrmiEudLLpPs1VbLpaH5smlqL0q5XOGQaHNKYuJGtaA0VMQ0ytKcd9q35//8f895OIeDI+Qr
 LAiXKTMZlVIql/BF6NOuX7b1h8FEctTARCxlc8+g1OPyRox6ax5DqaIOPUppqhr5lN3eJKCa
 3f0Y1dd+j0/1aRyAKrd38KjK6gKEMr5xCqi8/BiqsLgao1pMRQLql8XO207QVT9dCN30uR6j
 23ROAd1cV8ynh/pf8GmzvkFAtzy8SOd3m1G6tLUO0JPNq/aJkkRxqYxcls2oIreliE7aSjrR
 jC5hTs/kNJoLfgu0QIhDYgN88HUc0QIRThKPANTon2Dc8APAgjtazEORxCSA0xMJi4mBXIMX
 qgGw57Wbt5QY1OkXEnwiGmpHtXzPwp9oAHDmSjnqGRDChkC9xoF6KD8iHhqccwsaJUKhecCI
 eLSY2AqHLn/nc33BsL7p1byP40JiG7zRqfacA4leAXTXOQDH7IQzbh2P035wxNrqvd1KONdW
 weMCGgA/2YwCbigBsC+v3JveAl9bHZinASHWwsb2SM7eAX/O2ReKIeEDB0Z9PTYyL689ve21
 xfBSIcnRYVBnNS3Vdvb0ehEalr0/zz1QGYCTw0XgKgjW/e8yAFAHApgsVpHGsDFK5kwEK1Ww
 Wcq0iBPpimYw/6/ezlqnnoOOP8ctgMCBZLnY8Gw8mcSk2axaYQEQRyT+YmvhWDIpTpWqzzKq
 9GOqLDnDWsAKHJUEiGMqh5NJIk2ayZximAxGtbjl4cKgXCDcVSpyyffWpoAW/601um9pCmfC
 7Idwzf4LgflJ6kSTqfr0CUtnuG+D8133rT2bZ/8Orgm8bz/qcBVc1z8bLz7wsd73rtInsfWl
 MUI33Goita7Q6KmbIQcPVeSsjpOpN4bEK87trm0rtnwJ2BQbFlUkG1Ee8c9f1vWkp5slXVUB
 EpQ9KY1eh6hY6T+XuXA6UwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7qRjB9jDbatFrQ49/g3i8XGGetZ
 LU7vf8di0b5vLotF8+L1bBbnz29gt9j0+BqrxeVdc9gsLjdfZLSYcX4fk8WiZa3MFmuP3GW3
 aGoxtmjrXMZqsXldO7vFz0PnmRwEPBZ/v8fsseHRalaPnbPusntsWtXJ5nHn2h42j/1z17B7
 bF5S79Fycj+LR9+WVYwenzfJBXBF6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GWc6znIUnCMs+LC528sDYy/2LsYOTkkBEwkbjQsYO1i5OIQEljK
 KLHxxAcmiISMxMlpDawQtrDEn2tdbBBFnxgl3v7tZQZJsAkYSnS9hUiICGxglDjz/gkLSIJZ
 4BqzxLLN0iC2sICbxIK7/8HiLAKqEvtvrAVr5hWwlbjT/ZoNYoO8xOoNB4DiHBycAnYSUw5W
 goSFgEruTTrENoGRbwEjwypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzA6Nl27OeWHYxd74IP
 MQpwMCrx8C7Y/j5WiDWxrLgy9xCjBAezkgjv8bZ3sUK8KYmVValF+fFFpTmpxYcYTYFumsgs
 JZqcD4zsvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjFO1musL
 BC/ktvr3/e54rRS+YF3rX+OUIo+uI00a7LFZB6Y5VxvMvlzcsMhL39MroITrwV0FjyVX3lSx
 eMw8+dlPol7PxEfblMVKjbP4l+eb4x8uiP49NC3i5CX+2azJvLVfl1vFfhI3c11ppT1383uO
 18dULFb1JOs5tl91nFS44v3zfskLSizFGYmGWsxFxYkAD5/F+bQCAAA=
X-CMS-MailID: 20191211144649eucas1p1b882634306383e225dbab70629d2f222
X-Msg-Generator: CA
X-RootMTR: 20191211144649eucas1p1b882634306383e225dbab70629d2f222
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191211144649eucas1p1b882634306383e225dbab70629d2f222
References: <20191211144638.24676-1-m.szyprowski@samsung.com>
 <CGME20191211144649eucas1p1b882634306383e225dbab70629d2f222@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_064652_860086_8BEF477A 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Agner <stefan@agner.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maxime Ripard <mripard@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current USB3503 driver ignores GPIO polarity and always operates as if the
GPIO lines were flagged as ACTIVE_HIGH. Fix the polarity for the existing
USB3503 chip applications to match the chip specification and common
convention for naming the pins. The only pin, which has to be ACTIVE_LOW
is the reset pin. The remaining are ACTIVE_HIGH. This change allows later
to fix the USB3503 driver to properly use generic GPIO bindings and read
polarity from DT.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts b/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts
index 26160c324802..942e3a2cac35 100644
--- a/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts
+++ b/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts
@@ -143,7 +143,7 @@
 				compatible = "smsc,usb3503a";
 				reg = <0x8>;
 				connect-gpios = <&gpioext2 1 GPIO_ACTIVE_HIGH>;
-				intn-gpios = <&gpioext2 0 GPIO_ACTIVE_LOW>;
+				intn-gpios = <&gpioext2 0 GPIO_ACTIVE_HIGH>;
 				initial-mode = <1>;
 			};
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
