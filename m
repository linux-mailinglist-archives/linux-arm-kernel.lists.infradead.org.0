Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707FAC20D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAWhOsj2VZdR5vO/a5C+0H0AV0l/A6Y9HEXbWjqHya8=; b=Qj+CO94mHUHRSP
	lKPUZzRmakK6QKFalvcRId/Vzgpu3hwg9sQxDQTyL2DyR1wTCfD+xa1RJYLoE/cxUPJThSGKN0qyj
	DVN9gFPYUQy0DRmmNQlPjwU43QBjXHlAbOxRj/Km1GQLOi5a9aMTyrTlvl2TDYx8l+HsAS31oLReH
	BXiGhNacmx0sa25S20WYviOXrbFLxP+RlOGv063LkE4Yyr0J8RTrDjpolVG91okQQMTDJurkjFbyC
	11btTriyB5A/dDM0n9s7nSlLzpbID9sCqX0YivJUG+YML57Xly/pt8GYPS0i0dBqlPLceIC40kRjZ
	+19+yDqgZjBT1/FeUH4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEv3x-0002Om-Sy; Mon, 30 Sep 2019 12:46:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEv3l-0002NO-2Q
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 12:45:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so11169406wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 05:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iI178b6o0qZVFBE5FgkMuuPfgQeMCHtWWim2bH0vxbY=;
 b=jO6onDotzDWCKXEXFzt5lNj+IXe2cN21TYeChnFaKzRs7HYnmYbsPmIYHIi7enbNF4
 mQa8u5bgxNDWXpiEFIs5ZU6+ff+9UycRj24TGk9n5RnpNPVRd43/j3BJ78zZDDMf+pRR
 eB3SrMQ58CgKzB11kCbIOLDU5KRIEutAgyT8dgXTWRj2EJEPHS+ixySzNJTfLBNhxYgJ
 68AGeSyl39hAgbzMKsNkX2YRRvfBbRGjNjtFunngdVEhPzQuH8b/tBZ6nu3SuLhPiP9g
 yVX8bBsl9XObGaG++9XSz8OagizFufFlSRWqnFyFk1gq+W34kWd+Y4icip9DcFuwGZCh
 aNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iI178b6o0qZVFBE5FgkMuuPfgQeMCHtWWim2bH0vxbY=;
 b=nDnqX7PJXNU0gzpE00EWz0NxeC3uM8CfAmxEt4CAW5Rn/+bzZm0ys7rmt525WiRSes
 eKre6HpLRrLjlL9ceutbmAT/FNmaKKTGA8TrMQ8E4C4BuZR6gFDOJfJwVdQoNGMGsJGk
 dIAMp0oGXcbZ1FdgQbRbHNgw2kXMNxW0YrSE2Ap1Veb7U+kjAySGSLTo3ycUcvlglIf0
 9kgz+9X8U2LooMzt4GTNhTRkoeBAEwFDfIsVJbvw3rtfO/9uQaIkJ2HcGthBuGGCxPjg
 th25DJmTxq95K4QojwSflYP6TS9qjJn8LZouY6QxXLzwz+EohkrIEU+s689ddbW42nGk
 /8dw==
X-Gm-Message-State: APjAAAXYdQ61+w0hZdSvl/zWDNfPm9ypwuuL1cS08XwcDUgGEB5GFkP8
 /sK6Vpl6QxA5NCyYJtblaFg=
X-Google-Smtp-Source: APXvYqxXqlxnCTWpHdUcHd+CsyWUyx5za3cbr+Ty3uRN7gE1JPrkoUFKktywA+G0M4up4B1gCXbvvA==
X-Received: by 2002:adf:e951:: with SMTP id m17mr12954736wrn.154.1569847546974; 
 Mon, 30 Sep 2019 05:45:46 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-35-8.net.upcbroadband.cz. [86.49.35.8])
 by smtp.gmail.com with ESMTPSA id
 z1sm26014947wre.40.2019.09.30.05.45.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 05:45:46 -0700 (PDT)
Subject: Re: [PATCH 00/11] of: dma-ranges fixes and improvements
To: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20190927002455.13169-1-robh@kernel.org>
From: Marek Vasut <marek.vasut@gmail.com>
Message-ID: <106d5b37-5732-204f-4140-8d528256a59b@gmail.com>
Date: Mon, 30 Sep 2019 14:40:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_054549_121411_741C6B28 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/27/19 2:24 AM, Rob Herring wrote:
> This series fixes several issues related to 'dma-ranges'. Primarily,
> 'dma-ranges' in a PCI bridge node does correctly set dma masks for PCI
> devices not described in the DT. A common case needing dma-ranges is a
> 32-bit PCIe bridge on a 64-bit system. This affects several platforms
> including Broadcom, NXP, Renesas, and Arm Juno. There's been several
> attempts to fix these issues, most recently earlier this week[1].
> 
> In the process, I found several bugs in the address translation. It
> appears that things have happened to work as various DTs happen to use
> 1:1 addresses.
> 
> First 3 patches are just some clean-up. The 4th patch adds a unittest
> exhibiting the issues. Patches 5-9 rework how of_dma_configure() works
> making it work on either a struct device child node or a struct
> device_node parent node so that it works on bus leaf nodes like PCI
> bridges. Patches 10 and 11 fix 2 issues with address translation for
> dma-ranges.
> 
> My testing on this has been with QEMU virt machine hacked up to set PCI
> dma-ranges and the unittest. Nicolas reports this series resolves the
> issues on Rpi4 and NXP Layerscape platforms.

With the following patches applied:
      https://patchwork.ozlabs.org/patch/1144870/
      https://patchwork.ozlabs.org/patch/1144871/
on R8A7795 Salvator-XS
Tested-by: Marek Vasut <marek.vasut+renesas@gmail.com>

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
