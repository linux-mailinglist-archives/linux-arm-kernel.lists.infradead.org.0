Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5A39F616
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7D9BkKbF6IRYfqNpdHCr/cZxT8/3pOq99Xvo5wCDIJ0=; b=EN0HH0uxPUxgpj
	FsCmwAoJEgKJ3xtg6g69u3Z3lZu03Oo6RZLrru2dEinc6bRsETpt1Pz0tKpAtLA/wLpvvkdz7DK7f
	vD4B6MO7hbfWrqh4/PBiNpvt5RUGWhRP8hkXVAQ6zpykPsVdDoL0DGOVqjngtRAfivvKNOBZiLlNL
	7yzJ2h9DgFLRC7zwGuI+BSEv19axs5KbzouHO5rMCks4zC2Z7uRiZzfPBngk815swjIVjK+eOPF7K
	D+p1aevWfEta3rp+CgNcxE3d/IYDBDcYHyL5t3PctqmFVSWQIrR+YFMHv1dKf1iw2482OcwRcoIuD
	WB8/65SGPDtydIA2I+Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jtj-0000DE-HE; Tue, 27 Aug 2019 22:25:07 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jt6-0008Mk-Vi
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:24:30 +0000
Received: by mail-ot1-f67.google.com with SMTP id 100so794494otn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:24:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mjdVVMQDkqNGF0eOBZhI/HxQmymiMnbH3eAi/1SeQc4=;
 b=ZbyhSp4+1MZao1iDMISr7aJyZpJXDvY2dFwLxEXI86haCNNUWCtYP74kVPByN13je1
 Kh7K62NedGGHyWZoTx+uTCNLQw2gK/7BxFjZ9f/dm2tbcnkaD4ga/SRfO3bTnuRq6Wse
 lpEq4Yv7MTmGy4YDYhj08Ngsmxc6+HbgvkrIUg9vIe5F33HzJIgn8rbuJ+Uw7o9VIbxs
 DGuNR915rF4EbpGoRVLMsO0jDjeeu4Vk5fXRDU+FX0Hqun2103pF9lLClcZGYOMXbLN3
 FNfWtFF4cdw+JaSKinRw1L4sF9yYObQLwH/NQ01hH+oLj/5ld/5hc2qENLium33FEZBM
 O2ew==
X-Gm-Message-State: APjAAAUOW8HjjgQVLIZW52Bhga26neAknpr0IfW4UX6Bawg0XZJvrbk6
 Vj4qmfGo00sN6iQOB9+5YtitLYoWtw==
X-Google-Smtp-Source: APXvYqwk+lluzv6pKjU/kkkAdMVAJPZi8mAQRb45qY3E88UmalXi1rmX7cue6EBW5ApX5eQDaCXD7w==
X-Received: by 2002:a9d:7092:: with SMTP id l18mr749674otj.217.1566944668217; 
 Tue, 27 Aug 2019 15:24:28 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g93sm269906otb.39.2019.08.27.15.24.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 15:24:27 -0700 (PDT)
Date: Tue, 27 Aug 2019 17:24:27 -0500
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 05/20] dt-bindings: phy-mmp3-usb: Add bindings
Message-ID: <20190827222427.GA16221@bogus>
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <20190822092643.593488-6-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822092643.593488-6-lkundrak@v3.sk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152429_509224_0FF7C820 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Olof Johansson <olof@lixom.net>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 11:26:28 +0200, Lubomir Rintel wrote:
> This is the PHY chip for USB OTG on MMP3 platform.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> 
> ---
> Changes since v1:
> - s/usbphy@/usb-phy@/
> - Dropped a reference to Documentation/phy.txt
> 
>  .../devicetree/bindings/phy/phy-mmp3-usb.txt        | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
