Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D451CBBE6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 02:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQl1KIeATrz3KX4x9MYKyYM++/TQ9sVBewPZNYvUk8s=; b=mhaO5rdheCnSu1
	dmmujIXNT3pRqmVQXzr3GjDMcIe5oDiCZVF3tcM8Vr1B1qGazCki4jJUku1GnX1BQc6PzjTO8TpVr
	N1U1vOkk7BM8luyApjBAX+cQNFO0ZgBP0qTvpDCcl27tOZG9j8DmWgAyZERID3MyrEMMEpIP6Gge3
	5Y4bEe7mooAdEl89j7r7nQYUin++YxSHiiFfkxrsxS2uvO/gNFkLoE/q81UTNTgekcPV3CGq9nZ8c
	KOlDk13C2qS0Ln+6oQI1Ul4kpzdYFQKdONDDPZwPOQ/4NeteolYEU5H5tanRbYuyD1/aWFThoqkcF
	UgxNkMUjOPa+Nztj2iAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXDWF-0007vk-Hi; Sat, 09 May 2020 00:39:07 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXDW5-0007uR-GB
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 00:38:59 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200509003852epoutp0160f43f49b76d31a06d3bd0117838c38f~NNTHqHL9q0883808838epoutp01m
 for <linux-arm-kernel@lists.infradead.org>;
 Sat,  9 May 2020 00:38:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200509003852epoutp0160f43f49b76d31a06d3bd0117838c38f~NNTHqHL9q0883808838epoutp01m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588984732;
 bh=RhTV7Muv1oo9pIGTj6jAmpN6UeXp2Me1pfwWzC71fVY=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=VaYWCXsoYUauXmOGLwD+T2zjJLQzXKdiC5Y94qALyhWeLg59R+dH6Taskq+mBdH4W
 m2P5CE/H5bBfvR5sT1OGY9i8ZmXTy+SkMZhBna2O1ZQOq9NnYzPPhxhw4Za8EDSVhM
 1mmvbIdgSCoaV2izJv0xksBPY4D/Q38PZ0AkqgZg=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200509003851epcas5p401052a4665cac64afd8b6d4c087f5ea1~NNTHbR6100900009000epcas5p4V;
 Sat,  9 May 2020 00:38:51 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 47.2A.23389.B9BF5BE5; Sat,  9 May 2020 09:38:51 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200509003850epcas5p2d089a7323c9d34fc8ba2481acd3b4847~NNTGRqQp10952809528epcas5p2v;
 Sat,  9 May 2020 00:38:50 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200509003850epsmtrp22bee29d0b16a8f569a0b986ae268a022~NNTGN9_gp1992219922epsmtrp2L;
 Sat,  9 May 2020 00:38:50 +0000 (GMT)
X-AuditID: b6c32a4b-797ff70000005b5d-d7-5eb5fb9b4bf3
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 FF.1A.25866.A9BF5BE5; Sat,  9 May 2020 09:38:50 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200509003847epsmtip1c2a4a7d428d8ee79a63663761fd6977c~NNTDX0UO32459024590epsmtip1Z;
 Sat,  9 May 2020 00:38:47 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Rob Herring'" <robh@kernel.org>
In-Reply-To: <20200505155846.GA28360@bogus>
Subject: RE: [PATCH v7 08/10] dt-bindings: ufs: Add DT binding documentation
 for ufs
