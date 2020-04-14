Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260B71A8530
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YckXU1exf42t1hedev44NDxsmkLO6/pemDeSBaKx+Q=; b=ro1FyQKwpyRo4E
	b3hZT/QTMfEx0VWD5RVnGYkFKh/q2pb7iWuWSidD4Vj2tOyZUGebPnG4LtZhctpQ/ldttQ3lAcJsR
	lvs5H3TIdCxfxOwyiWhSlhMgYeMLbefMxtekA5yg7Yp/VMtZemXMWUZPs5YKtUWAg3Fw/nn/iymeA
	5IhAtpdaxshlmkEy05zeqRSJ7uXuyR+VrdLRt97Eusypn0B8OhYM5eq7vgPnZ+lgYpUhgtSDVyocL
	tc9bbl4/+VJPAavgtQWvlGxX9xr9INCx0pz7VxRGgj/GKIPQe9sa1O++poUqYTLWWmkklZIOOQAbg
	PO9hXsNrqZjzS6piRbSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOYv-0007am-9i; Tue, 14 Apr 2020 16:37:25 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOYm-0007Zd-BF
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:37:17 +0000
Received: by mail-oi1-f194.google.com with SMTP id r25so1079586oij.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:37:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jIvUlA66uFvx/00EVYaR8kJpiN2UPVF0b3hCl4OA1xo=;
 b=WM13F6VoqRMC12G8JgCb4DXbhYtTG8tWzbnX/yaFvyQg8wiqdG5knngJpiX1kyHMWA
 L/UbvBlicUb92BEKruOyTqrgfGZNaXh5bcb0rl3r827gnaGcd5vZ6ebsaDs0bJWLI3fx
 61OuEJIZzBzwhlVJFRpcxSBbZsX+p8ENDmlQKkWvInxpyHPYCaUjpDdZEWJPFoqhh7IC
 sRTGHhULfeci1I9kCub5J1SMJR/LYic398J3a4DfA7fw/M20lDIAnzJGX5YJ7ytmr8Gr
 C29wqEcd+LfFTqyKKkVx5M3CTgU+2Uk3jc40DpCW5+Hx1YIjRxJFmZMByyQJMO3tLQSd
 miHA==
X-Gm-Message-State: AGi0PubVYYACh7tnDv72xoQVWM8r+F1cGOb10iIQH5t+/9jOxpaxPDTl
 Q8YBXz/GaCAh4/e5BqRerg==
X-Google-Smtp-Source: APiQypJkR6UcoYGEVORAFHlppvN5+UL0qeZSEHtFMBgD+pYKqCNXMKo+xTy5m/Hcu35x0L0MxMOJGg==
X-Received: by 2002:aca:c7c5:: with SMTP id
 x188mr16226493oif.130.1586882233216; 
 Tue, 14 Apr 2020 09:37:13 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c13sm1173992otf.35.2020.04.14.09.37.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:37:12 -0700 (PDT)
Received: (nullmailer pid 1195 invoked by uid 1000);
 Tue, 14 Apr 2020 16:37:11 -0000
Date: Tue, 14 Apr 2020 11:37:11 -0500
From: Rob Herring <robh@kernel.org>
To: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: Re: [PATCH] dt-bindings: i2c: xiic: Migrate i2c-xiic documentation
 to YAML
Message-ID: <20200414163711.GA1139@bogus>
References: <20200401134709.60421-1-iwamatsu@nigauri.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401134709.60421-1-iwamatsu@nigauri.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_093716_382823_CAEE0255 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
 Wolfram Sang <wsa@the-dreams.de>, Michal Simek <michal.simek@xilinx.com>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  1 Apr 2020 22:47:09 +0900, Nobuhiro Iwamatsu wrote:
> The document was migrated to YAML format and renamed xlnx,xps-iic-2.00.a.yaml
> 
> Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> ---
>  .../devicetree/bindings/i2c/i2c-xiic.txt      | 25 ----------
>  .../bindings/i2c/xlnx,xps-iic-2.00.a.yaml     | 49 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 50 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-xiic.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
