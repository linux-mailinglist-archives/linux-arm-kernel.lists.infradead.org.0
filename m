Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAAD17655F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 21:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nx7ztkGuZ1x+b94h/A7LkAcFcnmMceO9th6J/i4sIIA=; b=TJv82468tNa5dy
	eL8JQQcIW0EDmzWF76qUD7b947B9vY6SY7xRB/yWHyeFnLUlPK754zXrb2e3C9hDoNBHkU+sZ5eOG
	Ry/Wb5z6hhnc1D8XQbSvlxMs0/cgAuVrRdQAOgBy7gcRkO8BJXZU6JN10VXJDAbJoVm3cpLS48Olu
	6kFHt499RoLqpDfL0UBs4H8sloSy222kH0CS8VZqwBQxX1zHTBbJTNfLcezBH3pV4nmmtgAFybH6f
	AlqUqhufpl5PY/VKvLJaC21bbzAQSLjolz15wawwoJdUtjIc1iUwi4eJhILV7Dcoxy022coDcxJTG
	Uzv7Xh1RzRDL4MxAOfWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8s3N-0007AR-GE; Mon, 02 Mar 2020 20:52:41 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8s3G-0007A5-UV
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 20:52:36 +0000
Received: by mail-ot1-f67.google.com with SMTP id i14so721523otp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 12:52:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8Mbj926lcMMww9ZNMv7XcrAqImfQQxGz/1hr+H7/z0k=;
 b=YQHRHAIv8IV5FQGC7amhVKvLmC6XfuEGRlYZPqQPwJJ36IuhGvqY/JPYrT3cYX0the
 8AL2tbR9gagUE5jnBGzSxYcPlUYycnrCOrD42eA2sjGaKtCMlYz7YhXA6kVbO9XEnNVT
 qfrXr4+sq6/zr9JmoLwAhbSLtvY/HDHpcwTMNLz/pAZY3DW0DHpt3QVnK0FBHZukSapR
 /qtYyx5RvtO9ewZtaMDAjkvMIHMxcKjlmqW0EN1lu3Up9k7E6Vw+5PTeoqmW7sv2J6w9
 nV+bxpeVVo3QApUnEs1HCFHXhxa1XRyoXqKA3X218W58Bkv/ZqDbpSj4Fst9q9vwzATO
 kIag==
X-Gm-Message-State: ANhLgQ3HfnuXxeZeYvdvAUyeSbAiUC3VtuSJSCPUQWxavS6takm0yTvm
 q9EdAXhDP5spxB5H2ClaCA==
X-Google-Smtp-Source: ADFU+vsU4BwI+ZhtAeYrEEnEWFuq7vUTpJHGBZvXyUJlXUt3DWxeVgdXESU0lhisXPI0WR6u21nvWw==
X-Received: by 2002:a05:6830:11c7:: with SMTP id
 v7mr769049otq.41.1583182354070; 
 Mon, 02 Mar 2020 12:52:34 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p141sm934283oic.7.2020.03.02.12.52.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 12:52:33 -0800 (PST)
Received: (nullmailer pid 9793 invoked by uid 1000);
 Mon, 02 Mar 2020 20:52:32 -0000
Date: Mon, 2 Mar 2020 14:52:32 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] dt-bindings: clock: Convert UniPhier clock to json-schema
Message-ID: <20200302205232.GA9730@bogus>
References: <20200225010328.5638-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225010328.5638-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_125234_983268_0AA5DEAD 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Feb 2020 10:03:28 +0900, Masahiro Yamada wrote:
> Convert the UniPhier clock controller binding to DT schema format.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  .../clock/socionext,uniphier-clock.yaml       |  94 +++++++++++++
>  .../bindings/clock/uniphier-clock.txt         | 132 ------------------
>  2 files changed, 94 insertions(+), 132 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/socionext,uniphier-clock.yaml
>  delete mode 100644 Documentation/devicetree/bindings/clock/uniphier-clock.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
