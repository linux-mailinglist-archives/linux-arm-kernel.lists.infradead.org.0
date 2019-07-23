Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA0671CD2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6GROgYbT28UbyzLy88kZ6sUi7401mEUJAgkYtNnqoeA=; b=DSjZYoJ+IPlEwWAbZLWw4VjsN
	2OIhKvsXoOYM4nUc66aNqJDicoGNQxgAbs2bpT0o6LfOliZCo9pXiz4dgVkE+bSTB0lSFojse7cII
	vMltg/F1JpVniwJmJ/PAoUGGCtHrxon9pTy0/rpXgS14t90ddasHBoCR3kgKGkeh/CMn1CKcgpPds
	T6AyobXJnswF4ih3fqA8HP1F82IMZPTGSc2IUSvTJHtaKSPTbCKTqjzYUaAtPdKbTYTZvwj3BTAMB
	Sa4TM4dGzt5fqs4cwYMD2/uovgOa8tEiyBV+pDpbM+QE4HlXyZfKLjiyq3ad3/MBBcRsm55bkJ2UO
	JHlq44zDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxZz-00046S-3C; Tue, 23 Jul 2019 16:23:55 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxZb-0003wM-DY
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 16:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qo/hPuXqdzw0fbAvUNBNIamCR5J5EyfzbtOH0y97n24=; b=MBHk0SJ9C7C5kyImuTBsuVgjbq
 bD38Fwx6ZyNXFF2TaNmky7AMXNf/ZeC/gdfdhWVGu2g+q6xr8n80XxhZCGFn+hbbkknC0iQrybZ39
 l3qSRHkdee9emKlPqq+M8ilHS7vGR4WhvymMMullBD3JicY6Fme43V8niLwbYH/+1hzHSvhkcFzUa
 o4JuGr+pmW5QNEHRFZboHUmvm73+nH8KkNFfZYbsHZbo60ru5A36+Mr8f680w2godN7c2XtOVIAwp
 l5ccNlKLVivTR7gupC/Drd2WqUbMkXZfbIewH/YoF1+17tWMJXAi+eVxn1z4hB5Vg+iDzX2U/vwYi
 KsxH2xzQ==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:52402 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1hpxYq-00ACvU-41; Tue, 23 Jul 2019 12:22:44 -0400
Subject: Re: [1/3] RFT: drm/pl111: Support grayscale
To: dri-devel@lists.freedesktop.org
References: <20190723133755.22677-2-linus.walleij@linaro.org>
From: David Lechner <david@lechnology.com>
Message-ID: <1c988006-af6a-934c-5661-853cd9842c83@lechnology.com>
Date: Tue, 23 Jul 2019 11:22:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190723133755.22677-2-linus.walleij@linaro.org>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_092331_674464_EF0E0B31 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/23/19 8:37 AM, Linus Walleij wrote:
> Migrating the TI nspire calculators to use the PL111 driver for
> framebuffer requires grayscale support for the elder panel
> which uses 8bit grayscale only.
> 
> DRM does not support 8bit grayscale framebuffers in memory,
> but by defining the bus format to be MEDIA_BUS_FMT_Y8_1X8 we
> can get the hardware to turn on a grayscaling feature and
> convert the RGB framebuffer to grayscale for us.
> 


What would it take to add proper grayscale framebuffer
support to DRM? I've been using the RGB to gray conversion
method for a while now with st7586 and it is OK but is
creates extra work if you want things to actually look
"good" instead of "OK" because you have to add code to
userspace programs to craft images in a certain way so
that they come out on the other side looking as intended
on the actual display.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
