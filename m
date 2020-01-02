Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CA412EA52
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 20:26:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nc14NEApYiq3UteIAS8SjF7J0hDbzSlcO5lwgjtRZyQ=; b=ugpxhE8vnwNGLo
	LiMjGx9a2D/SObs8eiTBoQmYqY1dw2m1ti6hsiVi9J8/31wugy/1yUnPagPhnih3Y+p7GP5KsfECb
	vDTQIly3F8ufnWMeXrR6QZt3cAB0//puyjY5njiWhUUay24b8At+9uRBTyN+4uq1abnSm697foiBM
	TjHPkeDNpzPO/P2IDPAsAQDrXLrn++WIUFKhFB5RxivVsawrqj7MlRQahbDGwdckTLbv5f4LxiNvX
	xs5hrl1Yc48zXyoyl0hEEXSgpcUP2XccFRIk1o2E2nxNFuPn4VizGqwb4tQRKlQJlP8JZc/hyYDQ4
	1XR5cdpP8uIgTixLrrGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in66f-0002xB-Fx; Thu, 02 Jan 2020 19:26:05 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in66T-0002qe-S9
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 19:25:56 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MfHUx-1jONaX0avz-00gq0Z for <linux-arm-kernel@lists.infradead.org>; Thu,
 02 Jan 2020 20:25:50 +0100
Received: by mail-qt1-f179.google.com with SMTP id g1so28450052qtr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 11:25:49 -0800 (PST)
X-Gm-Message-State: APjAAAXrjVONdvLWjqq2SowBVqvoe3fGCqm5FP9UjqBLOI3RuJWqeQiM
 cwsAIkxVIWbe58Iy88zxG4GHGqeIhs93AyqQywE=
X-Google-Smtp-Source: APXvYqzNOUcAjBgOm/nzWYpzz4pDGlCxDb5jInGBEYDjpXkYEXeZpOmcxv95mHE+PF1z0cHjwhWvI+pXUUl/cP5++xQ=
X-Received: by 2002:ac8:3a27:: with SMTP id w36mr60002412qte.204.1577993148979; 
 Thu, 02 Jan 2020 11:25:48 -0800 (PST)
MIME-Version: 1.0
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-2-amanieu@gmail.com>
 <20200102175011.q7afo45nc2togtfh@wittgenstein>
In-Reply-To: <20200102175011.q7afo45nc2togtfh@wittgenstein>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 2 Jan 2020 20:25:32 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3a88e=hkzYG5mj=NuVQWMtyougkKzBznnn2y9ZoZfEGg@mail.gmail.com>
Message-ID: <CAK8P3a3a88e=hkzYG5mj=NuVQWMtyougkKzBznnn2y9ZoZfEGg@mail.gmail.com>
Subject: Re: [PATCH 1/7] arm64: Move __ARCH_WANT_SYS_CLONE3 definition to uapi
 headers
To: Christian Brauner <christian.brauner@ubuntu.com>
X-Provags-ID: V03:K1:c+tiz0hNiOyZW3MkP950bRKVWjqHg3rsZu/HyZ9fX6anhD/cxjx
 yA63N9I0JYBhQsjV7vrnC3dajC+xriBxQLmvuXUxcf8Gu1QVrZ/JCNN7ZJtFtleY7otZF/K
 jT7gMdT7fzPrqJTQPpK7ttxgYyJm2byrgmrUkbmQiRVpS9u8Is1pvNGUnejyYR6h69eVvO9
 9Np4WRxGXhRoTVc9E7qlw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TK+VQ8zjs3M=:J+q4iV943awJz5UdAgloHx
 f9F3Vl0u0Ju49cIrLDlTu2wnJbYT0aEVu5ogL3ZmqbC1ygz7S4ZEU7dlsFgK/HsHA1MbVGd9n
 HyVPUz9gO9XoWN9QCzIgj33Pa/Ler4iZuZ3BzD+Akwqge1VQhcIERBDz7KO4evBSb0dYHmlBZ
 kX2W8rgyOeKbHJstFfxtF0vGBVx9tegSGluUFqKfWM55CWFYyCwAj/Zsun9IHxAwBopHUpazh
 HJEj3szDaHfjaHGWg6yPAG/06OIVEeMJhwluAjl+xJ64RPoRQCEwdplqwm2B32DQWDzEZCEPP
 ck3xH3qyG3j9/5FpEjoeydljgamaDOIOvClJEp3dVos4Lt7170X4pvDCXeRj6tLPJWVAEcPPM
 +uqt4k7u4n2ShdbFCiFZTG8I9IITVroZIq0yN2/CofCpLd91ctMQXdjvM9xdnKauJVgBz368F
 yu4JH+L3In7DMjem1SFN/VNPjNbjSXkECu+YSf63f+V+T9/okx/pHvavd9nT9XihDKNwVCwOe
 SFOUw3WGUVhRrpCMwL9PXpLm0UKtHFageu4pmHhysoHdfUyYR+OVmMlsATIgKZ3X0mqJdcnpB
 hPeOW5b0tlCTskT088x1BDlkWoCZrNMsEOUwJdvQD4uZNBY4YUVfHV8R+p3iFNy3u5McdTSdG
 2wmMiZv71WR1n6uyMt8CVjMNqWUXXlV0eljnZzVdrrOPhXeXIJ7OQvjzX2TBFgtf38GlKOrIq
 VjqJg8mBFxieXh63DrFnpyquTgL88ps/2zCLjmsSuaZWs/YfO44d0E924jAO4wiXGZcPfgp+p
 pMZE4geADCiWMkINYbGttRVZkmvo02OakJxn0H7Ko+DAEyVDGvWT0hxOJvNPsE3h2HziMr3Gw
 x3QxX1Lo6z6PuJAD2+oQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_112554_202531_BF8835A7 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "# 3.4.x" <stable@vger.kernel.org>, Amanieu d'Antras <amanieu@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 6:50 PM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
> On Thu, Jan 02, 2020 at 06:24:07PM +0100, Amanieu d'Antras wrote:
> > Previously this was only defined in the internal headers which
> > resulted in __NR_clone3 not being defined in the user headers.
> >
> > Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: <stable@vger.kernel.org> # 5.3.x
> > ---
> >  arch/arm64/include/asm/unistd.h      | 1 -
> >  arch/arm64/include/uapi/asm/unistd.h | 1 +
> >  2 files changed, 1 insertion(+), 1 deletion(-)

Good catch, this is clearly needed, but please make the patch change
every copy of asm/unistd.h that defines this, not just the arm64 one.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
