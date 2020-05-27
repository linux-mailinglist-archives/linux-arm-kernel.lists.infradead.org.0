Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E741E4A80
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGiwFLx82dRjLrFeaa7crj3UOyILB8D0JkRu3f1+ecQ=; b=IV0WtTpL5mIgE9
	Mbb7jZmWhWp/OA88kRqaASZJ8mu20HqgK/3wwq37juRYygU+NiLuzBPDfwvIpUx/y7+TNPonRnsmy
	yoBUAH74NKPc7yQ2muo6sIW8Afs5TGP9K4/sjPodSb6HgSSdLT8aknUtwINIhKgKWUoCjjlNY9EzV
	dyJU58a3cTCe0QTI/okSa40xiyzO07JAE9uAvN8+IDNJj1m6tYVMScYxuLmt87/pqeW1Q3KM+uzA7
	03lZTLA7fsVyA3UlXWb65egMcc65Izf5ms4hLZV3LFzfdrAJWToGuo+XcGKmTtRg/ZnOoII+mXnBa
	P93hk1O/i/6uUwgWyrSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz77-0004nO-Tr; Wed, 27 May 2020 16:41:09 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyps-0005qy-6f
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:23:41 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200527162316epoutp02316f7ce14ca2c5d0c4d6605b9e3ad17e~S7y14ztvM0459104591epoutp02s
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 16:23:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200527162316epoutp02316f7ce14ca2c5d0c4d6605b9e3ad17e~S7y14ztvM0459104591epoutp02s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590596597;
 bh=E6C5JdDusssLS9ZUn+02HyqSNQGx2ow3WGDvhm9rlac=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=ElXYH25swRx5Jjxx7K5j0giuOLPpF3m+vz0wnhWxP6WISaaYkE6+2rzimUmWR24Bv
 sO6QTIfmx1VJQgnmcYguo44ThsSmFcob5iu2RpKU7EGEopqQu4gJfY9gnIoRv81vzK
 hVju6VhmIuXJYMmlz4eMgi6SphY6rvRg060M6uD0=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200527162316epcas5p4fc7c7244b52b0887f1924329b32b084e~S7y1fyWV22884528845epcas5p4r;
 Wed, 27 May 2020 16:23:16 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 63.A8.09475.4F39ECE5; Thu, 28 May 2020 01:23:16 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200527162315epcas5p14b54605df93060ef66d08b7146473cd9~S7y0q7zGL0106701067epcas5p1R;
 Wed, 27 May 2020 16:23:15 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200527162315epsmtrp28e58c59e464d3f1c0e2961f94572ad1a~S7y0qL9cj0573405734epsmtrp2V;
 Wed, 27 May 2020 16:23:15 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-b9-5ece93f47990
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 25.D3.08382.3F39ECE5; Thu, 28 May 2020 01:23:15 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200527162311epsmtip1896f4a523f40b1664bbcdb53d4c74a5c~S7yxAUtXj2854928549epsmtip1p;
 Wed, 27 May 2020 16:23:11 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Rob Herring'" <robh@kernel.org>
In-Reply-To: <20200526180843.GA81537@bogus>
Subject: RE: [PATCH v9 08/10] dt-bindings: ufs: Add DT binding documentation
 for ufs
