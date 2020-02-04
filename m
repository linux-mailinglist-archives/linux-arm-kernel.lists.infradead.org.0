Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92606151A85
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 13:30:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XU46oYrhsm5FfU4AbvTNO8hS6bKGu6JBCk8v9+Nc42A=; b=KNjqyHzTknRTnl
	AM3JE8UvloEpMwOzwa5hGaAljZgDPcyyoSyG9GSpOACO9INqU51q1fHPc0Hh3T8a/NyIQA3mqJM7i
	NeF7XbOf29Cpzu5Oj6F6G8h2pbxeZNyaIa2X0NsLsOkivDbMsmMue4Na/qU64Bf8mWX42MeLRo+Dj
	InBLBQbylRTzTYowJw5GaxrjpD7o91yiv5qxJOzyd3IG+yorsa7kjzokcqhGANF0ydZFxjzoregbF
	bRncHk4nBCxORd5q/+A9gluVGyeh3GlQf8FHUU6rhvJlwpHZlO5T8S8imIwXtdcz0rA7HmxGW3o7Y
	hxcNBCFIY33EZFFsWayg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyxLO-00045w-Qu; Tue, 04 Feb 2020 12:30:18 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyxLH-00041H-OB
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 12:30:13 +0000
Received: by mail-vk1-xa44.google.com with SMTP id b69so4829589vke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 04:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fBxb8ipzgRQ+TPw0PfltDu/6A8Y/sJwOnRag8CswWiQ=;
 b=pftp3HPWFrzJ+nM082RVEP/3qxqGrCrrK63HgxZatNhHJMQt4swrhizc6zxRaMif/Y
 68MEqB/3xmL7bnMCXkIDVy1s70kEISAp7/DxndS64RxliiDeJaPayvbZTd7rLnsXUffI
 TcdQEwiuZykgI3odG8um786U0m7zR8BoZJ0TlGFCt6GLVe9AmffcCgYX8B1BPn1Tpv1i
 bkpWBCFGAQ7N6T+Jd2+etjSuts4n/eg+eq23HaSu41jbUJFTz8gVFBPQepZksDel2PSs
 G4L7fAtaKe7OJFSjENVVnY/4AiDGlxWs+x26QUfOdgTbnIc9xYPsQZXhgXxdS2TyPmlC
 uMLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fBxb8ipzgRQ+TPw0PfltDu/6A8Y/sJwOnRag8CswWiQ=;
 b=bATEiD12RcE1ifUJtH3U961KVt56QprHro1tcz6oSLnahMRPSLl5UTCT0k3EdaKGln
 tnAJkMeQdWbJybP3vaj6x5lC3Y2IkYMinJVGs6LA39besxGQvk/dsMMe7/O6Ws00+taH
 vEVpfIE+KHlXqJa8qM69ggpAK8Z9Pn1PVm8hoVqMMdgJb+rClcQb1lM55VcjmSdqvB1U
 wntCuTJFMDmG921PwGNuzDENI1fhF/DAm8xfKVE5Q4sKieWyZcqgwEmA8y8SgD3r6wYW
 vpgq3v8WJTap+Mt+WL3ZLeS3vqX/HGsXekHPKas51MQqxqE5lUfdWYnAVaIlY4hSZ8Ke
 7/xA==
X-Gm-Message-State: APjAAAV9riKrF4STNFUJ1tjR8t+DkA1rneAX/HLtDXWJyI0D2G0gG5dQ
 QCmvlrYwL90m1w73J4Qpi+7gFFgQ0MEX57r5HkPH4w==
X-Google-Smtp-Source: APXvYqxYGFqnJQo7zKASrHj0432bv9Emj2fu3sw1yKpzLrKSeqw4SjD1C/fS2qFnfju3rbOTUHqFJn5eaw1Ppq9t95c=
X-Received: by 2002:a1f:914b:: with SMTP id t72mr17403010vkd.101.1580819410057; 
 Tue, 04 Feb 2020 04:30:10 -0800 (PST)
MIME-Version: 1.0
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
 <1579602095-30060-5-git-send-email-manish.narani@xilinx.com>
 <99fd3904-37fa-f070-f7ac-e1dcb5bf43de@intel.com>
 <0d7e7a44-91dc-baef-5dcf-4ff683e98581@xilinx.com>
In-Reply-To: <0d7e7a44-91dc-baef-5dcf-4ff683e98581@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 4 Feb 2020 13:29:34 +0100
Message-ID: <CAPDyKFosDoABbHaoEtyay-uMKpq6QXsoby631gK-1f6iAS0mgg@mail.gmail.com>
Subject: Re: [PATCH 4/4] sdhci: arasan: Remove quirk for broken base clock
To: Michal Simek <michal.simek@xilinx.com>,
 Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_043011_826392_0CC56E64 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tejas.patel@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 jolly.shah@xilinx.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Feb 2020 at 12:42, Michal Simek <michal.simek@xilinx.com> wrote:
>
> On 03. 02. 20 12:31, Adrian Hunter wrote:
> > On 21/01/20 12:21 pm, Manish Narani wrote:
> >> This patch removes quirk which indicates a broken base clock. This was
> >> making the kernel report wrong base clock of ~187MHz instead of 200MHz
> >> even as the measurement on the hardware was showing 200MHz.
> >>
> >> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> >> State: pending
> >
> > Huh?
>
> It shouldn't be here. It is internal patch labeling.
> Manish: Please send v2 with all lines you got and remove this above.

No need for a resend, I can fix this before applying, which will be
when rc1 is out.

>
> >
> > Otherwise:
> >
> > Acked-by: Adrian Hunter <adrian.hunter@intel.com>
>
> These patches requires firmware changes. Feel free to take it directly
> via your tree. If you want me to take it via arm-soc tree please let me
> know.

Thanks, I pick them up via my mmc tree then.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
