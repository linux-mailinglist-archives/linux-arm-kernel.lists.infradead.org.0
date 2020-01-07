Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DD01325CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVICToeMmlLfqNpSS+JhR2wTqiwJokzmuBSdlAbpe9A=; b=jfP5uVaHxskPn8
	TepV7A8Abt2HjnN8ULfIUku++xKLY8Nz3ttKNvCZ+yX4d8XCP6li6fem7l6WBMYjvH3p0v2zfO75w
	apqHoC1fI654GThPNuxCvk2geFyKU3k34eGADoS3daOzXfjEnjAo7nOpe0503LVX1elGAzqHnFI5X
	PE23z/tamb1dS2gXggynoHawRDJdr8kNNLRh/bA16YzjfNYfM9DmskCjMxkVfiCYXrpW58RGGghdg
	aPrFOtYiM0YSuqNK0DOV/lL/pV7o7tIWRjtgQ/7YFxKdXQp9o5ih9G223iUVEwPgQeMHoxdbysvUm
	1VqJSo6X8KEYMaesRANg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionkp-000717-JR; Tue, 07 Jan 2020 12:14:35 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionki-00070n-4b
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:14:30 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200107121424epoutp0329eaf00caf7a0a020a32953f3b6b2e7d~nmcTP79_W1503615036epoutp036
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 12:14:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200107121424epoutp0329eaf00caf7a0a020a32953f3b6b2e7d~nmcTP79_W1503615036epoutp036
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1578399265;
 bh=Y162pHww9scSJuzLI2oWjX922le8IOiEMQDduSc+CDc=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=Hoj3/yByYwrf8hMApwTJr+xnwSAaSemXJiNNJ5vX8kAlZb/Cei5Rbw6JgIC08jNQf
 YZaIdLmnSwQeZrfOkbkyAohH0lGVytaAEEGeqakfC4IpSvmR+qsSbQl/zY2o1HVLgy
 8FrLRV4iPoZ4Pzr41uZpA11rbKf/m2tSGNnubjIk=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200107121424epcas5p15eba79eb67f3ce2f2298dfe48b46b923~nmcSjWI2_2912829128epcas5p1B;
 Tue,  7 Jan 2020 12:14:24 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F2.D2.20197.026741E5; Tue,  7 Jan 2020 21:14:24 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200107121423epcas5p3dbc8a5b0f0a1dcf0450f3cc83b20347a~nmcSNQzc02751627516epcas5p3N;
 Tue,  7 Jan 2020 12:14:23 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200107121423epsmtrp228ec5227661202d02e395d518bff5ef4~nmcSMUsGt2307423074epsmtrp2o;
 Tue,  7 Jan 2020 12:14:23 +0000 (GMT)
