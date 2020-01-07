Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DE0131F16
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 06:25:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4V4cmb0bUG9aqDucsGnImSajKrkDOgrl8b658Iri2E=; b=L1TSeK211NBBze
	YY0q+wRRbsNShDcagrnmewih+rle4XcUiqEmvXryrMtZ1SWX2NxUMfupM+k9SnbqdakeibeMAudpu
	2vnwl9y7pwD4YmJy/pWyDLSGRnKdl8IuxQOHHjsH5qEaX9m8gZgCqPHQF9WRst0fpoKPNajA3GH+N
	hoIp2pkaZrxt/07EBRHf9pIV6zCfmt8b/FlTrbfXMb0E32TCn9qHdn4akuIFrH9FWKtYPmxchaVS0
	zpJQcUmIrJm6WQkZlzajOOKE9hTtQ3+/cSSeaDD2Ix5nt/gIkR55bQHYBQYUpBrj2yLnh9IiI1zlo
	xUhyRJXTn0f/kQzJg0nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iohMH-00055k-Rv; Tue, 07 Jan 2020 05:24:49 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iohM6-00053t-As
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 05:24:41 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200107052432epoutp047493745f6306d2cdbeeb94198d94ec16~ng2br1cNa2795227952epoutp04u
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 05:24:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200107052432epoutp047493745f6306d2cdbeeb94198d94ec16~ng2br1cNa2795227952epoutp04u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1578374672;
 bh=E3efPmI7aeM+lXDENvGIvcL8ZmKlMOBr4QDJtIq9ejc=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=jA2+sIE+2x+J7BlFhbgZpMu32eKVyK7wr4u1rGr96Vww2ZBusdEHBHd7nsqJ54g6r
 L24VNUOWR2jFBLlIgwp+RhPOkOXAFAQnfjqxpgE6SMKecjMPx2npBhQxPHqWegwdty
 qL6JDfHApfAaBmNSt/C6OilQAFIUTIvTKbaBZqnU=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200107052431epcas5p363e26e56ea63ce41cc345dbc794129be~ng2bCmQmX2223322233epcas5p35;
 Tue,  7 Jan 2020 05:24:31 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 41.C9.20197.F06141E5; Tue,  7 Jan 2020 14:24:31 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200107052431epcas5p3f10efc85ff25ae5b4963fee4656c0f5a~ng2almDIm2232722327epcas5p31;
 Tue,  7 Jan 2020 05:24:31 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200107052431epsmtrp2647a02a9251598fb8ab4c19b86888737~ng2akeaeQ3159931599epsmtrp2L;
 Tue,  7 Jan 2020 05:24:31 +0000 (GMT)
