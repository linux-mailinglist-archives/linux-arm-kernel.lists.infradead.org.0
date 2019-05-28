Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA402D19D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 00:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWIrqY1hRNuHprXyCsKjqqpBT6zTx0MbVcEL68EMypk=; b=LouVDS3PvYxk2R
	nhNgBC/22QE9zwliEaRxjG1WcYi8Ptck1aYWyXiLJLHyFOTCpsniXeuZN1RlR+Akb04lrWLv9AmQB
	zQ7oxPm2F1oie2A+eTAJPFgCzkmw5nROGliAn9SGutu75hWNXVdzYTnRrkAOxKz2UI127Z/5AZKjx
	XjOuEq9jD1Q2YqdqrdmB/2wDTpVvW8jl9NQPiSzzhsw00eBCT5ec7Ie7bNyX0VBcqtYtylrB9VTnu
	lHMqvPnfXIyMfcCIIwpTbKP+9l3/75ZU+tIXcJElvwqotG1MZsi+Plno/dALw/XipBySTPvh2Po5H
	4M6zLq8Gbb1ISDjYWXkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVkgH-0008Lo-38; Tue, 28 May 2019 22:34:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVkg9-0008LS-Cm
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 22:34:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id d17so203931wmb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 15:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QC+sL0Pe/auNIPMKG2XwSPXekbgrA36Kc5Ma+cUG3A8=;
 b=CW7VViS8kuE6ZAWw97z68bqMfVtgROZjC0p7UPyJfhbrUQQmfzPo5LTr1ISmHU5ApW
 hNMfHEcL4AeizvXHqhsctVFJ7VmzKMp1wVxnNXPkCzCCel2QZPJ1PKgKUj53PbUQf1k6
 D3cMmtJcAHhxBABe6+UzQTGJX6ER2wfwaOn8akz8JKXHJVNBK2Xv8/LZYF7+7cJRLI5s
 e/75iQ7SxcjTkBFzexKBMOczl53dOBFkpFyAFYKCRFY+ZYtv/vgU6y7nkPUF9mz6GrFK
 HJc66n7vO7PKenq9xzubAe0k8A2EiRe/kofXQVYWy9kgIpN6T/awiF6lWZyBGo+FbkXS
 pN1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=QC+sL0Pe/auNIPMKG2XwSPXekbgrA36Kc5Ma+cUG3A8=;
 b=WDbrE7gSjoQ/1itmYoeIY168gXX/XiKdUigM13njSGkpj2NlCWBB2WQvbJasGFt0YA
 tdx64jMztnVTAD5Fz5sIURoyZEBRBhquhg3/xPVpriGcjRGWw2SVYJaCBetDRwcKJbl5
 wnest19ETSEl9lLbK9ZN+6HxKlnv2qm1pwUbi6I1wG94LCj7htOcP3PsQ7iqRT920QwT
 3bF43DRlvKmCdzCRhF2FMLdU62i4BPS838MK36ofoVrJtmYTHEUuFY5xDQF6nF+hIRI8
 z45KIc/4haTcCZsfvWeOe4swspPaM1ek0vh1j6nCJtJQGqCt2Oqdnd5KesSXpx2PGi03
 uvaw==
X-Gm-Message-State: APjAAAVRR5ASs9mGHpn1QqdO+B/9egG2FR0RWgMhpBJkiiDlCQnbMJ1x
 mIlDgnLX5nTynEOz0SSaPMA=
X-Google-Smtp-Source: APXvYqyHMNwMqPhgcbjOWXDSJCgI3rbpP8124MNo3u3aE4cIGnM8zjFBoUwmGMnrFux55oA3Q8xzfw==
X-Received: by 2002:a1c:9616:: with SMTP id y22mr4726472wmd.73.1559082882335; 
 Tue, 28 May 2019 15:34:42 -0700 (PDT)
Received: from [10.67.49.27] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id u11sm12161327wrn.1.2019.05.28.15.34.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 15:34:41 -0700 (PDT)
Subject: Re: [GIT PULL 1/3] Broadcom devicetree fixes for 5.2
To: Florian Fainelli <f.fainelli@gmail.com>, arm@kernel.org
References: <20190520182648.1063-1-f.fainelli@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <f03eaba2-f661-f675-ec3f-0a89ac92bb11@gmail.com>
Date: Tue, 28 May 2019 15:34:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520182648.1063-1-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_153445_458756_73553D0A 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: olof@lixom.net, bcm-kernel-feedback-list@broadcom.com, arnd@arndb.de,
 linux-arm-kernel@lists.infradead.org, Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/20/19 11:26 AM, Florian Fainelli wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.2/devicetree-fixes
> 
> for you to fetch changes up to e8bd76dccd792b371a934336c3e7d8c389755d9f:
> 
>   ARM: dts: bcm: Add missing device_type = "memory" property (2019-05-20 09:29:47 -0700)
> 
> ----------------------------------------------------------------
> This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
> 5.2-rc1, please pull the following:
> 
> - Florian fixes the remaining Broadcom DTS files to have a valid
> device_type = "memory" property which was missed during the removal of
> skeleton.dtsi
> 
> ----------------------------------------------------------------
> Florian Fainelli (1):
>       ARM: dts: bcm: Add missing device_type = "memory" property

Arnd, Olof, Kevinm can this be picked up? I have changes for 5.3 that
depend on those. Thank you!

> 
>  arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts       | 1 +
>  arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts       | 1 +
>  arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts | 1 +
>  arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts   | 1 +
>  arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts   | 1 +
>  arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts      | 1 +
>  arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts      | 1 +
>  arch/arm/boot/dts/bcm4708-netgear-r6250.dts       | 1 +
>  arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts    | 1 +
>  arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts     | 1 +
>  arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts       | 1 +
>  arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts | 1 +
>  arch/arm/boot/dts/bcm4709-linksys-ea9200.dts      | 1 +
>  arch/arm/boot/dts/bcm4709-netgear-r7000.dts       | 1 +
>  arch/arm/boot/dts/bcm4709-netgear-r8000.dts       | 1 +
>  arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts | 1 +
>  arch/arm/boot/dts/bcm47094-phicomm-k3.dts         | 1 +
>  arch/arm/boot/dts/bcm94708.dts                    | 1 +
>  arch/arm/boot/dts/bcm94709.dts                    | 1 +
>  arch/arm/boot/dts/bcm963138dvt.dts                | 1 +
>  20 files changed, 20 insertions(+)
> 


-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
