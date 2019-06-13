Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD5844F7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKEnt6ShrvJWtUNkhm+PIHRIIJTXS/CxYHQZ+fe+hYg=; b=EyOQUMLccjufRP
	M5syXo8rnQnIM/EEvZwt6qAXSyDnORaxFtXjYCV97ZWVVSsqXjdYa2/S+GLq+Wp8tcQbxmzBUaW1A
	FQzms+SsC0KtUdwJl6uJ5r9I8c3d60W0XGqxZSYumF+U6OdNRRMZLU9/rkt9CcXAKl8GjLF8xpzRF
	UcW/guRdUAKjefT5eDCQx2s8FP/fA2vk4EYeKfPMYwPTfkUyxM1o3XleR5NqKzuyTCWtoLl5/jB5s
	7gXWUaz+BtMCbJBqYz7Px3JBZ9nQgR9HhEQIzhVTnG+PqAPoX9SboXFl6hXfEKuxvU/gm3KjVsLz+
	fKLmQYaUv7CsvZS2UJQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYUu-0008Vm-9p; Thu, 13 Jun 2019 22:47:08 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYUh-0008VI-6m
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:46:56 +0000
Received: by mail-qt1-f193.google.com with SMTP id p15so365875qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 15:46:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xLKL2/7hpq+0UqSyk0LyHvA8k5ajuKPhbvQ4KDE0fLM=;
 b=T/jtUli59iLaDg6Zhh3F0Vj4X048mHEfwgxq/G/xRpO/07OHkr6sSqGQnP/e80QM/A
 aKLkwUc/OQtaQD823rqbgTn60ih/L0392q7RsEOXOAcqgR/+R7F3BlqheX2YAeXhw8Cs
 U/5PW2R4WmgmlUZdhLmjN+BL3/+Nzm4E0eMQDgGGBR8kJ8h2WIn2RXH9ZE0DyPV3YQBZ
 ov809aF/X73DQS6xb0/Nu7nJvIvBTSsIGhwT1udMINnSYoWvOgtWNF7rIupROexf0YWu
 zcWo/CMKYcGqasWDi+E8RJr5ajuyue5EsHeQ6tVtzRpYsA7Ys2h2P9sSbS08Lv8K7MIQ
 4c/w==
X-Gm-Message-State: APjAAAWMoZv6ysC5ubvwL5MWtTluUvluMEInSOqvqRv47Vv3EWwkclZu
 8U1eg+yxvNOfSR5v37s/VQ==
X-Google-Smtp-Source: APXvYqyIWBengPMHzdGvElqk9RsS86Dun9XdOcu8fBRFxet9r2JuSnJrAstgNTrqHpsCfXzqLRbmNQ==
X-Received: by 2002:ac8:2ca5:: with SMTP id 34mr79314749qtw.246.1560466013987; 
 Thu, 13 Jun 2019 15:46:53 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id c5sm387128qtj.27.2019.06.13.15.46.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:46:53 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:46:52 -0600
From: Rob Herring <robh@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v3] dt-bindings: arm: Convert Atmel board/soc bindings to
 json-schema
Message-ID: <20190613224652.GB5119@bogus>
References: <20190517153911.19545-1-robh@kernel.org>
 <20190601214050.GG3558@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601214050.GG3558@piout.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_154655_248647_D6E84489 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 01, 2019 at 11:40:50PM +0200, Alexandre Belloni wrote:
> On 17/05/2019 10:39:11-0500, Rob Herring wrote:
> > Convert Atmel SoC bindings to DT schema format using json-schema.
> > 
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Is someone going to apply this?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