Date: Sat, 9 May 2020 06:08:45 +0530
Message-ID: <006901d6259a$3520c660$9f625320$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQINaKJiJYqhfY8pF8dQGQjTbFgO/QHlS/6EAxGb44oBswv6j6f7EtOw
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKKsWRmVeSWpSXmKPExsWy7bCmhu7s31vjDO4s0bB4+fMqm8Wn9ctY
 LeYfOcdqcf78BnaLm1uOslhsenyN1eLyrjlsFjPO72Oy6L6+g81i+fF/TBb/9+xgt1i69Saj
 A4/H5b5eJo9NqzrZPDYvqfdoObmfxePj01ssHn1bVjF6fN4k59F+oJspgCOKyyYlNSezLLVI
 3y6BK+PohfVsBVdUKh4feMLUwHheuouRk0NCwETi35xG5i5GLg4hgd2MEkcbp0A5nxglJpzY
 ywLhfGaUeLdyAhNMy9cX56ASu4CqrvewQThvGCWO/LvKDlLFJqArsWNxGxuILSKgKtE06wFY
 B7PAcSaJxx23wEZxCmhLtD9vASsSFgiT2NB3gBnEZhFQkbj8oI21i5GDg1fAUuLLwXiQMK+A
 oMTJmU9YQGxmAXmJ7W/nMENcpCDx8+kyVohdbhJvZ6xmh6gRlzj6sweq5gaHxN8b9hC2i8T6
 Ga1sELawxKvjW9ghbCmJz+/2soGslRDIlujZZQwRrpFYOu8YC4RtL3HgyhwWkBJmAU2J9bv0
 ITbxSfT+fsIE0ckr0dEmBFGtKtH87ipUp7TExO5uVgjbQ2L9hhdMExgVZyH5axaSv2YhuX8W
 wrIFjCyrGCVTC4pz01OLTQuM81LL9YoTc4tL89L1kvNzNzGCU5qW9w7GRw8+6B1iZOJgPMQo
 wcGsJMI7sWJLnBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHex41AKYH0xJLU7NTUgtQimCwTB6dU
 A5M5y+3g06q/A4rUdb5073kY1ry1Wvne0th1QV88dKsf/s8XDpsjdnRJe7fhazkezjRj1ud6
 OQZf2f16E+v+dCvt/rhIuuP3oWgdhrNyz7aUrlogp7d19k325gLxp/xT7bMrLM6HXVSNPPug
 ui6n5Hqaz+fw/41reVMyU6bs65k/hW8W99u1kf9S33J0dAt0TwzdvO+X2cOePd9fMv+K+sT8
 /Miz1LKEhD5jp8CVcVrpJhu3yKvKzn4ntIz53fSdDzyeXHctmD+z0PvN65V6W6wzckKzbodE
 GM/od/VlYDe1md6lEi6nGOLnPd2z7K6s9n9zgafznuZcWejYPn3x1jp2XtnPLnKT5r1RZ7R0
 VmIpzkg01GIuKk4EAHk0J2LYAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsWy7bCSnO6s31vjDJatlrZ4+fMqm8Wn9ctY
 LeYfOcdqcf78BnaLm1uOslhsenyN1eLyrjlsFjPO72Oy6L6+g81i+fF/TBb/9+xgt1i69Saj
 A4/H5b5eJo9NqzrZPDYvqfdoObmfxePj01ssHn1bVjF6fN4k59F+oJspgCOKyyYlNSezLLVI
 3y6BK+PohfVsBVdUKh4feMLUwHheuouRk0NCwETi64tzLF2MXBxCAjsYJQ50HWCCSEhLXN84
 gR3CFpZY+e85O0TRK0aJXXsPsIAk2AR0JXYsbmMDsUUEVCWaZj0Am8QscJlJ4sibF2wQHfcY
 JY4sfw1WxSmgLdH+vAXMFhYIkdjx/SAziM0ioCJx+UEbaxcjBwevgKXEl4PxIGFeAUGJkzOf
 sICEmQX0JNo2MoKEmQXkJba/ncMMcZyCxM+ny1ghbnCTeDtjNTtEjbjE0Z89zBMYhWchmTQL
 YdIsJJNmIelYwMiyilEytaA4Nz232LDAKC+1XK84Mbe4NC9dLzk/dxMjODa1tHYw7ln1Qe8Q
 IxMH4yFGCQ5mJRHeiRVb4oR4UxIrq1KL8uOLSnNSiw8xSnOwKInzfp21ME5IID2xJDU7NbUg
 tQgmy8TBKdXAZPBKUuk803F1i0OeEvfTimOFXN6V1nFvUw9dVHP83jW+b9tmN/qytLP+nXTv
 09Lfu0TsGD0muBmu4P9lZnba8KtYMZuZtpuire7vtDlyJfe1y1ZztvwtjePZIvtu5qfDJ00F
 i26q/9orNPPdh9Rbp9SWT9/U/u36eWcpTYFt79KY1Z7t2cA2mePjT6urlkbLj1+11nmv7rjZ
 9wrLJTavF/a56wqefhNJKMzo3pdyqZTFzV/qkkF7etjzHr9d1wSf+QpuF1oRXsSf4RDeNbXu
 yj6z73qpzIohqtFaefwhZ2b8WZR8RmQSA1N5kPTO06w6s+/JO7+qu9vWsG6NwlSTR2ePuK3+
 u8T6dea3Y7f/KbEUZyQaajEXFScCANuXUPA8AwAA
