Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393A71A03CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 02:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vxsjmwe1AnTT8MEV9ZW6uJpjnuXoEims0YdaPJkn+7w=; b=KA6q2PykqLe1I/
	aL+3fGsYpfL7xHT0iokGhG4XpOg+/DklFXqkK4urvFxp+8TJmFwOhmVJo810A/0x2rVKIg9pOjqmZ
	0sVU36jMXpiWmUw739U0sPSstPx8PWtg+ZgoZhScigoAaosJybuxKemi8pluSFCbSFXaPPbScDzyt
	PyeEyG2KdPFtTICQ4yNQkSniZiES9FaBWB7+q2fzR19JTulZQn6IqJmJPmy7W/kbNP6XowDoxA4pi
	vmLN/52U9xhKdGiSnnq08Ae5iJ1TiqP8npE3KBciUk9igsnzQI/OkC6VRf+JpzIOnPq0jEwj49VHf
	COnc1rly7xiiWAYQpM1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLc6b-0007aq-Nc; Tue, 07 Apr 2020 00:28:41 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLc6S-0007Yr-Qh
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 00:28:37 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200407002829epoutp0229e4e972483efaaf93d6b8b80e564461~DYg7ajAw-2335223352epoutp027
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Apr 2020 00:28:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200407002829epoutp0229e4e972483efaaf93d6b8b80e564461~DYg7ajAw-2335223352epoutp027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586219309;
 bh=kYk8Hja5i9axWYkSYRQNU8uWD4EAZdAI2RMgv2nSU+I=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=ZdaPh6nxjKQ4tbeI2RddahsdKtWisZw9Z5zwmAuz6igAPL/JPdZBRT3JO/Y2v+lDN
 kURHZIx/nMqA/pyMfPYkEGLL5er1I10NULXV+PsWzgd846W5DWvSNt7wxoR1ReNahk
 d3rNhtkV0G9oSKrzyAHVWKHyzRwHK08rjt3iVB9A=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200407002829epcas5p1eeda5f53dde4d0759e2c87506cb60524~DYg7JAQJD2710727107epcas5p1v;
 Tue,  7 Apr 2020 00:28:29 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 82.3F.04782.D29CB8E5; Tue,  7 Apr 2020 09:28:29 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200407002827epcas5p32458e0a4063aa41afb9ef95030724c53~DYg5caoo51090110901epcas5p3j;
 Tue,  7 Apr 2020 00:28:27 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200407002827epsmtrp254a304db95ebcc55170af7ba6c73c89f~DYg5asa_51303013030epsmtrp2m;
 Tue,  7 Apr 2020 00:28:27 +0000 (GMT)
X-AuditID: b6c32a49-89bff700000012ae-0a-5e8bc92db9f4
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2C.A2.04158.B29CB8E5; Tue,  7 Apr 2020 09:28:27 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200407002824epsmtip1ede61960b9b3fd8c9cb1e5b97448dc25~DYg2ZBaig2114921149epsmtip1D;
 Tue,  7 Apr 2020 00:28:24 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Rob Herring'" <robh@kernel.org>
