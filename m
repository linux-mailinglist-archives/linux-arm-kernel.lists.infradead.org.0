Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696581536DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 18:40:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jgjXvcCDuDA0XXhNUBAjhFnxf0lZdNEJ3DPTsPpcyqo=; b=F011s8EIyz9885+phMExsG8fi
	nI3j1MUpJg4hpLT6T3W0TRbjKsUh3EdGH12/J/Y6HLNk/a1k1uuZuxpUgjlcjtpKs+mZWM4aQzDRd
	Iw3cOZRyG9nzHLyZ81pLCbrs+p1ArrQbN/bavyomwf0vkqRkfbaXlKOyQEv+Gwj6NOwJmn26U6rD0
	Zfr/D64QgSc73AtV6dCS3VfN697YTBMCtQpf0rnAOBv4VQkpwE9sz9WrnR/78uL6zFC6quhxR7R0g
	VdPPdc1dEZVLmDkd3Uhl0IYXeUK126kzB8sGeIls/cErrG5nMrDvL7j2dW5TisDLUYjng3RFwWp3z
	FqyArVHHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOeY-0007NN-63; Wed, 05 Feb 2020 17:39:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOeF-0007EV-Er
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 17:39:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id 185so1573052pfv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 09:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=aO5p5IBLxlU8LmggP8EmaW7PqxkUQ4rk9prwoiPWExY=;
 b=LFEU7F5uRUHvjlHxU71R+6/md8i08kseXhFg8q/mXFNEvx4HMeFGZljgfUttHo5+J6
 kV7Np7W1PZZ38VSOWJtq3+lnECqnHmlydR90zYKVffplVYCGHkFqnG0mtYWUPxioAWZL
 UMsKw4DME/VMUvTxq642siQQgTIfXUOghivlg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=aO5p5IBLxlU8LmggP8EmaW7PqxkUQ4rk9prwoiPWExY=;
 b=T6m/+7NhdUmbBjfW1U65fssI8zrF7YHz3c+euqtaiw8KGOqnfxPVmNBSGQZT4bTWPH
 2XB2XJDZ4kXQE7qdB29o7LyMhNAj2SWPkWbpl/BMR9svng6C80HOvnSpKxZ/bolXJFtz
 H3FY1apgAfBRUelfJlBa15691ZryugHFkZupJ5e4O7+u4HtjuApkVXwKuwaOZsTuzGqR
 XyCew0xzbOjczvO+ndhuwvUun1zpeOdi3Ga9dfg3pjX7G8Jayi1alzH/CiWmS5fX/cRa
 V3r8oee/z/CODOMxmRM5SBAJuZb6mCm2XyKOnSWGrRVa+VJYKxPKdFNqluO1G8kF45iy
 JN5Q==
X-Gm-Message-State: APjAAAVCFvzDv90SUshjVkJRlSe2Sr7zNUlA1F714shIvz3tlHJh8y0n
 QqB4dX7jbMbnHhaITyw5MBPGdA==
X-Google-Smtp-Source: APXvYqx8kJG30FrBwFchNB07QuFE4dTA8rPgEi4RVVBWzFM230ur6MhRgba9ASq4e0C0OXPpkdRZuw==
X-Received: by 2002:a63:4d4c:: with SMTP id n12mr38694833pgl.212.1580924373586; 
 Wed, 05 Feb 2020 09:39:33 -0800 (PST)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id h3sm140257pfr.15.2020.02.05.09.39.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Feb 2020 09:39:32 -0800 (PST)
Subject: Re: [PATCH v2 00/12] dt-bindings: arm: bcm: Convert boards to YAML
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200204235552.7466-1-f.fainelli@gmail.com>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <2d263951-fbc5-ae5f-6643-b72debf5aa05@broadcom.com>
Date: Wed, 5 Feb 2020 09:39:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_093935_539825_87CBCB0C 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "james.tai" <james.tai@realtek.com>,
 Arnd Bergmann <arnd@arndb.de>, Scott Branden <sbranden@broadcom.com>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Joel Stanley <joel@jms.id.au>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Florian,

