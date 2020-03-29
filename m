Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1FB196BEA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 10:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En1F3ESUzYP35JhVDbTW+yyLaYlFeMPtnKZYiYZkx2U=; b=tBYKGZ7Rf1L8Mt
	kR7hFxgtmL0S2hC6KuCn8DxWSl5oGSi2oxoz1yWdqX74Oo21MYWgq5JtaWT0jxQw0US5SncvYFkX4
	moqFPfemr8746ZRcmREAZVk39eQ1KH2jfqXKPg1XTciGp4XDVyRUyX/RJw1xITa6JBmpEjN9wtwFz
	f6bEAP+JByu66HR07/+snfK26q325c9rhh/SRr+4XevKGQCw6jn6BA8Y6LJGRIoKDJGRdWa8fAHf/
	kD5a2dJTUVeQkxrUHkT/BolJpdOvfDzYqn7KYL70ctdIcwSQMKMZv9x4Y/mGTLUhVdvayCHi89JPk
	7Cq9aHvaV7WLRrhKuUmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jITX0-0005Sm-Ui; Sun, 29 Mar 2020 08:42:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jITWs-0005RF-4U
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 08:42:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id o26so7089349pgc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Mar 2020 01:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solid-run-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mm21zqNKH5QxiJQcUlrn7BqWiGlQa1KdybRnnNJOm1U=;
 b=d4O8PS/FC8ChncDuAjXIj/C137W0Vb8+83OzAVsVoNQZlVup9O/8zBRDfpBFScCDuf
 f2+G4Gh2WpQbkgmIl4jYUSQbkY15kSvElrizfP16KI2RXfyLPifIzP7soGxlFyBn/CmF
 /3beC3x5nlyeM6WfaHHDCRkB1mdBsngKPqH9ya16b4RyZyRPfand3BiPeRN4ajjSkWbt
 pEqcjF4traFAIGBhAle3p8LXcFI306vytPurkB91t73vD3cwnTF4vijwgNRKq2rIDFKH
 4AeMJMlv7DuOXNNXBIClzpPI6+6QI2GI6zH31yAiz9IKjp7zmUw/12usEJPso7Fuukq+
 u+bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mm21zqNKH5QxiJQcUlrn7BqWiGlQa1KdybRnnNJOm1U=;
 b=L176k+KUt1sWq6RBBb3XihGJyE0DPbDDjH3xP7T4MZfilTCvKCPw+dYqeivPfTo1J+
 tf+Y0k/kc+ijq1Qv/PDbxz9pm3ZLuodsFRAQi2L5BzrcgqQqpaNloy5vAjXIDZoJC+oX
 vzB6f7Kj8JTpFU/gGE5mw/hDeMO+7tFZRbrKPeSlwCyzxU2w2g4Jwkkb5IP8uVvoSnep
 v69ZVsERbW6QCB0A3vEv+K9Xf4nBoZ2xT6rnPIDyqylsdChptSE0koc9jszTajuAR/s6
 /ibtpRusSF+08vGbu0o2BE4hDmnChYBiAcMmOb0mv9HToFGzJLFRGxQzpEhRJhvR5teB
 HybQ==
X-Gm-Message-State: ANhLgQ18YBvicDLgZqvLJr4uQWQAqrCJ6NAh3UV0lF3BQnjEiJTccwvs
 MifjqGBgyibCF0VzKrailQqcsdNK4fosQP7cljFObA==
X-Google-Smtp-Source: ADFU+vse3gxid5D8S54aiYHM0Z+bLIH5hv0RLHRgFuvgHaZ9yYD5mNB7wS/HLa4mj4i7DdnB3XxnGFy/rDQ/QNX3iU0=
X-Received: by 2002:a63:c64d:: with SMTP id x13mr7802548pgg.124.1585471366611; 
 Sun, 29 Mar 2020 01:42:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200328212115.12477-1-eichest@gmail.com>
 <877dz3el4k.fsf@tarshish>
In-Reply-To: <877dz3el4k.fsf@tarshish>
From: Rabeeh Khoury <rabeeh@solid-run.com>
Date: Sun, 29 Mar 2020 11:42:35 +0300
Message-ID: <CA+j0otmO9QEKuYGk54wO_su0Kyzdxaf9ZB34SMBXQEih+46qRw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: clearfog-gt-8k: fix ge phy reset pin
To: Baruch Siach <baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_014250_179340_2666F223 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Stefan Eichenberger <eichest@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 9:22 AM Baruch Siach <baruch@tkos.co.il> wrote:
>
> Hi Stefan,
>
> On Sun, Mar 29 2020, eichest@gmail.com wrote:
> > From: Stefan Eichenberger <eichest@gmail.com>
> >
> > According to the ClearFog-GT-8K-rev-1_1-Simplified-Schematic the reset
> > pin for the gigabit phy is MPP62 and not MPP43.
>
> Have you tested that on real hardware?
>
> The 1Gb PHY reset on my Clearfog GT-8K is connected to MPP43. Russell's
> commit 46f94c7818e7 ("arm64: dts: clearfog-gt-8k: set gigabit PHY reset
> deassert delay") indicates that this is the case on his board as well.
>
> In case there was a hardware change between board revisions, we need
> another dtb for that revision.

It's a bug in the simplified schematics since that schematics is based
on rev 1.0 and not rev 1.1 as claimed.

In rev 1.0; the 1Gbps phy reset was connected to MPP62; but that MPP
is not functional as a GPIO when selecting MPP[56:61] as SD card.
Due to that we manually rewired ALL rev 1.0 PCBs 1Gbps phy to be
connected to MPP43 via R8038 pads.

Rev 1.1 fixes this by that by disconnecting 1Gbps phy reset from MPP62
and wiring it to MPP43.
So basically rev 1.0 and rev 1.1 are compatible software wise. We will
fix the schematics.

Rabeeh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
