Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3AC1C9A0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 20:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNtFTEq3Dua+owUQDk4KcREe3fXc/heFykC0zXu0oGE=; b=jFgYePMSfd1T43
	EzQFqNtn4llVlZSj1irHD+HqHb/P2hLNIk4YescG7pJLW7l/4L6U9XNFwuaKtysUIouDwuuKwD5yu
	fpCNz/WuUnS6AqXhoWGhCt/zmHmvLjIw3gqGFew9SNcWeTfnNqXH+aXKjlr0rBYjUtnP12fPEQ/lf
	uQsYLx/ygyaR5DTrl9GHrNSC2T9g9On6f12+WZCTBrzyyOb2o0X2LE9Dq8j1eORCOLVGv532Ak0/3
	j19ausRqI2gakaF2vUl994GqKGR8k3TKAGp8hrQNTxDpkDMy+uMsyzP8Qivr8tQkUBfNwBdurDC7M
	6ZfhmvoqB1SZXTMDDcNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlg5-000291-8h; Thu, 07 May 2020 18:55:25 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlfs-00027a-VD
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 18:55:18 +0000
Received: by mail-ot1-f65.google.com with SMTP id i27so5417670ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 11:55:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UwYYGNzYe2kxY79h+ETMMs0ZcfM9ltMxZYor/BkhBJM=;
 b=gOkOYk3KUmwd6jypuV7cZK2uhL51rHDntZk+/PnOyQPEC9J80WpAOiyadYLdoR9BBB
 lykBg1cd4NuJqtC6mW6ln1GCRz8str2UX4o+TleqNf8GCPgn8vOfrzGODigWfxflWcGH
 XHaOdiGK+M9wW2FtV607dvr+mzKA4r06BPD5kJdC5UCkS14UiN8iZeG4dTMeV1Bb+1/F
 6U1jCFW/10GMZGCBQOcfvWI2IgWAycWy2tFQFzdskRzq3Nl1anZk+Z99yVCtc6sMlIlX
 FU18NwBUimHcR/BRROcaVZuQUdw+6SJ1aOvnS0tw9AFURkh/+ZVz0ShI7iieMwNEhjj/
 i9nA==
X-Gm-Message-State: AGi0PubvNsa1XT3H5JzCBPwaaiF5GsimG1IrF4aYcm8XT6h6SKTzOtXX
 EGvr324tXKmwJF1fYlo6pw==
X-Google-Smtp-Source: APiQypKjijNorzsZ2dMMQG79xGnq6uhyLhE113wETl7HLQYF6IWQzqVm7SjGi2gTa9qDY0cJ7JepHg==
X-Received: by 2002:a05:6830:1316:: with SMTP id
 p22mr10842049otq.223.1588877711170; 
 Thu, 07 May 2020 11:55:11 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y17sm1675843oou.13.2020.05.07.11.55.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 11:55:10 -0700 (PDT)
Received: (nullmailer pid 1054 invoked by uid 1000);
 Thu, 07 May 2020 18:55:09 -0000
Date: Thu, 7 May 2020 13:55:09 -0500
From: Rob Herring <robh@kernel.org>
To: Jaedon Shin <jaedon.shin@gmail.com>
Subject: Re: [PATCH v2 2/2] PCI: brcmstb: Drop clk_put when probe fails and
 remove
Message-ID: <20200507185509.GA913@bogus>
References: <20200221033640.55163-1-jaedon.shin@gmail.com>
 <20200221033640.55163-3-jaedon.shin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221033640.55163-3-jaedon.shin@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_115516_873618_2A1EEA77 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Jaedon Shin <jaedon.shin@gmail.com>,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 Gregory Fong <gregory.0xf0@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 12:36:40 +0900, Jaedon Shin wrote:
> devm_clk_get* APIs are device managed and get freed automatically when
> the device detaches. so there is no reason to explicitly call clk_put()
> in probe or remove functions.
> 
> Fixes: c0452137034b ("PCI: brcmstb: Add Broadcom STB PCIe host
> controller driver")
> Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 1 -
>  1 file changed, 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
