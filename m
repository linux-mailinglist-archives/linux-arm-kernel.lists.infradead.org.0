Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0B2FCE85
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 20:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiPTPbs7y0oWV188WKJEKKgeLTYh70hm02gYP14Mmww=; b=P95ftgq7PkStCR
	4tlZi04VQ7FweclibytI2r8w+5MMyS+XtbFzS8MlvjjpPvhL+Fg7D8sZEf22KIMYgiAIJXcGQR8cZ
	r90lvbDX+2uoWL3pg6ctw6/tZuxQPVpNDd982Ethskl8W+pxTXPLyQgFWKLsH2IkrIs8tqSaYTSpG
	FMny7PGjsbzudnTJIPA2QQOE0SpIgDFJmKnWZRo2AtL8HnqFFwKt2PZoXct9rnZ1GpclG2oKGPqFB
	AOF5bSkQ4R4X1f8ExAo8BnG291lu3p0F3x6H/mOEMSDRBJYf62wMTcEE/jVxx+R9GeOwudHVmi9o3
	Fj4ojiW3xu2/zvp2T5dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVKXX-0001E0-PZ; Thu, 14 Nov 2019 19:12:23 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVKXM-0001DK-5A
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 19:12:13 +0000
Received: by mail-ot1-f67.google.com with SMTP id z25so5856276oti.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 11:12:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+C86HU47Ruq8ie43k/9gRtCKU5MxuhIIqhntEz1NPZQ=;
 b=cLXJyRdtvWvgh8EjI4x9cz59QqKybkdvDcQ7IG0zZ2tjE8CixYjgG7pOLwt/WIR+xq
 qyAIFvVRjfyTcDOCviEhooRN7Gf1Ms3BVhCWEUZT+0Enz/gx6R+jq5OHzi4hgq4eJeyU
 rLjOmvdBXixoPIw226Vjq3TJeuHNt5foKew7WtWTLKWFmMgXPImL3izjnu9c+uaMfjhB
 d/1cudbgqTaWsr2cWo0z1sV8IYpJYiVIlmectjToyJwZs35W25Q8rd/oDyf69fwuEXaZ
 2F+ltgp0/FpojCotYjaXY/hrfXDf4PVCZIPgGsUZlozqBC5thivUPCUIqO7meM2KDvyI
 05ig==
X-Gm-Message-State: APjAAAVLT9OjnsF2p4G0RFrurtrHOz2slWdGMb6frcneCGnH87ENXIzg
 VfPvZ8SlHHnNg/TauL9RXg==
X-Google-Smtp-Source: APXvYqyK9IS1/37lWqaHxvuWrpHCJsZDLpbEJyl9jVccb1gWuKI2tXRvRTaUMaR3uOkMFMa/eX1sYQ==
X-Received: by 2002:a9d:5e1a:: with SMTP id d26mr7845139oti.96.1573758731278; 
 Thu, 14 Nov 2019 11:12:11 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s66sm2140530otb.65.2019.11.14.11.12.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 11:12:10 -0800 (PST)
Date: Thu, 14 Nov 2019 13:12:10 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 4/4] dt-bindings: arm: imx: Add the i.MX6SLL-EVK Rev-A
 board
Message-ID: <20191114191210.GA4324@bogus>
References: <1573435732-30361-1-git-send-email-Anson.Huang@nxp.com>
 <1573435732-30361-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573435732-30361-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_111212_195747_62D4A0CD 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, andrew.smirnov@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 marcel.ziswiler@toradex.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 09:28:52 +0800, Anson Huang wrote:
> Add board binding for i.MX6SLL-EVK Rev-A board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
