Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3243D67E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJJTW2QjUg4MvIh8mswDTY2t4i2sysNsWtd/GTrOIVA=; b=GxzxiikZZkvRL0
	23LLbodpOF6wQ8moA0aIa9ipq8f2xupOQwXM6+kFP51gdvoKJ+sbSALF7S3FRqO1D/Gyx/1+lREDF
	mi5Np43pAHIVsT7qTzyfP0ix72wgieKVOgvjYqyBH7nxpAIdMNnCU7pyV6VhV0whBHcHz4efDH2VP
	Q0WxmGrH9HrVaGIfXD3FWb82+4ufsiJnMgoMu5lbYSc8WQ+JkZ6pJCIOlN9zETa9v+gN4908UPkRo
	/FsuNo6aDwUJ0Yq89datmGxUZW9fTD8/y0Fcou8frpoNHViyJM9wJ6pHPHInfpJHROTHn6WNiLIHB
	qUuwM8LW6qFYEr6RvoRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham9U-0003mx-Oe; Tue, 11 Jun 2019 19:09:48 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ham9H-0003m1-0N; Tue, 11 Jun 2019 19:09:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1560280162;
 bh=MyYEwP7YvIobADb/WB/Pv8aOqt+i0pHQ6Dq2r92khBA=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=gvmActsI3L2uO9XTuB7f60MXi223Sk7gmKk7BSrcgHJ46jT66gjLVMXVuYHqS5g/R
 yudWpS2lDQBV1uwKkyzh/n9THuRHnf9KyS3UYef9bawNBS7DU4EqHwkYNfKh+54Zq+
 effT1JQSZnavts2KvzDxonOORBPLctGXcPUMEdYs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.160]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MUZKF-1h9S5J0lJD-00RKDh; Tue, 11
 Jun 2019 21:09:22 +0200
Subject: Re: [PATCH v2] pwm: bcm2835: improve precision of pwm
To: Sean Young <sean@mess.org>
References: <20190603090058.qd3tbiffmdgqm34d@gofer.mess.org>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <ed61d2f6-e78c-be75-846c-706d13d6b956@gmx.net>
Date: Tue, 11 Jun 2019 21:09:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603090058.qd3tbiffmdgqm34d@gofer.mess.org>
Content-Language: en-US
X-Provags-ID: V03:K1:R+eDHxD0pLN0T5YAgZaXQI22Dhn4+G8cW6Lky3fvktP53OFw0Sh
 DG2XQBezRaBCnWH4P9rMXZreA5slv354wsMeTVNY7aAaHSxA7JrOjNrjLuRoeYsr24aimWs
 XaK8S3snDBw4/BDrDDZc1uTVXjRt8X2Nk0S1+jtSeuVkb9u687/S7UrTwaZFBzMni5sAXTm
 XTYrZACBNgucWwtPjsl9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1FGf8NcD8NM=:QEZW6RBksuOdy5r12Vsy9P
 ep3Bjlkl6irOHhaRNYSnTlEi0OAsRVaDhIm2x09tecE4lzVGu0OGG+bOI91onNaoDoXoZU/vY
 u06rSi5Rh21JFi0nxQDKjCVrB7dUmMJuV4qkSqFOtyaAIdAr3KjFsGcrsIbgp83axRYfzYchk
 xVQDdrsMhIRj/Q/GuOPSWGSOvhf+DP9c44dv1thNxFg/sMjyRy1UrPtsdOotMablC+whZHHX5
 TLwTqSyz8QZ1wYwIslyfqhvnmUwAsGxqiMqAVj5Ff7W+tKz2hI75j82wslfrfsDAApueyRKw8
 B9i3WzyEWpVblyVQuK69OjbesWnskKQ6IYsNBY/oGP/BeB5Lthh/od2Tb6nhjyvIcsYy2Gdsh
 oY7Qg+elNMQxTsa4NdlSk/mfNdrQl6W3Q6GD2wc05Hky1FbjrcIdoK4aIixY7i1z7FrtbpnKQ
 A0YmFTLzuQU0+kS9cswSyMgmroyZzMfuAnsGWNHqF8hfsGpmf/dWcn9g5s90exeJR3zf5v0Th
 35OMrs8C51RnuOaX4Jajf87Nc9qixcYX+K9GoKRGUVN4CSao3Id7hY4aw4VpktYdqrRRyrgng
 VCsHaEmLUxdjZeO/8rgDzK4Bj/KMaCJBaiMMug9ORE6Wm02WC3cIKTFQg5cOJOG3gn2mZkBBo
 mQwAQGFaQEpxPcK15tFLupNTiImTblUncO3O9A0qpJi6nks2CoRLzE5EQazcFUvqHl2Q+McmB
 FbGliv/ZmqoJHA9tt/nWneGTqJLx0Ny7/PQuDpSC/z7IbnDGigWIwlHrlJ3BakxtbfQcp7vTy
 wgsgk2ztydt0Qt7887AylMY+9D3kUV/yyLQamHsJ7bB2DKnBNIhKzERhwaBZAJYCaUtZmCVUY
 Egn1M1ueuzbrJPG7AMeSYfSs6mug3po85jBCMqGbMmDPVlVrzVkFrcJnd2GorcdTYIOvi48ga
 6NdCBfvRo5COMUpOxtJOZtHyVIjuomEvy7dWZfzYAwP2aQ3d6fPSy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120935_344800_6C955873 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Andreas Christ <andreas@christ-faesch.ch>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 03.06.19 um 11:00 schrieb Sean Young:
> If sending IR with carrier of 455kHz using the pwm-ir-tx driver, the
> carrier ends up being 476kHz. The clock is set to bcm2835-pwm with a
> rate of 10MHz.
>
> A carrier of 455kHz has a period of 2198ns, but the arithmetic truncates
> this to 2100ns rather than 2200ns. So, use DIV_ROUND_CLOSEST() to reduce
> rounding errors, and we have a much more accurate carrier of 454.5kHz.
>
> Reported-by: Andreas Christ <andreas@christ-faesch.ch>
> Signed-off-by: Sean Young <sean@mess.org>

Acked-by: Stefan Wahren <wahrenst@gmx.net>

Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
