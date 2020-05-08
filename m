Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DCD1CBA9B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 00:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0am4hJeLzWO2FNo3PcX9ToBG0kWLehaRz8g8+ScoRU=; b=gGki8E6Rh2QS+i
	1r5ppFvcd/l82WHtT+NN/4LEPchA0e9VwWlBUiuGgkSOu3ugx+8NE5erjwICUTaiGs9EKQiG5XHFk
	kRQGJo+u21N8xGPkuqfovL/k04MVPrg7O36p3pLeHouWxHduSTxhjfQCiPP5/eY3VNp2hhcpUqzX+
	JjPbauuPdck6gJaelyxXbZx8zpWdKuLSlk8U1fHyGTrWhZ5wBy5wy2vCzfqIN3Y9b/fZugY1Fw0X6
	hja5FdqmF7Zw9lYOGQ61cwXI2OSme6uD7C53V5cp21FE3wtwyyS2IqD4XfnoipQuDM1d4dzlGCdth
	0AffZMD+99MVPM86atkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXBK5-0004id-Mk; Fri, 08 May 2020 22:18:25 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXBJz-0004hq-0V
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 22:18:20 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1McH1Q-1iywQs42VY-00cln0 for <linux-arm-kernel@lists.infradead.org>; Sat,
 09 May 2020 00:18:15 +0200
Received: by mail-qk1-f180.google.com with SMTP id c64so3426770qkf.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 15:18:14 -0700 (PDT)
X-Gm-Message-State: AGi0Pub4MxPHHCThSqBIsn/pRX7n2tCP8M3YPpizvu5bOol0xGweHg2B
 1m5vkMltY3utpatVqMOjmA1vP5B0e62DNPL41Xk=
X-Google-Smtp-Source: APiQypJrR0dMcIrORsz+mb0P5jMKjcH41Y5dSQnIphjwVkSDjNgvO+SuEE4oe+M/6LHNn7ZHN8PzaYAriS9TiHos0+0=
X-Received: by 2002:a37:c96:: with SMTP id 144mr3233352qkm.138.1588976293715; 
 Fri, 08 May 2020 15:18:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200508100100.20740-1-grygorii.strashko@ti.com>
 <20200508100100.20740-3-grygorii.strashko@ti.com>
In-Reply-To: <20200508100100.20740-3-grygorii.strashko@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 9 May 2020 00:17:57 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0vewSiFc4rXu43_bs_A85EYx12_YuyBaU3PYJ1HszE=w@mail.gmail.com>
Message-ID: <CAK8P3a0vewSiFc4rXu43_bs_A85EYx12_YuyBaU3PYJ1HszE=w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] soc: ti: add k3 platforms chipid module driver
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-Provags-ID: V03:K1:KZOfml+1O/tN212VWS7gtm7QnJ/r+XVXMlF5Yd3Dei+s48lyv12
 l4DglPOJAbh0Oait2TF/uM/MED+l3tEkkkn+NBoDBsCQQ5PabomOXLght34Tm9ENQLQ3EwO
 BGIUNVfeftrbYFuxDPhlHfPPBdA5L6TGh3s5t4Xoz1jP/d96uHILbUqfjTi11smMMJ1gM9T
 5U5xO1Oi9C4zHXTZQpB+A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uqwh3/81EcQ=:0N9HKph2XKMufpGUSVEJ1M
 gfpJdRtREUBJ1Z47w3rDFc9S3NkS/kTmq98GzLJFTmkxdbTVUe16p7yDo7CUje+HLY5+pNpww
 YrXjgQvm+WvjfmivU61/DICF1P5rBOXm4mtoDYqcZg40URi0/NZPsO8AQ6QgLE12eOwGmSkk+
 lXskCThcOrw6rXur+7cy5EZYp91XpDec1VYmiZA91dxvjZ6FDvXGQeqvoiPQ9qgWSAieGfKc8
 VCIDMeeFk+HBq5BAzdx7cF4TBh7wwxj8uvriW6EsJcNnYi9RiefDWWSsMtDr4VCJDbDK7ZN8C
 +Uio03kvg1vxwCkYAeftjqQlZm9W+QvqEXX45Go1XQABmxex/alzhi7n2wJ3X8Y9JVuROFRMZ
 p09ZLl2t9b+gYp+uFIknjdz1UVMFGzhnRgleqRktTi0d137jHg1gWLqjnf/hzPARqkIjYIn2W
 mgpnGGsBbvvaCgIYQWSquV4fCH+fvuTq1o553lxZZpdVdC/WclbVjXMloykLO65xkQV88Yi1Q
 l5i8TRRGiamYDrK9dJ8MerCCamS+HqCP2eIVqDnt4BmMAC8FxD/VYw0LKkN+mZuoy7CsD0Okj
 VIAQiIrXcooAFv0XCJ8yCc6sZIP+bkrD8BqL0zUfuOE2kRQQ89umC+TO6jjSI7l76AR01RQc8
 SS3RBT+1CG7deG/rhmsgOEmTfnuL3sJ66Meua4gseQqs5acwM5TRDjRmw0FJxw/dRZQ2xsCBI
 xFGtVrGFF8Qayfcx+C6wG0aJZdwks+di9/rC+USZNgUKbrgNN0BEHl6D2h94FY0rZt1d6gwGQ
 VRV4r90rsOPEB6BL+0vK6FFEEgtAXmIWLbbLJsU69y4kQEqhRc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_151819_343324_30282132 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Nishanth Menon <nm@ti.com>, DTML <devicetree@vger.kernel.org>,
 Dave Gerlach <d-gerlach@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 8, 2020 at 12:01 PM Grygorii Strashko
<grygorii.strashko@ti.com> wrote:

> +static int __init k3_chipinfo_init(void)
> +{
> +       struct soc_device_attribute *soc_dev_attr;
> +       struct soc_device *soc_dev;
> +       struct device_node *node;
> +       struct regmap *regmap;
> +       u32 partno_id;
> +       u32 variant;
> +       u32 jtag_id;
> +       u32 mfg;
> +       int ret;
> +
> +       node = of_find_compatible_node(NULL, NULL, "ti,am654-chipid");
> +       if (!node)
> +               return -ENODEV;

This will fail the initcall and print a warning when the kernel runs on any
other SoC. Would it be possible to just make this a platform_driver?

If not, I think you should silently return success when the device
node is absent.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
