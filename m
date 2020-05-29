Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280961E72DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5DG3iLHWUeNDxm258U43oIzSAGrnWQQCuAwldYGexA=; b=MNc7mIEa3Z4rUu
	XoIqWPJKvHqmXEZUJt/YxNboEwjs5pF3oJp6gDaQF+vjpBVdTAiQB0z7j5sGEYnuvnSaoQ0/xgdRp
	RCMJc/bUoOIDTAKSkw6srCU1SQY9T85qvP7ftRsSLPhiA0oLZ0tpAbzzxZRJjeeVroVhDhw71LVx5
	B3EF9KFNN4jTeED3zuY6p9Jse46xRpucxXPkHL9HQZUPllDlHu14feGtqlPqAttPKMHfj+cv90Y+0
	O4SoapXNDPn8oozpTTcDCNbvWB0K2dfYVmI3O0Nru4fF0bhwLOBbbCG7eRs6opap6Iv/95q0djsEQ
	wzCNqy4XtGl2tL3UHBrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeVAA-0005LV-BH; Fri, 29 May 2020 02:54:26 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeV9x-0005Dv-51
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:54:14 +0000
Received: by mail-il1-f194.google.com with SMTP id v11so1089811ilh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 19:54:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=y66i92hbnAMVd56SYuoik3I3JL2I+Eab/POc6wP412M=;
 b=EhUvS/yEa8yU2yPuMpe6cDhKljd+4elU2XAUfw5cXWOkNVdOJJO2PxGzNpRcwap1/i
 NFISpmdp5RD4f5+P9zqL8L5d+lRcAt1TRDewKcGdFdAZDb5wpx5TSI3LwP2uiihoPEZX
 4AegaeiMnkK3Ido9wzpaSF+LgSUgudQVHM/oTSenSlqmCynWct0YNItX0y4P4wGJs+Sr
 RPdRN9U5QTeWykfr4M11dVC0kRxwmdEF6CyFR9uoc+DCgxgYeoSbjAxZNJDehyC0JDfI
 QJzcG/WL+Bt6Ga2uv/1scwo3KkEI7JYj92T53nyaM/e7PV463Sx53JygEl2kt9pD8rvw
 5Rlw==
X-Gm-Message-State: AOAM530P1YSHKLoDDkfo10COOW3bA0E0/YP1ChdgH3UutuAWAbWB63hs
 bAv4a+xhmUq+80zyVHeTYw==
X-Google-Smtp-Source: ABdhPJx0r59/Ul2jAtX3PMZbHxDUKVh9XGaJaNhEbfDtMhWWJJo8GaBV8+9BFVxbvD/i1BQIax8bqA==
X-Received: by 2002:a92:400e:: with SMTP id n14mr5729979ila.300.1590720852244; 
 Thu, 28 May 2020 19:54:12 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id h23sm3310934ioj.39.2020.05.28.19.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:54:11 -0700 (PDT)
Received: (nullmailer pid 1180033 invoked by uid 1000);
 Fri, 29 May 2020 02:54:10 -0000
Date: Thu, 28 May 2020 20:54:10 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 9/9] dt-bindings: clock: Convert i.MX1 clock to json-schema
Message-ID: <20200529025410.GA1179683@bogus>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
 <1590650879-18288-10-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590650879-18288-10-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_195413_213506_DB4CFC4C 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, shc_work@mail.ru, sboyd@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, s.trumtrar@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:27:59 +0800, Anson Huang wrote:
> Convert the i.MX1 clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx1-clock.txt       | 26 ------------
>  .../devicetree/bindings/clock/imx1-clock.yaml      | 49 ++++++++++++++++++++++
>  2 files changed, 49 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx1-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx1-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
