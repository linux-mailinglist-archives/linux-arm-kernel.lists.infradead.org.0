Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E73175FAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INf+2lE0iHNtUAyvPO0uYBTdLz2Fn/0zjC6AhMjiQyI=; b=Kf4yP8RwGU/hRZ
	iJngDYUkEz6IBE6jJezxkb/mk90C/u/gKQJQH3AxXyX28H9GCJuQCvcOH8N3pWQ589iGdqKPKJK6J
	65iRO+Ov8dL6FOwxT5HVBccAeLnEAIRAkUXWItvDhCg8fsGSZowg/Opf4bEmfy/CscE3M7A/8MxGR
	LB6SgONsw68tBuAmCS+MAZAt6RAOOqJT2lB0WynSkqlYqBI/P7/dG8eKi8/8amLtg4AbaWwFlSjzC
	rdzP0eMtjzNvxu1Y2pJekUealIAvEWh5gmhEXteV11G277tAM7nbr+yffHiu0qcNS7HZnKjPxzX+i
	Nnnubdow7yBL33zlugqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nyQ-0006Ho-C0; Mon, 02 Mar 2020 16:31:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nyH-0006Fz-Lx
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:31:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id 6so3491541wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 08:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=9ekD/wZU2juB89x3ikSs3OkvRfctZBZxxFo0UhHx8JY=;
 b=eoSemUK7ZEaNlKrg4HP6Fdxa2bm/AR3bYZEjvkL17es58SixQJTcPwvyZwNOpDQ8A/
 MQG1tGVsfuxNYI4m+NO7zBAFHQJmYENCdyK126T8b/+5n0RtMHVIIRFI3KCqz1cZ47cu
 ymX4QQ8l8KrH+NmiJS8zfmW0n9b6efekoW9GjqwPf1dHmurPNtTQ/bwcogGAuRZ5Kslc
 67wzNcuxqJnr8n4Ibt5O7nzmF+gMa81KoaNWC7OJdB3nWYNkVVKZZ+TVtLC6ORZ6eDA/
 ep5tQy1soUtgwjVcNFtV34CG7UMIljnWx4rgW1tykurhCb0F+8LSFTJ3Mj9v+xvo+Lss
 gJJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=9ekD/wZU2juB89x3ikSs3OkvRfctZBZxxFo0UhHx8JY=;
 b=JmomJ/HtCFPilAXtbG0AM4hZbL5SAnrfrMgtUQk0U3j5qfe7AA8WHwqZn9Em5965f9
 9OHsGgr6SQaD0oe7k/4O2WkvgVmQ9FshwuPT58XwrFYunwbBJN4ANyn2bqLBOCR8mG51
 KiM8856/MRxeZd181/ep4v6vVHBvxHQF1P7DHupafKGVywZNQhnOeZetklpxm/7MzADE
 KGOsohbHDBfT9a0d47BfttLOgE3cQ91zRfAwWdYlVkrQwNx4OYqLplqM9dEXub8fR94N
 6j/rxwtkwnCGiKY+jaGNa7EN3Om5Lj0xrNKF8Z5tcnWiL6Pru8A/xux41Ap3TsTvZj2b
 RtMw==
X-Gm-Message-State: ANhLgQ1dyt80x7J2/7iRy3foszWPFXXkIXauTIRzxiyQEIlZidDQoxaj
 qA90jQ4/LQf7fzrU21ah5kSZQA==
X-Google-Smtp-Source: ADFU+vsO4oMThfxe4T+3k8CrA3b+cufx1zE37BxkfjQy0S1+vSAU7EwEHK50HsH3LU0tLqS86uSXvw==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr250047wmi.0.1583166667736;
 Mon, 02 Mar 2020 08:31:07 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v131sm17357885wme.23.2020.03.02.08.31.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Mar 2020 08:31:07 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jianxin Pan <jianxin.pan@amlogic.com>, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: power: Fix dt_binding_check error
In-Reply-To: <1583164448-83438-1-git-send-email-jianxin.pan@amlogic.com>
References: <1583164448-83438-1-git-send-email-jianxin.pan@amlogic.com>
Date: Mon, 02 Mar 2020 17:31:06 +0100
Message-ID: <7hsgiqra5x.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_083109_719647_F384225F 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen
 Rothwell <sfr@canb.auug.org.au>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jianxin,

Jianxin Pan <jianxin.pan@amlogic.com> writes:

> Missing ';' in the end of secure-monitor example node.
>
> Fixes: 165b5fb294e8 ("dt-bindings: power: add Amlogic secure power domains bindings")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> index af32209..bc4e037 100644
> --- a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> +++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> @@ -36,5 +36,5 @@ examples:
>              compatible = "amlogic,meson-a1-pwrc";
>              #power-domain-cells = <1>;
>          };
> -    }
> +    };

Thanks for the fix.  Queued for v5.7.

@Arnd, @Olof: you can ignore this one.  I requested Jianxin to send to
you thinking this was a fix for something you already queued, but it's
not.  I'll handle it.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
