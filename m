Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BC863CA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 22:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKSKi8X2J14149al5DCbq9bGBdB78o2f3tppqL6GnXY=; b=hgNKuhrciy/ZMf
	jdYs6YnSN8QzEZ7wHVVMW2W6ZjJpMazx4hWG0qYWx+sTj0gYapxQmW2qEpgLLd+mQqyYKHo6Z9zZl
	SheOdh+BxDk7JgrH+sx+oCPl7xBr3k/sMkUX80+r8aQ6picf1QoFQZpnpice0rirUr+TkkZtx5PqC
	4i0PWfUrCtbtYCSBqF2jrzGsJz6khjd35L/xr7wlYegVbl6/Z5b3/+wH9Seo5eQIGmYPdIV63fpk0
	HFVOJZiNV4PvE8FpRyUC1ZaIQxTnfh7ey2/Edy1J+gtT+Sbu6eno98Q5kOwYsy+Bn0xgOOMKC64G1
	EUyenCbKziZXd9tmP6Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwZP-0002VO-Iq; Tue, 09 Jul 2019 20:18:35 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwZD-0002UD-9V
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 20:18:24 +0000
Received: by mail-io1-f65.google.com with SMTP id z3so30995348iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 13:18:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6NbN5JKfhtthh8rHQeJ+/J+roRFzMU2Xl0uQ4XuNSKE=;
 b=thA6EaUipRQ9zWmwFN+0J1cYUBdCb2g7SWlHeXowIR8h8NmPuTbHd2cogr0hIRIjeB
 0KwbN7TBhVV9Vy70sFCURFCqCQCp3/2LxVxxJLO0iAVN6kITU3FXeOQ5U/aIzGY3c7nO
 0b2okJRZz2QytGqQQyMVED+C5Rc6c+MAWc5uUEbcTqmqJe18RSBH6coHMwTSde6IOx7z
 +m5WQiP5zN3qAApVIRc81XF2rOvR359+uLfaDpPGkhLNUCwTGmLA9Ij5Wes9KHbvbZC1
 67K8GTgEIqvCDbdNA0Q+4y5jBjmKKBEh9BISVJXGZYkZi/18oYzfOE1Bt8m+s7/SW/Ae
 QecA==
X-Gm-Message-State: APjAAAXHqOQkw1+fqGQGkiRdDRxOd93hsOTsY+1y5p9ZtN0h6yp/mGc0
 A8a/kz4g2ij/3bXwc1DcCnnxgONj+Q==
X-Google-Smtp-Source: APXvYqw/ZIS8sL7/LEDguheL73Ps4hwNdYccJgnnmSIUOUBhRrcMKya7HG/yRUQA4qaafy1VzHHMLA==
X-Received: by 2002:a5d:964d:: with SMTP id d13mr28379833ios.224.1562703502330; 
 Tue, 09 Jul 2019 13:18:22 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id t4sm17179836iop.0.2019.07.09.13.18.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 13:18:21 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:18:20 -0600
From: Rob Herring <robh@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 2/4] dt-bindings: clock: imx8mm: Add system counter clock
Message-ID: <20190709201820.GA25832@bogus>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
 <20190621070720.12395-2-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621070720.12395-2-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_131823_336765_A19C39A2 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 festevam@gmail.com, ping.bai@nxp.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, catalin.marinas@arm.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, leonard.crestez@nxp.com, will@kernel.org,
 mturquette@baylibre.com, linux-arm-kernel@lists.infradead.org,
 abel.vesa@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Jun 2019 15:07:18 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add i.MX8MM system counter clock macro definition.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  include/dt-bindings/clock/imx8mm-clock.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
