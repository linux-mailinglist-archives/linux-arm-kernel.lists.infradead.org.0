Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A92CD44A4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgx8P2ie9AZzDphZmyUGsff9Y7KOAymYZ/jmp89+/Uo=; b=WeFrlNlWrsIldM
	j5jL/4N47eVpFsc2z0gzfQ20pOF/a57oHpaNg6AhlT9qsFtpp8tKaohjwD4VJuraOrDHlh3+JjkPd
	LtjrLruzvKJFmqHEwDrrVCsyFQaswWe7QYp+q82TzNbCjD6CYF3J78usp5wD2MYGhZF7c+g+sZW/x
	K34R4JTbZvYvt6uivIwzGtcDV9LhN7YE2E3vyvs5XQcjBf1kjVdQGTxL2XD6quHwPB6Ru3XLqKfmN
	Xyg8JfWs3rA1iI9vJo0482dMm+KRhrxeZnPyxStlcLubAYnz7+ngeImPsVUvN3xBXP7n4joQaJkpK
	0glOEMAlEXfcvA023sqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbU8Z-0004Mp-Et; Thu, 13 Jun 2019 18:07:47 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbU8R-0004M3-Eh
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:07:40 +0000
Received: by mail-qt1-f196.google.com with SMTP id m29so23648513qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:07:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Oj9KR+T1fOqKQ4FESSVm1jnPwC60Lm44k4F4XEoSR9o=;
 b=o92/yQq38Ff0Q3c92WLFf9xfpPVVGPXUaByxjbOlw57+mj1mzD+gT0QzH8HiJOWjKp
 CWsj6tKnrqWfzh+LTFhQz+8Mx6r0hYbTVf4rfsGDHUGWC14KK4mzyk4eAuRdm3jLLd+6
 H+M2QacQriB5qby/NOhJgTDqtjRtpFrIeZNOjvGvM0IQlLxqpPhHXiIrxJNK+Qnsc3iG
 rivq5c6pMeqYOeNIim7jUu6m7QQrV40tS9NIOtOGTJvbrA1ISI6ZEX/yd9IV1Oau9qeN
 6lQxGrpS9QS//GPAmLBonyRCRt0ZqDLigL9JlOgjnW9F+b/9qJV+KuGSr1BTTj2fPkjF
 dnHQ==
X-Gm-Message-State: APjAAAWnBPwmNt5QQzlq/sFZi3QGV0tMfL0RaQdZO2PRA+9zES8AJi9s
 tRjzBsDkRuUAu/30kGlJgA==
X-Google-Smtp-Source: APXvYqyUp5hOsDZfLIs3lS90BPkWO4yBBGNdYOYbR9C7XHV9gSGJlFFkMIKIt+hKrpXob3c5vDNzQQ==
X-Received: by 2002:a0c:d1f0:: with SMTP id k45mr4787080qvh.69.1560449255707; 
 Thu, 13 Jun 2019 11:07:35 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id x10sm264965qtc.34.2019.06.13.11.07.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 11:07:35 -0700 (PDT)
Date: Thu, 13 Jun 2019 12:07:34 -0600
From: Rob Herring <robh@kernel.org>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [PATCH 4/4] dt-bindings: fsl-qdma: Add LS1028A qDMA bindings
Message-ID: <20190613180734.GA3178@bogus>
References: <20190506090344.37784-1-peng.ma@nxp.com>
 <20190506090344.37784-4-peng.ma@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506090344.37784-4-peng.ma@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_110739_493486_61EB1BFD 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Peng Ma <peng.ma@nxp.com>,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, vkoul@kernel.org,
 robh+dt@kernel.org, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  6 May 2019 09:03:44 +0000, Peng Ma wrote:
> Add LS1028A qDMA controller bindings to fsl-qdma bindings.
> 
> Signed-off-by: Peng Ma <peng.ma@nxp.com>
> ---
>  Documentation/devicetree/bindings/dma/fsl-qdma.txt |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
