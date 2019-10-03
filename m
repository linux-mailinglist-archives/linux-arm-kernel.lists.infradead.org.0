Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1B4CAB74
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pHxXOsIOpt2r2vN3IGB4JTsuewVuAi4t1+sXZ6oSq4=; b=DU5bCkMjOXkeZc
	ViULUmcBlAFCE/d/qH+hiMcQuI5ToApZMY0Jgu96H3lD5LvvfL/JbpqnkC3+vOoiIVyewMP0vuoKe
	sw8qIpu2m6w6JJxhyV9cTkDTuMPVGCEVx1UvXFs9lYag6832a0tCubKK9SmPc/vTSbLOql92DbbsT
	ilDQZDiFgkYWYIMyz6KcolrB1Lp6FwHhUwbcfZQ5PvVR5WmEChAekKTlWU5csHRMu4vabL97sO69V
	yAuBoeyLi1VsLudm7W3V2hwBUqCRbj0fphdJzg5lKXgywB0Vqwq+1sF8ogwsZIJPjtkBXNXyp9bWq
	edJWeC6/hVIPD1bj70Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4uI-0006to-87; Thu, 03 Oct 2019 17:28:50 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4uB-0006sz-5O
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:28:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570123715;
 bh=1/9ytc+GiSYLmzLUQTHXod+HPAelk3SiwurUk+Qr1yw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=CJYOeogBGQo0GZboKNzoPTNFGJP7gyTe8ysUI62iHOFyQnMY/RnxxLPJXFY3m6aVU
 LoTHWUKCu1EBTOKHcImQvCF7pGjJ1bhUlh7jiJmQe4t+EjMIAidDjTbuVrYLfx7vYC
 w/NihBJnoa8wfRFhVXlCTAk5cLTu2mniycEzcyRo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.116]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mt75H-1i19Lu1F6X-00tPuP; Thu, 03
 Oct 2019 19:28:35 +0200
Subject: Re: [PATCH] ARM: dt: check MPIDR on MP devices built without SMP
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20191002114508.1089-1-nsaenzjulienne@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <e2487ea8-67d0-b850-af63-683dff498275@gmx.net>
Date: Thu, 3 Oct 2019 19:28:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002114508.1089-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:sY96XPCdbmODy3ENQlqjYJoCke2gtAyeaRHQ/ewzjOXNOxvx0/A
 qbuh9Z8YocIKS/wvcaobPGkEZeoW4UtoD0zFjrSOTvzB2S3MjUxsBhQ0ELhAx8mZNPUS83w
 sJU+6SLWL1qvXoaSnaGzdmjFYgEz2yAcUD6v3dnb7VNTV1KVvYl8aChNgpanuSYxw6Ooejb
 lzhdZTT81abj3HPqjb7Ig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:F8KbZNVHwWY=:JS9pNupe6kR583TYXbT6TH
 UaYtQkAAEYgrXx7mWwajxIETZwCTKTyfva4pSeSaX7cazQDSxqwSsPJhjS7cdcmmy9sQaI/Kl
 ZPUIbAvFllW1gJeQclovYN+ID6gkzaMlTkpntqQdFOiqMwdB9kWBRlwLWd/Os2Lt/HtjqTsH7
 clN650pzstI/5hsZgQv0a3EQ/DxCvRpY/8uGnREMtW9ZPBI/0OIMfqsbPugdM7C64PqPlmL4U
 Be7tTEsnYYjwkbnyujZv9BQzfhgJlk8P0pvNoPca8hexkDfh+wJktFtScnPyBk8jQpKNNqJ1U
 qEWDDfTPEKAGox6UXUphWMe4YYSZAnQ279D2rkSiX7r6tRGUjVaXnBoQ5DyK/zdz7U5hwKrdx
 H9pJq1WTRnxyWfLEd2SjStCS21pTbrVjmUkhfSH2t3XlTUX7Pogzel3vB4Oi9m1CEcRzqc0+J
 PD1410f+rGm3bogyd74o8CoeLRjexA1BH3Jkh8mK2HnNMq2RxvV27KZuAyU3wXPxSuNTG6tYQ
 G74aUtPwn99fsFNLvFfSDjnlJLePz0oOWkHkkFe3xckF09Y/CXopTtHqVC/mQa2GnxfTF71qK
 WWMtgGBAEjPsVZBr/T6V0GVhdRt9+36/OGfBX+d9NVoZIK0om+hY6X17Ia8eH6syUhSH1xtn3
 +HuqlQRJhrAaz8/6JqAtJIlG6VLlVj1gaYk+CHTIF3EheK4TtFZN0lGe+i7zEKvHbplLAqFca
 NwZEgiXI+KrRZMEtRTUcET8luQRjYcvMMDySRsAgs8oF4vHpgh1APRkDI5MDHZ1ElOHVH+y4d
 a7krHpVFk1jDG4Ys5MIz9qqNQBmrI7BQP2dXnTKRqzqUQ4hU4SAqe5KOOEVF/t3A+xu8G2Rhh
 MNenCWNqmHz2whisbbp691OBNxgoyfmkjuN6HNUrDuYIJduP470F2eEl+FMt6/YYR81rao86a
 llJwZcWjVcfqdRXISg1Zts5SYFaX1p9dR2/QP0oQIx6cuME3WurlroEaZbCDvxRFRceKYYHLv
 d0qxN6w6yhr40yA/z6uYWDXed1uC7op1mBAAcdY2VmScyOTYhrcAh1905754n7hkHSui+54WF
 kFgiSrnuft9aeSd957wKJM77N8Sy9yK9folc2RmpjN1vWWGyIbiUGmfJPLyw/kpv/JMCPLuNM
 8WG0zHrZlsx+0mC7feEPs/WQizIYfHZ2EpuImNcxT5R9IiSVGlEH4BXuHzAvyY88i65WfOyEy
 rJH4oBbAkzVsVbea10jG63+VJPQC75sq9fo33wFraGHKOPztjKmjBqLRpleQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_102843_499932_A5EDCA12 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>,
 "kernelci.org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 02.10.19 um 13:45 schrieb Nicolas Saenz Julienne:
> Currently, in arm_dt_init_cpu_maps(), the hwid of the boot CPU is read
> from MPIDR on SMP devices and set to 0 for non SMP. This value is then
> matched with the DT cpu nodes' reg property in order to find the boot
> CPU in DT.
>
> On MP devices build without SMP the cpu DT node contains the expected
> MPIDR yet the hwid is set to 0. With this the function fails to match
> the cpus and uses the default CPU logical map. Making it impossible to
> get the CPU's DT node further down the line. This causes issues with
> cpufreq-dt, as it triggers warnings when not finding a suitable DT node
> on CPU0.
>
> Change the way we choose whether to get MPIDR or not. Instead of
> depending on SMP check the number of CPUs defined in DT. Anything > 1
> means MPIDR will be available.
>
> This was seen on a Raspberry Pi 2 build with bcm2835_defconfig.
>
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

Tested-by: Stefan Wahren <wahrenst@gmx.net>

Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
