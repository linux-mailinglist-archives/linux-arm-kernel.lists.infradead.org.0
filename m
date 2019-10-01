Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EA9C43A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDUGUqfTU7KF1+mwss29kxrxjTLwoHetTtYMWCJm1UA=; b=XsGsPCK4QMjyLm
	8A4FFj5z9rhfCxhd6+VfHKnspvkPSUsBYp85GjFs5kVmALhKfOCqotln1+VQ8XRlr+0ORIMpyDNw3
	VdDxKcb13b8VKIIAam6fHTXc9o6gsHMXS5KaGN4FXa2G2b2mSyHaE2X2oRRUxADqD/StMflDWLpms
	phEbcQLgI83YGfbkhtr3BOzIenpmAMPOKq3SX+T+9nEJGH0sd2Gd/LbfG4PWGt+UkVmuQxke3NeDE
	YlRl5izlvThBu65kQFK/E5AZUG/sfHJpkh6UpHhmPg3xHTtqp4tfb4ylnJ0GwMw5cck6xsCymGAmw
	3phW1duwMc69wfAGOM/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQTM-0003dV-Mn; Tue, 01 Oct 2019 22:18:20 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQTF-0003cx-Lw
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 22:18:15 +0000
Received: by mail-io1-f66.google.com with SMTP id n197so52150252iod.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 15:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RsWAdabUatVMhYn12Iozr/H7dptelk31XasqIoKTsS4=;
 b=IIDcIZAVoNbQADgC/0ZtWt+sv6LhCjBsiLOp+LlA5iC6Faq4o3Ne+mSDDtziVa3nw9
 +38xEypxZxsW8iUt86Tg9j9hOl0rXv4P3CARYpy+SNdm0R2/V/RJDaaWlMZ5oE3uPahM
 /7LHNvmK2EdiBQ7vYACJs1N6JHqExA2yGbranUsGjzVcSHjFUpOSolX8LR6mq19cYu3L
 cJx1muq2ddEaLkiVYNWPH+p+C2iwVasRsshrINXDOjbYjY13U0EUqwtnMrmHqQpgR+Sa
 LyrcboAx3/oMB7k2tGSkY/WTpKxK1dsmNfdlOT6MFNcA6FFf9iY3XzcBWhA60SgoQy67
 mqSw==
X-Gm-Message-State: APjAAAXjogMHuyY/Ma9o+GZNeSoBilsmRsKwIIT4QjDJJcnKU+MoTQc8
 JqhC03dkFyjQwthG20ApnA==
X-Google-Smtp-Source: APXvYqzq/7o3WbQlwTRcdgsyMjjmwsAfkmaZ1+Sxbxtnm4itC1b+rcwyiZsnib45TTg1BZKHl2H2Jw==
X-Received: by 2002:a5d:9dd7:: with SMTP id 23mr477156ioo.182.1569968292792;
 Tue, 01 Oct 2019 15:18:12 -0700 (PDT)
Received: from localhost ([2607:fb90:1780:6fbf:9c38:e932:436b:4079])
 by smtp.gmail.com with ESMTPSA id z1sm4183486ioe.8.2019.10.01.15.18.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:18:12 -0700 (PDT)
Date: Tue, 1 Oct 2019 17:18:09 -0500
From: Rob Herring <robh@kernel.org>
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 UL/ULL
 devicetree bindings
Message-ID: <20191001221809.GA23905@bogus>
References: <1568980346-385840-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568980346-385840-1-git-send-email-s.riedmueller@phytec.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_151813_716741_D6A9D168 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Stefan Riedmueller <s.riedmueller@phytec.de>,
 Andrew Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 13:52:25 +0200, Stefan Riedmueller wrote:
> Add devicetree bindings for i.MX6 UL/ULL based phyCORE-i.MX6 UL/ULL and
> phyBOARD-Segin.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
> Changes in v2:
>  - Use seperate description for each board instead of squashing them into
>    the standard board.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
