Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DA511558A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:36:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUPX03inBJXuv0HA4UtMePsBWvWxVwIwLTL8mReLwRI=; b=sj6i63Sp5AEU2E
	yoXtwCYpBkFepwBDMceCT7IEwf8dX1pwjKTnE88CqOwfjFWp4GTxD2bB9BgXxEgNPxXh80bLR/krV
	WKLRKHEkszUfNwZEHpfNv9SMfBaVRFms7JVdMcqxeB5W95YMmWZU6CWVcXBLtv1xOymLVIvYfVVjo
	ixZYNqY8VWduZHel48kB5Lw0Kxx9LQ+9e6fpzdHewGYSzOqp6kkUr0+ucutJeOu6PU23JC4b0bHCX
	IzmHzaxShvpKsnQTZf26kCly92j+IDWIA+FqDKFMGv56OX9QUm1zQZVCzD/pkVbboEIAhvLcIJ/UK
	nglg13X9qKM8lvMcQABQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGax-0001IX-3N; Fri, 06 Dec 2019 16:36:43 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGab-00017r-Ve
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:36:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id e28so8277695ljo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 08:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Do9Ixinmx7DWrqug5u9w6tASXApuWJdCd8LeAbdsBIQ=;
 b=TsZ6bc64rxzpqunpmQ9zZj07Ax4iRTEptSrLKQ+dpVUS7CBbthGk73RbR1sKm/ihVS
 Eiu+u06rthCiI6Gi7wf98K8KH8EWHvaP55qYJ0K04+L5SVwB+3JbhhE3zfvQOBdm3lBQ
 NJvk6wvXUxT1Wq8K6Re8tvnM9+Fq8zS+NOsTDH2SWIMDRPbfTbWoDpZVKislSid2cofB
 3uFp3q8ehVxp+1Kolsh0EWEkVcd3Qvjw/RKIsL9kVkDaFj9yalOgX5VDEszCHN6R/g3F
 uuNno5rQX5O07PJ3HvM0q5RCl3TYwMUHEfwXJJLchW8zq4VPmq+uqNeE1sCRKru0fuSL
 ed4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Do9Ixinmx7DWrqug5u9w6tASXApuWJdCd8LeAbdsBIQ=;
 b=j6pTtEdgDRHHNddrtULcMdr9+Gb0HWoeea8ND22gMDWwOifsob1hFcrq+dBN90T1xy
 EGF439v20LNTpvO1f7z5ubIfLK2GUG5yItpod2Ac3LqDaLniD+gc0RJiAw9AoxAUbrT4
 Aipe6FQda3D8YoMoMRNHKAsFR3/1y3H4idrT3U6UrAYGOenE+zlTUDqUz8wkxgdoiXYh
 KE+Bkow9frxW1rznm13188om+cNRooFxdKlYcZ0ybhCWJBqKbVznNA/KM9x3CDLQxNvk
 GYRDzSPoctNHnHTkwuqP+8dDfVDD+Gyq3yX+3YbcMzImBKXz2Cip6llXvG0rfJO7DzKE
 K21Q==
X-Gm-Message-State: APjAAAXvXf56T0Q32J/jG/4mDGKXnAk8FNPJZ+YqmjLWSJSorMCBTuLJ
 QwCNyfEjOA11pBEDfbW0K4/F3Q==
X-Google-Smtp-Source: APXvYqzFPZuwpYdyHCsG+D27+XkuBdXIZhP2CbCq8CsSbLiJU4568yp5Ua0bb5hzl4F2nEum2wccHg==
X-Received: by 2002:a2e:9b52:: with SMTP id o18mr8955227ljj.205.1575650179665; 
 Fri, 06 Dec 2019 08:36:19 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k5sm2572559lfd.86.2019.12.06.08.36.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 06 Dec 2019 08:36:18 -0800 (PST)
Date: Fri, 6 Dec 2019 08:29:19 -0800
From: Olof Johansson <olof@lixom.net>
To: Jens Wiklander <jens.wiklander@linaro.org>
Subject: Re: [GIT PULL] tee subsys fixes for v5.4 (take two)
Message-ID: <20191206162919.vilrybgbiewdl4d2@localhost>
References: <20191115105353.GA26176@jax>
 <20191116234048.oas2rlfwxlz65jvp@localhost>
 <CAHUa44EQ-1SUd0dDBp43_EGPMPArq_g8=1hSKZ3EC0uELUKH_A@mail.gmail.com>
 <CAHUa44FaxiMrGwOLPrej_zMrVFyBExfPTqeHfYfocpc8x8LzLg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHUa44FaxiMrGwOLPrej_zMrVFyBExfPTqeHfYfocpc8x8LzLg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_083622_099468_1A495DD4 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: soc@kernel.org, arm-soc <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 10:57:47AM +0100, Jens Wiklander wrote:
> Hi Olof,
> 
> On Sun, Nov 17, 2019 at 3:22 PM Jens Wiklander
> <jens.wiklander@linaro.org> wrote:
> >
> > On Sun, Nov 17, 2019 at 12:45 AM Olof Johansson <olof@lixom.net> wrote:
> > >
> > > On Fri, Nov 15, 2019 at 11:53:53AM +0100, Jens Wiklander wrote:
> > > > Hello arm-soc maintainers,
> > > >
> > > > Please pull these OP-TEE driver fixes. There's one user-after-free issue if
> > > > in the error handling path when the OP-TEE driver is initializing. There's
> > > > also one fix to to register dynamically allocated shared memory needed by
> > > > kernel clients communicating with secure world via memory references.
> > > >
> > > > "tee: optee: Fix dynamic shm pool allocations" is now from version 2 which
> > > > includes a fix up with a small but vital dependency.
> > > >
> > > > If you think it's too late for v5.4 please queue this for v5.5 instead.
> > >
> > > Hi,
> > >
> > > I noticed you based this on -rc3 -- all our other branches are on -rc2 or
> > > older.
> >
> > I'm sorry, I thought -rc3 was old enough. I'll stick to -rc2 or older
> > in next time.
> >
> > >
> > > Anyway, I brought this in to the fixes branch, it's the only thing we have
> > > queued up at this time so I'll give it a few days in -next before I send it in.
> 
> It looks like the two patches in this pull request
> (https://git.linaro.org/people/jens.wiklander/linux-tee.git/tag/?h=tee-fixes-for-v5.4)
> are still in -next and haven't got any further. Is there anything
> wrong? Something I should fix?

They were in our fixes branch and didn't go in yet, but will shortly.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
