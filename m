Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8E6FCD59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:23:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BD5JKdk4j1OIp/Xlg8VoxiS+Fs32Zuw7rwiRys3H2cY=; b=OI5Q6gB2441QOs
	cBKmRi7CJMP/am3NyVZ/F8XFDhdMLS4JMEM/8QV6VWAhAbV0COYUFyviTVtRfegxl7imLwoQabOgV
	zW/0+i3NY7vn0F+MjM0mzX1YyBeDIiGxOmvOrbilR6MncvBMt0CQGjJKMHHeEHR4DQtR7/06CKvfd
	W7OoBB2gGXMpIslxADryJSoOHL9mPwb60jrU/CU718IBwjxgb3tkX2fjHygtmy8mi29KdHkQphAnv
	gVEwWUXIgUBr7UcnsIRgUOANPvTwsKzOU/oIvFdevRFglikkigXEX1/yDTtB5XSu08DNaHaN9tkxJ
	XPj+c6MU2tQPuDLWXmqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJmH-0007OX-FB; Thu, 14 Nov 2019 18:23:33 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJm6-0007Ns-CF
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:23:23 +0000
Received: by mail-ot1-f66.google.com with SMTP id l14so5697330oti.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 10:23:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=We1eIYfe7WX/UTvD7cIZM+ofCDWLAgk+Qxj1BAO42b0=;
 b=pRvrqaWy0QvdGR34NmPArKvI3zvjUzck0BB6voNczDJYELHKXUGjqRDaNS5Dn436qg
 VqlSkXI37sfjC6ybwN8ySZ2vMBBX60yRaHgl1Ki4SlL8MVBnKsM0oyjK4Qo/jYSbbpMB
 WiwOJ2Jc0BbwruK4bCADqZz0lXbsK5hYRNdBYje+eeasjlmgzocKrkOkyTDLimGvpmuP
 rS1SMGKUNKC4VmwUgD8IzvMZWisf4AzGcFbIQivTryyMNihIGU1gPdb89dkIUynNv/EV
 015mZMh7D8jQwhEDWf4De0xY2NElVs9v/kqDtcJjH1kRl2o+MzsGRrMUF9UMcs/jNLlf
 i7Cw==
X-Gm-Message-State: APjAAAVaR38urWNOI8qHDfV51ha2dsAjDcCYZtbW2YMH5Dlclx1Zstvq
 kPYVPSIEui1qJ7dN2fFAQw==
X-Google-Smtp-Source: APXvYqwo6kXGEPryKuL+HGAKREL3C89a1kwOGngbbA0H80iPNwUDrvY5GU9i+B3nKYJHrbeIg95QjQ==
X-Received: by 2002:a05:6830:1143:: with SMTP id
 x3mr8612180otq.274.1573755801307; 
 Thu, 14 Nov 2019 10:23:21 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 37sm2055877oti.40.2019.11.14.10.23.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:23:20 -0800 (PST)
Date: Thu, 14 Nov 2019 12:23:20 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: add compatible string for
 Tolino Shine 3
Message-ID: <20191114182320.GA21532@bogus>
References: <20191108111834.18610-1-andreas@kemnade.info>
 <20191108111834.18610-2-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108111834.18610-2-andreas@kemnade.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_102322_418829_CE13FFD5 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
 j.neuschaefer@gmx.net, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org, andreas@kemnade.info,
 letux-kernel@openphoenux.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  8 Nov 2019 12:18:33 +0100, Andreas Kemnade wrote:
> This adds a compatible string for the Tolino Shine 3 eBook reader.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
