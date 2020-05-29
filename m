Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132791E87F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vP9xTl0WtfK8N94GbQ11SI4AcXNvGuNd3vCU8qyIMA=; b=nfClWooORTi9z0
	LfZK++STlXnqJ5J2lJw4eOuk2nWIztNUU/s6HoKiz5pKieoa0mKF+PsD3PWeLqGUFDIEoahw+ghZS
	yMy64HosN2QEA7juz2hRJZ0ObYCyHIP0vyBEVki7g5mfNZxkC14zxPnsh18xb2fVvsEBPXoEmOWOf
	cMAr4L2FaFBtOmTG7WQOCZ49fVPZEwYs4P9iQjMA5Cnic8zJSSbZIu31SNq9aUD1F7Xh0thOy5/zF
	ZQsg54ObmptB0GcdXMfsVqYQTOx3+uEbGcyWKmjhTEs5SA+u9L2QbzdNzo1DvNQhhu3Zc5u1DOAyx
	MwFRNDGU+NgIw9/b3vxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekoT-0001BY-JP; Fri, 29 May 2020 19:37:05 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekoB-00015w-1c
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 19:36:48 +0000
Received: by mail-il1-f193.google.com with SMTP id l20so3597974ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 12:36:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=u4JJuz4TAar60F38SQZw2KBTCJrS5nElM3p5G9Nq7yQ=;
 b=YtPDPhBsvrunFB5LpRwLTc04Hx1SNiSDKw+o/4e+Gfe5A7ajPS5gaXpCiQvZdxLZK2
 wVgFkPsv+dy2Q5wxx4Xea/sxx8ky02wXXIZlari+wIkPfbI9a+s0SqbpjUVYdLIYMhOk
 71pXQa9ktNdu0IFPtAgdokdQXVjn+ctmCv2mw0xmockyCLJUYW1z1uuGAphQOQrEGrjH
 4BsorKweUaBl+EumVwE0o+YLfkdbtLFfuJeASX8vrV7mJiuWuASb0mvls/KfQcIkMmX1
 dRDHuzktg30l1MeeKV8fqRLi1GiokYqs2tDP0QWfKwJ2qBafkiC7jxwWxFuhsvBmHGRJ
 7vxg==
X-Gm-Message-State: AOAM53331M3Y5Lri3PikRUaDmZCqz8NUkBPtRp2B/7Ik/6lw0xbo9+j3
 UBSd/eNTlSyYB90vLWAHrg==
X-Google-Smtp-Source: ABdhPJz+wV8UcwQ0Kd/c679Va6YB924PcALUTRcMGJuXlpRNr8Q7V/3QZdJFrUIiLqnJWf5HqXDRvQ==
X-Received: by 2002:a92:cd11:: with SMTP id z17mr7965249iln.12.1590781005909; 
 Fri, 29 May 2020 12:36:45 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id s15sm5239645iln.49.2020.05.29.12.36.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:36:45 -0700 (PDT)
Received: (nullmailer pid 2815499 invoked by uid 1000);
 Fri, 29 May 2020 19:36:44 -0000
Date: Fri, 29 May 2020 13:36:44 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3] dt-bindings: timer: Convert i.MX GPT to json-schema
Message-ID: <20200529193644.GA2815265@bogus>
References: <1590717882-20922-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590717882-20922-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_123647_392170_35161F3B 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, tglx@linutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 10:04:42 +0800, Anson Huang wrote:
> Convert the i.MX GPT binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- in compatible properties, group all the ones with the same
> 	  fallback to a single 'items' list using enum for the first entry.
> ---
>  .../devicetree/bindings/timer/fsl,imxgpt.txt       | 45 --------------
>  .../devicetree/bindings/timer/fsl,imxgpt.yaml      | 72 ++++++++++++++++++++++
>  2 files changed, 72 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