X-AuditID: b6c32a4a-781ff70000014ee5-cd-5e14762065f6
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 A8.BD.10238.F16741E5; Tue,  7 Jan 2020 21:14:23 +0900 (KST)
Received: from sriramdash03 (unknown [107.111.85.29]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200107121420epsmtip109561dd71d61daa0969cf70e7498cc90~nmcPKFHKE0760807608epsmtip1q;
 Tue,  7 Jan 2020 12:14:20 +0000 (GMT)
From: "Sriram Dash" <sriram.dash@samsung.com>
To: "'Robin Murphy'" <robin.murphy@arm.com>, "'Florian Fainelli'"
 <f.fainelli@gmail.com>, <netdev@vger.kernel.org>, <narmstrong@baylibre.com>,
 "'Heiko Stuebner'" <heiko@sntech.de>
In-Reply-To: <59cb4087-6a71-9684-c4cf-d203600b45a9@arm.com>
Subject: RE: [PATCH net] Revert
 "net: stmmac: platform: Fix MDIO init for platforms without PHY"
Date: Tue, 7 Jan 2020 17:44:19 +0530
Message-ID: <014001d5c553$ff7f06d0$fe7d1470$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-in
Thread-Index: AQI1ZYvsFetxt2LSxnoGVL5lXWNB8wDUcl0vAjD2enwBw5OZk6b5kreA
X-Brightmail-Tracker: H4sIAAAAAAAAA02SaUwTURSF8zqd6VCtGUojV0CijUZBwV2fS1yiMROjicY/Rk21lQkQFkkL
 dUu0IbhAFFeiViRUmyq1qJQqi6JYWYqgGFEookahSgQEBFRAEWmnRP59795z3rn35dGE1EAF
 0NHxiZw6Xhkrp8TC+09DZoRN0coUcw1fxuE8VzXCGZ9cFM6sTRFiS5Md4cHOMhHu6LlO4OHm
 dhKXPTMK8Ic/3SQeOG4TYGtLPYnrijMpnFbvInHWUC6Jj324KML29B24InsiLs/biq/d6xPh
 4fZ7COtfFpL4SfeIMj33FbXan7VkWRDb5TwqYgvfGxFry2kUsEX69yLWak6l2HzjETbdZkZs
 QX0WwT55NI/93F9CsLbHvYjttQZvlmwXr4jgYqO1nHrOyt3iqJRfTMKf0P3nL9QSOtQ3NQ35
 0MAshJobNVQaEtNS5gGCDNtpIX/oQdCb0oj4w08EusctwlFLX8NpAd8oQWAeLPX62xA4HJUi
 t4piwuC5M9nTkDEFCJy3znkuJpgSEiremSi3yodZDoMGi8DNfowKhkwDHreQmQavq5wejYRZ
 Ci1XOwmefaHqssszB8HMApOhneBnmgIDn00kX/eH8oGTnrqMWQ83u3SkOxiYszTcrckX8YZ1
 cCWnzst+0FZp83IA9HaWUDzHQF16qzcgES61GbwPsApKX2eOMD0SFgJ3iufwuRPg1G+XwF0G
 RgInjkl59XRoaxpNDYTS3GoBzyx8dVRTZ9BU/ZjN9GM204/ZRv8/LBsJzWgSl6CJi+Q0ixLm
 x3P7wjXKOE1SfGT4nr1xVuT5uKEbCpHpxUY7YmgkHy85E+SnkJJKreZAnB0BTchlktDZMoVU
 EqE8cJBT792lTorlNHYUSAvl/pJz5JudUiZSmcjFcFwCpx7tCmifAB2KaM/7Nqui4+LOEzj/
 QtBEX2NIrOPHiqJha92iG5OXTDPPHDI6C1ThdLJiG3zS3t7xfXVAC/moyDfprIJ9nhK171pt
 eeumh5uWNQ+KF0TdXvDxskOnbuhLVG1uLlvuay3OiCkeqgzUvX0bptL+3TI9JzX4xaHgU039
 i9emrlmVffjWWrlQE6WcF0qoNcp/ikZrgrQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpmleLIzCtJLcpLzFFi42LZdlhJTle+TCTOYNdsPYuNT04zWkx9+ITN
 Ys75FhaLNbcPMVr8eneE3eLNp8XMFv8fvWa1OHJqCZPFvT8fWC1+tm9hstj0+BqrxeVdc9gs
 uq49YbWY93ctq0XbvensFof6oi2OLRCzOLox2GLR1i/sFv9fb2W0mHVhB6vFwQ9AlX1rL7E5
 iHusmbeG0eP9jVZ2jx13lzB6bFl5k8lj56y77B6bVnWyeWxeUu/Rt2UVo8f2a/OYPQ7uM/R4
 +mMvs8eW/Z8ZPT5vkgvgjeKySUnNySxLLdK3S+DKuPfjAkvBP82K+Tv3sjcwvlPoYuTkkBAw
 kfhyvZ+pi5GLQ0hgN6PE8xkPGLsYOYAS0hI/7+pC1AhLrPz3nB2i5gWjRMvFn2wgCTYBXYmz
 N5rYQBIiIM3zHp5mBUkwC5xllejcpQ9ig3VcawfbxilgLfFr4RomEFtYIEFi78w2sHoWARWJ
 KydvgA3lFbCUeDz3HTOELShxcuYTFoiZ2hJPbz6Fs5ctfM0McZ2CxM+ny6D2iksc/dkDFhcR
 cJNY8b6BdQKj8Cwko2YhGTULyahZSNoXMLKsYpRMLSjOTc8tNiwwzEst1ytOzC0uzUvXS87P
 3cQIThpamjsYLy+JP8QowMGoxMNrISUcJ8SaWFZcmXuIUYKDWUmEV0tHJE6INyWxsiq1KD++
 qDQntfgQozQHi5I479O8Y5FCAumJJanZqakFqUUwWSYOTqkGxnn9jZ67m5QvbZ1iN2tBmc2V
 eRL+i3i2Biyr9axd6jtpg+Dtn4z7vzy23BjcukgkNp3n02f5hv0d+XtOB4t1/bU5tEpmRUb6
 17f7sqcEJijq33LNm62quOyG1NxFZyyvWUxr37bbclWsj4bo7ibmTc5+9Z7n/FblnQqcZL2l
 xHXZ/E1/ZXW5liuxFGckGmoxFxUnAgAbMz3JFgMAAA==
X-CMS-MailID: 20200107121423epcas5p3dbc8a5b0f0a1dcf0450f3cc83b20347a
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200107050854epcas1p3c1a66e67f14802322063f6c9747f1986
References: <CGME20200107050854epcas1p3c1a66e67f14802322063f6c9747f1986@epcas1p3.samsung.com>
 <20200107050846.16838-1-f.fainelli@gmail.com>
 <011a01d5c51d$d7482290$85d867b0$@samsung.com>
 <59cb4087-6a71-9684-c4cf-d203600b45a9@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_041428_619451_F5F982CA 
X-CRM114-Status: GOOD (  29.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: 'Jose Abreu' <Jose.Abreu@synopsys.com>,
 'Jayati Sahu' <jayati.sahu@samsung.com>,
 'Alexandre Torgue' <alexandre.torgue@st.com>, tomeu.vizoso@collabora.com,
 rcsekar@samsung.com, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 'Padmanabhan
 Rajanbabu' <p.rajanbabu@samsung.com>, "'David S. Miller'" <davem@davemloft.net>,
 guillaume.tucker@collabora.com, broonie@kernel.org, pankaj.dubey@samsung.com,
 'Maxime Coquelin' <mcoquelin.stm32@gmail.com>, mgalka@collabora.com,
 enric.balletbo@collabora.com, 'Giuseppe
 Cavallaro' <peppe.cavallaro@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Robin Murphy <robin.murphy@arm.com>
> Subject: Re: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
> platforms without PHY"
> 
> On 07/01/2020 5:46 am, Sriram Dash wrote:
> >> From: Florian Fainelli <f.fainelli@gmail.com>
> >> Subject: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
> > platforms
> >> without PHY"
> >>
> >> This reverts commit d3e014ec7d5ebe9644b5486bc530b91e62bbf624 ("net:
> >> stmmac: platform: Fix MDIO init for platforms without PHY") because
> >> it
> > breaks
> >> existing systems with stmmac which do not have a MDIO bus sub-node
> >> nor a 'phy-handle' property declared in their Device Tree. On those
> >> systems, the stmmac MDIO bus is expected to be created and then
> >> scanned by
> >> of_mdiobus_register() to create PHY devices.
> >>
> >> While these systems should arguably make use of a more accurate
> >> Device
> > Tree
> >> reprensentation with the use of the MDIO bus sub-node an appropriate
> >> 'phy- handle', we cannot break them, therefore restore the behavior
> >> prior to the
> > said
> >> commit.
> >>
> >> Fixes: d3e014ec7d5e ("net: stmmac: platform: Fix MDIO init for
> >> platforms without PHY")
> >> Reported-by: Heiko Stuebner <heiko@sntech.de>
> >> Reported-by: kernelci.org bot <bot@kernelci.org>
> >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > Nacked-by: Sriram Dash <Sriram.dash@samsung.com>
> >
> >> ---
> >> Heiko,
> >>
> >> I did not add the Tested-by because the patch is a little bit
> >> different
> > from what
> >> you tested, even if you most likely were not hitting the other part
> >> that I
> > was
> >> changing. Thanks!
> >>
> >>   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> >> b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> >> index cc8d7e7bf9ac..bedaff0c13bd 100644
> >> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> >> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> >> @@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct
> >> platform_device *pdev,  static int stmmac_dt_phy(struct
> plat_stmmacenet_data *plat,
> >>   			 struct device_node *np, struct device *dev)  {
> >> -	bool mdio = false;
> >> +	bool mdio = true;
> >
> >
> > This is breaking for the platforms with fixed-link.
> > stih418-b2199.dts and 169445.dts to name a few.
> >
> > For the newer platforms, they should provide the mdio/ snps,dwmac-mdio
> > property in the device tree as we are checking the mdio/
> > snps,dwmac-mdio property in the stmmac_platform driver for the mdio bus
> memory allocation.
> > For existing platforms, I agree we should not break them, but we
> > should make the code correct. And make the existing platforms adapt to the
> proper code.
> > There is a proposed solution.
> > https://protect2.fireeye.com/url?k=d075c0fc-8da69942-d0744bb3-0cc47a31
> > ba82-60be9f5a0fb38a27&u=https://lkml.org/lkml/2020/1/7/14
> >
> > What do you think?
> 
> The binding says that the phy handle and mdio child node are optional, so
> "update all of the DTBs!" is not a viable solution. I'm far from an expert here, but

I get your point Robin. Because the mdio child or snps,dwmac-mdio is not mandatory,
there has been this problem.

> AFAICS the fault of the current code is that it assumes the lack of a phy handle
> implies a fixed link, so the obvious answer is to actually check whether the

Kind of. 

> "fixed-link" property is present.


I agree to have a fixed link check. Possibly this can be done:

--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -320,7 +320,9 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
 static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
                         struct device_node *np, struct device *dev)
 {
-       bool mdio = false;
+       bool mdio = true;
+       struct device_node *fixed_link;
+
        static const struct of_device_id need_mdio_ids[] = {
                { .compatible = "snps,dwc-qos-ethernet-4.10" },
                {},
@@ -340,9 +342,8 @@ static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
                }
        }

-       if (plat->mdio_node) {
-               dev_dbg(dev, "Found MDIO subnode\n");
-               mdio = true;
+       if (of_get_child_by_name(np, "fixed-link")) {
+               mdio = false;
        }

        if (mdio) {

Neil and Heiko,

Can you guys please test this on your platforms?
We can post a more cleaner version of the patch if all agree to it.

> 
> Robin.
> 
> >
> >>   	static const struct of_device_id need_mdio_ids[] = {
> >>   		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
> >>   		{},
> >> --
> >> 2.19.1
> >
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > https://protect2.fireeye.com/url?k=2cb95551-716a0cef-2cb8de1e-0cc47a31
> > ba82-d01ceb62a8a93fa2&u=http://lists.infradead.org/mailman/listinfo/li
> > nux-arm-kernel
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
