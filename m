Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603EAD7D19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LHa3Ts5muwOnkiRLCZ+K4xGjEowvNisrtWtKoeH1zw=; b=fyTajYQG2RDylH
	Ff3Majla/nvD5Q6cPEUmYTG+/oB2usTwsajJRwXObKVXSYRlRRwMJSfWXyY8pUTElmzNEXGQqzXjZ
	stryzuPnBpXveylXeLkdoLLj2v7p2SgPq9ZHG4Q/6Y9ovBXMOd7ezy9b7jQz2mjXYxbu6f/Thcl0G
	8GH/+eZ9KZmp48MIoMq0WKTw/okG2uCONqKriayqqvAFXgp75+5tgbPv+225F6CnWG0kuuiqCZ7mc
	HrLbi4/rdxdcgxYvE73D9z55A4+N6pmNu30pCcq112SdBl/trDcurT6wiCRetgZZNGNTqABCNda4i
	RDTrUlnhVQtvGC+kKSVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQMZ-0002VC-TK; Tue, 15 Oct 2019 17:11:59 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQLn-000290-C5
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:11:15 +0000
Received: by mail-ot1-f65.google.com with SMTP id 67so17602913oto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:11:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PqlcVUu7LJBkQ3UfMyNreWglkJZmOU4KXfvEBcyGtFo=;
 b=l4D6rih+olp8KWd60Xj8piHjU/gSxRQ0Nd53KoGnklDrAE71VOLcbcFImiwughzNpu
 aW0Q8UdvEWHqsN9mnYVs9cQvFtp98M+4vvgGlQZ4NBLEcxeFXfXiUW40g3RXZxbEHGN3
 ZsDXGee3ZFGLO+ro9wYdfPuEkhCwDEzQzZIxAKReq3n6ZYbZhLFOPD5c1aHtJsVDJ/VN
 f/C/hVQ0Q1PsJ02+ayrD1zt9cmim0ztT2xiN4jdagUK9l8b0J7hz5ygfeRJ2rcCmdy+W
 OmhMWpElO1tzMZ8JYHC3LGYS2jEr5wG3sRaOcZ36rVlnJds3sZ7ahZ6FjeXpetjavWwH
 Wn/A==
X-Gm-Message-State: APjAAAWPDdJDkNsNbVj/lUdOVdZ5hqu4NNfVpnnAI6x3/dy224P+o5aG
 n0gDb+8AlhKY4gs99NEjxw==
X-Google-Smtp-Source: APXvYqzbeF6N5qHLFyJv7c4cHAq77g41o3t5xO1edKQAiRHLUy71hTkZO6D7NjbQNBuIv3dkEN+9tw==
X-Received: by 2002:a05:6830:10cc:: with SMTP id
 z12mr28407257oto.1.1571159470221; 
 Tue, 15 Oct 2019 10:11:10 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r7sm6534251oih.41.2019.10.15.10.11.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:11:09 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:11:09 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 3/4] dt-bindings: rtc: s3c: Include generic dt-schema
 bindings
Message-ID: <20191015171109.GA11552@bogus>
References: <20191002160744.11307-1-krzk@kernel.org>
 <20191002160744.11307-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002160744.11307-3-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101111_527750_1AB2E5A8 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 18:07:43 +0200, Krzysztof Kozlowski wrote:
> Include the generic rtc.yaml bindings in Samsung S3C RTC bindings.  This
> brings the requirement of proper node names and adds parsing of
> additional properties.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  Documentation/devicetree/bindings/rtc/s3c-rtc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
