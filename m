Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E92C81A466D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 14:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lY/OuwyywCXVtZz7xwAUn6JhqHFbh66bGsgPNW5W94=; b=Hm4p11n2NGilCa
	lrpJluPnTyJLw2yHKmtgkEjHd+LFzO/SyTV7BQzNX+lPYBEC84beba9UBZTPJ8oINW1BijRGseMH6
	B3SjGWb0jnpM7LrgMFr5k2kUzC03gSsNH1OBDFQIK4possQQfpnb2hngDa+H/d2a/T8AdNWFCm4TQ
	tKV4DeBnBOuMWtobrBHxpvOUU/uWT+hs3vOzpBqn5C0TJA81i1mnldwoalNQnOw++UaudprJhk+lo
	5A5E/XMD0iFU9E82ffIY5c/ms1bQ08ZCniwOFS4zkuBRqDz6Vpez/uECkfM+rbilkug81v+l1WlWK
	S8yV+lMAVsNcOvGAZtlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMsxf-0005zj-SY; Fri, 10 Apr 2020 12:40:43 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMsxW-0005zM-Bo
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 12:40:35 +0000
Received: by mail-wr1-x42d.google.com with SMTP id w10so2179774wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 05:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:content-language
 :thread-index; bh=rm/s7Of5tyiM3zBV6IUST0jMSM8VLFZiHF+K3kYVCJw=;
 b=BSJ/l1PudXUHxgJ3jPBzuENUygdCyWz27ohvFWFDHoudALwA8wTcuI5Ws/mJRKjfxQ
 KFy7R/fm0FmiatMUVZXWmsawe/WcZAfp/idX+z6VtOU1J6LVqtUcR47/Lsa8l7wjJA2l
 ihXQmWDe8APPC3O/Cr9rqdUG4npr5CR7dl8xxz+8foS2Wr3DK5J3Ff3JVJwEkE4LUbk9
 t6W2pHthVbNnMC9NSWxpePgw8YS2GPvqiViBpaCpuZKH0Q3WY2+wdfltfN03fEvxpr8C
 75eChcP6epNvkEx36E4bQ0mYPvknBJGhQXVy58LF7Gb+CIuVcqJleT/RAiqbhm5enxUh
 fUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:content-language
 :thread-index;
 bh=rm/s7Of5tyiM3zBV6IUST0jMSM8VLFZiHF+K3kYVCJw=;
 b=MajpKw2N7X6pKXxtvZEKpbRS8MlAVvTnpiouQjRtYJzdizuj9cng08G6RWW8o/8SHH
 BI2Qr6rImb+NHc0BQy/1xUUKPI4le9L0FtnoeG34JmyYeRddYKy7oapK1OWWle5ABDil
 /cBR7sVIs1vzfZ5QRAiC384pxJAl7RIwimEFEDziGOJ7vIS4Fo+79uVBtaXqlbAXSeud
 eZc4IREqTvNx2tiYm9Uld+xYtIA+K6ghHUQtw/sXfjQbWb5zqpjBtCXyTTO1tGO7LLJm
 wuP+CIpeRCBqzZTdEqCaetHTNplEoJLBf7IrRryOTNz+pxDe0PadmjRjbmGHKhpCugv/
 PyWg==
X-Gm-Message-State: AGi0PuZFcd9FlkNqvDSCC0DMfFofJnGX59d3Bg6QIItsFGhrigJ8xAa3
 MmWyrxrZsc1NnGcZ9xYzbEc=
X-Google-Smtp-Source: APiQypKRraFyHTo4V8xqIzuuT41OSHDs2OlgLliaDYIUobI3879HHQGLibiZAYUnd/WQxF4++G+kvA==
X-Received: by 2002:adf:fecb:: with SMTP id q11mr4590057wrs.350.1586522430447; 
 Fri, 10 Apr 2020 05:40:30 -0700 (PDT)
Received: from AnsuelXPS
 (host117-205-dynamic.180-80-r.retail.telecomitalia.it. [80.180.205.117])
 by smtp.gmail.com with ESMTPSA id k3sm2642805wmf.16.2020.04.10.05.40.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Apr 2020 05:40:29 -0700 (PDT)
From: <ansuelsmth@gmail.com>
To: "'Fabio Estevam'" <festevam@gmail.com>
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
 <20200410004738.19668-3-ansuelsmth@gmail.com>
 <CAOMZO5AKYO3xLsp4k6_fJCV9qW=rAtRKEGWnxksixU794dOw8A@mail.gmail.com>
 <003401d60f28$3d045190$b70cf4b0$@gmail.com>
 <CAOMZO5B+rEoQD_ujt9cx9VXO-i2oqfW2UN2cVeB5hZB3aVpGeQ@mail.gmail.com>
In-Reply-To: <CAOMZO5B+rEoQD_ujt9cx9VXO-i2oqfW2UN2cVeB5hZB3aVpGeQ@mail.gmail.com>
Subject: R: [PATCH 2/4] drivers: pci: dwc: pci-imx6: update binding to generic
 name
Date: Fri, 10 Apr 2020 14:40:26 +0200
Message-ID: <003401d60f35$3725b630$a5712290$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: it
Thread-Index: AQJxOzeYiZkD8UITQ1/aTwnouqE5vAHrEXcAAuDSQDUBZHmnXgI2W/cjpvi8vAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_054034_428928_185B4618 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
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
> On Fri, Apr 10, 2020 at 8:07 AM <ansuelsmth@gmail.com> wrote:
> 
> > so no chance of changing this?
> 
> Reading the commit log I don't see any explanation as to why you need
> to change the current bindings.
> 
> What is the motivation for doing this? Is this really worth it?

It's really to not have the same exact binding to 2 different driver.
If this would cause problem I will use qcom,tx-deemph...... but still it looks
wrong to me having this. How should I proceed?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
