Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24919E816
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIKtn696BEZrj0kVhpiqV0InJlve1+ibTDG2eZesdL0=; b=CTDr5nqKJGl7Wh
	uCSJC+31E3SZdv+bDQhe+8Wor8BJd1JJughpa6O+YJNYti4xKRgkBJbFQD00DXzFeVdKkqNbyT+RQ
	VwL25NtDRzeBFRGQ52MSATTwpVSLklknW9z9w2JLwvSL+8xenbqaUj2WZRGRCRxxq/ii2uDTPOOkm
	KS1s3/ztgAHW/flZkzJrP2EIWscW0PoGcH5RaqwW8r5DWU0ZcEyyJL++uhYbDqLQXB/lN1zIkOrut
	CqmMBMSMQ1w8T0YmhjuRDV9wcnPh4nep+aKk8ky1spf+IXiAXLpBMvKMNYUSc0ClamPkq+RM/MgOM
	AOXb2Zl4pRkJjvorgfIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2aiD-0003XJ-K2; Tue, 27 Aug 2019 12:36:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ai1-0003Wp-Dd
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:36:26 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFC502189D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 12:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566909384;
 bh=dAxS1WqRV4b7iS74EzUk2CY6pRW9CCrAG7RucQHWt7g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=j2dZVEnx8ktgPjH/Vaf3xrdEzSnGNtSFvQb0SfS1RJp1Yw9C5pQQz94rLgPcHRpLf
 m7WTkmYD4w13R0zNQJGb0uqtomWErkOaQXu4YeTNlw29sJP3iq4BPmH4EU6v+ms0NV
 w1MKxTKsFpWKD6IwEwRK6gMlCs/hAjpvxJHiQfYY=
Received: by mail-qt1-f177.google.com with SMTP id 44so21032339qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 05:36:24 -0700 (PDT)
X-Gm-Message-State: APjAAAUjAMZ1tAQL0yN+i5c864qNpbazvTKLBwTDNm5nTRpHtfSIa5hJ
 c0cHWrAC0B3R9VtHAVbtbIZfQVnxGfNrce/I9A==
X-Google-Smtp-Source: APXvYqyqEKW+TR5bJFFladOyjiCxYJlVjy2VJ+VJSQICBWMQEZulSFTqlCQVzHkPkq4vL9h4hPWYtKn93pLIWauILws=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr22819140qtc.110.1566909383931; 
 Tue, 27 Aug 2019 05:36:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190826021620.11915-1-andrew@aj.id.au>
In-Reply-To: <20190826021620.11915-1-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 27 Aug 2019 07:36:12 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJsLt5FjKayO9ksksrpXDFs3cbAngcQ21xhZYz3JLG=7g@mail.gmail.com>
Message-ID: <CAL_JsqJsLt5FjKayO9ksksrpXDFs3cbAngcQ21xhZYz3JLG=7g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: aspeed: Update example ranges property
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_053625_482905_34A7F85C 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 9:15 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The example node in the binding uses the AST2500 compatible string for
> the SD controller with a 64kiB ranges property, but the SD controller is
> allocated 128kiB of MMIO space according to the AST2500 datasheet. Fix
> the example to correctly reflect the hardware in the AST2500, however it
> should be noted that the MMIO region is reduced to 64kiB in the AST2600
> where a second SD controller block has been introduced into the address
> space.
>
> Also add the IBM copyright header that I left out of the initial patch.
>
> Suggested-by: Joel Stanley <joel@jms.id.au>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> Hi Ulf, this is the follow-up fix as discussed here:
>
> http://patchwork.ozlabs.org/patch/1143090/
>
>  Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
