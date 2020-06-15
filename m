Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD4A1F9DB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbwE0NrKlibq1PWqKNiKFUiRBqpin2hK4Ahw2MLS9AM=; b=KTz2B8+NWu1f5K
	pQCoB1Hrqt2Jet5cLcb418BhejpQweZ0QzN8nQ9nUmWviFwhgJoaJYE80oa/LqwKbTxKg5V/X6FNi
	h1BtJuendwH41CfRZE6BrSjG/+CsdtIpTHeHQVLjFZ729JtYLtqc2q+p+/QcTaDDCt5qsle0nrBcY
	JUsZHFuV7E5FBznPk3iusEB9c8heqvallFn3TV5rW7Xk4xzCazR3HfIXayFk2wTBz/PPwur7LwhXt
	7Op0rUIJ4rF7CyctrjaGgEmsMfiU52ozhKBWJkL5nj0kvz/EB6li90yUMKBZY0LuFGqC3NZB1UVUk
	tKe/vbjx52Xpb8/UneYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksBW-0004hC-BP; Mon, 15 Jun 2020 16:42:10 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksB3-0004Wc-4C
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:41:42 +0000
Received: by mail-il1-f195.google.com with SMTP id 9so15895955ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:41:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3Urph/U1UKzR1PGfVK4c+aNc5CstzpffUrGS0jzQZrg=;
 b=GcGiu1YMCBdX4fLI0vPq60jgHYW5Hu80D3mOQusFpLJRnwcl9utgdnMgx7ibcbnT5J
 ej3XYl/zEQK/0Euop/lcpGYMQ8xBnIQ5HGrIkto/rTkPDCA9Tw1nKhELhGqVQFeGYDeX
 ci5ZESeNegYglTvYpuBVObrYRRj40Ixn/OZxgMMuFD2mTisnN0LUiygARTjbHdGs5fv8
 hGubyGpYtnaLny/oH4oKzYXcw3g994tXkqhirun94pQ91HA8l2Fc+nqRLV8/XCGj0m75
 15Y87WgjBZH26AunZ4UKzeHrL4yfcU7SwBE+dViN/ucT3lKNTZpABqkwUyv3ZkbXJ3Wu
 yMYA==
X-Gm-Message-State: AOAM5324n5InUota7Z1eL+icYQLrmVITSmKeVH9FaMYi5swkL77oh9y8
 cQHTv1riVbUNWqL8ti0YOQ==
X-Google-Smtp-Source: ABdhPJzR+1azivHuOTLfcrjgVgEufsot5KpaUT3Obr+FfX/SVPDRyiHptwaIbAJrewGwD3KKNi3pSA==
X-Received: by 2002:a92:c985:: with SMTP id y5mr27865848iln.50.1592239300220; 
 Mon, 15 Jun 2020 09:41:40 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id k185sm8463534ilk.16.2020.06.15.09.41.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 09:41:39 -0700 (PDT)
Received: (nullmailer pid 1922706 invoked by uid 1000);
 Mon, 15 Jun 2020 16:41:38 -0000
Date: Mon, 15 Jun 2020 10:41:38 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 3/3] dt-bindings: mmc: Convert mxs mmc to json-schema
Message-ID: <20200615164138.GA1922410@bogus>
References: <1591234886-15351-1-git-send-email-Anson.Huang@nxp.com>
 <1591234886-15351-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591234886-15351-4-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_094141_169285_CC8A6DDB 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, mpa@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 04 Jun 2020 09:41:26 +0800, Anson Huang wrote:
> Convert the MXS MMC binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "unevaluatedProperties: false".
> ---
>  Documentation/devicetree/bindings/mmc/mxs-mmc.txt  | 27 ----------
>  Documentation/devicetree/bindings/mmc/mxs-mmc.yaml | 58 ++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/mxs-mmc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/mxs-mmc.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
