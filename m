Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B6212FFDD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 01:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07/SCe/i7qg86tSGKfYP8XcOrVZ5tv4R7NrE0pvRqX4=; b=VJWysEfXkKW6po
	VlBTSBXmThUmsda+WQhe7wSet+bwXXJdlLTyXu+F3xSf/ILJCLnAB0ifHuftSMrY/IGEc35QzjCB7
	NcpeoiQmLCVVwUUusJga0y5zPQwXTt/FohtAzyFfQIKOyqBiMP3GMVPm2hRftkKF6gCKCvz8cn/9R
	YnJhFJ1BIHdInWEtTsHb7mAPy5KUcDxZsL5KzWuI+/VJZLYxRZ0cc3LcS3GedaPZB1+q4Yvyp/71M
	FnlCl8yBrkQ32OTxtXYcbYXz1ZD1p6BJICoHFloiTOd8ZRCj2vMDMOlKsbcJkZNZQnU70TAdSH5wh
	mgAmlm3KajTavzBz0vgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXmo-00042r-08; Sat, 04 Jan 2020 00:59:26 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXmh-00042a-7Y
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 00:59:20 +0000
Received: by mail-io1-f65.google.com with SMTP id n21so41579988ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 16:59:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=he5w4xe5758mzPhyknWVdWn5blsV7hMVch+zol3itAA=;
 b=HmBxpiyFwqxedSLNqFGo08uKBJdFxKGClc4kScY0MIJ9q/mBuXj2h1Ww0k3CiiT8Ph
 HtZR3Ak6KqZanq6Oy6CRtNVdZ3ICGlOpJ7s1DCc8ltIwlkoojoD1sTqAR/X3aaLfBGIn
 QQhfjFVSseG5L3nOtL7UKN9Y4DaWhMIRf3beda90kW8wDvsoam7GK99PiKOS/5Qp+4n6
 qLDVzOY98cn/W4s0tfLN7zgaxVFxLgQBQKd+CcW831yVrdNC06pRlx0kd0vQZEQPispW
 586wlFuUIxu9jtMCHF4+jgE4yUi+W1Ol4B2FLki1zS4NtSs93Vv/QGtNTxfHlChwtD80
 8G+g==
X-Gm-Message-State: APjAAAXXWRhjU6fKHLnTfTzkDeJfPjNkCIoQ7IFenEN/xgSkotb6J+nz
 BYAKCZQsSgyKx674fCJngz8hvWE=
X-Google-Smtp-Source: APXvYqzcTmRALB9L8ux8qeCHETN6XZgSykmdvgW1TXapLsSDWV7Ga5ldp1S/AVzweamiiaSmVQ/u4A==
X-Received: by 2002:a5d:96d9:: with SMTP id r25mr18509017iol.68.1578099558391; 
 Fri, 03 Jan 2020 16:59:18 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id u64sm11146535ilc.78.2020.01.03.16.59.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:59:18 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 17:59:15 -0700
Date: Fri, 3 Jan 2020 17:59:15 -0700
From: Rob Herring <robh@kernel.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH V3 3/5] dt-bindings: qcom: Add ipq6018 bindings
Message-ID: <20200104005915.GA14735@bogus>
References: <1578052177-6778-1-git-send-email-sricharan@codeaurora.org>
 <1578052177-6778-4-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578052177-6778-4-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_165919_268662_7049B04D 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 linus.walleij@linaro.org, linux-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-gpio@vger.kernel.org,
 agross@kernel.org, sivaprak@codeaurora.org, sricharan@codeaurora.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 Jan 2020 17:19:35 +0530, Sricharan R wrote:
> Document the new ipq6018 SOC/board device tree bindings.
> 
> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
