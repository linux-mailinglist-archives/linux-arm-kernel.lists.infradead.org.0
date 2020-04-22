Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC621B3899
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 09:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:References:To:From:Subject:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B3J0pZmxGQsSPBYiBcI8zr7wdTodEQAh2PjS0v9iL6c=; b=XrE9fTkDGLOeodlcpnROlDoyU
	hLbLbB75gaAYhI8uAEwxlvK4Me4sU7LFGUoIV4QaBbQbTPVhWa9lEmiLs0uNfxaE8IiUy1GWgDnV2
	wPv0yAAm/nRgTmPWuRzw6moOs1v15QDzwR6dGq+71EiXSd/PezXKon6yqHqbDY+WSkcap6NPAAPI4
	01Awb9KrQdmaiDULPckIsFtJ5V2BhH4kYRzvIeyUzSCyeo3OP7uklxWloz9bgqnHg6uKg9AQQCTGI
	eRLwhXhlfRN32AcyPxf/X0nWpkq0ysmAGzXGwlSE82h0o/x8CJZ8EOzuChpG3nPHaikcuA048e+wS
	M4Z6dgTDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9ZM-0005mJ-Lr; Wed, 22 Apr 2020 07:13:16 +0000
Received: from smtp.first-world.info ([2803:1920::3:7b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9YS-0005F3-J2
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 07:12:23 +0000
Received: from [192.168.158.10] (unknown [172.20.0.1])
 by smtp.first-world.info (Postfix) with ESMTPA id 186BD9740AF
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 08:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=first-world.info;
 s=mail; t=1587537887;
 bh=UaVbd1sRWB+DOsuECPoFQk/hoSRbr+vJQOPGIkfT0Fs=;
 h=Subject:From:To:References:Date:In-Reply-To;
 b=uo7+NIA5wvG95KGiZrwKnCNXsBIPbS/9oi3YriEsV31Bgb2uAfMkM/l+h1xR6wvF8
 XXGeL/cS2g1MnrlZpf59tXBHht/SuH9s3XBA8oukm989Hf5KSQtjHM/dKk5/lJfhBH
 bp9ZXITQX0eb7tL6CwR7YHS4i0J5D7yHce4M5ybk=
Subject: Re: 2 bug repport
From: alpha_one_x86 <alpha_one_x86@first-world.info>
To: linux-arm-kernel@lists.infradead.org
References: <408ebea1-725d-2f8e-7d26-a2cb4d7754d3@first-world.info>
Message-ID: <78db63e8-2c8b-ce72-7842-ec10bb422b47@first-world.info>
Date: Wed, 22 Apr 2020 03:12:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <408ebea1-725d-2f8e-7d26-a2cb4d7754d3@first-world.info>
Content-Type: multipart/mixed; boundary="------------399B3B7F337FD671BBE576B5"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_001221_104051_ACF6EE09 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------399B3B7F337FD671BBE576B5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Attached file

On 2020-04-22 03:03, alpha_one_x86 wrote:
> Hi,
>
> I post here patch for odroid C2, the kernel 5.6.6 is broken here on 
> odroid C2.
>
> On mcbin platform I have uSD problem, repported but no reply on linux 
> kernel bugzilla, https://bugzilla.kernel.org/show_bug.cgi?id=207083
>
> Any idea what patch try?
>
> Cheers,
>
-- 
alpha_one_x86/BRULE Herman <alpha_one_x86@first-world.info>
Main developer of Supercopier/Ultracopier/CatchChallenger, Esourcing and server management
IT, OS, technologies, research & development, security and business department


--------------399B3B7F337FD671BBE576B5
Content-Type: text/x-patch; charset=UTF-8;
 name="patch-5.6.diff"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="patch-5.6.diff"

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index b46ef985bb44..c6cf82c607f4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -199,8 +199,8 @@ eth_phy0: ethernet-phy@0 {
 			/* Realtek RTL8211F (0x001cc916) */
 			reg = <0>;
 
-			reset-assert-us = <10000>;
-			reset-deassert-us = <30000>;
+			reset-assert-us = <20000>;
+			reset-deassert-us = <100000>;
 			reset-gpios = <&gpio GPIOZ_14 GPIO_ACTIVE_LOW>;

--------------399B3B7F337FD671BBE576B5
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------399B3B7F337FD671BBE576B5--

