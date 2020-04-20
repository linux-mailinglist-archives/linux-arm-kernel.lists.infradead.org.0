Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BA01B13E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ot8DspuYBbkFx9IYrSGwGqLAzS90ofq5fpKmfu+DnAc=; b=YUCbImoHAQTBge
	A6ojpy3gnxCPvShZ95OJxDTZ3M4Av49UnRa1OslaNJYVhLy+4xy9hrKH3hQnH6r89hSDaXS6j04QO
	BJqtSk0eT8/YVMd4+h9U5QpusT3lxnCjJyjPiAl6WrkbRsfSmLVwtXdODePsjibgHrdF+BIeEMIW6
	6Fove3we1yU2pa/LNE3I1VwE9RZQzuuEE0qHOl2i/RJolTZpG6r85EuKhiLNrWN9kk9XpIyyju15/
	Wa/R4XEFVy2l2pLKA9ycI34UlgGHFqOHLF1St0EDj5E41HVQjVgd8RmL53+liv1QZT65Drg+qFkae
	T1faCr13KRDI92BSi0Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQanI-0005gg-T1; Mon, 20 Apr 2020 18:05:20 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQamr-0005f5-QC
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:04:54 +0000
Received: by mail-ot1-f66.google.com with SMTP id q9so2304758otf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 11:04:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R9R3P8AxTY42i8eZbd/K2FLLSk3SQ9So4jiLRS8yUHA=;
 b=GSUwBYPzhHwkd1N46CT022NcTRF1FdiiGc7PL6ZNE7tID6sOLJMO5TJbACap3RnOZk
 GeotENpLi2p2i/4GkehL8KKrtBY09urG31gd59S30DULOr1zPms0xMCRh6uCFSGndGY1
 5TcVIZS4trB7xptsPc13refcj5pbDxCEwdnjq5mrTdCU8H3XNh6Z9hRwNXglB5MdEExX
 Y3PQ3gcLnlS9rlr8rDTw07rCn7SFpCMVD7h2bzjD19VvItwiBH1XoHymA+aAsDNcKEk0
 tWumnfKBzafuqiPrP3leXYdrx9awwcamhzdxoXELrsdPS6HksQKOb2L9TgXeSYFxy22V
 HCUA==
X-Gm-Message-State: AGi0PuYYcCcGR3rXIBi+ynoWmPG2S+QNHbu0BiatQGD7QXdgE9Lihhh+
 olhEpUmut+6jKWQZEDMx2A==
X-Google-Smtp-Source: APiQypIcphhGbEDkzBJSApE45bLtbLIzGEcM5dFbdISmqJoJZVgTVbNbQyDPIrlbVc68ecDTsveOkA==
X-Received: by 2002:a9d:6a98:: with SMTP id l24mr10210869otq.133.1587405890294; 
 Mon, 20 Apr 2020 11:04:50 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r205sm17563oih.47.2020.04.20.11.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 11:04:49 -0700 (PDT)
Received: (nullmailer pid 22581 invoked by uid 1000);
 Mon, 20 Apr 2020 18:04:48 -0000
Date: Mon, 20 Apr 2020 13:04:48 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v7 1/6] dt-bindings: mfd: Document STM32 low power timer
 bindings
Message-ID: <20200420180448.GA20546@bogus>
References: <20200420121620.2099-1-benjamin.gaignard@st.com>
 <20200420121620.2099-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420121620.2099-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_110453_849250_9223DA4A 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de, fabrice.gasnier@st.com,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 02:16:15PM +0200, Benjamin Gaignard wrote:
> Add a subnode to STM low power timer bindings to support timer driver
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
