Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810F71964BC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 10:16:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=josdazKeCRAa1nx9KKI+dg+r7llsxNJJWX1Iecjhj4I=; b=C6jTT0R3sMoxCg
	CB0BY3+XmshdRI5+uWRaExFXbCVLaidwi9gpqa0cNpc0oWMaRldqwd6AK8yT5A1dIYhVBTuWKdtOJ
	atqJZwa0SBVNgACPPT95UC7BZvgDaEWDOn5MpUBS3Krc3j+qY2ePGgJesMQiWtC1WR+iBD0BORHU4
	pX+C0J6KjXz3Ul1/i0BFVCk6BhqvmytgN/fwOYp7Gfqg/X6letd5iRC//hv033IutoylRj21yayUO
	aoY+Lr0aet8/KhiCYO65FsTmjc4O42LgiqqDgjZVG003BqIrT38HthMhRjzHihB0kaf+tqMWeXPfc
	Oejnag5yKOL10IlI5cPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI7ZS-0004hM-TO; Sat, 28 Mar 2020 09:16:02 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI7ZK-0004h3-7P
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 09:15:55 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mnq4Q-1jbXEC1ifa-00pJWR for <linux-arm-kernel@lists.infradead.org>; Sat,
 28 Mar 2020 10:15:50 +0100
Received: by mail-qk1-f180.google.com with SMTP id u4so13526040qkj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 02:15:49 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0g8Na00cHeyyCknJjSGc82l2wNO5LBqhE/KqV2hxEpFgF/xiLG
 XiET0fH8hD2oDuTLH1d42kew5hbc+NLZOBMhPHc=
X-Google-Smtp-Source: ADFU+vsEwsZ6iJg1C4TSE1cMWb+UnTTxhSDojVw/L0OAefIFglRrWD4E/aTUDz6YJYnZmNCawfDP+EZ7VusIyFa5cpQ=
X-Received: by 2002:a37:6455:: with SMTP id y82mr3167433qkb.286.1585386949004; 
 Sat, 28 Mar 2020 02:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200106135715.1159420-1-robert.marko@sartura.hr>
 <CA+HBbNHEetusFNH-8Qmva=2-_HQRRJ33qfBRSudZBVW+vK0tnw@mail.gmail.com>
 <20200327220545.GC5063@builder>
In-Reply-To: <20200327220545.GC5063@builder>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 28 Mar 2020 10:15:32 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1_eyVSTgKDk+qph6CCKswWFWhPfX=yi3=jAeUf4uWC6w@mail.gmail.com>
Message-ID: <CAK8P3a1_eyVSTgKDk+qph6CCKswWFWhPfX=yi3=jAeUf4uWC6w@mail.gmail.com>
Subject: Re: [PATCH] ARM: qcom: Add support for IPQ40xx
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-Provags-ID: V03:K1:Ohu82QLzsaHkp+90ZAo0MRp9EQ4fOP++zkm9LD/a9ZUJJPBStTu
 O7MS66umQXwcQ0k2z0mAgvLrEGig5QU9mW8K3sThddFinm9dpxnlk4yKAUPZyLbY4Bdnfrm
 m8BY2qw4iQzvw0tS3Bfb5+IL6oszaLNtOxrXbgZdwAq+TnM3zD3mANjBMZbBvPUsMh3rpNK
 yJLzqinr6rsiqZ+Os7grQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xNGlIb+Q/To=:otmm8IwqSphhDseVCsPwZw
 1fbdpuWThOnzcEwLnb9qKIv5rTPkRA7YEXeHWn5NwXntX49Mp/91OyorVFRK9E3uT312+M0MI
 TjyoxihvxWL8809oYTmnQbjwW+LeTnU8a3+/yAwE1K4jhJn6rMrgJDR+ha/fGeiLfOX/bPfYp
 cBdy8r/L4G8OnRdFnqI+KbXY26nzIzYxfEABMf+dMZ56ztT9oPf7rw0O0e9YGiM+C8/SKxnsV
 hbItstHP4AJQ7MrpdG00ZCxgjoW+fh8BD+yXx0IGwLrlREsF3tSY27VsDxKhZ0uuGtu+lDfjN
 JXdw3RYRuE9SsSf7qykt/P8l8zXABidYo6k1gnIYSDeoAv2CPqfJuqOdNd/Mg9FLGkzyCk+2a
 R9w1cjFRalS0RkNzNm+HXbgV96l2vqvPnaDvpQWRPXvoQZVF0yeqyMKUwJ8PpB+BqDVnebkHr
 JY8zISHAjEUsoPZrGV07rUakkU3XxyREqschvcl1aKGRcuHeTlsa3ptCE5TMI7UbQMsFbT+LT
 aqYewxVYcxX/ltkN+/mY+KMq4eqECGYgpUQv+0HxQwolLSdURrfFwk69oOyc51ce3FsvFf7SZ
 j81b/Xsvop7julZzwu0NxF8cCiJVdZOh4QtNTSjoK8YK9g0pGBd4EFVv+nLlyOGQonGrl7vVH
 dh6HlhkLWZyGspG+MzO+56qVuk4RFLDfLm3tBW1zUSpNLDhlZqNa4gzjjh4dJbQOjmtqIPcN7
 bt5DDX0eiL2ETxBwRiO5V0yL46+GGiGECObHx+u14R4yxnNiXsDrcdULYt/6btYAIV2YJFPb+
 3OFQQWZ10xPxVf0ipblX0phGhtExeUx8CHY5WFeN8eX2DWNWYY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_021554_560616_D30CE0A2 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: Luka Perkov <luka.perkov@sartura.hr>,
 Christian Lamparter <chunkeey@gmail.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Andy Gross <agross@kernel.org>, John Crispin <john@phrozen.org>,
 Robert Marko <robert.marko@sartura.hr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 11:05 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Wed 25 Mar 03:25 PDT 2020, Robert Marko wrote:
>
> > On Mon, Jan 6, 2020 at 2:57 PM Robert Marko <robert.marko@sartura.hr> wrote:
> > >
> > > From: Christian Lamparter <chunkeey@gmail.com>
> > >
> > > Add support for the Qualcomm IPQ40xx SoC in Kconfig.
> > > Also add its appropriate textofs.
> > Any blockers on this patch?
> >
>
> No, I must have missed it in the past. I've picked it up for 5.8.
>

If we only need these few lines, I can still squeeze it in for v5.7 last minute,
just forward that patch to soc@kernel.org. If other things are still needed,
let's wait until v5.8.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
