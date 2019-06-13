Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E042A44D3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 22:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTkaGEK/tZ/2dsZxu+gaIB27VlStQA9YgpHC5wS5UoQ=; b=GyYD12UzJZ7fMf
	yC6rntm6dfDM/35VDRv8uyBTb+A40K+uHZ3ppyXY/td3EvBL9U6INL3JaOUFM9SqjIoirNdpP8yRH
	u5GWURmae6fLqmY0WfrIImE67Kg1EfTxv7s9wANqu4fPcXefo1yAIWzlj27vlIyfTjK4YDCO0aOxb
	ysgteUQEvkCi1ECMCrWGfLf0uLq+rMZnjULBHl7KUbCrFsGdSPOh52lJUuIHrt+48+I9Vumutw+20
	zmjogCJxGEYAk0UYNf1svOuH7L0M8DAP4krjDd1As0fUPjziupZMsd7Qm1saI4MWDcXcSUS16OxjB
	aKvm6a09HTs3k8M5b1aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbW9h-0005EG-Jr; Thu, 13 Jun 2019 20:17:05 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbW9M-00057c-N9
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 20:16:46 +0000
Received: by mail-qk1-f193.google.com with SMTP id s22so206165qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 13:16:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o29Lfr65fvnIIWRvGZOgVJ8IvfSfaqLGboe8X2riLtk=;
 b=iEP3uTxQtPPJH1baO7uF8dFm+oChcLoc/RoTtohkpdbg4w3JG3aLElXq3srQHmzpl7
 UfDXJh+IVdyyxm9q0273dBTgECqrEWmPydeuQOmRJ7VdM2RgZFYPvHounlFdGdSF3YoU
 IWq9dl3HGgOYZn/q8lVODlTakK/xIkhu1oGuSkhre4Kf4dLdHKKsdpLLIuZIwCDrOwZO
 KRY+gW135BVV3MVC7nYKbwhx4EdFt+t6LzjBtzXWEThj8iHfJbEGREhE1dKkYtsHxqov
 J1Z65c8fKqC/BzLBUPnAcLQ4KJaLQDF6usd6QAq1T7IGxm7rvWkiSkDMoZhBTIPEW39J
 9s3Q==
X-Gm-Message-State: APjAAAXTH5ghWaUt9zUFzRvvyH0qH6lQetSXhDT7px3adv8wdAFNhMJL
 2U7YjgE4h2lE2hryjbe13A==
X-Google-Smtp-Source: APXvYqwuDPeB4Zxm97u7rBXD57/HAa1QJ6DfcEuDcq3KKFpxj60G3NwwBzqtMH4di8Y++XIqdX7MmA==
X-Received: by 2002:a37:4e92:: with SMTP id c140mr72886494qkb.48.1560457001436; 
 Thu, 13 Jun 2019 13:16:41 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id c5sm444341qkb.41.2019.06.13.13.16.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 13:16:40 -0700 (PDT)
Date: Thu, 13 Jun 2019 14:16:38 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: rng: Document BCM7211 RNG compatible
 string
Message-ID: <20190613201638.GA31578@bogus>
References: <20190510173112.2196-1-f.fainelli@gmail.com>
 <20190510173112.2196-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510173112.2196-2-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_131644_806708_C74D2665 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: stefan.wahren@i2se.com, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, herbert@gondor.apana.org.au,
 Scott Branden <sbranden@broadcom.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-crypto@vger.kernel.org, mpm@selenic.com,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 May 2019 10:31:10 -0700, Florian Fainelli wrote:
> BCM7211 features a RNG200 block, document its compatible string.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
