Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1218962D99
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 03:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIG8m9PNMvmUzfOkPnGYQg4sN26tfrEqI9eMRu1e2X8=; b=cLiwhM1oYn4iSx
	k3HxUx/7El+w5sI9ooN7ZBV12V0TghIqfYgxlZBz3w4/xyTbXfbWUzVtBsmhn2QGQR209aYTmae+k
	cz1+WNpR4zpI42M+YQSdQCxv5Ti9srns3myM20vM5RQTGjAWqb9g2JbBQaRdJ5EP4XL3JlnZqhgia
	5aldKvoQRWa5ucnwjNkipsCShdyKQsh2TEW6YKTNSzQ0uoUVvOgTr4qlTDfiUCSAX30OIvzt5WgH7
	sO5YKdaq7uxjp6AkmZK/oyL/1muDmugtsiy8NOZBVxXhp5HCj3wCI1PugUZqnChb7KZFWOI+ou9hh
	FxzvpiC7TYlh4AMHxQHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfCX-0000t1-4u; Tue, 09 Jul 2019 01:45:49 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfCH-0000rZ-La
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 01:45:34 +0000
Received: by mail-io1-f65.google.com with SMTP id i10so39619204iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 18:45:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w0QazOGBd5y+/M3y1evVA30OJoEykK/Zg2Mf8gk+MiM=;
 b=hP7EACvdVIT4tZBaSBvdNm9eLs3sFwZ8TSZ5BLeoWXjvTM+XrUyi8im19rFQJ9Ydfr
 ILp2sxrWCPvFf0dLHpeg/7/I/nteYlurAezenrPp6eSfgAtoULPkrFtCG0cURhMcnvc4
 1bE61WsctG6FLf+FMlAp9kdamEC1r73iIL3eqGzxu7hgpQjD9qnWvLk3x+8r9lWkx9c2
 W3goibkPrfksK0uq6Uq97Eue+HG3vg67oLNOgSU5iH+FH2xy5g1Hm+SYnOZaZUjzgVRc
 cGU4int9w0NuAx/+NCsAnFPce6OWS/QOAMIA312+Dn9p5HJP6HPrP7SU2q1j1kIgF3oy
 uuXw==
X-Gm-Message-State: APjAAAUVoS1DgnljQCI0cBv7yiwdiaGh2LOGi4gA+lvAaUUMAPJfkFXW
 +U1xLTLgvwYAxsaRsY/QkQ==
X-Google-Smtp-Source: APXvYqx2fM5NOGsxTULrx2iaKeFFnxMqvQIuY+JWFSB76mkEKidNVEFKEWSxH7TbP75NhzsZnufbXw==
X-Received: by 2002:a02:c95a:: with SMTP id u26mr23408608jao.15.1562636732587; 
 Mon, 08 Jul 2019 18:45:32 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id o7sm15792362ioo.81.2019.07.08.18.45.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 18:45:32 -0700 (PDT)
Date: Mon, 8 Jul 2019 19:45:30 -0600
From: Rob Herring <robh@kernel.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 3/6] clk: qcom: Add DT bindings for ipq6018 gcc clock
 controller
Message-ID: <20190709014530.GA12304@bogus>
References: <1559755738-28643-1-git-send-email-sricharan@codeaurora.org>
 <1559755738-28643-4-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559755738-28643-4-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_184533_707152_6414A3C5 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, agross@kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, linux-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  5 Jun 2019 22:58:55 +0530, Sricharan R wrote:
> Add the compatible strings and the include file for ipq6018
> gcc clock controller.
> 
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: anusha <anusharao@codeaurora.org>
> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> ---
>  .../devicetree/bindings/clock/qcom,gcc.txt         |   1 +
>  include/dt-bindings/clock/qcom,gcc-ipq6018.h       | 405 +++++++++++++++++++++
>  2 files changed, 406 insertions(+)
>  create mode 100644 include/dt-bindings/clock/qcom,gcc-ipq6018.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
