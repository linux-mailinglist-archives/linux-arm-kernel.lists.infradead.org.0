Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A8F4C92B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zw5JCUeVnvyPk+v9qvsoLV7YzQE2uODhOGlx7YvP8Kk=; b=E4lQmbxTbJ15O4
	5Egf5nJZV81SzuLUfWNGgO7IMGhJJqahCnJEh5NFXdQvKML/QT2VGEaG/Yz0ePuDDZl/Zw+b9Ia09
	3RF82GljbIGK23tlcGBB9hpOIlHdqk2LspwhuEc7wt9YUE0lKdTxGgkbaYPEA0Cbe/Og5awF87jU7
	UDjWmUQVdQ19vJoCt/UjXU5SrFso0MuR1WmeSDB06LD6FNaWqB6h7jJUipKUPd/5sNl6L65uoOgKQ
	l1Sv+FvjW4gA9vlqXluklHo7NbM5l2EZ4C7whzlwWzWRHqRPCOKVYaooxGCLFiGcHV1yptrj7RuZD
	6+wbfvty3QmxOZULMOVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsDE-0007Z0-5Q; Thu, 20 Jun 2019 08:14:28 +0000
Received: from mail-eopbgr690059.outbound.protection.outlook.com
 ([40.107.69.59] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsCu-0007YK-Vt
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5s9j+QmbOasbgR8+aqoPraZvCb+NNKosgOJU7KsJYLE=;
 b=1EkRwQkskLmAnc0Mjf/CdGX9rNf9GyjzPt+bt/U1sMK6u4hzIkIf+nbIavK2KJih8jRVLrQKb+GlK0CjdUyn4Hnj8Li0cDcmsY7XK65bzlueXWb36AMQ9Frq3M1f0kbL+lPeuPwOL3G1qpoRROZ8WcSJ+4OdO9YgYSs5370ut/g=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (10.255.7.10) by
 MN2PR02MB5886.namprd02.prod.outlook.com (20.179.86.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 20 Jun 2019 08:14:02 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e55a:e2d1:953f:ed3b]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e55a:e2d1:953f:ed3b%4]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 08:14:02 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: RE: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
Thread-Topic: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
 Platform Tap Delays Setup
Thread-Index: AQHVIDwWKZKZdF95gUaFGq/oqBvspKafu1mAgAADioCAAA8FAIAC5KtwgABVmICAARvKAA==
Date: Thu, 20 Jun 2019 08:14:02 +0000
Message-ID: <MN2PR02MB602935234A2A779B5A05CD63C1E40@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
 <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
 <MN2PR02MB6029DB87CEE32655B0F1E794C1E50@MN2PR02MB6029.namprd02.prod.outlook.com>
 <CAPDyKFqb3uRU1XbrioSw6UZ5atZ8WwZNhQ_yq2+3JfxXZCxr7g@mail.gmail.com>
In-Reply-To: <CAPDyKFqb3uRU1XbrioSw6UZ5atZ8WwZNhQ_yq2+3JfxXZCxr7g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e50c468d-1619-474f-cb56-08d6f5574169
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB5886; 
x-ms-traffictypediagnostic: MN2PR02MB5886:
x-microsoft-antispam-prvs: <MN2PR02MB5886996A1A802060B683F8A2C1E40@MN2PR02MB5886.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(39860400002)(366004)(396003)(51444003)(13464003)(189003)(199004)(8936002)(99286004)(6506007)(53546011)(76176011)(66066001)(229853002)(81156014)(81166006)(8676002)(2906002)(486006)(4326008)(71190400001)(26005)(53936002)(86362001)(102836004)(71200400001)(25786009)(478600001)(11346002)(316002)(446003)(186003)(74316002)(64756008)(66556008)(66476007)(66946007)(76116006)(66446008)(73956011)(7736002)(305945005)(14454004)(6246003)(256004)(5660300002)(476003)(55016002)(33656002)(6916009)(9686003)(6116002)(68736007)(72206003)(3846002)(6436002)(54906003)(7696005)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB5886;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9xq48dJTl7+Rs7iHxnN6D79arCW+vHV+6fzSVflXJQQjauC1p90arUhPEVmzuu+mubxM1kR7nIwVz67M5mWkCTKxt5hA/bQGfO5a2Gk2YohaiqTcYwoDFWuLmjmWDsgC7IU+VkYtoU5xW+81fmEQoujG8mwbbt8VowPn3D+y0WE0FWzuc7VtTo90FTwFXdTbhE65h4uOvhGBNJohfkf1XyH4A52pB0gfKkafStgXiztIokZZ/5fab20F9Ith8g+e8gxLFlgTyrViAhuAFL97JxqMqxxqHvT0TXr+VoGGB6j6HLqMrSxz2GlUj0ZjTybRJpEE4i3ntaMbStjBTRJ/A4L3n7/6i4zy2Abskr+s3kZxnScQ2ogCeJUyk/Vh+35+zYi9XZ4z7M2xB+5iMOVD6JQQqiCiNUXaQB89EIzvZMc=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e50c468d-1619-474f-cb56-08d6f5574169
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 08:14:02.5367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnarani@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5886
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_011409_026835_99121E42 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uffe,


> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Wednesday, June 19, 2019 7:09 PM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: Michal Simek <michals@xilinx.com>; Rob Herring <robh+dt@kernel.org>;
> Mark Rutland <mark.rutland@arm.com>; Adrian Hunter
> <adrian.hunter@intel.com>; Rajan Vaja <RAJANV@xilinx.com>; Jolly Shah
> <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Olof
> Johansson <olof@lixom.net>; linux-mmc@vger.kernel.org; DTML
> <devicetree@vger.kernel.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>
> Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
> Platform Tap Delays Setup
> 
> On Wed, 19 Jun 2019 at 10:40, Manish Narani <MNARANI@xilinx.com> wrote:
> >
> > Hi Uffe,
> >
> >
> > > -----Original Message-----
> > > From: Ulf Hansson <ulf.hansson@linaro.org>
> > > Sent: Monday, June 17, 2019 5:51 PM
> > [...]
> > >
> > > The "const struct zynqmp_eemi_ops *eemi_ops; should then be moved into
> > > a clock provider specific struct, which is assigned when calling
> > > sdhci_arasan_register_sdclk. I understand that all the clock data is
> > > folded into struct sdhci_arasan_data today, but I think that should be
> > > moved into a "sub-struct" for the clock specifics.
> > >
> > > Moreover, when registering the clock, we should convert from using
> > > devm_clk_register() into devm_clk_hw_register() as the first one is
> > > now deprecated.
> >
> > Just a query here:
> > When we switch to using devm_clk_hw_register() here, it will register the
> clk_hw and return int.
> > Is there a way we can get the clk (related to the clk_hw registered) from the
> > clock framework?
> > I am asking this because we will need that clk pointer while calling
> clk_set_phase() function.
> 
> I assume devm_clk_get() should work fine?

This clock does not come through ZynqMP Clock framework. We are initializing it in this 'sdhci-of-arasan' driver and getting only the clock name from "clock_output_names" property. So I think devm_clk_get() will not work here for our case.
I have gone through the clock framework and I found one function which may be used to create clock from clock hw, that is ' clk_hw_create_clk()' which can be used from our driver, however this needs change in the clock framework as below :

---
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index aa51756..4dc69ff 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3420,6 +3420,7 @@ struct clk *clk_hw_create_clk(struct device *dev, struct clk_hw *hw,
 
        return clk;
 }
+EXPORT_SYMBOL_GPL(clk_hw_create_clk);
 
 static int clk_cpy_name(const char **dst_p, const char *src, bool must_exist)
 {
diff --git a/drivers/clk/clk.h b/drivers/clk/clk.h
index d8400d6..2319899 100644
--- a/drivers/clk/clk.h
+++ b/drivers/clk/clk.h
@@ -22,17 +22,9 @@ static inline struct clk_hw *of_clk_get_hw(struct device_node *np,
 struct clk_hw *clk_find_hw(const char *dev_id, const char *con_id);
 
 #ifdef CONFIG_COMMON_CLK
-struct clk *clk_hw_create_clk(struct device *dev, struct clk_hw *hw,
-                             const char *dev_id, const char *con_id);
 void __clk_put(struct clk *clk);
 #else
 /* All these casts to avoid ifdefs in clkdev... */
-static inline struct clk *
-clk_hw_create_clk(struct device *dev, struct clk_hw *hw, const char *dev_id,
-                 const char *con_id)
-{
-       return (struct clk *)hw;
-}
 static struct clk_hw *__clk_get_hw(struct clk *clk)
 {
        return (struct clk_hw *)clk;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index f689fc5..d3f60fe 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -18,6 +18,7 @@
 
 struct device;
 struct clk;
+struct clk_hw;
 struct device_node;
 struct of_phandle_args;
 
@@ -934,4 +935,15 @@ static inline struct clk *of_clk_get_from_provider(struct of_phandle_args *clksp
 }
 #endif
 
+#ifdef CONFIG_COMMON_CLK
+struct clk *clk_hw_create_clk(struct device *dev, struct clk_hw *hw,
+                             const char *dev_id, const char *con_id);
+#else
+static inline struct clk *
+clk_hw_create_clk(struct device *dev, struct clk_hw *hw, const char *dev_id,
+                 const char *con_id)
+{
+       return (struct clk *)hw;
+}
+#endif
 #endif
---

This change should help other drivers (outside 'drivers/clk/') as well for getting the clock created from clk_hw.
Is this fine to do?

Thanks,
Manish
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