X-CMS-MailID: 20200509003850epcas5p2d089a7323c9d34fc8ba2481acd3b4847
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174219epcas5p460c8637629afd930313ae0fa936593cd
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174219epcas5p460c8637629afd930313ae0fa936593cd@epcas5p4.samsung.com>
 <20200426173024.63069-9-alim.akhtar@samsung.com>
 <20200505155846.GA28360@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_173857_955989_9F8FA389 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
> Sent: 05 May 2020 21:29
> To: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org;
krzk@kernel.org;
> avri.altman@wdc.com; martin.petersen@oracle.com;
> kwmad.kim@samsung.com; stanley.chu@mediatek.com;
> cang@codeaurora.org; linux-samsung-soc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v7 08/10] dt-bindings: ufs: Add DT binding
documentation
> for ufs
> 
> On Sun, Apr 26, 2020 at 11:00:22PM +0530, Alim Akhtar wrote:
> > This patch adds DT binding for samsung ufs hci
> >
> > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > ---
> >  .../bindings/ufs/samsung,exynos-ufs.yaml      | 93 +++++++++++++++++++
> >  1 file changed, 93 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > new file mode 100644
> > index 000000000000..954338b7f37d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > @@ -0,0 +1,93 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause %YAML 1.2
> > +---
> > +$id:
> > +https://protect2.fireeye.com/url?k=0b9d9296-560b2be1-0b9c19d9-0cc47a3
> > +12ab0-
> 58b0bd73926e9ff6&q=1&u=http%3A%2F%2Fdevicetree.org%2Fschemas%2F
> > +ufs%2Fsamsung%2Cexynos-ufs.yaml%23
> > +$schema:
> > +https://protect2.fireeye.com/url?k=1fa0a694-42361fe3-1fa12ddb-0cc47a3
> > +12ab0-6911bcc836debe4d&q=1&u=http%3A%2F%2Fdevicetree.org%2Fmeta-
> schem
> > +as%2Fcore.yaml%23
> > +
> > +title: Samsung SoC series UFS host controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Alim Akhtar <alim.akhtar@samsung.com>
> > +
> > +description: |
> > +  Each Samsung UFS host controller instance should have its own node.
> > +  This binding define Samsung specific binding other then what is
> > +used
> > +  in the common ufshcd bindings
> > +  [1] Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> > +
> > +properties:
> > +
> > +  compatible:
> > +    enum:
> > +      - samsung,exynos7-ufs
> > +
> > +  reg:
> > +    items:
> > +     - description: HCI register
> > +     - description: vendor specific register
> > +     - description: unipro register
> > +     - description: UFS protector register
> > +
> > +  reg-names:
> > +    items:
> > +      - const: hci
> > +      - const: vs_hci
> > +      - const: unipro
> > +      - const: ufsp
> > +
> > +  clocks:
> > +    maxItems: 2
> > +    items:
> > +      - description: ufs link core clock
> > +      - description: unipro main clock
> > +
> > +  clock-names:
> > +    maxItems: 2
> > +    items:
> > +      - const: core_clk
> > +      - const: sclk_unipro_main
> > +
> > +  interrupts:
> > +    items:
> > +      - description: interrupt signal for various ufshc status
> 
> Just 'maxItems: 1' is fine for single item cases.
> 
Sure will update
> > +
> > +  phys:
> > +    maxItems: 1
> > +    description:
> > +      phandle of the ufs phy node
> 
> Can drop description.
> 
Ack

> > +
> > +  phy-names:
> > +      const: ufs-phy
> 
> Not much point to a name when only 1 entry.
> 
You mean drop the phy-names property itself or just const: ufs-phy? And add
maxItems: 1

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - phys
> > +  - phy-names
> > +  - clocks
> > +  - clock-names
> 
> additionalProperties: false
> 
Sure will add
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/clock/exynos7-clk.h>
> > +
> > +    ufs: ufs@15570000 {
> > +       compatible = "samsung,exynos7-ufs";
> > +       reg = <0x15570000 0x100>,
> > +             <0x15570100 0x100>,
> > +             <0x15571000 0x200>,
> > +             <0x15572000 0x300>;
> > +       reg-names = "hci", "vs_hci", "unipro", "ufsp";
> > +       interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
> > +       clocks = <&clock_fsys1 ACLK_UFS20_LINK>,
> > +                <&clock_fsys1 SCLK_UFSUNIPRO20_USER>;
> > +       clock-names = "core_clk", "sclk_unipro_main";
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
> > +       pclk-freq-avail-range = <70000000 133000000>;
> > +       phys = <&ufs_phy>;
> > +       phy-names = "ufs-phy";
> > +    };
> > +...
> > --
> > 2.17.1
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
