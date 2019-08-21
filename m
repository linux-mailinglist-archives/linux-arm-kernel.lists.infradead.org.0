Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F9097FF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIpigziIR50cLeek5W3QDCf7rv3hy59KXSDwGONwZC0=; b=DvPCkulvPu1l8b
	eINeppp6NYWxZklucf9hf3OnepdBae97nzg0sxMLjzSKQAwg2GbHp4pOD3tANjGIxfJqM0oZLHrGZ
	be6Bcvr70L3ir5uzD8FuLNATx0bqDqcCojcgQsfQZ9nM6VZtVESiTlcGYJhrxSxjCdD6NX9Vdzj4M
	N8eWku/VcSzDuirOSL1FID2uaSinttDpqjNkv4V7temuGboMd9/UYYZ0rnQcqw9YzCqZYrd+ki1MP
	ao4e8MjsUAEHXW02L0kxC9VFWvTkrfggFORxoNY4KZYR3HP+ulxkQHPEICU+K19NReY4HG/8zi4l0
	zCzgR0mxZ5iqD+X8xn3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TOk-0005E4-N2; Wed, 21 Aug 2019 16:23:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TOV-0004xO-Gn
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:23:32 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCDE7233FF
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 16:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566404611;
 bh=Fu6zfOBX3AI5KWtTSZafuQQAF8bGSK3gF/is0kKpuAY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AXjn2grXFCsNM5ogWIBC9CJ944d8x37WSc5awe9xY4q9jQ5I6RniduJ7ZIt616ghp
 F/IahXeBcOikhI+DQxT2zSObjNYowY9iIXaDUbwLLeU3XCDad0XXrzFufvsCbYe6Dz
 2IGF/YNzK1dAuVvz8d0rrsKykq3RvrTk2LmYucBQ=
Received: by mail-qk1-f181.google.com with SMTP id m2so2320280qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 09:23:30 -0700 (PDT)
X-Gm-Message-State: APjAAAWT4G5XQV5TK/AQB1OXXfcDRlpJsqFcsv1/a7Tp6eWQQ5UFYmS/
 FEKf6aSidWP2kELXz7e19U58hWcbyhHRHutdyw==
X-Google-Smtp-Source: APXvYqx7jliLwl32fZb5QjZU335HexP3hY8IwcnBzHIqSH45RRHoAYAe7+oJIjM94Ra+S4ayKwHMV4e1XUsgY6mOtIk=
X-Received: by 2002:a37:d8f:: with SMTP id 137mr31383435qkn.254.1566404610034; 
 Wed, 21 Aug 2019 09:23:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-2-joel@jms.id.au>
In-Reply-To: <20190821055530.8720-2-joel@jms.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 21 Aug 2019 11:23:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKXUsBdZ3x+zsJdn-2yLEJSCvLFjtUdRzUwU1vi6iiHfQ@mail.gmail.com>
Message-ID: <CAL_JsqKXUsBdZ3x+zsJdn-2yLEJSCvLFjtUdRzUwU1vi6iiHfQ@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: arm: cpus: Add ASPEED SMP
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_092331_614930_FFDD9F60 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Arnd Bergmann <arnd@arndb.de>, Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 Olof Johansson <olof@lixom.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 12:55 AM Joel Stanley <joel@jms.id.au> wrote:
>
> The AST2600 SoC contains two CPUs and requires the operating system to
> bring the second one out of firmware.
>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
