Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B59FB12ABAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 11:44:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwpnvYAmRi0ejujGKqqPADdDBhwAF2M/S3a7+V4M7Lw=; b=UanPKq08qMDIfi
	KxzXUyLFrclwqdVas+1gFhqFa5fy5S0wGexZ4UTlhT/AIgVWzHngKCaJwZcUPVIavLK17IlaNJVQ5
	r2ArVgv6wQUtrvXJPvajLydwjiuPimHIHW0J74lR1o8yAoYJX4b7wb2xf5HA99dUrYzAdxJHug7HM
	H5sDoCHNqojhRuQ2zRDCO0Iy+8HFmq2TZ+2e/YVBqkmLFDVeKhF6QJtEO7ebW+ztScYlZpJSykHfq
	J31W7BFeNUdecZfKWfGmySwseX1HTI91R8JCX37RhQ78HNpx58W1s/MiHkW8vLpGZSBoVN2Oxg+f0
	TYtMDBDAUasSLtpEfS2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikQd8-0003Al-HI; Thu, 26 Dec 2019 10:44:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikQcy-0003AC-PW
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 10:44:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id z3so23374549wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 02:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=W6Af4lIIOy516w1HZJv41QRub9HWiIk1RJOzz7dfgEQ=;
 b=RRWj7QJRVGD7qhdqdeqYLZtA3GNeE24HteoqtMAQy9EdtyETZbqpILSloz8G+1S5l3
 Cy8XV31tpQBWog6+NhQ5HZyK+hIMRWTEzlZDq+OY5LOH2PWHZAt54XpNkSFW9VNYvK7+
 qOD+l/zTDhOjfG1WiXgWamWyNGx6mvp/eV7109emFx6+YLbOFGlnsQBka54AfSjekt3u
 5bTHFNQZ7V3MphobXR5/U8bc0spT9mDwNzvS+LweUtl1Fe5JO8PmXYFYJbH3Vq6l48qN
 ua7ud5NKDlQsiX8s1jsxKYZO3y1Qn6lYP536Y1fUhm8GTSH2duSQ/2CNMuBi732zoPwH
 Swdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W6Af4lIIOy516w1HZJv41QRub9HWiIk1RJOzz7dfgEQ=;
 b=djg3Zn90bVGJCsXcaYrzLsTd8xVMVLKb9XvpMFpQY3FA3TbwcMFQHCjYrwpFHimrrx
 Mq54mCsiL5AfVrisMEElTJuW6r/cfLgQfPMRCtrfoN36hrlriwym21W/bCGxk/ToSXfU
 Wl09PHYRlDI7m1OuZdH1gYoOdl95EcGyzc2Q+td6M7UWd//UkUvrV9JyPjsu5/ivRY/6
 +bqAXJk8MaD0P8Tx/xtYjg2477YHzQz7wFZyIF8ZSGi/dj0FtVFUvXEsv9iilo9rR94d
 anrhH3ZO7Q0zrjYjmYMdm7OVCH1xT1EpV9qjJu15JBQnzLXgPQBT8nYMz9b8Z2LqcTOq
 QHOg==
X-Gm-Message-State: APjAAAUItDWtRUV0Y6RVtQh5yI5x9TVz4C3suYjjsx5yvF/2iOYXZkTP
 5SP42b0ZvaaXNkMp2dakFag=
X-Google-Smtp-Source: APXvYqzgFYTin+GSIcMwEioDi0ZQwh5k4QJ4YC+vSqSVqZpzHffcKVk3xA1ydLymrJcfkxNAOQOngA==
X-Received: by 2002:a5d:6ca1:: with SMTP id a1mr43133454wra.36.1577357062602; 
 Thu, 26 Dec 2019 02:44:22 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id y20sm7891048wmi.25.2019.12.26.02.44.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 02:44:21 -0800 (PST)
Date: Thu, 26 Dec 2019 11:44:19 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
Message-ID: <20191226104419.GA26677@Red>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <20191219173321.bni4tbrhfkkphv7k@gilmour.lan>
 <4015380d-33ef-312c-a886-6e8bf65c976a@linaro.org>
 <20191226092751.dc3boaxsaeivuhw4@hendrix.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191226092751.dc3boaxsaeivuhw4@hendrix.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_024424_853167_6BA4DB76 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 10:27:51AM +0100, Maxime Ripard wrote:
> On Tue, Dec 24, 2019 at 07:30:55PM +0100, Daniel Lezcano wrote:
> > On 19/12/2019 18:33, Maxime Ripard wrote:
> > > Hi,
> > >
> > > On Thu, Dec 19, 2019 at 09:28:16AM -0800, Vasily Khoruzhick wrote:
> > >> This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> > >> H6 and R40 SoCs.
> > >
> > > Thanks again for working on this.
> > >
> > > I'll merge the DT patches when the driver will have been merged.
> >
> > I've applied patches 1 & 2.
> >
> > They are in the testing branch and will go to the linux-next branch as
> > soon as the kernelci passes.
> 
> I just merged all the other patches (except the patch 6, for the H6,
> as requested by Vasily on IRC).
> 

Hello

Vasily asked to not apply H6 due to my test failling on h6 and since he didnt own any H6 hw.
But it was failling due my fault (a failling build).

So the patchset work perfect on H6 (opi1+, opi3, pineH64 both model A and B) as reported by my answer to this thread.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
