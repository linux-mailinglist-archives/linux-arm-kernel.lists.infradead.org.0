Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA19A7225
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 20:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXW54k+dx9rHDgn1Noa2czWE1mP9M9bqmMQW73FmcKY=; b=RJ6Q4s2rGDUguo
	n4qhhIXG6dkC+VMJxULTyKvM7M6UX2qpF4HllH6BGVt9uJD/qpB2j/v1vJp5lZuHD+wVHLvem8AeG
	VcKaf265NZ+Vr2b2uu7qgwen8BzVM+LfqM42H83q5nQQXYn8q2wOuU6el6CZ+GRz5iBcL+67G9DCl
	UP8Yz88WMqCqHteKTqEJLS7njQcbwGv0oOBOLIgVaIryJeVa5AMgWeOlyZutyhH4h+F852Svt8qTq
	ASMRujampOz0GpGyWICdIlTaJ8HzD37P5DO1NQxpPfBvtWJQXHDwviyvRTj7mfas/y0D45WHNJnfv
	T5+lt9++xcomDp02Lhsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5D7b-0004Yy-3g; Tue, 03 Sep 2019 18:01:39 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5D7M-0004YV-Hz
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 18:01:25 +0000
Received: by mail-wr1-f65.google.com with SMTP id l11so9639259wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 11:01:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gcfzVbQ+rKDOGnegOjsAEqYWI+GdZnQ3k+ia0pvRnA0=;
 b=fqK7xB0TC/Ixjce39NcR0pYLWM33Z79ub+azWhiXxrS15KD91NDNDX/LRi5H3TKWuq
 xqXtWyK0UQ6DvNypMntYWKEe/7F9F6rHQQ/ppe+FFA2AzO7nsrvanEZeKNtoEysGVbDQ
 u9EJqDVs6f06IzPV5Snaid65tvR3LpOEcIHLerjlrvvcAXWLxl/Atq4kcfVf/mlMdk/Q
 ZSfp3CozNwSWrRBX+HXrFveDFE2YeMoZSkxnGUKwSXeE8HNf3HRkXVWs/WhNXDwHVo4V
 rkLfc5L5BkChvrx/NpU2yo2qGTocLi990pUXxagZJgoanvb4jTcVJgOGGM01lriHjRmf
 JBnA==
X-Gm-Message-State: APjAAAW2T0TgTHYJM0zQI6MxIqw0EnI/2WnYVCEJ9Wlz7/hTNFSR/Uw+
 kmuxa5N6M6TDnDrov+MKCg==
X-Google-Smtp-Source: APXvYqwEQSI3B8nh2h01ajBdLNxMQRoIvSAtmLz37oEoyS0DM58xIf2yBGVy/QlIYp7oeqicEt10cQ==
X-Received: by 2002:adf:e7c4:: with SMTP id e4mr41169265wrn.62.1567533683269; 
 Tue, 03 Sep 2019 11:01:23 -0700 (PDT)
Received: from localhost ([176.12.107.132])
 by smtp.gmail.com with ESMTPSA id d1sm17219898wrs.71.2019.09.03.11.01.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 11:01:22 -0700 (PDT)
Date: Tue, 3 Sep 2019 19:01:19 +0100
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: fsl: scu: add scu key binding
Message-ID: <20190903180119.GA5856@bogus>
References: <1567546600-21566-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567546600-21566-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_110124_591522_39E4FDE2 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, ping.bai@nxp.com,
 catalin.marinas@arm.com, peng.fan@nxp.com, stefan@agner.ch,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, will@kernel.org,
 festevam@gmail.com, yuehaibing@huawei.com, marcin.juszkiewicz@linaro.org,
 jagan@amarulasolutions.com, linux-input@vger.kernel.org, ronald@innovation.ch,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, arnd@arndb.de,
 s.hauer@pengutronix.de, mripard@kernel.org, m.felsch@pengutronix.de,
 robh+dt@kernel.org, tglx@linutronix.de, andriy.shevchenko@linux.intel.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, fugang.duan@nxp.com, gregkh@linuxfoundation.org,
 dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org, dinguyen@kernel.org,
 kernel@pengutronix.de, olof@lixom.net, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  3 Sep 2019 17:36:36 -0400, Anson Huang wrote:
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
> system controller, the system controller is in charge of system
> power, clock and scu key event etc. management, Linux kernel has
> to communicate with system controller via MU (message unit) IPC
> to get scu key event, add binding doc for i.MX system controller
> key driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- use "key" instead of "pwrkey" as the key function can be defined in DT.
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt          | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
