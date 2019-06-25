Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E56454E4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHjLYh/L5eCSxZAQDQkQZSJpA70z6kO6vdAFlT6RSXQ=; b=tF0P+qHyAxkscL
	x0wxrOdK2sXwHT88fHPMogrWZ54ZrJXsuF9yTgCl+BliJugUjM+uZWXJPizmq5CyrITaDgFCXO4Jj
	7eEPv7KwlSCBVMj9zgu3Nh20+pcE9HowLPgXmKw5tbGjz2X7F+Y6szSMgx1uDLVcTIxHW8ic5/fdz
	6eBp7b6iocSAI3VWd6ENIUVnmWB8C7WTonual2+CoNR2Oj5qmulwZ7NAx4HU9DlQuCxqgE6+43xTf
	8qOS8wFUcNsrOB1In9HGS5lpIjFHsdggBXWRP1jayBg8IK9gI5wXZbMfpBYtYGceL0Ht3D3BND/T/
	+YmPNJNUDk0sa2h4Q/mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkDA-0001wv-DU; Tue, 25 Jun 2019 12:06:09 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBS-0008Iz-Gp
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id a9so12448524lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KrbVC+nd51wncLW4nVVkj9RojtmlgkG8U4OEy9JmvXs=;
 b=Ba5Qktl7NYo/3/da93/e5LAoIJZV8ARRHumz9SaR1rB/O9Wup3Dw4ZSMTJIC9URCvL
 cKfATQX8E8BmfZSV9ShQQ699Wql4tsMHAnXKF4PNhxxK6T8bOtN+0offmMIWPIJRYId2
 HroHOkMcjbEgcL3esod6+x1XUWgG6wjlO+RFpoiXlNkdNbAO3YX97JGo7LLM2nj9eq4I
 7TM0cTxLlrIsUPTr4CFWkL2Rguaf7ISwtIgKm1gclCMSV1FHQhudSpr/+pHQoPclzDGC
 fD9ShgcqGdjoTePNpS8eynd2c2oqkiJNg+ZlunNde9I+X5hW6zsxCn41dR936kZdfi3R
 LUNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KrbVC+nd51wncLW4nVVkj9RojtmlgkG8U4OEy9JmvXs=;
 b=XQ8s3RULaAZdq4b6anpKs5xkTEBIBv7oP3Ecai9CzHMmaKPBsiGAyqGTWv7UOIB9sV
 kX5iegvImbs+jMmO3M784UEroc82QXEqZbdtUHbupa7YQGmgwh8UYwfnNnjftwAAzV0A
 GcOVStiZEkO+jUFX+u2mzhFo+ewHwQdOTy/o5zTwUsj+kNwO0Vaq0XrZCHlPvLlwh+8Q
 xdnTXTWxnoJBPaQixVCVc5mlT37xeoxmPpaJ3cOy483y/0TeLezdJJTUc6a09YZMJORa
 a2vXQPz7DbT989HvSP61n8otLPpAB0HiN7sP2M/S/dmgodqhXLMGTKVOkaDtuO007NUB
 KrEw==
X-Gm-Message-State: APjAAAU6C2FAkdx/3drn0iFl1ZJGHmEotvtFAw4r5pvoqwXPPketnMj6
 tbj8RSmifJ8qtnNeJu9KeljwiQ==
X-Google-Smtp-Source: APXvYqzT8nTfQ+wYXYMdL5oyhsFcnRPhxOVoW/0ax1dwoUPxG6dbqy3p7NBKxo2ajGVS/C26Vh8CHw==
X-Received: by 2002:ac2:4466:: with SMTP id y6mr17181901lfl.0.1561464260492;
 Tue, 25 Jun 2019 05:04:20 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 2sm2227518lji.94.2019.06.25.05.04.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:19 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:19:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] Amlogic fixes for v5.2
Message-ID: <20190625111940.pczzd54dvow6ekyx@localhost>
References: <7hr27oeyk0.fsf@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7hr27oeyk0.fsf@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050422_580481_AFD143CF 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 02:28:47PM -0700, Kevin Hilman wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-fixes
> 
> for you to fetch changes up to 26d65140e92a626e39c73c9abf769fd174bf5076:
> 
>   ARM: dts: meson8b: fix the operating voltage of the Mali GPU (2019-05-20 09:58:38 -0700)
> 
> ----------------------------------------------------------------
> ARM: dts: Amlogic fixes for v5.2-rc
> - fix GPU interrupts and operating voltage
> 

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
