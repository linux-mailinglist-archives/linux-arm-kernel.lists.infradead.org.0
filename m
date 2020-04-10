Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F029F1A457B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 13:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhjyScEJw1dKR+csHmgPX7Jmigcv7gi4GLv7zF1DUfk=; b=oFz8+99Ot0sU0L
	zDJw1wLf8WMowCTQGYUc30a8ot1NSKlcdgDEcdfiRSOEFU2GnYUc6oOjlYAIWTBboQSNk2/yy7pDU
	tZHOkBnuwJ0/HwWbYYZosdW6aeUx9PN46O8t9mbSOdoyjipobga9zTxjyrp9zpaJUeUmY4GhTqKJ0
	L4aOx82is0ja8El8F915lCNJo3TjIOzX1s7pg9buouSp1y+9wvTD4IwkH6zMwNWcYqZ1FMHkgePdY
	LoNspOhB1Jvn4pohnp+9HBAJAAJTKCR1JEf4Fwze/gNKFXqoTTVT8CD4wocaPm1PrH1+IvKwFMtzd
	BO9X4edi4NDyk4ortGyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrVh-0007BP-Hn; Fri, 10 Apr 2020 11:07:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrVb-0007B6-0N
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 11:07:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id x4so2171744wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 04:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:content-language
 :thread-index; bh=VjzS9uW/4mzFpGFiK2xCLm+I4dAqpbLmOJp3GnXktwg=;
 b=XowhG9RBP0WyRGId3Q6ohZqzB+zuM4Ys8Fzy6W5ATPU/fZz6ySR0985vQkRPY8BSde
 +XGjyKdDSI0PCulzsS7J4kqV4AYyXsb5sPDeiuMz7np/1J3OAjH19u3/lxZ4NMJ+Ptv3
 XxP66Bok4gXAmlv994lpFdQ68WgBkHYGphqVGlkMfXtsQ7c0/NliLYOOQLmiIhgHpzyR
 1R7IxSvYKi6GE4DSL3oZ+sWgfMS8spLeLd8c4w5IOROPC09w1r7oo01HK2fX3inH2yUV
 tmjBgrU6YnIw/lgmxZLaWcQV4wFvsRi1oI9hcuQqhbr7XEiHSXdtzmCXJEneoGGanCSq
 IxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:content-language
 :thread-index;
 bh=VjzS9uW/4mzFpGFiK2xCLm+I4dAqpbLmOJp3GnXktwg=;
 b=JpTKk7ji1Re3J8FnONTWtDlrWi79Rt9YuRbUdPnbIIyh7hnjsL7YoKzuC8sy91hh2m
 akdORtFfkl+cDk2ktlC0SkiUmhOlnXNZbNGzpcs17sUaMo3vepMY4oe9PcAGp8jihitt
 zbuYqy7hNDI0MxpcjuohqKnqr2ezKbMrumv3n1XiYSwDCNZ/CLQ0gNDBkHXczhXgzfdF
 LjGJ4i1ziIDU3tXZJVpsdITJZjD2/D9mkr7dpNpDTHglzyUj7zukxP9scNHj97WgC8IB
 vh/+Eu0GSIfnWuVWoiI8zpdsNFp+YCDqYfp+If60XpaUtFF5P5LxHesmIHG4jQe9uV3W
 RJ+g==
X-Gm-Message-State: AGi0PuZxODSMMz6GkXDTlQDwvyTrwdjhSyKlpipEOAo9JHpzGt3xgaNV
 Quw5DGUp/z7FaubC8smL75A=
X-Google-Smtp-Source: APiQypJ4cn6GX7eyEVI/qPrqPRf8DfkFFnLVwed6+Uxm5i3EPBBYP5BzsJmII0VFs/oldwPmIYYE6g==
X-Received: by 2002:a1c:6241:: with SMTP id w62mr4569233wmb.27.1586516856778; 
 Fri, 10 Apr 2020 04:07:36 -0700 (PDT)
Received: from AnsuelXPS
 (host117-205-dynamic.180-80-r.retail.telecomitalia.it. [80.180.205.117])
 by smtp.gmail.com with ESMTPSA id b7sm2150988wrn.67.2020.04.10.04.07.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Apr 2020 04:07:36 -0700 (PDT)
From: <ansuelsmth@gmail.com>
To: "'Fabio Estevam'" <festevam@gmail.com>
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
 <20200410004738.19668-3-ansuelsmth@gmail.com>
 <CAOMZO5AKYO3xLsp4k6_fJCV9qW=rAtRKEGWnxksixU794dOw8A@mail.gmail.com>
In-Reply-To: <CAOMZO5AKYO3xLsp4k6_fJCV9qW=rAtRKEGWnxksixU794dOw8A@mail.gmail.com>
Subject: R: [PATCH 2/4] drivers: pci: dwc: pci-imx6: update binding to generic
 name
Date: Fri, 10 Apr 2020 13:07:33 +0200
Message-ID: <003401d60f28$3d045190$b70cf4b0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: it
Thread-Index: AQJxOzeYiZkD8UITQ1/aTwnouqE5vAHrEXcAAuDSQDWnFXqbEA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_040739_071717_9CABDDBF 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: 'Mark Rutland' <mark.rutland@arm.com>,
 "'open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS'"
 <devicetree@vger.kernel.org>, 'Lorenzo Pieralisi' <lorenzo.pieralisi@arm.com>,
 'Richard Zhu' <hongxing.zhu@nxp.com>, linux-pci@vger.kernel.org,
 'Sascha Hauer' <s.hauer@pengutronix.de>,
 'linux-kernel' <linux-kernel@vger.kernel.org>,
 'Rob Herring' <robh+dt@kernel.org>, 'NXP Linux Team' <linux-imx@nxp.com>,
 'Pengutronix Kernel Team' <kernel@pengutronix.de>,
 'Bjorn Helgaas' <bhelgaas@google.com>,
 'Andrew Murray' <amurray@thegoodpenguin.co.uk>,
 'Shawn Guo' <shawnguo@kernel.org>,
 "'moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE'"
 <linux-arm-kernel@lists.infradead.org>, 'Lucas Stach' <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Hi Ansuel,
> 
> On Thu, Apr 9, 2020 at 9:47 PM Ansuel Smith <ansuelsmth@gmail.com>
> wrote:
> >
> > Rename specific bindings to generic name.
> >
> > Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> > ---
> >  drivers/pci/controller/dwc/pci-imx6.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/pci/controller/dwc/pci-imx6.c
> b/drivers/pci/controller/dwc/pci-imx6.c
> > index acfbd34032a8..4ac140e007b4 100644
> > --- a/drivers/pci/controller/dwc/pci-imx6.c
> > +++ b/drivers/pci/controller/dwc/pci-imx6.c
> > @@ -1146,28 +1146,28 @@ static int imx6_pcie_probe(struct
> platform_device *pdev)
> >         }
> >
> >         /* Grab PCIe PHY Tx Settings */
> > -       if (of_property_read_u32(node, "fsl,tx-deemph-gen1",
> > +       if (of_property_read_u32(node, "tx-deemph-gen1",
> 
> This breaks compatibility with older dtbs.

so no chance of changing this? 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
