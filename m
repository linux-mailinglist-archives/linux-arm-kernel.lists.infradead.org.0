Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E004156DAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 03:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeE+XepMe6GqJf4iiEn1mIOk8HSD7Z6BkB+5X3rJjnk=; b=A/vEh0LmbXyyqE
	MDl6Xhc2oygaq1Qz8Qu/rqLgRR1u9f696AlxZjRxBK7M61P0W7MwhH+XlUrD3SNioeCsk6qjA+QgG
	X3bv41XP1KzwiJBh2/FybmcbsPQ9zzBBKMN6xKGXg5NqfrRrO1RX7Pooz/DOkVLRXDHbKFV0cKFNJ
	Clc9rKmcw1fIT5HCw6TpSfWNqGzBWtbgFJNvGfRZzxwIfl9hXdDJisBwSpju9xM3Oho2BxJ2NqEaq
	a/nyO9O7q2wq5SSWh61I9kra7yeqOzWMxjxFnSbJ7zE+F5WfdU6X6D5yhVZQ3sBZddtidwUFpBZ2I
	I1h8xWQ50fxslUYO5o+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0z7D-0004fV-9X; Mon, 10 Feb 2020 02:48:03 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0z76-0004ey-M9
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 02:47:57 +0000
Received: by mail-qv1-xf44.google.com with SMTP id m5so2531153qvv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 18:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IDCSxWhDLuTd8LJ5aB5xbWhS/YdWKP+avSFo/NepTNM=;
 b=jsIVEzjDdAnlls3W4DAXr0MB0WaQ+CAtxK394yiKvBLynQtiF4FPxwfE0fjOCufrzh
 /iuq2MoMKcrvuSqKRDRRpUU8o1TdlTl0/niKb8x65PC4QaRJTJDffH39jgiNXZaaE5nh
 pyIztvtIvTxamrLvVqxCw518aIwrgHzeVAgVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IDCSxWhDLuTd8LJ5aB5xbWhS/YdWKP+avSFo/NepTNM=;
 b=RfEvyZ63SzobYflpHVMhp25GJ3t8Aque2EWDUSZzlMLuAWT/u42S/B5ePBQ260EMNB
 oGinpPPyQaDfGSspN8JcnbzERYqO7W9vNGNyDYQ1V/0cc7QbtjthYvRHaRE0smAhxl1v
 Oq4EIZepizm4QWaRRHXvYzuVeLUulshuR56/govsLh6T/t4UGoqY3CJLoqNsi/49OM7B
 pdQIYDZ9YCHQ9wczeL2VPT0UgXdc8NzTYmA6WeQBy2KJ4tEN8i9OORMGPdCgpUEZ2dB1
 pyDfalOhVeQsrQva5o1j7XwIT6JOfPPH0B8JwDXGJjfIE7t/PwMKv+U64kacjhTAVAM0
 MkGQ==
X-Gm-Message-State: APjAAAUpkEqrxzm7dKYPQtOu+tAqgGXS2/rQZ7/fRGglXRyVG+U3F9fD
 N7+lueNL8rbVqrzVqtwhstiDz7ltPHO6MULWiJ0=
X-Google-Smtp-Source: APXvYqwuGj9cqaQI7ihHFaiQ5EXNe1MT7fdGI525zSMynjA/wwaIBfxWOGb0gwg6UBAtGbBtysYAvGRljf8gLEaT+Wc=
X-Received: by 2002:a0c:f6cd:: with SMTP id d13mr8172390qvo.20.1581302875467; 
 Sun, 09 Feb 2020 18:47:55 -0800 (PST)
MIME-Version: 1.0
References: <20200131222157.20849-1-rentao.bupt@gmail.com>
 <20200131222157.20849-4-rentao.bupt@gmail.com>
In-Reply-To: <20200131222157.20849-4-rentao.bupt@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 10 Feb 2020 02:47:44 +0000
Message-ID: <CACPK8Xe=szrpcY_3Gk5g6KqZ3UFBE03wH5MPx-BFOjKN39-EZQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: aspeed-g6: add usb functions
To: Tao Ren <rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_184756_721545_9C9FA2FF 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 31 Jan 2020 at 22:22, <rentao.bupt@gmail.com> wrote:
>
> From: Tao Ren <rentao.bupt@gmail.com>
>
> Add USB components and according pin groups in aspeed-g6 dtsi.
>
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

I've applied this to the aspeed tree for 5.7.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
