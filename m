Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F074CB9E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 12:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Izvbv2vQCFn7DSBRzr2g0IODen2OBMQ4vCRklNBp00g=; b=L1PrN34GzNE2CeF19tSEfdYtr
	pVTm60/ndlR12sW3y0Iglcm6rEmsWrImuxJs7kbhmhPEBS8bUwjAnN5S9C/5d0CB1+Xx/PAIcsyYy
	n+zXNUFkkwkd7sGD8e8rXPy3a8G6C5z8wflsg+AA7u0IihlQWp1YqNbl4RyjUXaKigrcQgdVHrQED
	MKfPqZwu5PaLj3tuFNp1zunQ003QrM6v7cLGGt/xHjzAAFvX3xQ0a5UHDWlUGms4tulVtvA6PJ2hF
	HURAzZ/f+yc2Fbc9ErxoFbnp1e4v7PjWlsAS7DRYrCr8utP5/WPagqwjD/Auci82MFKo0p5b9T5Z5
	FyPWwzx5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdu8B-0001fs-0h; Thu, 20 Jun 2019 10:17:23 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdu7y-0001f7-Hu
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 10:17:11 +0000
Received: by mail-lf1-x143.google.com with SMTP id y17so2052454lfe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 03:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=fkvnN57867z9SDQtn3TTY+GhvxFM0G+zqJqv3DBmXnM=;
 b=AYkcQYi1fysTbByE7FRFUTzJIo5Qk8gVkQZklsTygWB0XBj1Ml9VJ8lUDUMHGiV9r6
 jPYeFlnNKbcsJZNfEN7eDQH14AZ38D5te2WakYNz76riMi1kaZV6wwZBF0HFhOAm9d9e
 6Ik8PYy9M7kH2djHv4uYE71+HyPqu8TNk+kvOs/nfWOgb1N/ywbfBf8rXIFp89GEhX0N
 2Ae2LJ5bcK4Z53O/eqxG8OYE97YjzSC+oe8ThawkVR+4Pthr/Gna+hcO5NzQcvUWDM1m
 swSJoh2KmbjnfKlrbzLiXRPPboRqK8m13CjqrMjLlhMfO3FyGKVypEBZOxXM56YDjIUy
 ZKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language;
 bh=fkvnN57867z9SDQtn3TTY+GhvxFM0G+zqJqv3DBmXnM=;
 b=uZL7Nm/kKd1YHa9VMO+mYDN+fXLItdWxUn3P940C6e6TRJ7wQMMg0OqtVHePvfHn7w
 tPAkgk6FGdKmgFVyilD3qB9MoVVzPLMPaGLsjxTBEWHqVdfqJdomzfs4a5BtdEgAEtLM
 eDIH9LGzbhi476LC/Q6w2q0l9O2DXEf84fPnTrWx4JImjZgv451WXvM/8RMjN7aHUbVi
 5a/hjUi+ePYfzyW6D31lYUuGxuxrX8wLYTXg6TDgY7kMacetM00ukAn+qJDmqvczGGk5
 4EmNsbrKSiHnw/NtUfTLUtj3HmzJ6Da14P/ZNwlpRgFSnRYH2koM0BTYg4zDGnvwplu8
 L7gQ==
X-Gm-Message-State: APjAAAX4SiSQIQAIKGLG3dNm/YqlYvG+UX/TExMXu8sOwAlbwrAMbkO2
 tma8wgA5ib78vnwdd6Ho1dJjE2cjy6C891qh
X-Google-Smtp-Source: APXvYqyxEbUyiihJJF90YL/53xdPshHXX9anAoXvMaVfMikCOhGrgmQRjZUwMDGnRKi/T4/jBe04EA==
X-Received: by 2002:ac2:5446:: with SMTP id d6mr2434221lfn.138.1561025827955; 
 Thu, 20 Jun 2019 03:17:07 -0700 (PDT)
Received: from puchatek.local (89-67-26-161.dynamic.chello.pl. [89.67.26.161])
 by smtp.gmail.com with ESMTPSA id
 b6sm3460820lfa.54.2019.06.20.03.17.06
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:17:07 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64 defconfig: enable LVM support
To: Olof Johansson <olof@lixom.net>
References: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
 <20190619142142.52stwnyucxa7g3rz@localhost>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Organization: Linaro
Message-ID: <d1138486-4078-e838-ae49-fc9b038fc61c@linaro.org>
Date: Thu, 20 Jun 2019 12:17:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619142142.52stwnyucxa7g3rz@localhost>
Content-Type: multipart/mixed; boundary="------------39BD46887CBC361D0D5957E9"
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_031710_600811_62DFC133 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------39BD46887CBC361D0D5957E9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

W dniu 19.06.2019 o 16:21, Olof Johansson pisze:
> On Mon, Jun 17, 2019 at 06:04:09PM +0200, Marcin Juszkiewicz wrote:
>> Follow x86-64 defconfig on enabling basic LVM support.
>>
>> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> 
> Do you need this to be =y? If you use LVM, you usually boot with a ramdisk that
> will hold modules.

Right. Forgot to change.


--------------39BD46887CBC361D0D5957E9
Content-Type: text/x-patch;
 name="0001-arm64-defconfig-enable-LVM-support.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-arm64-defconfig-enable-LVM-support.patch"

From 63003d0047062949a1231f67e1efdcb96b54323a Mon Sep 17 00:00:00 2001
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Mon, 27 May 2019 20:14:34 +0200
Subject: [PATCH 1/3] arm64 defconfig: enable LVM support

Follow x86-64 defconfig on enabling basic LVM support.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d583514258c..864800307e2f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -230,6 +230,11 @@ CONFIG_SATA_SIL24=y
 CONFIG_SATA_RCAR=y
 CONFIG_PATA_PLATFORM=y
 CONFIG_PATA_OF_PLATFORM=y
+CONFIG_MD=y
+CONFIG_BLK_DEV_MD=m
+CONFIG_BLK_DEV_DM=m
+CONFIG_DM_MIRROR=m
+CONFIG_DM_ZERO=m
 CONFIG_NETDEVICES=y
 CONFIG_MACVLAN=m
 CONFIG_MACVTAP=m
-- 
2.21.0


--------------39BD46887CBC361D0D5957E9
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------39BD46887CBC361D0D5957E9--

