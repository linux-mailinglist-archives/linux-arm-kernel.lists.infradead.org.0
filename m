Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3AF1254D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 22:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptApOGWmM9jXjcZZamtV+iZ0+yc2ebvwjU5fYbagc+o=; b=Trr1M68HnouvHq
	bGZyWRUltUer1CK2N4x6U4p8nHTjLQB42Pk04dElIM6UMeThKUeRDuXvCyg41JrfqXirJ5uZbBBmM
	tydx55rLspdWtb4SVw0mM3PJFZU5YX5BXVaAuqVLWhZrM8KgHXDtvPGJzhbrUeM2opUlOWFgF+fxy
	W7bcX8snft8M6oa8oLyEtKdIJ0vgiij8R5eh2jCH61I6/fsa8s60VHyZi5X03uxatUIoNObMfUvWV
	MNWgHXwBenoM0UzHC5jk4J9It4GRPpqKYgO96M3O0RIADBjy3efmBWJO1MC/DWoMQK9EMt/F73wzF
	MwZF7i0ApAWaKvYlLwzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihh1C-0006SK-Pl; Wed, 18 Dec 2019 21:38:06 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihh11-0006Rx-I2
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:37:56 +0000
Received: by mail-oi1-f194.google.com with SMTP id a67so1978101oib.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 13:37:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=yEtBoa+NbXgGhZ+Me2AAaq3SAEvp18ZnsJATYEa97sE=;
 b=c7qog2xxUZjgGSdTJNK4Yjgj1mUy6S5k9OC6Tz4ZzWZN5fbn5/XGMbUqVzd65KNPkS
 RepP6GmEyKbDnCvApqwzngoWV+wHMkuTdt9LI8tR8cfEOeIzf5144BYbatnvNAc2DQ39
 pICX5YJWyyF0X+IjBQn0NR0O5yc1sD4VDcZkM1fZ864XATpOc7tHtuhI3PmTCPY+hQw1
 TTRg/kZ7NmTRmU1m8AhLKbPDjpA4tXut82A/uU9cf0qJIoCzfmLxSaSoKEUcuXGW52cT
 AqH6EsEv2isPxKbAoBp33CRzesEZL2bPKPiapAowCpenAwZ1TTLM2CLCUyQq2l8zr8Ko
 7Y+g==
X-Gm-Message-State: APjAAAWN0z7VKkNIHQFwJx4QZlK+0N7t54J1x+9ZctIKJmYd1EYvI7ga
 JwxiixaDRnTah8vF3ByW7A==
X-Google-Smtp-Source: APXvYqxNSk4ALCdRyx77djLgIoNn1IrtxlwEa7+9VvcHBjdabCjgJOvJKKwGqs6GqX4lDbU1YdLFxw==
X-Received: by 2002:aca:5e04:: with SMTP id s4mr1550915oib.117.1576705074631; 
 Wed, 18 Dec 2019 13:37:54 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v200sm1248153oie.35.2019.12.18.13.37.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 13:37:54 -0800 (PST)
Date: Wed, 18 Dec 2019 15:37:53 -0600
From: Rob Herring <robh@kernel.org>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 4/4] dt-bindings: i2c: at91: fix i2c-sda-hold-time-ns
 documentation for sam9x60
Message-ID: <20191218213753.GA31975@bogus>
References: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
 <1575886763-19089-4-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575886763-19089-4-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_133755_593065_FF904648 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: robh@kernel.org, devicetree@vger.kernel.org, wsa@the-dreams.de,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-i2c@vger.kernel.org, Eugen.Hristev@microchip.com,
 Codrin.Ciubotariu@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 10:20:07 +0000, <Eugen.Hristev@microchip.com> wrote:
> 
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> SAM9X60 also supports i2c-sda-hold-time-ns. Fix the documentation accordingly.
> 
> Fixes: 2034e3f4c9a5 ("dt-bindings: i2c: at91: add new compatible")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
> Changes in v3:
> - new patch
> 
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
