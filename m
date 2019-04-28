Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A5BB68A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhhUZtQLAK5aRmghUWYI+4YbbP/o0mFCj7BxIPEs8hk=; b=bJQ4veT3+zu3Nc
	THnWb3vWfgLVpoNv4KfIrhti9wqxSJSBAO7ZXHu0i4bF8h+07KyXKQUSBipk8kHEd3A4974qDuwWf
	Kw32MQA6YcD40dUhoyYnq8HcTlmE6vdbeRzoqdCeJzu/Iu4+CvSJoYrqe392jQDg+YGUm3Cj80ezW
	PfpW2Ff+ah4ofo5OxeZcnR93Q1YcCIFlSoKXdH5IPEDwPmsWD9Pbhy/SwnSpBmZQn506A0CBlMsFH
	nf30djImeZTYZd4m1vibtXtuJlr8TngFYlhgQ+3LHfyiEmBvyPSKhbe9cT1s3V8DA5vCsVDiPm+zD
	2ZTQ4bMgqSsxF9wDNVIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqK1-0003kt-OO; Sun, 28 Apr 2019 20:22:49 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGr-0007gp-Gk
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:41 +0000
Received: by mail-lj1-x244.google.com with SMTP id m18so2847372lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VKOm+b8e1dNAoS3o36UVIT0ISlsHPex3pK6zi5/OPi0=;
 b=z5ukgXXUt9FQfPElmfDO8RPTDC9K1lv3nhRKWrh9K9O7qjzsJUG4zULAyCDeN7FOtC
 uvunwJoT9+VYFqav81BfopNJFry6yQCOITJSGQVz+D0SA2ittxBNWt0nh7kVQgWoJNPm
 JXpnm0ark9kGLEcAPX5F8zbNPAJUgprkBaIJYBM8mzz22vZcy5F1gZsLwzDsZbwIhmdY
 C7vD3tBm4IESkHnFV+vPMp/BGqFXNCZmt9I2IQqyyBNQYGFEpxAQXY3DArSR6OGbxL9N
 68B3CikfiLcB89jbgc0CRBcmKZILxrjBm65uLb5pytnMbm+FmtzNU/TI7KKjw58qbSWm
 x6/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VKOm+b8e1dNAoS3o36UVIT0ISlsHPex3pK6zi5/OPi0=;
 b=TiZP0xfdNO3owoMkbHO+x1Zkh7ZaISLXRyGZGkFUC+fsUMT7DvVzPlXABkwfHG9p94
 7jhYO9MLC1jA0ksVg/+NQtx3RtUQJpccNA4GumY342qu5RsgCz08CELSMAjS345ntoS7
 9T/ehbePxFWcxKLnmDeOCVNe5ex30Py8xjcopI5lPj6IUSjgcqfIdVkxtVdYiKSBpDh3
 NBBMgAyB+jVjOZ4ny6QLWsvKWT13EJhLEQogD6PSrxdtflvgn86RitQRSepj345XEniK
 Z6xjzA5B7SFPMU2UOssr/Vil+mCcJxd1ax2pxTG483Q+epNG6bP0BkbttiBqEhwXmLDr
 +fcw==
X-Gm-Message-State: APjAAAWeW0xkmMLBvxjlfM9UuV84V5XDeTOt6SyNptIF+led+jVE7YHb
 v+kkfuq9qYJrmia8tKTnbFo1WqH55Q8RWQ==
X-Google-Smtp-Source: APXvYqxColrU8JbvojfNUC6sPUKVaJ7okzMI7JLdn7KaJ8DCmE5neLAnaII5VVGaP3ppQUlrJT9Crw==
X-Received: by 2002:a2e:9687:: with SMTP id q7mr8753060lji.113.1556482771884; 
 Sun, 28 Apr 2019 13:19:31 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k2sm1597003ljg.6.2019.04.28.13.19.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:30 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:32:49 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 1/2] device tree changes for omaps for v5.2
Message-ID: <20190428193249.uufhjnvkuzxhh6xp@localhost>
References: <pull-1555343712-332506@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1555343712-332506@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131934_074448_27FFCBB4 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 10:00:53AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/dt-signed
> 
> for you to fetch changes up to bcbb63b80284af0061ac44fe944d31a8482d2b8a:
> 
>   ARM: dts: dra7: Separate AM57 dtsi files (2019-04-12 09:57:07 -0700)
> 
> ----------------------------------------------------------------
> Devicetree changes for omap variants
> 
> This series of changes configures dra7 pcie x2 lane mode, configures
> am43xx-epos-evm regulators and keypad wakeup source, and uses standard
> reset-gpios instead of gpio-reset for n810.
> 
> We also need to split dra7 dtsi files for properly supporting dra76x
> and am576 as some of the devices are different such as usb and pruss.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
