Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906831E08DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Zf2UAiTD2lAEKGZ1Ba6IBLVLFgka3yvl3Q5M98VeIc=; b=MET1vSGfp7in1Z
	hUyyabTDmZdSxtPoiYHK+VoEnIi3KU9yHRpncJq85zwGmIlP+4/UnCCKi76gzHBdcrb1DkDK0KSoP
	NDAlJHYKWxuuovcXiSv52IVbxvqea7l4Vp3+i+4mkSIURN+4mbsAInvaXMRmCwG0Y5vFPOpVBZV5i
	zSWUIJVNNtVb/8NG0Ky6cgpsFZ3p6JMuI5COfJtyxpFTKkmEXC93B+2nbVGJMMaphXYbRdYOCpwWK
	wxyU2gcJIlS2uuZqperAFE+T9gAgxWarl00bO0umSn4nRt4QI0t280kidEPvr74w1J5NetWDCi7Wk
	/xlttfFqjHZd3Z/xNeWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8Wc-0000Se-Lq; Mon, 25 May 2020 08:31:58 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8WP-0000NH-R3
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:31:48 +0000
Received: by mail-ot1-f68.google.com with SMTP id d26so13275820otc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 01:31:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BOHOgMSOtvrMttT8QDeSyXiqFQqVxvPloVdz2ZAYSg4=;
 b=NfdfvrhGPlQSUCNB/4Vypb6ywDgti6DA31TQi2c14yKQbYlgQw2gBeJjbj2iuLpFA+
 2niSwb5nXr0muX1B5O30UM3DNLcR5QgVXP6inud2tTKPJ9dpCGTiiV5duYPJ+orfxJ54
 2Ft9qwz3pA5os61zk8yJaBsZNOnRFWGE9eCuvodMg09DH6tU8SKggEt7THm/6lFX4qks
 A6OhOORpUSqu7if+Q3DUastCxCaOn/83nXZEOPIO3xDWrtXk3yExN3UT5/nV/JRhojAI
 2V9TdRq5EsyUumeEV5KPL9rE/CwLVHW4ut6o1ws8GXGB6YoON5QbpR9VMXTh1h4yqSCm
 Dd5w==
X-Gm-Message-State: AOAM532csnj0k4B5RbKCctU8kdDnCZvQUdPKiVCfeFrGolBZVHKSyVJF
 jyM59Pp5WGgPls0lsZ7ZMWhlTdVFq6FMSzC6A8I=
X-Google-Smtp-Source: ABdhPJyoT2hc9i8qo+WU54flh8sYdL01Pv0pgeI/xRdS+cr2nb+efcfjcYB89kxAekLWsC0yEbwE9MWXQt9HqgEGxdM=
X-Received: by 2002:a9d:564:: with SMTP id 91mr20466217otw.250.1590395500493; 
 Mon, 25 May 2020 01:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200522234832.954484-1-robh@kernel.org>
 <20200522234832.954484-13-robh@kernel.org>
In-Reply-To: <20200522234832.954484-13-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 25 May 2020 10:31:29 +0200
Message-ID: <CAMuHMdX1QCfcxPzpTOEJXYfeAo3=LzuEQxCNFn9VQJa8hN4QxQ@mail.gmail.com>
Subject: Re: [PATCH 12/15] PCI: rcar: Use pci_host_probe() to register host
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_013145_890000_BC108CCB 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Sat, May 23, 2020 at 1:50 AM Rob Herring <robh@kernel.org> wrote:
> The rcar host driver does the same host registration and bus scanning
> calls as pci_host_probe, so let's use it instead.
>
> Cc: Marek Vasut <marek.vasut+renesas@gmail.com>
> Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Cc: linux-renesas-soc@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Thanks for your patch!

Note that this does have 2 side effects: the "linux,pci-probe-only" DT
property and the "pcie_scan_all" kernel command line option are now taken
into account.

Regardless:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
