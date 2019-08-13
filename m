Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7B28ACA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 04:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ca49rAzpfVs0o13wV7F6xtPPXecPoXA4wvpzsi9VIRA=; b=LZIhvSohE8zcH9
	1ylL/yQIKkwSlN+coRyxXMmOQgLWK69FeAHwI6qqkN0vq0qndCfZYlyzmxBgQCTg0sDWHJKR30KTv
	Rn/eeymJJagxemPJKbvDUduqLG95Q6j271J96osrwjWZrx4MvO+Cvxi76bbDOmZneeO8OQy8uAxgA
	kkjzx46HvoJhCI8Kqbvb1ig27O71jkSJgwRMO2prN8gMewcKBOwbmZ842ZtU/R7aJ+dxRkhEtOmAL
	fOdtcgJjjVQnwBGrqaDvQZTdY8pIPQUFzCEg4H6UWQRzRiQ/fe6nAqZQig2vMw48fOlRM6LX03uD6
	Kd5r7ys0aTlVx1Pmh6IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxMW5-0002Wk-4z; Tue, 13 Aug 2019 02:26:29 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxMVs-0002N6-Sc
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 02:26:18 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190813022607epoutp04977ed17f2dae666d27602db0cdbfde85~6WlsWwd2s2401524015epoutp04G
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 02:26:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190813022607epoutp04977ed17f2dae666d27602db0cdbfde85~6WlsWwd2s2401524015epoutp04G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565663167;
 bh=ppPTNC5i9XSnjP019ukaojXgtyupGvee8x/M+XpvUUg=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=fSZvvXQav7pq15KlbZi1uvRunImqPPrf5FQCcsyQC3BETt4bBS/67RrFlQjWIS5dF
 2QWLXmP2xn3D5/eJjbVyZJfO2jqCLSibRBJWLmMHLOpAqLWtQV47Kz0jPA1Vxoc154
 l0yJQgrRzoh4k0TrN1OxfmhLTO6S2i6nHAt5/p4o=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190813022606epcas1p2057ad5e87e79e89b26eb4ec5f24e95d8~6WlrRB2nh0390303903epcas1p2J;
 Tue, 13 Aug 2019 02:26:06 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.154]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 466xQy09whzMqYkW; Tue, 13 Aug
 2019 02:26:02 +0000 (GMT)
X-AuditID: b6c32a37-e3fff70000000fe2-cc-5d521fb7b8ea
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 27.F3.04066.7BF125D5; Tue, 13 Aug 2019 11:25:59 +0900 (KST)
Mime-Version: 1.0
Subject: RE: [PATCH 2/7] dt-bindings: devfreq: Add bindings for generic imx
 buses
From: MyungJoo Ham <myungjoo.ham@samsung.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd
 <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring
 <robh+dt@kernel.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <97b0bff95ddb85b06ef3d2f8079faa36562a956d.1565633880.git.leonard.crestez@nxp.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190813022559epcms1p22c4bf62a5ac36826c515e1f89887e071@epcms1p2>
Date: Tue, 13 Aug 2019 11:25:59 +0900
X-CMS-MailID: 20190813022559epcms1p22c4bf62a5ac36826c515e1f89887e071
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 101P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkl+LIzCtJLcpLzFFi42LZdljTQHe7fFCsQd99Y4tDx7ayW3w9fYrR
 Ytmlo4wWX6buYrbYPjPZ4uUhTYvrX56zWsw/co7VYuPm2ywW0/duYrNYNXUni8X58xvYLc42
 vWG3WHH3I6vFpsfXWC26fq1ktvjce4TRYun1i0wWF0+5Wqw+d5DNonXvEXaLrkN/2Sz+XdvI
 YvFii7jFxq8eFi13TB2kPNbMW8Po8f5GK7vHgk2lHptWdbJ53Lm2h81j85J6j43vdjB5HHy3
 h8mj/6+BR9+WVYwenzfJBXBHZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynk
 Jeam2iq5+AToumXmAL2upFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySmwLNArTswt
 Ls1L10vOz7UyNDAwMgUqTMjOWPzzKUvBZZaKPfdvsjYw/mDuYuTkkBAwkXj87TljFyMXh5DA
 DkaJz+ffASU4OHgFBCX+7hAGqREWCJZo33iUBcQWElCSaLi5jxkiri/R8WAbI4jNJqArsXXD
 XRaQOSIC8xklZl8/zQbiMAtMYpdYvWsx1DZeiRntT1kgbGmJ7cu3gnVzCsRJTNl5khUiLipx
 c/Vbdhj7/bH5jBC2iETrvbNQcwQlHvzczQgzZ8aU/1AzqyWuTV/MDrJYQqCFUaJ39RSoIn2J
 M3NPsoHYvAK+ErNOPWIC+ZJFQFXiyDN5iBIXiY+PDoDtZRaQl9j+dg44IJgFNCXW79KHKFGU
 2Pl7LiPMKw0bf7Ojs5kF+CTefe1hhYnvmPeECcJWkzi0ewlUvYzE6ekLmScwKs1CBPUsJItn
 ISxewMi8ilEstaA4Nz212LDAGDl2NzGCs4GW+Q7GDed8DjEKcDAq8fBWJATGCrEmlhVX5h5i
 lOBgVhLhLfkbECvEm5JYWZValB9fVJqTWnyI0RTo/YnMUqLJ+cBMlVcSb2hqZGxsbGFiaGZq
 aKgkzrvwh0WskEB6YklqdmpqQWoRTB8TB6dUA6NY8S6NppY7azU+T847O2/mj5wdD3kTGe4X
 HC2UKWBY5M/7b15fTu873wfxbA4BzRrqixcnPT+kMjNEob7g382pf2xfH7LVyGLzSF/q6eDl
 ruhU1l7grDspZVOEwYwZDyc8v5v9X+56TqzEO9uO/xyse000rqxSnVbNIn6qUyCgzUR/ulNK
 qhJLcUaioRZzUXEiAIS71W0cBAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190812185002epcas1p1c528b12d20771cf4887907fdfd716e22
References: <97b0bff95ddb85b06ef3d2f8079faa36562a956d.1565633880.git.leonard.crestez@nxp.com>
 <cover.1565633880.git.leonard.crestez@nxp.com>
 <CGME20190812185002epcas1p1c528b12d20771cf4887907fdfd716e22@epcms1p2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_192617_098051_A7B33BAD 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Artur Swigon <a.swigon@partner.samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Anson Huang <Anson.Huang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Will Deacon <will@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>Add initial dt bindings for the interconnects inside i.MX chips.
>Multiple external IPs are involved but SOC integration means the
>software controllable interfaces are very similar.
>
>This is initially only for imx8mm but add an "fsl,imx8m-nic" fallback
>similar to exynos-bus.
>
>Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>---
> .../devicetree/bindings/devfreq/imx.yaml      | 50 +++++++++++++++++++
> 1 file changed, 50 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/devfreq/imx.yaml

Acked-by: MyungJoo Ham <myungjoo.ham@samsung.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
