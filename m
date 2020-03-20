Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B29318CA8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwsQ8zRYRb/IuIyOhdm9wHhXxsTf4/0kgGVLSmCkKZE=; b=bX39UkJ/xL6N+j
	jCgkVruiSG5s3sDGjQ0LmLnq4Wzb8CRepBVe36j7bJbTyfZqW6KESE2MjRMGrrs9cRsjaCZGbgTn6
	fnJVQpvJ3T7gmbkuV0AvHma4GM9qfq7f7Od86SdJWXZvxRxRTiFjENBA63VzimXdtNy/pOJHogbH2
	WrYzpVTQS7jonTxy5/pyF4n/1Q1wiDzCMfAxc5Q9prKxvf8TnohMuB+RaKqe250kaXbRIg+4beoLJ
	AyolNT5WafetxmW2Cd6VPkKIR80FEpiRzh/zP9RmdS7/olIRv4et6bio/uuolir41gSMJrpLaLPpa
	+LZWm9S7VHMRsdZjRkIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFEB0-00061S-5b; Fri, 20 Mar 2020 09:42:50 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFEAt-00060i-Ex
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:42:44 +0000
Received: by mail-ed1-f66.google.com with SMTP id i24so6424075eds.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 02:42:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Uw3wiA4XeWZolh1RPXWdN7r53j8eX1MbrQwMp9+W42I=;
 b=uNdqQcUL6rDlRr0Wky9CzVNzI5aNkdWjRiTp21Ec3Gc//wC4NBrMfeUuZqi20ZRdjx
 yo8D4PFtbhGXKrmfGGPwhR6QrqQucCV+E3qvsJBrWoYdbfrMY15ZoW0NL6KkfI/DQB60
 AoO3TCGiSR1y090vqT9WFyN/eaimYJjnjCtDSK5W41eMAPxE0tjEk8QqyZxd6IYC2fHE
 cKDLum9adip8I5TrsV/Gl7xKRYIix9g2FtRsuJoHLxy/1TmU/vF2NQkqZL+5w96lQYGq
 1G92m1vY3CgTAgLQqrUnsQcQDI2WEb5y8BeazFPIfrKCa2sE8zpZbB+LKM3Y1GoRrC5S
 qvLQ==
X-Gm-Message-State: ANhLgQ1qCqxaBctHvenMkfkraYX2LUyps7tQR2wrTHkTHndSu1+sNP/Q
 K/2V17ajiYabOogdxknpcbmtIJon
X-Google-Smtp-Source: ADFU+vvsdpCNQuAuqnydlRyT9uYaTSVC3y6hyyG9AUkhW3Gml3Uvhp0Evu01XfV356gRQDmWS8eRtg==
X-Received: by 2002:aa7:c9cb:: with SMTP id i11mr7183183edt.320.1584697360968; 
 Fri, 20 Mar 2020 02:42:40 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id p7sm298473ejr.62.2020.03.20.02.42.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 20 Mar 2020 02:42:40 -0700 (PDT)
Date: Fri, 20 Mar 2020 10:42:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm/samsung: Add compatible string
 for the Galaxy S2
Message-ID: <20200320094238.GA12976@kozik-lap>
References: <20200319173411.20607-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319173411.20607-1-paul@crapouillou.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_024243_496241_2456C123 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Jonas Heinrich <onny@project-insanity.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 06:34:10PM +0100, Paul Cercueil wrote:
> Add compatible string for the Samsung Galaxy S2 (i9100 version), which
> is an Exynos 4210 based device.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
> 
> Notes:
>     v2: Move compatible string so that the list is sorted in alphabetical order
>     
>     v3: No change
> 
>  .../devicetree/bindings/arm/samsung/samsung-boards.yaml          | 1 +

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
