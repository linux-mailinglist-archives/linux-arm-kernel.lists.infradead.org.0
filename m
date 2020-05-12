Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12E71D0190
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/nq1EVv8e1txNTmwMnHKM5iPASHtrTQLDEA1Oa1fxk=; b=j5YSfXmXOCCiR0
	A21MSNhiAF9iXUcDptD8pasSpyRJdqEnJRMjQ+U8p6z72qfKiZ+LnrkTMKPWYYJucUuJ6QXpEMl0r
	Kl2eCGxeefMgFDlxPZQZ6fbHJbESLi7bv6iq0CWux/BCB1LKVy41skxVytnWBCTk/gU9cJ+93FYBB
	UUXk7f+hb9/P8ZpfflsjhI2lRU28TOWfjq1T7p0W9bywBEzdROW+GNMS0Anf+fMd39qhlza0nUBYV
	b68E1ZrOSAQ1geI1QnrTyW1woyHxxPQPIX/QJWcgpGtlA5gQaliNF933c6Ui8y80CxiGFcosmcMLk
	uHFpPxTGYUNqVo8V1wtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYd0d-0007B9-Sf; Tue, 12 May 2020 22:04:19 +0000
Received: from mail-oo1-f67.google.com ([209.85.161.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYd04-0006qo-J0; Tue, 12 May 2020 22:03:45 +0000
Received: by mail-oo1-f67.google.com with SMTP id p67so3048991ooa.11;
 Tue, 12 May 2020 15:03:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jsnWB/RZuG/6JISv3zODzhF3cX24dCFlPTbEBhn7oxU=;
 b=ZImuKfYeki61lLbG6hyab4nIn4Xd92XGpVIGyYqql/WhPXwYyWqwnJA1peyBlZs+kd
 PuQa58xuVshuhVsfUsZrA8DI3kuxr8Xcv2PJrNowVCPUWBfQUwYcYSCYy8TrUXs1s9gg
 cpW4dUkEYfNGwq8Ohy2kglHc7WGqAsn6n06t5hfoUnrNmuzb2XDjD5/x0fYMkwrL5jS7
 m8Nf+lMGJe67ci06XY61u3YXC0J+fIadNrQ0bcyPfQ9/V92XFhM62HWfcLQuZXzpYJBR
 oFrUHZmqpWeSZB1HfDSxwkJ5cPgKFeZU31VSITbDx0GZrgRNF83uWjFL1QkJ93bBbftB
 6PXg==
X-Gm-Message-State: AGi0PubS1dL3JlMH3JiwSEdiRyAoJeLV31ysLAXAKicesRnKahw+sZ5K
 z2pVbt7ArMRvxD6RpejLuw==
X-Google-Smtp-Source: APiQypLQGiX0rauKDDSSe0EY7yJ93FyTpXKE0zOptqWqXNeKHsfI9Bzl2DiMfh+5vOQd4k68p6Km5Q==
X-Received: by 2002:a4a:6441:: with SMTP id d1mr19963201oof.10.1589321023626; 
 Tue, 12 May 2020 15:03:43 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j186sm5659962oia.31.2020.05.12.15.03.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:03:43 -0700 (PDT)
Received: (nullmailer pid 14161 invoked by uid 1000);
 Tue, 12 May 2020 22:03:42 -0000
Date: Tue, 12 May 2020 17:03:42 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 2/6] dt-bindings: phy: meson8b-usb2: Add compatible
 string for Meson8m2
Message-ID: <20200512220341.GA14126@bogus>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
 <20200502114752.1048500-3-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502114752.1048500-3-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_150344_624253_8202F9DE 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  2 May 2020 13:47:48 +0200, Martin Blumenstingl wrote:
> The USB2 PHY on Meson8m2 is identical to the one on Meson8b but
> different to the one on Meson8. The only known difference is that Meson8
> does not set the ACA_ENABLE bit while Meson8b and Meson8m2 do.
> Add an explicit compatible string for Meson8m2 so those differences can
> be taken care of.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
