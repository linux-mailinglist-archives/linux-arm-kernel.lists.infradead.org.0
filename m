Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B261E1E6D05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFU/+Mh1titfiseSeE8VOvrfMSzANJxZsspScdcwhxs=; b=g3WLHfGpEMmHE+
	3C1s66rUX0t4aegQzruDU7awdfyK0uwyRPLZojFs8YN7e5C3/CGbZDv/qJOdpFRyUFjup1xA5cROQ
	7Dg6wN08XmZyxdn3ON8dvDV1ZHU485U/1+tZg3+476ypS9lVqCNn/LKbaSj4B+qJBAuzbgw1s5MSv
	FpdYncur/3pKabicuJd7SqSbtW8winEXSdzbhyHuwSMHw2V3EbY09zfeozPrKPui+Ct7IsaFGjila
	FWD7CAzCLpNZlgDFFxPY3zbENBW8jpnLlW7SRTQVQl/xe0pJPcY7da5rUg06Fu92DxtGB3G2rXOrP
	q0sg15iZn2YuQtOp2NOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePdd-00080S-W9; Thu, 28 May 2020 21:00:30 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePdH-0007GV-AT
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 21:00:08 +0000
Received: by mail-il1-f193.google.com with SMTP id d1so332980ila.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 14:00:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j9/zXo1D/MaHPT4W5dtBptKFjKcNZZ5DUc8Iw936Zdg=;
 b=obgE3RZrGMlIwpkBe3pOCsWmJoh+onTd14Uuzmhlx82meu/JuOiGd62wco5D/LAvqm
 /oOVPmdmiuTgOqGqwJ1D1HRHB8xFci/IuDph8Sc4vXf4XjOyTjvmJ8lTVS/5GOxMdx55
 p++Re5zKe4mVjhf7oijgXJwUVBTG2Xu8PvjL2hMYne2JZYDWna147H3CcI4xKAi0IfBn
 A9aApZOQwX/CZzDRdq8a92fuRqjAI3mvpFqqf0whrPeGXjpZdbL7Xb8Q1Y5WchUbGIes
 AYS6ACgouIjgAr6rwCqYTupiSWGsgJ+qtbjkHGQyUkw8J8MvZQIbhS+xrW2/NBC6VTJ2
 RjKw==
X-Gm-Message-State: AOAM5328vfeVuAODp0V9OioUxSAt6RXXWdtGecwA8eNPMpeKUJ6jfxIA
 +jyV59eHOX2/KPU0oxnB1g==
X-Google-Smtp-Source: ABdhPJxGSDGqe1jHsfiIWe7poFysMf6a/HV4i8103L/vkn9OHjEfZF/3cHeecQok/kGcda130WSE2w==
X-Received: by 2002:a05:6e02:965:: with SMTP id
 q5mr4481965ilt.272.1590699606434; 
 Thu, 28 May 2020 14:00:06 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id k18sm3038277iok.4.2020.05.28.14.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 14:00:05 -0700 (PDT)
Received: (nullmailer pid 666474 invoked by uid 1000);
 Thu, 28 May 2020 21:00:04 -0000
Date: Thu, 28 May 2020 15:00:04 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 3/3] dt-bindings: timer: Convert i.MX SYSCTR to
 json-schema
Message-ID: <20200528210004.GA666410@bogus>
References: <1589860547-3207-1-git-send-email-Anson.Huang@nxp.com>
 <1589860547-3207-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589860547-3207-4-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_140007_382247_79D4A5D9 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, tglx@linutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 11:55:47 +0800, Anson Huang wrote:
> Convert the i.MX SYSCTR binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> No changes.
> ---
>  .../devicetree/bindings/timer/nxp,sysctr-timer.txt | 25 ----------
>  .../bindings/timer/nxp,sysctr-timer.yaml           | 54 ++++++++++++++++++++++
>  2 files changed, 54 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
