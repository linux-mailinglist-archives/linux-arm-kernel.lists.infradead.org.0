Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C0BBD63B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 03:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dw/xODTP9elPZXMf/L8fI3+S8jzmkWQQrHDlewGxNc=; b=lQM4psAmpTz7nT
	gte9BUQbuzsa/ro+wcDPam0aWiJz2Ph2yMJD5skthWkvZ06SfbKUQeQI5TuUlLZO3Rx6mJFA25KHw
	iFDU7+aC2LhMXaX4CAvpnmXLq5dz8oN7btE7aQyCg7ov5c6EbkBgECz3LYIN7wnpHuiC4LHWJdPYT
	H2PytBmi/HE6SyhYMvXUgZiaba3oU4HbX0oKRyMrQ8Ed6340MY/Pk/27ADQJityIezCvYQC9TtKOE
	MTJOmJ1B7Izbb8AXybHfk9otCofIkmhoXrskQ5htS2HVve3Q3bwzCoKdGcsCWN5IomRtfbnKM6mN7
	8jbxLRJ/YdKVz/9KzFsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCwaD-0004BU-6A; Wed, 25 Sep 2019 01:59:09 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCwa1-0004B8-91
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 01:58:58 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190925015854epoutp026ab31371a794fd3ede8cf0c1bd262844~Hi9MtIaUh1516215162epoutp02V
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 01:58:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190925015854epoutp026ab31371a794fd3ede8cf0c1bd262844~Hi9MtIaUh1516215162epoutp02V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569376734;
 bh=7rMAzdFR0krO7CVoML1y9aWfxqQMAV9tCQNRCvwo/bg=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=SFNZr2w/3IfqtuNmOq87gp+KbMeIAj0hUNG9z+97THdz0VYohachxP5KVRyC+KVh5
 nmNSUjfl/XiwKX0cvh0djeXfztsnGTJ3g7lhuI0kwflr474ZKqgHEVZhz7ar7/HQV6
 8Bgwpc71FjAD8+5P87TfOYpUXJ1kYq7obOz9wkeI=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190925015853epcas1p1000e86febba276628d3e320be3aaa766~Hi9Ludqox2132421324epcas1p1V;
 Wed, 25 Sep 2019 01:58:53 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.153]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 46dLnj2FCwzMqYls; Wed, 25 Sep
 2019 01:58:49 +0000 (GMT)
X-AuditID: b6c32a39-f5fff70000000fe4-36-5d8ac9d61d74
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 8C.DC.04068.6D9CA8D5; Wed, 25 Sep 2019 10:58:46 +0900 (KST)
Mime-Version: 1.0
Subject: RE: [PATCH v8 2/6] PM / devfreq: Move more initialization before
 registration
From: MyungJoo Ham <myungjoo.ham@samsung.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Matthias Kaehlcke <mka@chromium.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <398895f3b4f9ca4b03b47b56dfa25fbd58fd2311.1569319738.git.leonard.crestez@nxp.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190925015845epcms1p4f788aa587e53bfa38b9b847838b02342@epcms1p4>
Date: Wed, 25 Sep 2019 10:58:45 +0900
X-CMS-MailID: 20190925015845epcms1p4f788aa587e53bfa38b9b847838b02342
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 101P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNJsWRmVeSWpSXmKPExsWy7bCmru61k12xBs3TJCzuz2tltPh6+hSj
 xbJLRxktXh7StLj+5TmrxfS9m9gszp/fwG5xtukNu8WtBhmLFXc/slpsenyN1aLr10pmi8+9
 RxgtPm94zGix+txBNouuQ3/ZLDZ+9XAQ9Hh/o5XdY3bDRRaPBZtKPTat6mTzuHNtD5vH5iX1
 Hhvf7WDyOPhuD5NH35ZVjB6fN8kFcEVl22SkJqakFimk5iXnp2TmpdsqeQfHO8ebmhkY6hpa
 WpgrKeQl5qbaKrn4BOi6ZeYAPaOkUJaYUwoUCkgsLlbSt7Mpyi8tSVXIyC8usVVKLUjJKbAs
 0CtOzC0uzUvXS87PtTI0MDAyBSpMyM74v6SJqWA6S0XnlNvMDYxbmbsYOTgkBEwklr4K7WLk
 4hAS2MEoMW3iCnaQOK+AoMTfHcJdjJwcwgIREntPTGIHsYUElCQabu5jhojrS3Q82MYIYrMJ
 6Eps3XCXBWSOiEADo8SrvnYwh1lgB4vEw+nb2UCqJAR4JWa0P2WBsKUlti/fCtbNKRAn0fB1
 HTtEXFTi5uq3cPb7Y/MZIWwRidZ7Z5khbEGJBz93M8LMmTHlP9TMaolr0xezgyyWEGhhlOhd
 PQWqSF/izNyTYEfwCvhK9Mz7ATaIRUBV4vqzp0wQNS4SC/+0gC1mFpCX2P52DjiEmAU0Jdbv
 0ocoUZTY+XsuI8wvDRt/s6OzmQX4JN597WGFie+Y9wRqvJrEod1LoOplJE5PX8g8gVFpFiKs
 ZyFZPAth8QJG5lWMYqkFxbnpqcWGBabIsbuJEZywtSx3MB4753OIUYCDUYmH14G1K1aINbGs
 uDL3EKMEB7OSCO8sGaAQb0piZVVqUX58UWlOavEhRlOg/ycyS4km5wOzSV5JvKGpkbGxsYWJ
 oZmpoaGSOK9HekOskEB6YklqdmpqQWoRTB8TB6dUA2NckFb1lNln208/4rE64Wh/2fSvv1tk
 UoyU6/bfnj9qJA9Uv2n5mNI9/b/2GpuEywqbWl8H9p4Nd83ms1s6732PoQnT6x1W/FYTamU3
 8W71Fp1aGBirlx3mHXxk/iJ70T3/XHr4ND4kZ6Z9qC64XMlbfGnu46vO4eGXTjy6KBw42Tpo
 9j0bayWW4oxEQy3mouJEAASSQhPuAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190924101139epcas1p4c6799a5de9bdb4e90abb74de1e881388
References: <398895f3b4f9ca4b03b47b56dfa25fbd58fd2311.1569319738.git.leonard.crestez@nxp.com>
 <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101139epcas1p4c6799a5de9bdb4e90abb74de1e881388@epcms1p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_185857_560133_416A8C6B 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: myungjoo.ham@samsung.com
Cc: Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Artur Swigon <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, NXP Linux Team <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>In general it is a better to initialize an object before making it
>accessible externally (through device_register).
>
>This makes it possible to avoid relying on locking a partially
>initialized object.
>
>Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

Do you object to the general idea of devm_* for device drivers?
or did you find a bug in the memory handling in the code?

The result of this commit still relies on locking anyway.


Cheers,
MyungJoo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
