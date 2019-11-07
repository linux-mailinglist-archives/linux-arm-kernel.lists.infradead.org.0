Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F5DF3738
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 19:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkqtQwZ0pm/aLoc+6y11S+3/YIpwfMG31bhIS8GzZos=; b=e/NbVwPk7hXjjv
	Cen7GBM+22rq1kE1c1zp2BQWWyg8Qq8PkpgackchdA/2eqG/yTGE0tWK3uKukGrX/D0JPNjVuMfnO
	2BLsAr9RWgA4JAhOPdlYvAKCfCM3GSZ+VHH0aBBnu1OXT5V4Hawq171b/IvmNYlJbshMmqH/Yk5yL
	JYNANkcOjS4zHlNrINAkh2iELioYh4HzpoVeqY9GqJpO80UgYaEa6uK7HECgWoHVOHbgz8lkh4pBm
	7TQlm0EN41gBcgOhnwUGqG1+koea9cw+xtiiExCSvgbxewxuuxPuNXl6REGs3yiiKPfEHyI9UumDX
	eBbTwMJNLS6WoHRqs2zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSmWs-0005Wa-Rq; Thu, 07 Nov 2019 18:29:10 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSmWU-0005Jp-IF
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 18:28:47 +0000
Received: by mail-il1-x141.google.com with SMTP id r9so2695726ilq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 10:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KVsX0plG7kWfm3P02pO+fo14WiW2OYmEjfrTlpA57Kk=;
 b=iIUnznkQM8+LTZslY51nCW+B88zOyii4j14WdIukoWImRfz8QKMRl33QBS49coSy4M
 YmmT9hBqoki7nZGhBLwF60dc4nTY95dXha4rWOLQWT6Hf9fGLbA1hXIdfT/MY0zXlD0h
 aPdFGp7drvTMApV7XE68Sv4+ukcrjoEKvPymyJvsXdk5G82ItFK2bVD7HDHKJmx63rxd
 7VPNwO7yB2QyPxvT5ouXo1caxbPj58Anhx8gWqhX4xWuyXgybVcqHDOFRhHFa/5pHwhW
 M03JmXaHa9M+GMHZtPymEXj7x+4pNNw84Hhz7ZA4ZCapH5R35lUsz9tpfrZ/0g/3FTIU
 ehUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KVsX0plG7kWfm3P02pO+fo14WiW2OYmEjfrTlpA57Kk=;
 b=F9H4eXnAkmqE2YB596zHoZu3jzpX1QhtsDwgZ7MXStluGqxWyMpn6IXH7CJCG0qWk+
 bNYcSU2ew7WUH/uVICjuRRIAwDlyd+jd8uxZpCnucn4q08ZZdv7yQ2HgSweSuPHR64oz
 QaT09D2t8hGlGteX+5nvV8P7KIDi4IHi0Tf0Or4WYn6Cdom0kvRhANGeUimxAkM/Louo
 abMggKOxDflQO51onl6z7sXGfEsAGXQ6w43mdfATaOZFBfRys1FUFOcVULnhnbCYGRWu
 JMHpI78oqdDoff8ioZy6eZVaoKQbCYcUO/fQ4RKwn6BsV9vl5eotCe9dEbDYQ6S7sCr0
 bmRw==
X-Gm-Message-State: APjAAAVm0Sur5QGyeaEkDRFhk9xSU4na6+VRDnBeIIllGQdf44ZxWLmT
 2Tnfj+hwayle60SPx9ki1di4UPrcCTIwkVhl1bqQjw==
X-Google-Smtp-Source: APXvYqxuwrk3iVRkNJTertThk+4YK/U7XV1cVay4/cEzR5BLoIUVQPSOkQbwZsIHWnjkWHUNQMQerInq1AfEEEQ7Pg8=
X-Received: by 2002:a92:1b1c:: with SMTP id b28mr5944903ilb.278.1573151325737; 
 Thu, 07 Nov 2019 10:28:45 -0800 (PST)
MIME-Version: 1.0
References: <20191107121159.GA9301@jax> <20191107161644.GA8304@jax>
In-Reply-To: <20191107161644.GA8304@jax>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 7 Nov 2019 10:28:34 -0800
Message-ID: <CAOesGMjO5qsueUkmdJWpKtxzza7NNa7HGWo7N8nmTmdyaV6Shg@mail.gmail.com>
Subject: Re: [GIT PULL] tee subsys fixes for v5.4
To: Jens Wiklander <jens.wiklander@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_102846_601267_4A8782F8 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: SoC Team <soc@kernel.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 7, 2019 at 8:16 AM Jens Wiklander <jens.wiklander@linaro.org> wrote:
>
> Hi,
>
> On Thu, Nov 07, 2019 at 01:11:59PM +0100, Jens Wiklander wrote:
> > Hello arm-soc maintainers,
> >
> > Please pull these OP-TEE driver fixes. There's one user-after-free issue if
> > in the error handling path when the OP-TEE driver is initializing. There's
> > also one fix to to register dynamically allocated shared memory needed by
> > kernel clients communicating with secure world via memory references.
> >
> > If you think it's too late for v5.4 please queue it for v5.5 instead.
>
> Please ignore this pull request.
>
> "tee: optee: Fix dynamic shm pool allocations" is not good without other
> patches, which are not included here.
>
> Sorry about the mess.

No worries.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
