Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4827B19F399
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 12:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLmitBBPmwrA3YUlTHe8MwBtDow4dY9LsYrmSCCvb/M=; b=YMUWoijYfGDWR0
	4AkwNaU2d0sHQWu1y0z4QkxPOwWgTxWdLYrYyMrkEznm5RCYhF0WJ2YGt0ejRgCDPuwqGAcnrYxkn
	d81wUgM9k80K02K8hUxm8xSaNBB8UnFOTqx4f7/iLjR7nmrY5DmWUb0Gugcxkp4Jg97JX6ONpmART
	ChN4+oCauKLC6zufJj7db8vOAftbljVk5589dbxvyb7RdL0hBD3QWg4jPfxgfzhl2nnSF190z7srt
	O2/pJ1NKEF5yFGjQWWUwzc4IK435pN1K55VutcHrmjfzmyF6313IDzgJvP24rmnKOV8SIitrrkX7h
	5k8mFqRsqlok7uSB+4lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLP5b-0002sF-4N; Mon, 06 Apr 2020 10:34:47 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLP5R-0002rv-QB
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 10:34:39 +0000
Received: by mail-ed1-f67.google.com with SMTP id m12so4886191edl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 03:34:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GCDV/KSvNbnbn8FBlMojoXonpi0B/XmPXkgkMx9qThM=;
 b=SgnWhnn0sDqLu+7xTP5T/CUJK8mKySH2G8P0UCOhLD2Jd0fscTJUn0eTdthPYYJn4q
 PGgzrl/G/tE8DsubZeFkKtPD08Ags/3pptr+PaGi0gxNfD5QOT/b2ZEfKOShsCs80x6d
 sW2wwddOU+Zp9jWKa+8XXFhIk9rCW8eQow6XzQrNv2GpzaCHKU1Fk6ZyIVM6fGkTIcov
 Aobc30u1AI4oNEQx5QwoodKOrQu2GdxMsJDTYSIx6hEbzid1dCpQlpIALHAsC+53QO2K
 2sCIHbcOt8rMoxG+qdlEjiaeGtEj0Zfcbev4UAwezx+wEYgdwGcNDTvg8U9L7SFv1zTG
 lZvw==
X-Gm-Message-State: AGi0PubOu+LP/K1gmJBjA65xjwfClthJgfCQzlepb2qI0fBA1p+obQ5e
 JdTbybyWrSI6XeKpup1LRWw=
X-Google-Smtp-Source: APiQypL+eEKtkUOFf2EjtwdZr1+7NBkU7zGNKIK4C1nCqA7ypoV3kzmuidwmBCJ4nftZsbAUPe55Cw==
X-Received: by 2002:aa7:d042:: with SMTP id n2mr18050403edo.374.1586169275172; 
 Mon, 06 Apr 2020 03:34:35 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id f13sm2407349edn.50.2020.04.06.03.34.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 03:34:34 -0700 (PDT)
Date: Mon, 6 Apr 2020 12:34:32 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v5 2/2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200406103432.GA16798@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200406103158epcas2p2aaf3ef769a232dc28c04cb4ae91373bd@epcas2p2.samsung.com>
 <20200406103127.17105-1-hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406103127.17105-1-hyunki00.koo@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_033437_849367_3690F9A0 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 07:31:25PM +0900, Hyunki Koo wrote:
> Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> 
> This is required for some newer SoCs.
> 
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ---
> v2: 
> line 954 : change rd_regl to rd_reg in for backward compatibility.
> line 2031: Add init value for ourport->port.iotype  to UPIO_MEM 
> v3:
> line 2031: remove redundant init value  for ourport->port.iotype 
> v4:
> correct variable types and change misleading function name
> v5:
> add dt-binding and go as first patch in this series.
> 
> ---
>  drivers/tty/serial/samsung_tty.c | 76 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 64 insertions(+), 12 deletions(-)

For me it is fine, although Greg wanted the write functions to be
consistent with read around default case.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Tested-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