Patch series:

Acked-by: Scott Branden <scott.branden@broadcom.com>

On 2020-02-04 3:55 p.m., Florian Fainelli wrote:
> Hi Rob, Maxime,
>
> This patch series converts most files under D/dt-bindings/arm/bcm/ with
> the exception of bcm63138 and brcmstb to the YAML format. Those two may
> be split accordingly later on since document not just the root node.
>
> Changes in v2:
>
> - fixed typo in Vulcan binding
> - simplified how SoC compatible strings are specified
> - fixed filename in bcm2835 firmware binding
> - added 'secondary-boot-reg' constraint
>
>
> Florian Fainelli (12):
>    dt-bindings: arm: bcm: Convert Cygnus to YAML
>    dt-bindings: arm: bcm: Convert Hurricane 2 to YAML
>    dt-bindings: arm: bcm: Convert Northstar Plus to YAML
>    dt-bindings: arm: bcm: Convert Northstar 2 to YAML
>    dt-bindings: arm: bcm: Convert Stingray to YAML
>    dt-bindings: arm: bcm: Convert BCM21664 to YAML
>    dt-bindings: arm: bcm: Convert BCM23550 to YAML
>    dt-bindings: arm: bcm: Convert BCM4708 to YAML
>    dt-bindings: arm: bcm: Convert BCM11351 to YAML
>    dt-bindings: arm: bcm: Convert Vulcan to YAML
>    dt-bindings: arm: Document Broadcom SoCs 'secondary-boot-reg'
>    dt-bindings: arm: bcm: Convert BCM2835 firmware binding to YAML
>
>   .../arm/bcm/brcm,bcm11351-cpu-method.txt      | 36 --------
>   .../bindings/arm/bcm/brcm,bcm11351.txt        | 10 ---
>   .../bindings/arm/bcm/brcm,bcm11351.yaml       | 21 +++++
>   .../bindings/arm/bcm/brcm,bcm21664.txt        | 15 ----
>   .../bindings/arm/bcm/brcm,bcm21664.yaml       | 21 +++++
>   .../arm/bcm/brcm,bcm23550-cpu-method.txt      | 36 --------
>   .../bindings/arm/bcm/brcm,bcm23550.txt        | 15 ----
>   .../bindings/arm/bcm/brcm,bcm23550.yaml       | 21 +++++
>   .../bindings/arm/bcm/brcm,bcm4708.txt         | 15 ----
>   .../bindings/arm/bcm/brcm,bcm4708.yaml        | 88 +++++++++++++++++++
>   .../bindings/arm/bcm/brcm,cygnus.txt          | 31 -------
>   .../bindings/arm/bcm/brcm,cygnus.yaml         | 29 ++++++
>   .../devicetree/bindings/arm/bcm/brcm,hr2.txt  | 14 ---
>   .../devicetree/bindings/arm/bcm/brcm,hr2.yaml | 28 ++++++
>   .../devicetree/bindings/arm/bcm/brcm,ns2.txt  |  9 --
>   .../devicetree/bindings/arm/bcm/brcm,ns2.yaml | 23 +++++
>   .../bindings/arm/bcm/brcm,nsp-cpu-method.txt  | 39 --------
>   .../devicetree/bindings/arm/bcm/brcm,nsp.txt  | 34 -------
>   .../devicetree/bindings/arm/bcm/brcm,nsp.yaml | 36 ++++++++
>   .../bindings/arm/bcm/brcm,stingray.txt        | 12 ---
>   .../bindings/arm/bcm/brcm,stingray.yaml       | 24 +++++
>   .../bindings/arm/bcm/brcm,vulcan-soc.txt      | 10 ---
>   .../bindings/arm/bcm/brcm,vulcan-soc.yaml     | 22 +++++
>   .../arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 ---
>   .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 33 +++++++
>   .../devicetree/bindings/arm/cpus.yaml         | 33 +++++++
>   26 files changed, 379 insertions(+), 290 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351-cpu-method.txt
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550-cpu-method.txt
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,ns2.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp-cpu-method.txt
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
>   delete mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
>   create mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
