Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE061A4957
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FiRzNT85P0sl8apVqClHNdN+nC7sk9A7iC6WTOs6IPk=; b=ts3VjdfJmzPfSA
	cThJ4in3bpg0U/zaPAuOHSEIzaN+riOosd2HvWHb3MoxvcXzgPKIWQyYilN2L0uxXJZ8cjEyThzQy
	V7IdHdkrylI4U97tgmR4hq/B3EV0Uqe4c6xQm7gz57m0TWeFqjei5jmF5Sdbe9ZhX+mhoDWf6LWAN
	S/MJkQfOAaHCIPg1KzhRf+0RmF4AWKVeokj+Ih8COFecm2aoH1ZsGx4DqUTi2fwQqfDvtlsPFK2aL
	URRDAS9Lv7ftPsEYDlCxR7lVgIOFn1Jui/osIIvi/O6wKRqfOMJgD9MKMcc1qvxaAvNbUqkqFApuO
	HzCeqZSZ2EmFyOFYbpXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxct-0006zH-NF; Fri, 10 Apr 2020 17:39:35 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxcR-0006ir-Bk
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 17:39:08 +0000
Received: by mail-ot1-f65.google.com with SMTP id 60so2479105otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 10:39:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sMpQBRP8FS5/1RZ8Jd5Q+SlXPKexMnkYQKuvOFERAmM=;
 b=YFmtE0/L12tNmbzMey47Rd/8ywM5D35aG+2ymDdeBrbBu+2IG0xXtVjLx/o6DRxTFg
 F6AU1XhfZ/WhdEu9p++4wpbnPoW8P5b6NZJjAwFBmWIZOXFdzR/CSi1aIk6eNy/Y4HqH
 BKfPmkmzACXrR7undFhqKtS/prM5FGH8qMvHT+puifFoQlK5c/Jm+vrPJDbi4h9kFf1K
 c75aWL29ObDKgxV0fuL9kDe9aD8oIZOY/fB0U815PefJ/Kpnn1Cx1OIFH7qq+FzhyvIp
 TqGdG8JAx68vj4SrLThIqLO1kzex8YGJ/jv+/OUIp0PmEGZzikLBP5hNHIzoUcmD95MM
 ziNg==
X-Gm-Message-State: AGi0PuaTMFBuVTFj6vYRcS8QF9nvrmxnu1tgB2RYItq7TLjE4dvqPmhX
 yBYik3iDFRBiXtYbQXIJrA==
X-Google-Smtp-Source: APiQypLOpDs/VWOK6XL5g7aYp34maDUCWLeFvZay6f1FWhW6f3+p9gzEOnFLor7ULmSrlOR2HJ54hg==
X-Received: by 2002:a05:6830:1e79:: with SMTP id
 m25mr4962035otr.36.1586540345966; 
 Fri, 10 Apr 2020 10:39:05 -0700 (PDT)
Received: from rob-hp-laptop (ip-99-203-29-27.pools.cgn.spcsdns.net.
 [99.203.29.27])
 by smtp.gmail.com with ESMTPSA id r24sm1518599otq.9.2020.04.10.10.39.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 10:39:05 -0700 (PDT)
Received: (nullmailer pid 11877 invoked by uid 1000);
 Fri, 10 Apr 2020 17:14:05 -0000
Date: Fri, 10 Apr 2020 12:14:05 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v4 1/5] dt-bindings: vendor-prefixes: Add an entry for
 Protonic Holland
Message-ID: <20200410171405.GA11823@bogus>
References: <20200330120640.9810-1-o.rempel@pengutronix.de>
 <20200330120640.9810-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330120640.9810-2-o.rempel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_103907_420952_DC2B89E1 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 14:06:36 +0200, Oleksij Rempel wrote:
> Add "prt" entry for Protonic Holland: https://www.protonic.nl/en/
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