In-Reply-To: <20200405015416.GA16616@bogus>
Subject: RE: [PATCH v4 1/5] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Tue, 7 Apr 2020 05:58:21 +0530
Message-ID: <006401d60c73$7486ec20$5d94c460$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKI+vJzlUBp7WIi19k8pRZBKIHK2gGQnU/1Ag9B/DgCQMO8c6bX6iwg
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUhUYRTlm7f4NCeeT8HrCFZTRipqVtKLNPsR8iILi4Io0YZ8qLg2z9GU
 IqvB1HHEhCwnUaPUMnMZNZdyYcplwpTUMVyKTIco0kghN9rGN5H/zv3OOd+5By6FMUOEjIpJ
 SOaVCYo4OWmHP33h4entbdSE73w0xLCfl00kO19bQbClLwcIdnCwzoYda+zGWf30KMEOtxWT
 7J3BDgmredtCspW9vyTs7+ctNmx50xg6aM8N52klnL4qm+QaHlzh1MZOnPtuHse5vMYqxC3o
 3bgbXRpJKHXGLiCSj4tJ4ZW+B87ZRde/1pBJDfKLtwYKiAzUJ8tBthTQe6DuvYnMQXYUQz9D
 MDOxZB3mESy1vrEOPxA0P6zE/1k0tfesRDuCvvmrhDh8RdCxsrKmImlvaLmfSVqwE+0O13Qf
 cIsIo3slMJ01LrEQtrQXGPU/MQt2pI/DYuHCXwNF4fQ2GPuYbIFSeh/os3ZZFFLaAYxFM2vf
 Y/QmaJ4txsSFNsOyuYIQo4Kh01xv1ThD93IuZokFusYGSu9mINFwCKrLRq1mR/jS22gjYhks
 zLWvrQB0LOS27RafL0F5SY+1fBB0jRTjFglGe0Btm68YtRG0qzMS0SmFrExGVLvD9TmT1ekK
 NzUaQsQctGv7sHy0RbeumG5dMd26Arr/YWUIr0IufJIQH8UL/kl+CXyqj6CIF1QJUT7nE+P1
 aO3SPA+3IN1AiAHRFJLbS0/basIZQpEipMUbEFCY3Ekq02aHM9JIRVo6r0yMUKrieMGAXClc
 7iwtIExhDB2lSOZjeT6JV/5jJZStLAOlnbx8KrjNrH2HJmPUGzLcBoy9txdHvXakKx8/MeRP
 7E0cOevwbapkvja9zP9Tmqu6KGyVSO83aAOQ6kiXS35stz3aGqhfYl+tMCamuDHk6KpjaoMZ
 6bUdROt2xRQTXHjMPrCeU9Ush9b3qIXZ/gvZs02T6rwTQREpePXgfjkuRCv8PDGloPgDpvJd
 9mUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCIsWRmVeSWpSXmKPExsWy7bCSnK72ye44g6ZuWYuXP6+yWXxav4zV
 Yv6Rc6wW589vYLe4ueUoi8Wmx9dYLS7vmsNmMeP8PiaL7us72CyWH//HZPF/zw52i6VbbzI6
 8Hhc7utl8ti0qpPNY/OSeo+Wk/tZPD4+vcXi0bdlFaPH501yHu0HupkCOKK4bFJSczLLUov0
 7RK4Mjae7WYr2KxUMfXcJNYGxhNSXYycHBICJhLd6xeygdhCArsZJd4uVIeIS0tc3ziBHcIW
 llj57zmQzQVU84pRYuXyaSwgCTYBXYkdi9vAmkUEVCWaZj1gASliFrjMJHHkzQs2iI57jBK3
 755iBaniFNCWOLnpLzOILSzgL9Hz8RljFyMHB4uAisTNRyUgJq+ApcSmDiOQCl4BQYmTM5+w
 gISZBfQk2jYygoSZBeQltr+dwwxxm4LEz6fLWCFOcJPY/3QjC0SNuMTRnz3MExiFZyGZNAth
 0iwkk2Yh6VjAyLKKUTK1oDg3PbfYsMAoL7Vcrzgxt7g0L10vOT93EyM4LrW0djCeOBF/iFGA
 g1GJh5eBvTtOiDWxrLgy9xCjBAezkgivVG9nnBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXFe+fxj
 kUIC6YklqdmpqQWpRTBZJg5OqQbGZrPzdQ+luA8G/jlsrvKQoYJD8NHOQwmKL6wLK5Pizy7u
 Mjv4gv9wxZylNa32d78x3td/eGz7d4acoFU3otm7D4S28PMmNIYayxmybrVgdMxi+6/m5vDb
 NV+yvaMiT2ZJwNf4VYnuXqctYsyv/DTzOsCWxxto8mb7mtieVf3LtKOszjTPT1RiKc5INNRi
 LipOBACcpHwYxwIAAA==
X-CMS-MailID: 20200407002827epcas5p32458e0a4063aa41afb9ef95030724c53
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200327171414epcas5p1460e932c0bc98f31ebdd115218b4fd49
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171414epcas5p1460e932c0bc98f31ebdd115218b4fd49@epcas5p1.samsung.com>
 <20200327170638.17670-2-alim.akhtar@samsung.com>
 <20200405015416.GA16616@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_172833_281138_42A094DA 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: 05 April 2020 07:24
