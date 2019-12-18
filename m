Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEE9123C87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 02:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7U4YV3SEJOqWomVCDsF1DRKFTaiEEwvKu87ROu/4s0E=; b=g1Kdu3+2m14/yt
	TS0RJz79ZAOuqcLRCQK+Xyz3gkIJUetAEgQIsPLNmIJAuzL/UlCBVwS4Uc+A4uG6NnH655yznuO5q
	nr9SldE1Re/H5AefMkxhOIog4AD2rm6aAveYUUBXFD/3UuA3/J7DJpTeU9ujKxVAeSDdwEI49vtOG
	AqHmhbt/F1BpPu8oOg+K03CtdOCLiia+HeFLnYCBCxbGA9oJ7/UxIY7MBRh04DeVo1/gs2EVa6Ask
	DQdAurQVPSCZEomWRUiMF26+4HmQ5HVI0kx5bzJxOeDfhJa0bnNjCR9u+Ef2UDQM3MXVhEXFH/OAU
	PYVUi8J+puP5Q0Aflrgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOJe-0008KM-8y; Wed, 18 Dec 2019 01:39:54 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOJT-0008Jq-0E
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 01:39:44 +0000
Received: by mail-ot1-f67.google.com with SMTP id w1so333776otg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 17:39:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=O54iOlIKGxKbflN7jepMznsdZ8rH/t4iutnsk12FMqk=;
 b=V/b84Ud4ZoDbdpaCRP8RcKt4tKwl5eh9J52OSR7CWK/tGOPpgdEbRN26LNwnZc7CN2
 MyyN61/nfaidiMyFs2IQWgLGq104BlNYsT7fiDpAK26uvbOhujlRakpSZESkRw2hhcVV
 ja4FWi2RQs0vPGAwZJsEs5/+aRe/dFjcF2EL2fMuqaBjM3rHhwrql2NSpetyghVqDYOt
 XSw55EHLtAfc+mLzsl+98S8xjH+yinQNNt5+tbidwTAJK2uZbAXYONGeSxq6exZ3SzUO
 lZnxI6kFMST9XZ3/pHmn5ONL7qit0w2uvKdMdeHp827AMTfOVKwh1RDrCqM+p/a1HY8X
 V7xg==
X-Gm-Message-State: APjAAAUWegv3zDWG5tJJT5Ze11vMeDbwK/QbmXu1ZKUm66XXeioGeAH+
 bOX7bQ4tnBIzMIdOsoechA==
X-Google-Smtp-Source: APXvYqyjLVhBZPQqZfhgsyf+C1l1DHQlzCFojrWiPNAhW3mO5/s9P2tjXE7ddXKQ2jWGwLiiGoLseA==
X-Received: by 2002:a05:6830:1e5a:: with SMTP id
 e26mr207595otj.351.1576633181056; 
 Tue, 17 Dec 2019 17:39:41 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k67sm257961oia.32.2019.12.17.17.39.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 17:39:40 -0800 (PST)
Date: Tue, 17 Dec 2019 19:39:39 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/4] dt-bindings: sram: Allow for the childs nodes to be
 called sections
Message-ID: <20191218013939.GA26807@bogus>
References: <20191209093441.50694-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209093441.50694-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_173943_040185_B15B26B2 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 krzk@kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  9 Dec 2019 10:34:38 +0100, Maxime Ripard wrote:
> The generic SRAM binding currently only allows for child nodes of an SRAM
> to be called sram too. However, these are also called sections in a number
> of device tree, which seems a bit more accurate.
> 
> Let's change the name pattern to allow both.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/sram/sram.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
