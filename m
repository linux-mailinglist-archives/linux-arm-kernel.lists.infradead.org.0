Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5391B347
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 11:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47JC1bZccAJ4SzgXFFvQXqHa625Mz1X46mOQBgCFh3g=; b=tQZSoA2kKovHvq
	w4VA57HWuLfuMWbCwNnZSaZFnBLAZhsicPmGcDiZHEr1WE//W8NzCYidH0ElFJHn4m+uUsNu+zHH+
	vDdqdX6aoxlGiIpgtZpN3j3P1VmvItPTpev7N79YB6RMBJfkPtCaugRVpKU9DQgGHc+X3VZYWQixK
	RZSA1o47RhrRjrL5DVnk5asSFpnhNRgJE7P0btjVOidU7LlO6abeJ320zaHfwA/NJK45wqxSSwtnC
	Sy9YzQ1H+EkqwxLgi/VmgTdat8ErW2w/JuY0dh6oS+G3xg3iJSDSl4i8QvCBGa8cDTwpcj2WbQv11
	lwvarj49PVYVomZ+dyaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ7eI-0003Dv-74; Mon, 13 May 2019 09:53:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ7e9-0003DH-8D
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 09:53:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id w12so14503972wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 02:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=KQaBMNzV2Xp0O7iigiyVm7H6auSbkH4OdllLgyfmhe0=;
 b=BsAksXq4oRDwEX5mX7EWVAIzkcTyS3vSKsA5LtprZ/xNSLxLrEjGCPBZwjawwlUHMc
 I1Zsr9XcY41npKLQuBcapnMBl5OauonrjdbvMVvG4HqDbqsrnnPuZqC7zwtgjMkrfdmU
 HMLTY4yM1YEmSFdX3g4XVRzRF4l5AtN98vJyLtwNdQLra8CaDUKYSTeYlVYah7Yq1hm/
 S9N+yRy1BgBrsa4CGYrnq6QRjOnxtuJsK1WVMWSADZVfXzSoGs7IVjK44nCqZ/T39w0z
 PdE6ZQ9Mbl79DzwiTA+ktxVg8GjpUSXvgvnS+E0E41HedcK+V7Ww/nbFqtdEXzV/6CD+
 djjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=KQaBMNzV2Xp0O7iigiyVm7H6auSbkH4OdllLgyfmhe0=;
 b=B3sV7EWnA03VKEbcUghpX7B3lTAV3GIq+CarMFW3tsj7nd2UjQUkZXkAcs1DP11/zK
 +d93jeKiiDK/qxvIlDIzTxICxBLfjgeichUPj7E97DXYITzsPhqCsNFAs0OLjV3Slhkt
 iDjgGiBdbl/I+UheG33u/IDDxvQCN18vwcLxBuWPV/ldnzYVKK7i/2aMQwaSGaBCZ9Am
 EeHGm4s748M2+6iwzYhTLCumIA8s4XLyWZduRaTpgKOExySxBRT02TrnnWcVL5nLh9c3
 HEdApdag2bP7ev7QXwAuxP93ufq1XH/t/k/Q0BN9dV3dg7D3qGR7K+1Z7cDlms+WIroC
 0iIw==
X-Gm-Message-State: APjAAAVtOAZvaSHc4FCH1HutiVI6nxHKq8ebtlHeMGCuhUH3yUe5eqfj
 XcPIAyHU6b+uCpnZCjDJwwSwXMrPvjg=
X-Google-Smtp-Source: APXvYqwTMiFzb89k+OzaDeG1ErvqmwjB/WR+4vAZ0D34Bp6gF05DDbIJaQoNiA3jALnCB4WBKi2Yaw==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr1309662wrs.314.1557741203610; 
 Mon, 13 May 2019 02:53:23 -0700 (PDT)
Received: from boomer.baylibre.com
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b10sm24629084wrh.59.2019.05.13.02.53.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 13 May 2019 02:53:22 -0700 (PDT)
Message-ID: <dc6ee617fb0902ae05289b2bc794c8362fd08eae.camel@baylibre.com>
Subject: Re: arm64: dts: meson: Boot failure with using eMMC
From: Jerome Brunet <jbrunet@baylibre.com>
To: Bob <pigiron@protonmail.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Date: Mon, 13 May 2019 11:53:21 +0200
In-Reply-To: <7yaiVYWS-VlbP5H6BTXnSiNE_w6ZJQRMX8DjxBa7gDLaZ4PoWFPg_CZkd9EU0-UVVuGvpxrlTJR1_6i64BP7eSb3XZdCV9vv3NFhHsmifA8=@protonmail.com>
References: <7yaiVYWS-VlbP5H6BTXnSiNE_w6ZJQRMX8DjxBa7gDLaZ4PoWFPg_CZkd9EU0-UVVuGvpxrlTJR1_6i64BP7eSb3XZdCV9vv3NFhHsmifA8=@protonmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_025325_291961_22EAAF5F 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2019-05-11 at 20:49 +0000, Bob wrote:
> Even though I come with a problem, I first want to thank you folks for all
> that you do. It's much appreciated.
> 
> So on to the problem. I've got an Odroid C2 (meson-gxbb) with an eMMC chip
> that Ameridroid claims to be an "eMMC Version 4.5 - HS200 interface with
> 8bit DDR mode from Samsung".

Could you share the complete part number that is written on the samsung MMC
module ?

> 
> I run the Arch Linux "mainline" kernel and it had been working well. But when
> I upgraded the kernel from 4.20 to 5.0 it failed to boot when UBoot couldn't
> mount the root filesystem, so it dropped into it's shell. Using an USB serial
> dongle, I noticed that none of the usual /dev/mmcblk* files were created.
> 
> I saved the failing boot output from the USB dongle, downgraded back to the
> 4.20 kernel, and now it booted successfully. When I compared the good/bad
> dongle outputs it seems that the first error messages were:
> 
>    [2.790141] meson-gx-mmc d0074000.mmc: no support for card's volts
>        (snip)
>    [2.799730] mmc0: error -22 whilst initialising MMC card
> 
> I then did a bunch of "git bisect" compiles on Linus' "vanilla" kernel from his
> git tree and ultimately it pointed to commit:
> 
>    arm64: dts: meson: disable pad bias for mmc pinmuxes
>    96a13691c1ddfafc301d1ee451d91fc2cca48d27
> 
> Sure enough, when I now revert that commit in /boot/dtbs/amlogic/meson-gxbb-
> odroidc2.dtb on the latest shipping 5.1 kernel, it boots successfully. That
> same 5.1 kernel fails to boot with the same error messages when that commit
> is engaged.

Would you mind trying this branch from kevin:

https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git/log/?h=integ

This particular commit might be useful considering your bisect results:

https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git/commit/?h=integ&id=1c10023f4d1b75ed164f60bb0ee6bc239655408c

> 
> 
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
