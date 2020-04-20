Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E331B0FC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqlLcj4NzE7XaueFcwz5rr7BDb9oQqQ912+2rpT1uZ0=; b=RoSE7yGj8pcBfm
	QMwP14O3szCTdXcCURfHVEfRRvUMKH6ahF87f1Boe8+Va5TyLcyZbwscomT0YQMeGNF4XfWl6Rrw9
	qf/E1lABscPCKTMzgkZbvQzwlaFj47QFQnrQ7FOhFQoBpdjSrOx1RhXMSxm2rgBIGOmzqj+InhZEC
	WNDBSzCO46Qu1hMKV53cqr+TdXOLXhEg9vq5h765e5UdUs5LwNlCxFbDnHyhaoV+ZY92M+/pxIAeS
	oJQ7402VgspJYBbIwEgA0Co58ps/e8M0ryJxiYq7IhJfOKedecs6K4uKgipvBP8s10hLNrdaJZgZa
	TLDbbCDcWQ6/TuoDuFTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYBp-00042Q-Hb; Mon, 20 Apr 2020 15:18:29 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYBh-00041V-1t
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:18:22 +0000
Received: from mail-qv1-f48.google.com ([209.85.219.48]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mwfj0-1j2oIS2egU-00yAtc for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:18:18 +0200
Received: by mail-qv1-f48.google.com with SMTP id q2so1854256qvd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:18:18 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ0FTDIIhH7kGtCjTbJXDLw2FFyNJipQlx5ayF/udeQTjSehwib
 MIj+yN75RIaOfFdaKSIdIAZI5JIokpG567etjwo=
X-Google-Smtp-Source: APiQypIYLpHDVLIMUalFL+Ue1X763cp1SLfC0IW6vt53VSaaqpIHDwT5p5Bmw0zf4vcEQTX/oZGO/0S8b0BoM+G1Upw=
X-Received: by 2002:a0c:b78e:: with SMTP id l14mr15824930qve.4.1587395897579; 
 Mon, 20 Apr 2020 08:18:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-3-robh@kernel.org>
In-Reply-To: <20200419170810.5738-3-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:18:01 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0NXDi-MmxP-FiBU3qGx1N_FkO7Bqc5QERFWX27Gv-YCg@mail.gmail.com>
Message-ID: <CAK8P3a0NXDi-MmxP-FiBU3qGx1N_FkO7Bqc5QERFWX27Gv-YCg@mail.gmail.com>
Subject: Re: [PATCH 02/17] arm64: vexpress: Don't select
 CONFIG_POWER_RESET_VEXPRESS
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:VSyOV5cMlAdbhN3JqFmMN0U2sJyhUJMaakCoHQoO3e+vT93h/qC
 w5EBbFXXe1wL2X/RbFyFy+Kt6ll/P6j6jA2vBcnbFDUXdf8YbNcypyir1c6Wd+nJ39MIKKq
 U/CKbquc0vWGv48hX3VNuCLdAlCr2fmtFOaBDIhiNnEOubolQkmk7WP98d4g704eWT+TDWt
 aVMZQfUUgJv0n+FhdP+2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GKcUtS+b1fU=:e0xbDFj2sAjYI/5P3xVxYV
 FWCi4zLGv6US/hax+Y3C2o2A4IC9QhBq7P9juUrepAFfU2+8MNmCDiNI0MrCeTWUT3tMmKzO7
 LDxWB6xaiqMPBDVcDaT2fJ+Lk2mZsS4VWPg59C7vVuIuzgGDmYkBjEi9T1R+vJwnxhiAcOsGD
 HoNOCVGvtr3jVGADx+lmwXU3Xu9PJ3pkSfzsUcUAEOx35iZF+D7g2onsRewz/dT3fQkhcb9cF
 +eTEii7oxgftnmzuk6GgrC5oVywosTie39X34HyxdwBgtg9ZikiFmAyTibuyURdiiJjnJvklx
 CkOtpxZi1iB0oJyt4xfbzoMiae6i+/mzy57vGddFHzJ+1uo5n5rtU1Bc9pYzPl7O5S7p0LpPc
 DfnlVfSxQi9NV+PkGp2Y3r4f6O86QhRCQiLMwsmohHgivv5lC58nuSAf+f6dswmgMQZU70tpe
 SBtOevvvRFExL4driJTeiQXdvFrDeNg58Rxmm2ZMeG24QPSxUd1DBvZ1KMyz2EQTI4qQ3sK1q
 /hJi40Pz3MrD3/BLveuciVVZtM2jrBLShmT8EMHHJi5uCP2D0/xJAuXstf++jO64H2mtXkcWx
 MPn6PYqZkSbJyj7S/DgHsibEsHNeD6WXmV4l7SflWM5/f31ujrbVzLTZPxFGvvZ2H+BvgKo/l
 ZLavgz2ZQh/X8mpa+J1vIV8Z54PxJ+GHTBoaK9vc3h8I3X7HnGrv/aEqU30uRZNVzKmkQBmkf
 5whcvBf7wXMS12jFn78AEwcIKtgUfeTZEG0YHY2nLu5m3pPEo4QW8NPdb8DDg4DZJx5B3m34r
 OOi+nrBmFwmpnVxCN+K6oTZXG5dexGvu8L4SOBaeeAyR3Koh7c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_081821_382214_2C2A563B 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> The VExpress power-off/reset driver is not needed on 64-bit platforms as
> PSCI power-off and reset can be used instead. Stop selecting it so it
> can be disabled and not always built-in.
>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
