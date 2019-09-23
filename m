Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3FEBBBE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUnNUZ1b5Zd1hBAnlDHuDdURMNsLxNxAx8zFg07rELs=; b=qRWX39CWL84T76
	7u5MMmdS2+NwWh3t8zecRKbR/Xc3a/ScsBGdw5XzEXpvctJ4GIKJZ/O850nrpnHE5/kLJBUrQuW38
	87n/yKdUkZ5Wlim604VuLTkkoSp7AQVx4Um7CmL5gB6Bs/wl4PMak/hqVjSXIOuwftTbhM5zvll2M
	VWLM8MAaXekCE87NDzRmFrskwprTiYJD0gJFZeMTNioEEC1aysqtsxi2SpM1kxR4Nsrpz+Jc6amTB
	462bHZ1k6lIDK9UGFVu3/RMo0qOeBzm8fCedfIyNXbEENs3SRa+IkGtAhyvU6ACzaQ1MWp/BXsStp
	jFnD19NHyXnsGvW59u3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCTWK-0004cT-Dh; Mon, 23 Sep 2019 18:57:12 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTW3-0004bv-Gn
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:56:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id 205so9685575pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 11:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CsMc2OBbadsF5+TBj7fbouJIZuD/T7daovw5hMpIMNM=;
 b=A0fvyNz0dJYbt8WldJjdAyaAoG02SFZIB0jGAqxLBHmrKGDZbBYceILw9++VGQNfws
 jPGJC0kExLnyTbzAa+JvU3bCPJn4R7JaRednWtyMjqd1oeiIH1+FYH/ZlHN7L0TKfifP
 rp3gXi0Wgqo+PQe6rFS9K/K7UkO1EyBQDeDyO7I4u1xwZCUpGnL38peAc7JLw3iLzgBb
 vUIsWzhxZQnubTBKjQKzbfpC7bFOZq90nBo6G7EE5YeBDsFodj6psMuaRRT/uN3ZRDsK
 KHO4rejh4bN8A9ZvD1fMefRJU+P0Zhy7EiDbHlKbdVUn9BrxnKQDfFa5hgoAMKlA1erB
 pyyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CsMc2OBbadsF5+TBj7fbouJIZuD/T7daovw5hMpIMNM=;
 b=a/GAz3axMOFtaTx4hYe45V16UyCh8A9P+xX1A+JpLl6O0Ok/pPwPsG1jLy8svtD43Z
 ryUpi82YzzorNmwkZfouYxn5px0xz6Rnx+Ffn3ZMbF2sl9and9aiyqdHR8OXiM28sFVf
 dlTsfMzquTEotfB6YGkVaH8mhlLOkgYsrGjI2bBrZ7qZIfrzNRlRD56e5CNJ7/V72FRg
 bgQwG6/ktpaGctlZGWQv5w3PNTFySjkAT7S4LY75xGz1fBuZiz8u8p0efazuvBJu7fIh
 T5dfFb7X1U98S7aOE97J+ASJtSf7cZ0N4tRhOEtfwg37hLHWh2bC9rZXNZEMpIxqgsXf
 txHw==
X-Gm-Message-State: APjAAAXSM24lyIlCNFiCRD0RruacjLeEc/PKoBCFrjRA13VbBUBkeNgP
 xJxMzTvxC+A9LohPRrd3FCw=
X-Google-Smtp-Source: APXvYqwneQoUpghuUhOTZoR96inZCxNiBb0kHtbFd6BnedAcnXY3e/YuwpBwLaXm8+kvMPnmEBsRXg==
X-Received: by 2002:a63:6c89:: with SMTP id h131mr1424775pgc.322.1569265014534; 
 Mon, 23 Sep 2019 11:56:54 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m2sm9484201pgc.19.2019.09.23.11.56.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 11:56:53 -0700 (PDT)
Subject: Re: [PATCH] Revert "ARM: bcm283x: Switch V3D over to using the PM
 driver instead of firmware."
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 boris.brezillon@bootlin.com
References: <1567957493-4567-1-git-send-email-wahrenst@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <26e101ad-8b5b-edef-4437-778bc57ae81f@gmail.com>
Date: Mon, 23 Sep 2019 11:56:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1567957493-4567-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_115655_585554_B505ED2D 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: stable@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/8/2019 8:44 AM, Stefan Wahren wrote:
> Since release of the new BCM2835 PM driver there has been several reports
> of V3D probing issues. This is caused by timeouts during powering-up the
> GRAFX PM domain:
> 
>   bcm2835-power: Timeout waiting for grafx power OK
> 
> I was able to reproduce this reliable on my Raspberry Pi 3B+ after setting
> force_turbo=1 in the firmware configuration. Since there are no issues
> using the firmware PM driver with the same setup, there must be an issue
> in the BCM2835 PM driver.
> 
> Unfortunately there hasn't been much progress in identifying the root cause
> since June (mostly in the lack of documentation), so i decided to switch
> back until the issue in the BCM2835 PM driver is fixed.
> 
> Link: https://github.com/raspberrypi/linux/issues/3046
> Fixes: e1dc2b2e1bef (" ARM: bcm283x: Switch V3D over to using the PM driver instead of firmware.")
> Cc: stable@vger.kernel.org
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applied to devicetree/fixes, thanks!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