Date: Wed, 27 May 2020 21:53:09 +0530
Message-ID: <001301d63443$1f9f6000$5ede2000$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQDj7nWNOwhaAxvEU9bpCgUI3fQKTQMZxyl4AceFVZcDJl9ydqpgaYpg
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEKsWRmVeSWpSXmKPExsWy7bCmpu6XyefiDOaulbF4+fMqm8Wn9ctY
 LeYfOcdqcf78BnaLm1uOslhsenyN1eLyrjlsFjPO72Oy6L6+g81i+fF/TBb/9+xgt1i69Saj
 A4/H5b5eJo9NqzrZPDYvqfdoObmfxePj01ssHn1bVjF6fN4k59F+oJspgCOKyyYlNSezLLVI
 3y6BK+PTuY1sBdfVKhZ/amNrYJwn28XIySEhYCLxZuZ0ti5GLg4hgd2MEjO/PGOFcD4xSuya
 84cFpEpI4BujxP1H6jAd/9bOY4WI72WU2LgxHqLhDaPEy3un2UASbAK6EjsWt4HZIgKqEk2z
 HrCAFDELHGeSeNxxi6mLkYODU0BbYnUfL0iNsECYxL9jE8HCLED1azeYgoR5BSwlnm84wQhh
 C0qcnPkE7B5mAXmJ7W/nMEPcoyDx8+kyVpBWEQE3iSXzkyBKxCWO/uxhBtkqIXCDQ+LpueNQ
 9S4SS//tYYWwhSVeHd/CDmFLSXx+t5cNZI6EQLZEzy5jiHCNxNJ5x1ggbHuJA1fmsICUMAto
 SqzfpQ+xik+i9/cTJohOXomONiGIalWJ5ndXoTqlJSZ2d0Mt9ZDYtmciywRGxVlI/pqF5K9Z
 SB6YhbBsASPLKkbJ1ILi3PTUYtMC47zUcr3ixNzi0rx0veT83E2M4GSm5b2D8dGDD3qHGJk4
 GA8xSnAwK4nwOp09HSfEm5JYWZValB9fVJqTWnyIUZqDRUmcV+nHmTghgfTEktTs1NSC1CKY
 LBMHp1QDk6jVQo0JmlUfTq3pueN9NZ57j4yxZ/SrgIn6TYwP8zVWJi71mbJNKTQkblvbnXvf
 FKclt94QsSxuvLN+UdhExTb3qikaHZ5fQt86sJbaa15fJ7P/W13gzD17m6ujuoxb28qvGx/v
 2aoc/aDQU3FVe8qE1BMVWlHM21NO8Tp85qldp7R3m9zS3uWb1R7ouLGsadapW7AkY83T0pin
 a2UeJ+s+j72w7IeVutIlH+kJl2LKdS/tDbykcf1Rq8Xr8KRzQl1d2zbHP+s+e/I5j+0azjcN
 qpzX5KoMphZdPNRwSW+CxO5lgRN0MlUnPC+ztd7GOZWnRHLX6pYdlqV7Mjony4bk2Cx50+Ry
 KO9samq7EktxRqKhFnNRcSIAlIUcAdUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsWy7bCSnO7nyefiDJ5cVbF4+fMqm8Wn9ctY
 LeYfOcdqcf78BnaLm1uOslhsenyN1eLyrjlsFjPO72Oy6L6+g81i+fF/TBb/9+xgt1i69Saj
 A4/H5b5eJo9NqzrZPDYvqfdoObmfxePj01ssHn1bVjF6fN4k59F+oJspgCOKyyYlNSezLLVI
 3y6BK+PTuY1sBdfVKhZ/amNrYJwn28XIySEhYCLxb+081i5GLg4hgd2MEgt6NjJBJKQlrm+c
 wA5hC0us/PecHaLoFaPEx3dbWEESbAK6EjsWt7GB2CICqhJNsx6wgBQxC1xmkjjy5gUbRMc9
 RombM5cydzFycHAKaEus7uMFaRAWCJHY9WEHO0iYBah57QZTkDCvgKXE8w0nGCFsQYmTM5+w
 gJQwC+hJtG0ECzMLyEtsfzuHGeI2BYmfT5exgpSICLhJLJmfBFEiLnH0Zw/zBEbhWUgGzUIY
 NAvJoFlIOhYwsqxilEwtKM5Nzy02LDDMSy3XK07MLS7NS9dLzs/dxAiOSy3NHYzbV33QO8TI
 xMF4iFGCg1lJhNfp7Ok4Id6UxMqq1KL8+KLSnNTiQ4zSHCxK4rw3ChfGCQmkJ5akZqemFqQW
 wWSZODilGphmFbebf1bP5ikNmrWGxfBgCp9ibxFP9O8pW+acuJv2IfPRV4dTi3/xKe7xbbjJ
 +eB1eVPCS+vqqvVPJrsavWs2npC19cQmN5fPdr+2qWo0Nz68+0dozWfpLWUvMh9mp/12mDv7
 HbsU4/MPH69ev/l87oU2ngqpb4sMRF9Luh2d9tlj9asXgsJ/bWaxNu0rmJeyzvjZtqzy53N8
 JRZsdzE9+6hZa1pkupwAv059f4tig1+Y+YR9YusYpKfJi/2Se5Ox52n/5xc75oo+kt4k4LZG
 uvTrQadZl19Xh62c9ujOzTucM7uPvWE6EbX7WHX0nOve4ouc0yIakiYlfxe8rJ+y4e+ihgux
 j7vX1j4S378sUYmlOCPRUIu5qDgRAP+Qsc06AwAA
