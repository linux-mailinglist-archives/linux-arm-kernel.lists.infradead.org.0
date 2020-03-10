Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFC9180791
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:01:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIQD665Sq+J5kMJTsw6NJjfi0vuYf/cGNUzrZTCUYwg=; b=bBYNkzre+Gwb54
	cLl9o2bPDDDQMTQo+BIhODjQIB1Rm4EiDmRBsVwlvtcduockzrKmmvkuQd8OIG6g+lVLqhjV+bEW0
	SsYq9LXCe2OOi2jtXOFFNa85bjIIkSyphIIyKK16nDRMKAhTfy33M8w84yR5uaybt4bfpFZBKpKGW
	PrN9LKNyd/8jfJdgPKsmB3xEoyPHf1ANdfoEIgRYljpKwY1suPUSrdy0i/dAfoLyebknqRGmw9ffq
	V2jeemU0xl4ml1Oa4wmQ2joVcW6XxuWuE4AoXs48dVFEYj5q/VoNkRyeFVFreB0gKq0imBzEdZ4Wf
	xk85ATBcM0VbmlunyP9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBk7o-0006KG-0k; Tue, 10 Mar 2020 19:01:08 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBk7d-0006II-5R
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:00:58 +0000
Received: by mail-ot1-f66.google.com with SMTP id b3so14286610otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:00:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xrW22r5IgXxjJkco6J5hYgaefJp0zEugXeX1yVtVQQw=;
 b=e12gMrjvl1Tpwe2C3aqF9296WWG9T+ZAZsMJYnNitDf3CdK3Q8Z55ZBDe1EbgHqKnl
 vTpMOxHYUmWu8R9iMCISZkTP3RdlqAS3x4w+Q/L09pEkJHfoVPxfmjjEk32nGa3/C5Fe
 YvpS/H0UuTyiKSnR7BxxQxHzw3Cf42Uw/cwi72MdWF1ZrzIoYvWNi2EM0upZDb0rdUC9
 EUfSY3HGa7tFb35CoaAsC2UzlVue63Nkh6+nsJ2fVyjcUpNnOM6wmCsbm14wpjbkyp4v
 HivTysoMJy6Y3zFspJuGHyUl4gEefbvDJH5w9KQ0v/OZNQ4WBfmgk7tBDAb2g3rPSYl1
 KUQQ==
X-Gm-Message-State: ANhLgQ0vPcuumi6tsJc8gwbJlosKWiyjxa6yS7ZiYzjxQjbpPpaDMANJ
 SOtkm0GwLmqcrDgaVDywEg==
X-Google-Smtp-Source: ADFU+vsTVy/bN+/Yx0XnJKlcuYj2yXiLOzpK+Ll/Tq1shrnyv0KxkX3AgutsfYoYbIbd8kIetQiYeA==
X-Received: by 2002:a9d:4c10:: with SMTP id l16mr6789936otf.109.1583866855618; 
 Tue, 10 Mar 2020 12:00:55 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 187sm3993505oii.35.2020.03.10.12.00.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:00:55 -0700 (PDT)
Received: (nullmailer pid 2887 invoked by uid 1000);
 Tue, 10 Mar 2020 19:00:54 -0000
Date: Tue, 10 Mar 2020 14:00:54 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Devera <devik@eaxlabs.cz>
Subject: Re: [PATCH 2/2] dt-bindings: serial: Add st,swap to stm32-usart
Message-ID: <20200310190054.GA2826@bogus>
References: <20200229160507.31309-1-devik@eaxlabs.cz>
 <20200229160507.31309-2-devik@eaxlabs.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229160507.31309-2-devik@eaxlabs.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_120057_209433_B7C17F46 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martin Devera <devik@eaxlabs.cz>, open list <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 29 Feb 2020 17:05:07 +0100, Martin Devera wrote:
> Add new st,swap property to allow for RX & TX pin swapping.
> 
> Signed-off-by: Martin Devera <devik@eaxlabs.cz>
> ---
>  Documentation/devicetree/bindings/serial/st,stm32-usart.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
