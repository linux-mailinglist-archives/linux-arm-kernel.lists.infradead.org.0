Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8A21E32A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0KlKBBlrRJW8gIJyx37fElO0BQJKxt4bQR2ALmV2ek=; b=O4uGrYi+3rSjOH
	tGbUtCIE1f+7Bm6NzksylTBJZLqK1B9XsSku12BIQU5Op+cqLqx+BDo/CwS+b+zXKy5GW8Afggf27
	RfEFBCJU4cE7CaF7HEk3Kbl1cIot/2Q0GjmhaznIZW2Mik5T3TjoMd3aetIEFGmgdlvmTliAy9McW
	07LU9DJvJpOgoeG6BPkVCxOE0RpbJJjdlhkBTdB97bhQ2uzKNJjfZgLyQO2Psjk9WPbmXSpTm4wJH
	MQK8lQ1ulFKdTA2tyL99n8HVp7MgPtXNQoyMaDrwNGprR5KszMY4CjfR9PIhsV79LQe2h8rOsRTtP
	dS7X9kornfylE7uBiBvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdi7a-0008Cm-LK; Tue, 26 May 2020 22:32:30 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdi6l-0007iw-Sm
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:31:41 +0000
Received: by mail-il1-f194.google.com with SMTP id a14so22156297ilk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:31:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dG0yREiJ8rMigfSfPZSI5NcnyO0i13MGt4qNl+maJjs=;
 b=OYtpe9X538stR6QAyp/svmQI3gUdZBRB32OnSSmTG99i1ofzEp2npM1R2BxVycft9p
 Gs4cUZA1MECAZkuC9zd9Mu1J193dCkHK2RlDCdWRRm+cLWUJSLbIrpyFrj1MymKJShm5
 2qeeJHuFn4gO8jTgXmdalunQeiZpUYD/xPDjBhTCa+Zyt/P56aCtZZhJ25eorRBZObUv
 DdGs3o870Ljrk9y8tdnsKTJjxwSEahbDXCR7rtgo1ntT0JDwZo7ufZDJb8ctKzRtaWj8
 4BJGICOH1Hfsn/+5QaNNqWZvACF4Ze8TC7Z9CpgeRy5EUxOMu4lDN7WK8bl+aX3mFcUH
 lCRQ==
X-Gm-Message-State: AOAM532UdPwL+M5dGWWy4XHLXLgMLOuJaf36+szaQDTUaLCVek7qt7Ah
 Hg94yfhnqRi+9ny7szBQMA==
X-Google-Smtp-Source: ABdhPJwYDuX0YBr0ghAF5q2Z3W0G8nV9//YxCnJwp57gwK8cUcmcS4rq7IEJAlPQZESwfKHB2R+QCA==
X-Received: by 2002:a92:b0d:: with SMTP id b13mr3323423ilf.225.1590532298662; 
 Tue, 26 May 2020 15:31:38 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id n21sm457321ioj.43.2020.05.26.15.31.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 15:31:38 -0700 (PDT)
Received: (nullmailer pid 504590 invoked by uid 1000);
 Tue, 26 May 2020 22:31:36 -0000
Date: Tue, 26 May 2020 16:31:36 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V5 5/5] dt-bindings: clock: Convert i.MX6UL clock to
 json-schema
Message-ID: <20200526223136.GA504539@bogus>
References: <1589328684-1397-1-git-send-email-Anson.Huang@nxp.com>
 <1589328684-1397-6-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589328684-1397-6-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_153139_935216_1FCD167D 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 08:11:24 +0800, Anson Huang wrote:
> Convert the i.MX6UL clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> ---
> Changes since V4:
> 	- add descriptions for interrupts and each item of it.
> ---
>  .../devicetree/bindings/clock/imx6ul-clock.txt     | 13 -----
>  .../devicetree/bindings/clock/imx6ul-clock.yaml    | 66 ++++++++++++++++++++++
>  2 files changed, 66 insertions(+), 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx6ul-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx6ul-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
