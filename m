Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2318D1C9FF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLKNW+ZyvXKS7E/rNkbOFVPAwOzZYtWfQQB6qAgIdR8=; b=Awcg6ia6HwWPeD
	evY2Gr9Py/74a801OvQ8IkXR2unn33g3YH1tBwKBwQlc0ubiJlsrhegsxYG9ISxN3Kudq+z/aOBbE
	mGSkPBKs1FzZavYyMa7bAXyT5p7BnL4SbMqZQ/gkqA0K+dTxdzO/uCcjHMNHK/fBlOMRNntAfnfc6
	M7F8h00zoFj7IlFSzO733lv9tP0dXP7MO66e3F5zl+ahwGE2zWkmFHuDpPpsj0ekKihMTUJbtJhY/
	MwKQjrrZJPS8GpOQyRNYpbnEFxufyC/+9BqkmEIKixg2tH6zV/Z+0VubNtAyF2CbSB9KF/DPE5Ylu
	ewhTBz23CkCv+V/fdOxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWrY2-0004ag-3K; Fri, 08 May 2020 01:11:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWrXv-0004a5-7M; Fri, 08 May 2020 01:11:24 +0000
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com
 [209.85.161.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD04A208DB;
 Fri,  8 May 2020 01:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588900281;
 bh=SRyTRR0ofpehB0QrbI1UPDJ/+BG7MqfbSadDor9zC3U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=c+rw2UGsXPBNRL+un0z9oA50sOLj8SneEQspZzKSvbGztUfr+/1WYCD+fN55XLNrh
 SSeV5UbAoAypBDJpzcSJ+Vlr69yFrYW74mm2u/AdTKMxbeHt17dk4sQ3Hb9bOXVIaf
 dEKSa0AascySxTZYqkhkGbDWI6UhwFqHvkRuuZtw=
Received: by mail-oo1-f41.google.com with SMTP id v6so1808289oou.4;
 Thu, 07 May 2020 18:11:21 -0700 (PDT)
X-Gm-Message-State: AGi0PubTleUbHObCFmENUNrSVCO83/hK/S8XqIeIdA2jRSQrdRuXAKl5
 9rToTEPNAWmBy7v9d7Lpir2AmwSSu9dy2f3PtA==
X-Google-Smtp-Source: APiQypIJrtYxVWl5r+pD/EJOcnRBaXUluMS28Zu3xjxB8gNg2GGajVyDihdMtWJJ8AOfidD0XwNySGRNmFShbAmj8z0=
X-Received: by 2002:a4a:9c55:: with SMTP id c21mr345333ook.25.1588900280975;
 Thu, 07 May 2020 18:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200507201544.43432-1-james.quinlan@broadcom.com>
 <20200507201544.43432-4-james.quinlan@broadcom.com>
In-Reply-To: <20200507201544.43432-4-james.quinlan@broadcom.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 7 May 2020 20:11:09 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK6mHhw=9gCyyS7nP35WcqQLQdKhgNXYPSXwkhVe_8t0g@mail.gmail.com>
Message-ID: <CAL_JsqK6mHhw=9gCyyS7nP35WcqQLQdKhgNXYPSXwkhVe_8t0g@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: PCI: brcmstb: New prop 'aspm-no-l0s'
To: Jim Quinlan <james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_181123_288554_DD4987F5 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 "open list:PCI SUBSYSTEM" <linux-pci@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 3:16 PM Jim Quinlan <james.quinlan@broadcom.com> wrote:
>
> From: Jim Quinlan <jquinlan@broadcom.com>
>
> For various reasons, one may want to disable the ASPM L0s
> capability.
>
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
