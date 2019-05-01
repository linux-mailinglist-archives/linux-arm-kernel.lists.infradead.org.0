Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5701F10DCF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZcuphm8k5g0rt8vy8CltAZLEllC/pvPAlehgEUgF4Y=; b=rLrWybJDuDk8H2
	GsjrmobBk3QyDNAICTmoOF5W08JEdB6BPkc51yktbaaJvwV66pXIJno5ZLZ9i0eKRCZ0syuhjNllt
	/qMvOCQcd7lbKLDrYJZiNexUPFqzT757CMANOHu8RAhZo8rNgh3bZReIgrg4nJM81ikCmW45x7Enc
	OrePDrwjP9LZGVuqJJL2yIMcEugHZFBIEI6vGnAtyTX6+YyOL1vRA33DpCruI30SBzUnCOpDlXhEf
	onY80+xexNT6qao1kOKQ0LaobVpXLY48epLYb7qon91Nk4H1mT/gfWLfXKTEqqJk1FgYZawH032IG
	KAbTxlptu0ASkYyOzTYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvbJ-0006SY-DE; Wed, 01 May 2019 20:13:09 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvbD-0006SA-Kb
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:13:04 +0000
Received: by mail-ot1-f65.google.com with SMTP id b1so95102otp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 13:13:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jd1WFvY6vXO7XfCF+c2Cho4laj+45+LGc52UGSOL454=;
 b=NnsPHpSoRVitD8lFvV/O9r6silvpwHAepllHIYuQWPD14jtMQN8kuvlNVQeeUdAYcu
 M/s0Uc0KXRwNTU42N1x80P48a2n+F954IOOl8tarIrZy7CoJhcbQwvUo6dnK8XDtbpKk
 x5doQuUh0oECnqL3SBBw4UTBjxOTsdHtZ20jFCgYlhSTuKHD59hvWi4QYIPs4erC23NC
 N5iQsTYSq+C+3HWLYn+GbfDYclBvnzuQ9yRTN/C5RWi1xcrPNgckHjsbN0MfYcGJUEHB
 BLeZ1kOWJkxwHSe8RZRjtXafi7ke1rC31osbmuPC2iu13mOCCJX1xISIvkzC/V8N19N3
 dxzA==
X-Gm-Message-State: APjAAAUyI/YT8IVlM4EBjUXj6y5EdB8EV2/H8r4l26uSvo4WK56kkf+r
 8ap2l97qTmeWJFthndqwuA==
X-Google-Smtp-Source: APXvYqxADl/71OMLKkk8hcK2ifMcCTcMNV9ChiXtbLjzAeL1AP7BH1TBc0wF1XoqAnVF8KKqFTYPeg==
X-Received: by 2002:a9d:19ed:: with SMTP id k100mr8627234otk.214.1556741582508; 
 Wed, 01 May 2019 13:13:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h24sm15854390otr.39.2019.05.01.13.13.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:13:01 -0700 (PDT)
Date: Wed, 1 May 2019 15:13:00 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 4/4] dt-bindings: watchdog: remove i.MX system
 controller watchdog
Message-ID: <20190501201300.GA13176@bogus>
References: <1556421727-7401-1-git-send-email-Anson.Huang@nxp.com>
 <1556421727-7401-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556421727-7401-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_131303_676809_2046A05C 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 03:27:17AM +0000, Anson Huang wrote:
> i.MX system controller watchdog now depends on SCU driver, so it
> needs to be subnode of SCU node in DT, binding doc is moved to
> fsl,scu.txt as well.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch.
> ---
>  .../bindings/watchdog/fsl-imx-sc-wdt.txt           | 24 ----------------------
>  1 file changed, 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt

This should probably just be part of patch 1 to be clear you are moving 
things.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
