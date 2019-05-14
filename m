Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8731D05D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3hVV3TR86fGA5BhIA+BXwuOvJx4j7uEiY6Ueck7h+s=; b=hjdR5a1Qgben24
	Jv1xENzysgYJcs5SkwFX8mYzKRly/oA1Zq+Ki+AoaOJX/LlCIZ6Al9e+5Q1Oc2bvsKpELOSMAQPvz
	DqC53MFj9h/zhldq3S2obghXhnySop7Rpak920VspBIu7WlVqVkFWMi/0OfLnyafI0V/nt7XGB0SG
	/1+ibI0KQ2lpeD0P6VP6jNpzATHZTpznTdl6j5sqFVwQ/hyRT+6OT2ifC38G3lhA247bMvLeXBLVW
	MRW9o5Vj308+s+0hBHwsZFyTbJsUzrgEDnjibGRpa7QJ4pRM3ZGY6WzNbbmIFnS0zDdCAfGyjF7KO
	QarMmULx37TFHfKlSJsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdpG-0002AL-OJ; Tue, 14 May 2019 20:15:02 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdp3-00022k-3W
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 20:14:51 +0000
Received: by mail-ot1-f66.google.com with SMTP id r7so86567otn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 13:14:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qDSk0SZEl2UvCN7TKGAHqgBAUsr16i+lq3jnqkJH6gc=;
 b=DFTwGl5p93SlkpSC2xPHy6lTxDKmr/AM6mPmEa7ps+ovYfJp1SANPte5oQATVO4N3T
 BQ2AB7zMUFPK86QV1WpVSY7vhpWKiIGE6ixNinA4HeInUm/ZkeVyRI2J80gq8RXeqI17
 TfVVNESwpjI/YGiF4Th0ipCzmWFuG5zZFaUM0n1noAYR7Kk9mdcSOv221O+C1v3xyUKN
 aAovDFPDDA3CRlf/qTLJD6zmwQsMee/uGXDiaO1fVfMvAZbQ7/tLsLOnPpW1XmrwtrzT
 5b7qKiOBXdHoPtDiFr746aGsI3KbLealqTUPxLOYAov9/nB3LoIuEmyguWIBY1cNSmfm
 Yh1w==
X-Gm-Message-State: APjAAAWv0snfBott0YrIiITkHxuf61JZNV0znwzQ8vFXKhQHno56Gp13
 Z208M9gxRZMOnFKpWK+a9GMsB5k=
X-Google-Smtp-Source: APXvYqy0DmBg5AVm6UGSATsuf2eDa6AOsOSDM7QYNZcyDwYTVR4/PoV6LpYTKAOotzxVzhxgYi5seA==
X-Received: by 2002:a9d:77c9:: with SMTP id w9mr13586344otl.253.1557864887960; 
 Tue, 14 May 2019 13:14:47 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r205sm4984401oig.0.2019.05.14.13.14.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:14:47 -0700 (PDT)
Date: Tue, 14 May 2019 15:14:46 -0500
From: Rob Herring <robh@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: Convert stm32 pinctrl bindings
 to json-schema
Message-ID: <20190514201446.GA29557@bogus>
References: <1557503126-3025-1-git-send-email-alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557503126-3025-1-git-send-email-alexandre.torgue@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_131449_614870_5982E84B 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 May 2019 17:45:26 +0200, Alexandre Torgue wrote:
> Convert the STM32 pinctrl binding to DT schema format using json-schema.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> ---
> 
> Hi,
> 
> First pacth to convert DT bindings file (here pinctrl STM32) to json-schema
> in order to take advantage of devicetree validation tool for STM32.
> 
> Changes since v1:
>  - Fix errors reported by Rob.
> 
> 
> regards
> Alex
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