> To: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org;
krzk@kernel.org;
> avri.altman@wdc.com; martin.petersen@oracle.com;
> kwmad.kim@samsung.com; stanley.chu@mediatek.com;
> cang@codeaurora.org; linux-samsung-soc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v4 1/5] dt-bindings: phy: Document Samsung UFS PHY
> bindings
> 
> On Fri, Mar 27, 2020 at 10:36:34PM +0530, Alim Akhtar wrote:
> > This patch documents Samsung UFS PHY device tree bindings
> >
> > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > ---
> >  .../bindings/phy/samsung,ufs-phy.yaml         | 67 +++++++++++++++++++
> >  1 file changed, 67 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> > b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> > new file mode 100644
> > index 000000000000..41ba481ecc76
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: (GPL-2.0)
> 
> Dual license new bindings:
> 
> (GPL-2.0-only OR BSD-2-Clause)
> 
Sure will update.

> > +%YAML 1.2
> > +---
> > +$id:
> > +https://protect2.fireeye.com/url?k=91cb53a2-cc1b5b6e-91cad8ed-000babf
> > +f3793-
> 448c7d85bdf69f5a&q=1&u=http%3A%2F%2Fdevicetree.org%2Fschemas%2F
> > +phy%2Fsamsung%2Cufs-phy.yaml%23
> > +$schema:
> > +https://protect2.fireeye.com/url?k=a8ce57c7-f51e5f0b-a8cfdc88-000babf
> > +f3793-fbe649ab0853d701&q=1&u=http%3A%2F%2Fdevicetree.org%2Fmeta-
> schem
> > +as%2Fcore.yaml%23
> > +
> > +title: Samsung SoC series UFS PHY Device Tree Bindings
> > +
> > +maintainers:
> > +  - Alim Akhtar <alim.akhtar@samsung.com>
> > +
> > +properties:
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +  compatible:
> > +    enum:
> > +      - samsung,exynos7-ufs-phy
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description: PHY base register address
> > +
> > +  reg-names:
> > +    items:
> > +      - const: phy-pma
> > +
> > +  clocks:
> > +    items:
> > +      - description: PLL reference clock
> > +      - description: Referencec clock parrent
> > +
> > +  clock-names:
> > +    items:
> > +      - const: ref_clk_parent
> > +      - const: ref_clk
> 
> Doesn't match what 'clocks' says.
> 
Will correct.

> Also, why do you need the parent in DT? Just use clk_get_parent(). DT
should
> reflect actual h/w clock connections (not what the driver happens to
need).
> Also, there's the assigned-clocks binding.
> 
Some of the platform deviates from the normal clock trees and need to force
a different parent. To get such parent added this.
I will explore a bit more on this, and check about assigned-clocks binding.
This is also an optional clock, so will change accordingly

> > +
> > +  samsung,pmu-syscon:
> > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> > +    description: phandle for PMU system controller interface, used to
> > +                 control pmu registers for power isolation
> 
> We have a binding for power domains. Use that for power isolation.
> 
Let me have a look on that, if power domains bindings can be use here, this
is same way other Exynos binding is defined w.r.t. pmu-syscon.

> > +
> > +required:
> > +  - "#phy-cells"
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - clocks
> > +  - clock-names
> > +  - samsung,pmu-syscon
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/exynos7-clk.h>
> > +
> > +    ufs_phy: ufs-phy@15571800 {
> > +        compatible = "samsung,exynos7-ufs-phy";
> > +        reg = <0x15571800 0x240>;
> > +        reg-names = "phy-pma";
> > +        samsung,pmu-syscon = <&pmu_system_controller>;
> > +        #phy-cells = <0>;
> > +        clocks = <&clock_fsys1 MOUT_FSYS1_PHYCLK_SEL1>,
> > +                 <&clock_top1 CLK_SCLK_PHY_FSYS1_26M>;
> > +        clock-names = "ref_clk_parent",
> > +                      "ref_clk";
> > +    };
> > +...
> >
> > base-commit: fb33c6510d5595144d585aa194d377cf74d31911
> > --
> > 2.17.1
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
