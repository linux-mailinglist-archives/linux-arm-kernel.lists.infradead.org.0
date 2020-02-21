Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E5B168812
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 21:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2DFQRYx8Hegn7yI2YUFnZ3COWgNQxKnIJLQjvxkOxc=; b=AHfkTBPYaFzXJA
	DLpbCzWBzXMq5dzkHNRFL5N8xBb0c0UxQmZjMs4HSL2yqicAPYNObnpwbfHcLWJIB9YoUPfDH/97E
	KIMFqss+yAhejpPw4sMQUCYGRTDtTHP3EAdiCubPdSAmrpz5PXi9mmil0/zYH/KbU1zRfXI+QbUs+
	6KMaPUKoduL489DkutaMgvfH1WPwqUmhmDt6QZ/M/3NSJP6ADRY+QT2501vCFKgHTI3755ymyNa7a
	sG1NJDe1jxhWciSEXZ/9cgJ0Xg4vg8vbWwa6+qKrLE5oEFJ8nknYyhy6lwlfGYw1znybDNy89oG/I
	CC5sk/MSeEjLkqucS0uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5EYp-0004mF-HZ; Fri, 21 Feb 2020 20:06:07 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5EYg-0004ln-7g
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 20:06:00 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MxmBi-1jMTEd0f54-00zBwW for <linux-arm-kernel@lists.infradead.org>; Fri,
 21 Feb 2020 21:05:53 +0100
Received: by mail-qt1-f171.google.com with SMTP id n17so2190235qtv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 12:05:51 -0800 (PST)
X-Gm-Message-State: APjAAAVqZKY0/3rvClbOAKrZzBXx7AaIBe07NhhyToVpRSucKLJd9J5i
 UH8kgb3hZpFENwUDVpjni7jxlUPAfzkhFzg8T64=
X-Google-Smtp-Source: APXvYqx42gswlIBQGfi7okQrtqeFEqiicpefxVgLD/zbkLUQv/uLhsMFE3QEhmg8k9YNPL1ulGl97PB0mG7GNmnxYno=
X-Received: by 2002:ac8:768d:: with SMTP id g13mr33583872qtr.7.1582315551015; 
 Fri, 21 Feb 2020 12:05:51 -0800 (PST)
MIME-Version: 1.0
References: <20200221180901.15812-1-tony@atomide.com>
In-Reply-To: <20200221180901.15812-1-tony@atomide.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 21 Feb 2020 21:05:34 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2C6EV0En1hGuFxCRGzgf2t3-5DAPDUDQc5BmGHm1-t9w@mail.gmail.com>
Message-ID: <CAK8P3a2C6EV0En1hGuFxCRGzgf2t3-5DAPDUDQc5BmGHm1-t9w@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: Fix compile if CONFIG_HAVE_ARM_SMCCC is not
 set
To: Tony Lindgren <tony@atomide.com>
X-Provags-ID: V03:K1:wH/pMtZiRmBWJtvVAGEPj3VLvU6hrL9AvbULgZvZswEoDEvQPoA
 OotxEkqlLTlDSTq+ssaKsdMeyUEtgoRQEmkGwDnXJxjwOH4RTfa1yTcQPZWYlPoBB6Cu1PI
 HXIV50+UEBHw03RaGPBpFPQr/hzewvqdvqH4UoAdz5VI2nbGU+03koy88BiKLyccp3h0OS+
 0e7M+NRwE0LyQSCkIvsFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YOpCOJNBiF4=:8g1KislWGounLI9lyDierS
 pDtIzv1thhIw/CKJVmUY5E+UydwFoKPQBkT80GY7mvVTPKaJLBRkMFNwpwe+yiqgpMO59dI2T
 bdheP2OalBiRYwHjTwSPeLmKJczelbvNuEUVzDScsvV/rzZzaGdgqLNWkAkGwfoytr23fR93L
 gCBtOPujAY/gmaIKD5r8QQ06XSTRjzFIb7wQ51QxkOmi2pRcZjS5YXQcKnD6TFEQVgelm3NBr
 WcXptJ493BFlQoh2nCciceVNU0LkK019XXenbubYaNMy11NhAhaZPu5oJD2vXp53LcNj5CWaA
 SPEjbiq9oZZeVzfHHB5FUcvnJyrGUvX3e3VODyudxJotoA8oKLJsA1ZmBDB5WjK9ruz5Impsm
 iL/TVbex6h1+I1ZiHyK6atNjoTvndBP2tO4pUsiwhMsG3e72Gj730FVEcsdbp4Mq0CKhyBCGv
 pGBSWNSCi8RJBpP1uY9+c3zr7XTOU5qS0UGCzoDadmvVL12fi7XaxNGEMqBjQ+ayetqQY+DLq
 l5KS5tXe2orQOL3EBLWomK0wLW/31ttoP0sLyVoB266qMBPacu8YZNfp+QsiDOW48amLG2986
 IVl/m+86S5SmfhJs2WoOqaiteacvks9XeUheHgrV2Rq4IEaTX6HuWNxOdwcbXgddyvCyyNHqy
 NvWL40d5VTmQL8wTkXANZVNUx+JYqppaoa32imiVPOabWLvYggk16mDer+tpsEgp64ErMxK4p
 Vy44oKBSEKtf3u6+UeN9peWJlJsx79WKwbXbctMCVrMmuq4TQVNCzpvFgJff06kdGkmNNkO36
 p3CU8Nyz+EMZqAfHUA4DJnHa+U8xuuJpdf+nxrMVXljRMiETcc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_120558_569052_18CDDC15 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, kbuild test robot <lkp@intel.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Catalin Marinas <catalin.marinas@arm.com>, "Andrew F . Davis" <afd@ti.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-omap <linux-omap@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Steven Price <steven.price@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 7:09 PM Tony Lindgren <tony@atomide.com> wrote:
>
> Recent omap changes added runtime checks to use omap_smccc_smc()
> when optee is configured in dts. As the omap-secure code can be
> built for ARMv6 only without ARMv7 and use custom smc calls, we
> now get a build error:
>
> omap-secure.c:(.text+0x94): undefined reference to `__arm_smccc_smc'
>
> Let's just ifdef out omap_smccc_smc() unless the CPU has selected
> CONFIG_HAVE_ARM_SMCCC. The other option discussed was to add an
> inline function to arm-smccc.h, but we'd still also have to add
> ifdef around omap_smccc_smc() to avoid a warning for uninitialized
> value for struct arm_smccc_res in omap_smccc_smc(). And we probably
> should not start initializing values in arm-smccc.h if disabled.
>
> Let's also warn on trying to use omap_smccc_smc() if disabled as
> suggested by Andrew F. Davis <afd@ti.com>.
>
> +#ifdef CONFIG_HAVE_ARM_SMCCC
>  void omap_smccc_smc(u32 fn, u32 arg)
>  {
>         struct arm_smccc_res res;
> @@ -85,6 +86,12 @@ void omap_smccc_smc(u32 fn, u32 arg)
>                       0, 0, 0, 0, 0, 0, &res);
>         WARN(res.a0, "Secure function call 0x%08x failed\n", fn);
>  }
> +#else

Looking through the callers again, this can and is only called
for ARMv7 CPUs, so can't you just avoid the #else path and
turn it into a link error if we ever get callers on ARMv6-only builds?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