X-CMS-MailID: 20200527162315epcas5p14b54605df93060ef66d08b7146473cd9
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005309epcas5p3ccd2b44c1bf20634eea3e232d1c2b62e
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005309epcas5p3ccd2b44c1bf20634eea3e232d1c2b62e@epcas5p3.samsung.com>
 <20200514003914.26052-9-alim.akhtar@samsung.com>
 <20200526180843.GA81537@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_092320_503704_EDD39E8A 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> Sent: 26 May 2020 23:39
> To: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org;
krzk@kernel.org;
> avri.altman@wdc.com; martin.petersen@oracle.com;
> kwmad.kim@samsung.com; stanley.chu@mediatek.com;
> cang@codeaurora.org; linux-samsung-soc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v9 08/10] dt-bindings: ufs: Add DT binding
documentation
> for ufs
> 
> On Thu, May 14, 2020 at 06:09:12AM +0530, Alim Akhtar wrote:
> > This patch adds DT binding for samsung ufs hci
> 
> Subject should indicate this is for Samsung in some way.
> 
Sure will update the Subject as suggested by you.

> >
> > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > ---
> >  .../bindings/ufs/samsung,exynos-ufs.yaml      | 91 +++++++++++++++++++
> >  1 file changed, 91 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > new file mode 100644
> > index 000000000000..eaa64cc32d52
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> > @@ -0,0 +1,91 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause %YAML 1.2
> > +---
> > +$id:
> > +https://protect2.fireeye.com/url?k=9995443c-c4461d82-9994cf73-0cc47a3
> > +1ba82-
> 2c9d6322e4bc35a5&q=1&u=http%3A%2F%2Fdevicetree.org%2Fschemas%2F
> > +ufs%2Fsamsung%2Cexynos-ufs.yaml%23
> > +$schema:
> > +https://protect2.fireeye.com/url?k=70bd56cd-2d6e0f73-70bcdd82-0cc47a3
> > +1ba82-7865215595a4146c&q=1&u=http%3A%2F%2Fdevicetree.org%2Fmeta-
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
> 
> maxItems is redundant.
> 
Will drop it.

> > +    items:
> > +      - description: ufs link core clock
> > +      - description: unipro main clock
> > +
> > +  clock-names:
> > +    maxItems: 2
> 
> Here too.
Will drop it.
> 
> > +    items:
> > +      - const: core_clk
> > +      - const: sclk_unipro_main
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  phys:
> > +    maxItems: 1
> > +
> > +  phy-names:
> > +    maxItems: 1
> 
> What's the name? (Though a name is kind of pointless when there is only
> 1.)
Not sure are you suggesting to drop the phy-names completely? Or just keep
"phy-names:" only.
I looked into how other bindings has handle it, I will change this as 
   phy-names:
       const: ufs-phy

Hope you are ok with this.

> 
> With those fixed,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
With adding "phy-names" entry, I will adds your Reviewed-by tag, will post
the updated changes soon.
Thank you!!

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - phys
> > +  - phy-names
> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: false
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