X-AuditID: b6c32a4a-781ff70000014ee5-4f-5e14160fe953
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 49.70.06569.F06141E5; Tue,  7 Jan 2020 14:24:31 +0900 (KST)
Received: from sriramdash03 (unknown [107.111.85.29]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200107052428epsmtip10453665fd0b92f6dab44a4f12c5663bf~ng2XkbJzU1647416474epsmtip1s;
 Tue,  7 Jan 2020 05:24:27 +0000 (GMT)
From: "Sriram Dash" <sriram.dash@samsung.com>
To: "'David S. Miller'" <davem@davemloft.net>, "'Florian Fainelli'"
 <f.fainelli@gmail.com>, "'kernelci.org bot'" <bot@kernelci.org>,
 <tomeu.vizoso@collabora.com>, <khilman@baylibre.com>,
 <mgalka@collabora.com>, <guillaume.tucker@collabora.com>,
 <broonie@kernel.org>, "'Jayati Sahu'" <jayati.sahu@samsung.com>,
 "'Padmanabhan Rajanbabu'" <p.rajanbabu@samsung.com>,
 <enric.balletbo@collabora.com>, <narmstrong@baylibre.com>
In-Reply-To: <1c3531f8-7ae2-209d-b6ed-1c89bd9f2bb6@gmail.com>
Subject: RE: broonie-regmap/for-next bisection: boot on
 ox820-cloudengines-pogoplug-series-3
Date: Tue, 7 Jan 2020 10:54:26 +0530
Message-ID: <011801d5c51a$bd2e5710$378b0530$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-in
Thread-Index: AQHVkLQqlgs7zItKQK6JQygQi6mu7gG5ib8fAmHNbWsB+6DuOaeuTQZA
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTmt7v7mLj6NZce13sl9NLKin7RO3pcykiQohfWrS4a+Rib2QNC
 K7PUkpAeNk20ZKhpls6wzFxTixQr7YFhacPZY5ZGlrUsqu1O8r/vfOc75zsfHI5SnWU03J6Y
 OFEfI0RpGS/5zdopkwOH+6rDZ3Z/DCQ37I2ItLy00OSczc6Q7MdJclLcZkXkZ08dSz5+uUKR
 uoZ8GWn/9ZkmzhNmGSnrfEGTp7ezGZL6wk6TnN8lNEluv8ASa/pWcj/Xl9TfCCOXK76y5E93
 BSLGJ5U0SS9pYZb68r2tx1m+8nU+4s2FL2X8LeNrli8rSmH4Ox+8+fL8BD7dXIT4e3dn8V0/
 qineXNOH+L6ysaHeW7wW7haj9sSL+hmLd3hFlve0IV3xzgPOUpyIPoSkIgUHeA5kOUxMKvLi
 VLgKQZKtm5WKLwiuF3TRUtGPwPj8nHxwpCOr2dOoRlDxxuqZdyD4fa0TuVQMDoSm1qPuhhpf
 p2Dge7/MVVA4jYKe8+cpl0qBF0Haewvrwj44HGy9l9wecjwJHubc+afhOCWeD1kFChetxCPg
 4UW7W0LhaWDK66akk8aDs8tES7wf1DtPuXk1XgVpn/o9Z5/m4Fi/J/UKeF+RJpOwDzgemFkJ
 a6Cvp5qR8F54mv7Osz8OMh15nj1LwPIsW+46jcJToPT2DMl2GJwesMtcNGAlnExWSeoAcLSV
 e7aPAktJo8eVh5qmb7IzaIJxSDDjkGDGIWGM/81ykbwI+Ys6Q3SEaJirC44R9wcZhGjDvpiI
 oF2x0WXI/atT11Qi06MQK8Ic0norz4z2CVfRQrzhYLQVAUdp1cojq0aEq5S7hYOHRH3sdv2+
 KNFgRaM4udZPmUE/36bCEUKcuFcUdaJ+sCvjFJpEJPiFqEaG/UnQJE5MKJk+YbPN+T0+Ba9+
 tDMpft3bnLyJYkhmbMOY4vq1W0wNNaVJHZ9twVrcm2EZP71BYMdZxgas2aT5qvVfeJ92GAeC
 V/r4JXOvrmaQzWeXP5i3Qd3cWtXctn7XRcXhtbm1x8dRKwp1qgUFVcuq2Y2hkzOLgpbN1soN
 kcKsqZTeIPwFP4vj7acDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsWy7bCSnC6/mEicQfMnLouNT04zWly6eYDV
 YurDJ2wWc863sFisuX2I0eLXuyPsFm8+LWa2OHJqCZPFvT8fWC1+tm9hstj0+BqrxeVdc9gs
 uq49YbWY93ctq0XbvensFof6oi2OLRCzOLox2GLR1i/sFv9fb2W0mHVhB6tF39pLbA5iHu9v
 tLJ77Li7hNFjy8qbTB47Z91l99i0qpPNY89LHo/NS+o9+rasYvQ4uM/Q4+mPvcweW/Z/ZvT4
 vEkugCeKyyYlNSezLLVI3y6BK6Pp13zGgtbEiqunHzA3MK7w7mLk5JAQMJG4P/siaxcjF4eQ
 wG5GiRcrF7B3MXIAJaQlft7VhagRllj57zk7iC0k8IJRouGoHojNJqArcfZGExtIr4jALmaJ
 5/tuMYM4zAITmSW+X/jHDDH1JaPE7N8vWEBaOAVsJbpfHAAbJSwQI3HqygUwm0VAReLkvD3M
 IJt5BSwlZq/gBAnzCghKnJz5BKyVWUBb4unNp3D2soWvmSGuU5D4+XQZK0RcXOLozx6wuIiA
 m0T3228sExiFZyEZNQvJqFlIRs1C0r6AkWUVo2RqQXFuem6xYYFRXmq5XnFibnFpXrpecn7u
 JkZwetDS2sF44kT8IUYBDkYlHl4LKeE4IdbEsuLK3EOMEhzMSiK8jW6CcUK8KYmVValF+fFF
 pTmpxYcYpTlYlMR55fOPRQoJpCeWpGanphakFsFkmTg4pRoYw+f9XbRZX02lc2/6E86gnwrz
 c194MwfsffF1Fb9U10aG2brs/Y2pKgreFi8stwazrjty4BTPU18nX/XakC1Tt/KmLlgQdnyy
 C1tJXXzkxDW/28+GmPX5zDk3b7bk64L8bYevtCn/EuKLqnjmN8/0kEl7hRGnqOghhc0+iY/Z
 9vwO/K9saWqixFKckWioxVxUnAgAcz78hgsDAAA=
X-CMS-MailID: 20200107052431epcas5p3f10efc85ff25ae5b4963fee4656c0f5a
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20191225075056epcas4p2ab51fc6ff1642705a61f906189bb29f0
References: <CGME20191225075056epcas4p2ab51fc6ff1642705a61f906189bb29f0@epcas4p2.samsung.com>
 <5e0314da.1c69fb81.a7d63.29c1@mx.google.com>
 <03ca01d5c23a$09921d00$1cb65700$@samsung.com>
 <1c3531f8-7ae2-209d-b6ed-1c89bd9f2bb6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_212438_774516_1E4BBB7A 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: 'Jose Abreu' <Jose.Abreu@synopsys.com>,
 'Alexandre Torgue' <alexandre.torgue@st.com>, rcsekar@samsung.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 'Maxime Coquelin' <mcoquelin.stm32@gmail.com>, pankaj.dubey@samsung.com,
 'Giuseppe
 Cavallaro' <peppe.cavallaro@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Florian Fainelli <f.fainelli@gmail.com>
> Subject: Re: broonie-regmap/for-next bisection: boot on ox820-cloudengines-
> pogoplug-series-3
> 
> On 1/3/20 5:30 AM, Sriram Dash wrote:
> >> From: kernelci.org bot <bot@kernelci.org>
> >> Subject: broonie-regmap/for-next bisection: boot on
> >> ox820-cloudengines-
> >> pogoplug-series-3
> >>
> >> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> >> * This automated bisection report was sent to you on the basis  *
> >> * that you may be involved with the breaking commit it has      *
> >> * found.  No manual investigation has been done to verify it,   *
> >> * and the root cause of the problem may be somewhere else.      *
> >> *                                                               *
> >> * If you do send a fix, please include this trailer:            *
> >> *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
> >> *                                                               *
> >> * Hope this helps!                                              *
> >> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> >>
> >> broonie-regmap/for-next bisection: boot on
> >> ox820-cloudengines-pogoplug-
> >> series-3
> >>
> >> Summary:
> >>   Start:      46cf053efec6 Linux 5.5-rc3
> >>   Details:    https://protect2.fireeye.com/url?k=36fb52ed-6b2b5a21-
> 36fad9a2-
> >> 000babff3793-
> >> f64e7c227e0a8b34&u=https://protect2.fireeye.com/url?k=2379492a-7ee2b5
> >> 49-2378c265-0cc47a31cdbc-
> 914c67c9400b5bae&u=https://kernelci.org/boot
> >> /id/5e02ce65451524462f9731
> >> 4f
> >>   Plain log:
> >> https://protect2.fireeye.com/url?k=58f5fc3b-0525f4f7-58f47774-
> >> 000babff3793-f96a18481add0d7f&u=https://protect2.fireeye.com/url?k=3c
> >> 793260-61e2ce03-3c78b92f-0cc47a31cdbc-
> c77f49890593c376&u=https://stor
> >> age.kernelci.org//broonie-
> >> regmap/for-next/v5.5-rc3/arm/oxnas_v6_defconfig/gcc-8/lab-
> >> baylibre/boot-ox820-cloudengines-pogoplug-series-3.txt
> >>   HTML log:   https://protect2.fireeye.com/url?k=eaed2629-b73d2ee5-
> >> eaecad66-000babff3793-
> >> 84ba1e41025b4f73&u=https://protect2.fireeye.com/url?k=8e80051e-d31bf9
> >> 7d-8e818e51-0cc47a31cdbc-dd2d5f3d7e3c3cd2&u=https://storage.kernelci.
> >> org//broonie-regmap/for-
> >> next/v5.5-rc3/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-
> >> cloudengines-pogoplug-series-3.html
> >>   Result:     d3e014ec7d5e net: stmmac: platform: Fix MDIO init for platforms
> >> without PHY
> >>
> >> Checks:
> >>   revert:     PASS
> >>   verify:     PASS
> >>
> >> Parameters:
> >>   Tree:       broonie-regmap
> >>   URL:
> >> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap.git
> >>   Branch:     for-next
> >>   Target:     ox820-cloudengines-pogoplug-series-3
> >>   CPU arch:   arm
> >>   Lab:        lab-baylibre
> >>   Compiler:   gcc-8
> >>   Config:     oxnas_v6_defconfig
> >>   Test suite: boot
> >>
> >> Breaking commit found:
> >>
> >> ---------------------------------------------------------------------
> >> ---------- commit d3e014ec7d5ebe9644b5486bc530b91e62bbf624
> >> Author: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
> >> Date:   Thu Dec 19 15:47:01 2019 +0530
> >>
> >>     net: stmmac: platform: Fix MDIO init for platforms without PHY
> >>
> >>     The current implementation of "stmmac_dt_phy" function initializes
> >>     the MDIO platform bus data, even in the absence of PHY. This fix
> >>     will skip MDIO initialization if there is no PHY present.
> >>
> >>     Fixes: 7437127 ("net: stmmac: Convert to phylink and remove phylib logic")
> >>     Acked-by: Jayati Sahu <jayati.sahu@samsung.com>
> >>     Signed-off-by: Sriram Dash <sriram.dash@samsung.com>
> >>     Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
> >>     Signed-off-by: David S. Miller <davem@davemloft.net>
> >>
> >> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> >> b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> >> index bedaff0c13bd..cc8d7e7bf9ac 100644
> >> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> >> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> >> @@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct
> >> platform_device *pdev,  static int stmmac_dt_phy(struct
> plat_stmmacenet_data *plat,
> >>  			 struct device_node *np, struct device *dev)  {
> >> -	bool mdio = true;
> >> +	bool mdio = false;
> >>  	static const struct of_device_id need_mdio_ids[] = {
> >>  		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
> >>  		{},
> >> ---------------------------------------------------------------------
> >> ----------
> >>
> >>
> >> Git bisection log:
> >>
> >> ---------------------------------------------------------------------
> >> ----------
> >> git bisect start
> >> # good: [e42617b825f8073569da76dc4510bfa019b1c35a] Linux 5.5-rc1 git
> >> bisect good e42617b825f8073569da76dc4510bfa019b1c35a
> >> # bad: [46cf053efec6a3a5f343fead837777efe8252a46] Linux 5.5-rc3 git
> >> bisect bad 46cf053efec6a3a5f343fead837777efe8252a46
> >> # good: [2187f215ebaac73ddbd814696d7c7fa34f0c3de0] Merge tag
> >> 'for-5.5- rc2-tag' of
> >> git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux
> >> git bisect good 2187f215ebaac73ddbd814696d7c7fa34f0c3de0
> >> # good: [0dd1e3773ae8afc4bfdce782bdeffc10f9cae6ec] pipe: fix empty
> >> pipe check in pipe_write() git bisect good
> >> 0dd1e3773ae8afc4bfdce782bdeffc10f9cae6ec
> >> # good: [040cda8a15210f19da7e29232c897ca6ca6cc950] Merge tag
> >> 'wireless- drivers-2019-12-17' of
> >> git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers
> >> git bisect good 040cda8a15210f19da7e29232c897ca6ca6cc950
> >> # bad: [4bfeadfc0712bbc8a6556eef6d47cbae1099dea3] Merge branch 'sfc-
> >> fix-bugs-introduced-by-XDP-patches'
> >> git bisect bad 4bfeadfc0712bbc8a6556eef6d47cbae1099dea3
> >> # good: [0fd260056ef84ede8f444c66a3820811691fe884] Merge
> >> git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf
> >> git bisect good 0fd260056ef84ede8f444c66a3820811691fe884
> >> # good: [90b3b339364c76baa2436445401ea9ade040c216] net: hisilicon:
> >> Fix a BUG trigered by wrong bytes_compl git bisect good
> >> 90b3b339364c76baa2436445401ea9ade040c216
> >> # bad: [4c8dc00503db24deaf0b89dddfa84b7cba7cd4ce] qede: Disable
> >> hardware gro when xdp prog is installed git bisect bad
> >> 4c8dc00503db24deaf0b89dddfa84b7cba7cd4ce
> >> # bad: [28a3b8408f70b646e78880a7eb0a97c22ace98d1] net/smc: unregister
> >> ib devices in reboot_event git bisect bad
> >> 28a3b8408f70b646e78880a7eb0a97c22ace98d1
> >> # bad: [d3e014ec7d5ebe9644b5486bc530b91e62bbf624] net: stmmac:
> >> platform: Fix MDIO init for platforms without PHY git bisect bad
> >> d3e014ec7d5ebe9644b5486bc530b91e62bbf624
> >> # good: [af1c0e4e00f3cc76cb136ebf2e2c04e8b6446285] llc2: Fix return
> >> statement of llc_stat_ev_rx_null_dsap_xid_c (and _test_c) git bisect
> >> good
> >> af1c0e4e00f3cc76cb136ebf2e2c04e8b6446285
> >> # first bad commit: [d3e014ec7d5ebe9644b5486bc530b91e62bbf624] net:
> >> stmmac: platform: Fix MDIO init for platforms without PHY
> >> ---------------------------------------------------------------------
> >> ----------
> >
> >
> > The mdio bus will be allocated in case of a phy transceiver is on
> > board, but if fixed-link is configured, it will be NULL and
> > of_mdiobus_register will not take effect.
> 
> There appears to be another possible flaw in the code here:
> 
>                 for_each_child_of_node(np, plat->mdio_node) {
>                         if (of_device_is_compatible(plat->mdio_node,
>                                                     "snps,dwmac-mdio"))
>                                 break;
>                 }
> 
> the loop should use for_each_available_child_of_node() such that if a platform
> has a Device Tree definition where the MDIO bus node was provided but it was
> not disabled by default (a mistake, it should be disabled by default), and a "fixed-
> link" property ended up being used at the board level, we should not end-up with
> an invalid plat->mdio_node reference. Then the code could possibly eliminate
> the use of 'mdio' as a boolean and rely exclusively on plat->mdio_node. What do
> you think?
> 

Hello Florian,

Thanks for the review. We definitely see a problem here. For the platforms which have the snps,dwmac-mdio and they have made it disabled, it will fail.
Also, We can completely remove the mdio variable from the function stmmac_dt_phy as what we essentially do is to check the plat->mdio_node.

Something like this will help:

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index 1f230bd..15c342e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -320,7 +320,6 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
 static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
                         struct device_node *np, struct device *dev)
 {
-       bool mdio = false;
        static const struct of_device_id need_mdio_ids[] = {
                { .compatible = "snps,dwc-qos-ethernet-4.10" },
                {},
@@ -334,18 +333,13 @@ static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
                 * the MDIO
                 */
                for_each_child_of_node(np, plat->mdio_node) {
-                       if (of_device_is_compatible(plat->mdio_node,
+                       if (for_each_available_child_of_node(plat->mdio_node,
                                                    "snps,dwmac-mdio"))
                                break;
                }
        }

        if (plat->mdio_node) {
-               dev_dbg(dev, "Found MDIO subnode\n");
-               mdio = true;
-       }
-
-       if (mdio) {
                plat->mdio_bus_data =
                        devm_kzalloc(dev, sizeof(struct stmmac_mdio_bus_data),
                                     GFP_KERNEL);


Are you preparing a patch to address this, or we shall take it up?

> And an alternative to your fix would be to scan even further the MDIO bus node
> for available child nodes, if there are none, do not perform the MDIO
> initialization at all since we have no MDIO devices beneath.
> 
> 
> > The commit d3e014ec7d5e fixes the code for fixed-link configuration.
> > However, some platforms like oxnas820 which have phy transceivers
> > (rgmii), fail. This is because the platforms expect the allocation of
> > mdio_bus_data during stmmac_dt_phy.
> >
> > Proper solution to this is adding the mdio node in the device tree of
> > the platform which can be fetched by stmmac_dt_phy.
> 
> That sounds reasonable, but we should also not break existing platforms with
> existing Device Trees out there, as much as possible.

I understand your point. Changing DT should be the last thing we should do.
But, the code is broken for some platforms. Without the patch, the platforms with fixed-link will not work.
For example, stih418-b2199.dts, will fail without the commit d3e014ec7d5e.
With the patch, platforms with mdio and not declaring the dt parameters will fail.
For that , we have some proposal:
For the newer platforms , Make it mandatory to have the mdio or snps,dwmac-mdio property. 
There is no point of checking the device tree for mdio or snps,dwmac-mdio property and populating the plat->mdio_node, if the platforms are not having them in the device tree and expect mdio bus memory allocation. 

For the existing platforms, which do not have the mdio or snps,dwmac-mdio property and still have the phy, if they can, they must modify the dt and include the mdio or snps,dwmac-mdio property in their dts.
For those platforms, which cannot modify the dt due to some reason or other, the platform should have a quirk in the platform glue layers, and use it in the stmmac_platform driver  stmmac_dt_phy  function to enable the mdio.


> --
> Florian


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
