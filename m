Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CFA5FAF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 17:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2djvMXcGMHvUvgUN9hdXLt7aVMU1UXr/i47qUYiIYY=; b=ukwQyrXQnmV2d/
	ySpFbeAPA3wWmhRuiUqgrpRpzVbO5AXp8bG2hTU3Z9abEBkk1ZCrVI/cpZo63WoZhSmrB4X1ikQqQ
	Ee6mpwqsAniMjwrdIvfgrwS2fKYVDt42Sbc5hyOiOgQoykhqbrbRnHz6ZLeow0DU0p45199VDoQ0v
	ycaN5Br2j54aO3/7mKEhCx8tv5IiRDp0OAi6TdlRHVCj4nc0b9AHWIUhAsfWR+qzewaOs6AN9AqX1
	3rHFJvU4WK7Tl8dy83UTE5d0daai/pTHyrNMXzO3YEpo2DFNd+O425LWp3WV5o7OwoJCQZjMRNgdS
	f8zM0VQSQlwJ5i/mfMrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj3m0-0000Rq-CE; Thu, 04 Jul 2019 15:35:48 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj3lo-0000R4-Aj
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 15:35:37 +0000
Received: from [192.168.1.110] ([77.7.33.110]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MzyAy-1iTzcq2h9C-00x4Qg; Thu, 04 Jul 2019 17:35:30 +0200
Subject: Re: Trying to make sa1100 serial driver test-compile'able
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <bafd71d3-da72-32b4-9374-9cf7711e3b33@metux.net>
 <20190703173945.z6vpyysc45cyysv2@shell.armlinux.org.uk>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <2486fe95-d27e-d606-b165-453ec3e937a2@metux.net>
Date: Thu, 4 Jul 2019 17:35:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190703173945.z6vpyysc45cyysv2@shell.armlinux.org.uk>
Content-Language: en-US
X-Provags-ID: V03:K1:ez3yBRKFoVkFFn3TL5mcXdjaLRqdIsu5IrETH8E11kunLD9MUtl
 GjUmIRGf0eYzMyHX38JykF3fU2rCQE2HTgqelNgJcWfrLUYgHffPzy2pCCUBNKGUzEhtSMa
 HX7mlpNfDkFRiBnPIrLCMB8CI7u34fOKTOWni8TOQCX/2XvAd8Wn+3Pp+BFWIef0lPNcc4s
 XX5hSeoDGhmqbFVXZIsow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fpTW4fCxtA8=:VO1WQjLgF2mfgJQHTNpEHj
 RouM1StkuqjLTIlD2lQubd0vavigjEn7PgSel8/80K7/FY1s1Fnbg22FBUuFSUkDtqf0W+j7E
 wqdfHrvC2HkDRuhCb/y18Ms6haDTlKgVBS/PfzLKCJyJNbR+EPy6mlwS+m26IY+cmuXRvLiXe
 5BM/SUSAg+FYtqh2JiVWXn4NjZDx4X8aGv8/gHLVGcQ3ur05UKy/ToPIY0R+YaLJgMSJABOJy
 hERYELy4qYlgPzkptzL4MbN/kkkeoaARVgJG0zB1WjNAeSmcBL9hcV5rqzUI2raYmSjlXbTY5
 gcd8ZSBCIwFhW2WQWRpDPW2SP30OF7nUcYfH02/8a4BHid9shtjzmYyKHVGaeilEklgyC28Z+
 qo10TF+uQQRgFsRNtZO5JE6zMu79LrbymUYpQbsI5rcbVxrjG3cwoNODZezsJfLMHwG37/6Ok
 v+7mEPiqWKH/EIr5zZxGDLhb+jh65FpbZWFWO/fIJv/wcRkFD7gsZpmf+nIB+P6z5D08GG3Ka
 pU9FXvhR9/Xp+rSllggWHY1l9WyzvodhqicNajE3l2TjsLa8GhCx5ygKBKxJRejsfugFXypbN
 TPo2LE6fv7O0NCWups73jHBSb51OKF9n3xD0Pn0Vf5G/BHk4aBHs6FA7d8R6Dvx6kFQRlQm2Z
 XY9tNzhLUH6V5bRAM4faz5aDVO2Lz5ZlrnE2IxtYadcKzUCRvzRRFgCe9p6YOKNhQtUcAROyx
 dKrVV+jNVLPyjFM+sx7lVhy47Ay9E3GFls2rA+r2Nv6JSFJSAuICy4dIhrk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_083536_667230_B8CFDADF 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03.07.19 19:39, Russell King - ARM Linux admin wrote:

Hi,

>> I'd like to make the sa1100 serial driver test-compile'able. This needs
>> the UTCR* define's from arch/arm/mach-sa1100/include/mach/SA-1100.h.
> 
> Let's wait for the patch series that's already queued for this merge
> window to land before we consider doing further big changes.  

Okay.

> What's your motivation here?

Make it test-compile'able (adding || COMPILE_TEST ...).

I've got some patches for reducing some boilerplate - nothing really
spectacular: just moving the common request/release_port() functions
into generic functions, so several drivers don't need their own
implementations anymore. (they'll just have to set the .mapsize field
and use use the generic functions in the ops vector).

Didn't wanna send it to the lists before at least doing some compile
test cycles. But I don't have that hw nor a suited toolchain, so I'd
like to get compile-tests running first.

Do you have some sa1100 environment that could test my patch queue ?


--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
