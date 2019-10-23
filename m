Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E71E1D7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IDuejfCnj4K8Ch/pgT5B4lG6oYvea+yXZ5w3yVUNz4=; b=Eo6Ab8Iun2Qekq
	ZPGKRApA89W/kH4QcF8AlW9GWT2q0ZK8yCdykKEQwUEeQVv+ZsKAJSmhgL0o+abo/3yVYSGCzlRqo
	VN0F4yAd/7TrmURWwnSvd5rZx8duGeTElSfQJeoq0XjiNQ2qSJ9Gv9uU2wH+TbFp9WP5k8lU31xVG
	LK8yYTJ0nIJ65mLauMh1yI/FduOPw/davxIjDBi9WLDU2tgY+0t+JGCAFKfyCEPM24N/e8qLzmlPt
	6Da2VRDUfvCaVEe7TkVO2Y30s8vKTL7urLz1G6esdCJXrQ+0TGGvDoCjFPT3qJYjtUbiRiORZ8Cgt
	u4NrrkJSCRsfJviWDgAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNH9Y-0001m1-RX; Wed, 23 Oct 2019 13:58:20 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNH9O-0001lA-Qy
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:58:12 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MP2zs-1idfwK1HTQ-00PLdq for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:58:08 +0200
Received: by mail-qt1-f174.google.com with SMTP id o49so24563552qta.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:58:08 -0700 (PDT)
X-Gm-Message-State: APjAAAVvHET0g0VJV+c/x/nhG0iZehskODh8nDEXPgFy4Mt25q51oByS
 WP2tJfOR2jXU1oar4udVyk8H3EXZk/tfPlym02o=
X-Google-Smtp-Source: APXvYqxJH+IQGSDqFR3s406c31Lil6nKN+3+UehR3Vy6jXtDo7t9tSTK3nMWgp2PtcXo9B5NCXhOUradIyavMq47Rwo=
X-Received: by 2002:ac8:729a:: with SMTP id v26mr9069953qto.18.1571839087129; 
 Wed, 23 Oct 2019 06:58:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-31-arnd@arndb.de> <20191023134420.GJ11048@pi3>
In-Reply-To: <20191023134420.GJ11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:57:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3qTgBkWnuVRa-90b1d6grGhm7R2ef92YdkVmUr0Fw23g@mail.gmail.com>
Message-ID: <CAK8P3a3qTgBkWnuVRa-90b1d6grGhm7R2ef92YdkVmUr0Fw23g@mail.gmail.com>
Subject: Re: [PATCH 31/36] ARM: s3c: cpufreq: use global
 s3c2412_cpufreq_setrefresh
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:GLe8QobF9yCpS8WmSs9o5ZsbiyyJtQpa56TR7BVrXRcSNv51kDy
 I5a8ZmczeAH+HhTdpT1xWBAgbOXdoeomp5Yw5fdyaOB7xBYNzBCWiVLWXUTIF59ZEjcijCa
 B7deAOmJ9alIDJLhOzRsLSYy8xBPZ2pz7vI+sHsn3sfAUIUQB2R88oW+hijyXTVP9BJvdlW
 03Q63PjiapNH7M4XrW5jw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P9qpwMirU+o=:K2tR3oKIo6riUzsOPsg33l
 sETXptRlfACByOj2PK2McMX8HYJZLADCuFa0Tv9s0GNjCeALax0jD/UIklyXsn/lNTVtY2ZEl
 q415EHVr9uncVAcBlf3Wf23wls0win1F0SaDX6IPtU6ZyKP+tKXv450txx+grHrp+oFySr12G
 EtDrHxdFsGbcM/vDNUsIbIvPZcl8ZdCYSeFDueMDXyuvRcqsfU/gR+8dPQqHWgM9B/bAx+B3Q
 VzxsH3DhP9B8Q/jw+C7DlM1hdObWn37O+/vixV50HLOPCLT7BSSefSlHfgyGNc5qE2BmJ6DEP
 AKDlpYWNV2rJ4iAWnlkBTIXjrhmLddmswIOF3yws33ZXwwuEQAU66Gol+ou3p2dhLFCh+xVxD
 T6OCxHMWzRvpOoGR/KFk8s9W0ZN5UtNH+JTXJE87+CZFs3/H3xFlwiTTlhXA9E7I4groRBDzi
 QaAMI17zcWMzD0MGPUCObeiqBDgIdNXcgtJqcqDVmMlW09BF1Y1OtkYbL9ldONdMQ0hveZh+x
 8Qs2efQHDi2pEzjTR/7TGzEmIr5CvhgWbyiFO2+n6N+gokFPtWPXb13kyPez1Qw2+yx7W92IG
 l/QDmRkphNEVqwLUoKrNWzoruWvMT2X3lgD1AxQrOXGz1bvLzmlkMD+E/IDFTOQECPp6HDj7o
 Pudf7Lq0/x52n4yLbhC+Zkh9kh4aB4RWcSABBVbbPBYnEIRiyu56RWlqnI4yf4dCc8673mU2G
 wpgF+pGJkP8MrH9que+Tbn9X1g/yF28J7jDGHNrWnufMhjlix/hTivwmwkwvZTPHf0gUAu1YJ
 KfvpTLxCbiFBvlfha7URq6o3EIuRyiyTAAyjHTnV2uRLJ8blDvnoKwHwlTgdU6dpUPUT6tCj0
 D4c7FTj5/G7fF0YnZ7DQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_065811_162833_183F22CE 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 3:44 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:30:15PM +0200, Arnd Bergmann wrote:

> > @@ -246,6 +246,7 @@ extern int s3c2412_iotiming_calc(struct s3c_cpufreq_config *cfg,
> >
> >  extern void s3c2412_iotiming_set(struct s3c_cpufreq_config *cfg,
> >                                struct s3c_iotimings *iot);
> > +extern void s3c2412_cpufreq_setrefresh(struct s3c_cpufreq_config *cfg);
>
> I think that it does not cover the !CONFIG_S3C2412_IOTIMING case.
> Either you need to provide also the empty stub or add default=y to
> S3C2412_IOTIMING. Otherwise cpufreq driver might end up without this.

S3C2412_IOTIMING is not currently optional, it always gets selected
by ARM_S3C2412_CPUFREQ, unlike S3C2410_IOTIMING which is
only selected by specific boards for reasons I don't understand.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
