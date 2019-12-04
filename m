Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61854112FD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:18:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W30d61QM86pA1ZhJJljYgxkMN+Kod00h2pxGkwkVp8o=; b=EIRCQnQ90wzWBf
	mwh2cmDuI1GnvaW9LEyuu9qZe5kgScLkP21jHrmoLFZAajboUDu8ICmUzRNwyACllEo1mJRb6WiC+
	eaJuhsmExYkQ9lVLWk01WCblcJqF2G3DtL6Zu2lf4tgcKKEJO3U3PTiz5+nKqQngHkO1H2KQgOlfn
	j40miriJvhwr3sd4wvyNb+OcTuoJo300GQi2AMUNLn2ZZ171jzfjfKj9e8H4u5zyoWHGI2rWt7YwM
	EgiT1V03IfXpZ06Gtw+yt8o7+C8CXwM6YKxgUlIZI0LNOs458Lc5IuRanWPTK6Z+eZBZsCC0OpCRz
	S8h2vrQoG1BroDFuLKpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXM8-0006XP-S9; Wed, 04 Dec 2019 16:18:24 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icXLy-0006Wo-UX
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:18:16 +0000
Received: by mail-oi1-f196.google.com with SMTP id a124so7313619oii.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 08:18:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aTWv2kRnd2I8BNSkWTbrYY8IgWPRpV337Nl/skN4/18=;
 b=PhYS0aDeKkU7MRhXIHtWs3D+OJVzoH66b4F5tFmpjLFAJqYpGVgMQto1sht0dbukoe
 3zc85fzrReK3lkPxoygH5Q4RiRIVHIOheAPjL8+5jmvP3AmrlduBUMhWlNvNQd29EQK7
 Vt0Zee0SqGCNcSzNlxu37LGCRieF7whprA0xPHYy1h856kjXr0a8dkdNZ/jRmLdQpnwj
 lFwuiVks4ivXvSsw8jD/7FS3YSoD1jleJF53fPWcMMSOpU9kbrmd3H6mXUYPFdsm3lKm
 lgETx1yGyXSRen8RGC+IWDQLJcrEVIiPikljylv4OQ0PtoUPF6Z0PKHxwRq8BGEBFeZA
 oSUA==
X-Gm-Message-State: APjAAAXhxr8ahr+h/OoYm79npXY85byv7CukxHG0Bgn0ypFEpXMTNbsR
 NXjbOzdu6nYvElTozVDXcA==
X-Google-Smtp-Source: APXvYqyt+h8GQhsCVeuL82IwwTbvEJ0hmhypUlSo8ZBJTW/VpJLHjXYM59W/NvvtbyQw4yw2F1MCCw==
X-Received: by 2002:aca:530e:: with SMTP id h14mr2986671oib.105.1575476293512; 
 Wed, 04 Dec 2019 08:18:13 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h22sm1588639otl.73.2019.12.04.08.18.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:18:12 -0800 (PST)
Date: Wed, 4 Dec 2019 10:18:12 -0600
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: crypto: add new compatible for A33 SS
Message-ID: <20191204161812.GA24881@bogus>
References: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
 <20191120152833.20443-2-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120152833.20443-2-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_081814_983096_56461F26 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 robh+dt@kernel.org, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 16:28:31 +0100, Corentin Labbe wrote:
> The A33 SS has a difference with all other SS, it give SHA1 digest
> directly in BE.
> This difference need to be handlded by the driver and so need a new
> compatible.
> 
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  .../devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml  | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
