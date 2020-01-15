Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1F713B67A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 01:14:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcmDJyRy8rJ6YVy2cEhJ6oQstouBkSASEhnPDbcKEsM=; b=JPy80c8OV2mM1T
	mlCn3+APFangYbHTcEMMxExsgqa3RxpgbJ9USuSpwrUtZ9tkQiFatbJl1KIcj4SO5XIQvRMfubv7N
	2YYZGyy++lt4IbDS7JpFL4eQ/HspTZ5YQt74FyJs723sflYQvIwepKcxv+c6zzfJsiOP4Bj6Sk5m8
	UG2WDLnmfPJgUscxLDewRjm6XjUvT5PfI8AGIrEHx0UTLgjovXxuUJd8dSQ9vaKXY6abyecfVpMPB
	xja4eg9SJrtzcLyAkd3DGfdhsdaNTAq+1mV1rqwO3vIE82nM2gFddNHzkxp3Dwyy15lHo5m3KEZzW
	J5PX6UUs8P8u4dOZp7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irWK0-00070s-QV; Wed, 15 Jan 2020 00:14:08 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irWJr-00070W-VO
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 00:14:01 +0000
Received: by mail-ot1-f66.google.com with SMTP id m2so9665403otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 16:13:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Vm6D/kKtAQPyA/3q2QOxNghbHuIfBqj+2jZduMBeUh4=;
 b=aHJ4GKhBep7xHcOQkgCfBBLYMhP/VmZhX0PaBrjDjv4gCYnc7eYY4V0O+xRFF7yITh
 ooVkkyJzq+IR2NtKJcCvb4d1I152aehWs7PipINlGwwbtTip5lnSDgj4OPalxjJ4QW9T
 uD2IMDWx28rjguKJzPY5oMTm+/hHTqL72AYxbCTT+LKwfvynkE5IHkwFmpNGdbFJ3YBT
 +xWZu8zVLIDvL5TLom/3GgLot+US+0fYnEBP511G9C1SQmr5de+DSAbmXOfSplbeKs2m
 EngAm2rxZ2Q5BVnVd8aAlixwCBV88FDs7TfKI1LCmeO7s+tUsJb8R2rod7rR1YyNpWe5
 rFag==
X-Gm-Message-State: APjAAAUCgcm6MRtL8PS2YovCZrzL4697RrQ97Wt+hfLoz+6HcBX1Plpu
 1cb1DWhSvrPWmEDZDazvQT9P8a8=
X-Google-Smtp-Source: APXvYqzQE4KTT+TdZM8NApSqSpVjXYRiDcbXYgobC8ZopdnjRliuMywALcc1mVYPgTiQrhK+5tOw8g==
X-Received: by 2002:a9d:590d:: with SMTP id t13mr830740oth.290.1579047238577; 
 Tue, 14 Jan 2020 16:13:58 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q13sm5938970otc.5.2020.01.14.16.13.57
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 16:13:58 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220a2e
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 14 Jan 2020 18:13:57 -0600
Date: Tue, 14 Jan 2020 18:13:57 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
Message-ID: <20200115001357.GA16961@bogus>
References: <1578629120-25793-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578629120-25793-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_161400_010304_FE1C4D71 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: aisheng.dong@nxp.com, mark.rutland@arm.com, devicetree@vger.kernel.org,
 festevam@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 stefan@agner.ch, linux-gpio@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 12:05:18PM +0800, Anson Huang wrote:
> Convert the i.MX8MQ pinctrl binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- use "grp$" instead of "-grp$";
> 	- use space instead of tab for "ref$";
> 	- add missed "reg" property;
> 	- remove the "maxItem" for "fsl,pins" to avoid build warning, as the item number is changable.
> ---
>  .../bindings/pinctrl/fsl,imx8mq-pinctrl.txt        | 36 -----------
>  .../bindings/pinctrl/fsl,imx8mq-pinctrl.yaml       | 69 ++++++++++++++++++++++
>  2 files changed, 69 insertions(+), 36 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml

Actually, it looks like you can combine all 3 into a single schema. The 
only diff is the compatible string.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
