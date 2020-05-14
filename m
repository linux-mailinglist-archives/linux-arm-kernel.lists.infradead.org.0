Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8B91D3557
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPD0JHO9nVZ8cHK6JDwwEqki9foW+JWYl2Y43ihqAbw=; b=BSwEUXr9MaLbD0
	970DphBctydIPC3vXDo99cO9YDeCUdSo8Y2aTey8rCl6KKb4hIESxSg4cLjMviTAxsZXFwNDZs1gj
	ivf6/tmp/Qe4FlTZaHMabOK8efEfUKW6s9SeXzZa+ydXjfIbh8h07eH9pKJ6RBmr1L2mJtuUEab8v
	tSkfTP1zYaI1TZTjg8nll1hdvPP6Eyh7EDGefbn2sLO49nF4d0SJfk7znvnpnfE1GXs/pLCYeoMjm
	0r/0aR7f8FPXxlZ7T05TFGYrH2k2wgsB8ICrDiWhSDIdJ58/ie2UeJsnq03nNXS9cD9MJv75cs4/g
	vfcQdeXP7JFzZ5Gj4azw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFxK-0001Zu-Mi; Thu, 14 May 2020 15:39:30 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFx5-0001Wt-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:39:17 +0000
Received: from mail-qk1-f172.google.com ([209.85.222.172]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mj831-1iuR5o0peP-00f9ej for <linux-arm-kernel@lists.infradead.org>; Thu,
 14 May 2020 17:39:13 +0200
Received: by mail-qk1-f172.google.com with SMTP id s1so3375507qkf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 08:39:12 -0700 (PDT)
X-Gm-Message-State: AOAM5337YT103TK7+hlAyS7xaU8Yb2KOXJ3SZVHcqFnI4mdlylqqWsWQ
 1LlzzczaltfzXh0aCFxgD/hVxpTgQLjfqFoe9jQ=
X-Google-Smtp-Source: ABdhPJz2o7raWnxXBssGaBCg6CiOw8+vkSEFJ0EmJwTUKbPf6BgjQmgnIURtzRs/mVFm6s1Off1dhreOumUJgEJsAJI=
X-Received: by 2002:a37:c96:: with SMTP id 144mr5476252qkm.138.1589470751965; 
 Thu, 14 May 2020 08:39:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200429052932.GA2627045@builder.lan>
 <CAOCOHw4GmTYiXrd3z9B-YHq3wcwLYXg4y=nkJWhLCDw9G08KqQ@mail.gmail.com>
In-Reply-To: <CAOCOHw4GmTYiXrd3z9B-YHq3wcwLYXg4y=nkJWhLCDw9G08KqQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 14 May 2020 17:38:55 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0D3dkDynhsGaMYnDzS-ypE_t_tY9Pq89jjdj-kXNigoA@mail.gmail.com>
Message-ID: <CAK8P3a0D3dkDynhsGaMYnDzS-ypE_t_tY9Pq89jjdj-kXNigoA@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT fixes for v5.7
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-Provags-ID: V03:K1:vv6YKFjPT7CAiHiQtAnNMAMNkcf7oN9GH1KzNs9F5EZlFLkV40E
 k0PeJw5pLP9zQKP2KsiMAUg5E0ml+eAU0ADYBtjXgMeRwySVH1dAQ7y7T5/Wbttwy8E1d7X
 O8s+mj5Pos+1HLf2WzbDsYilsLqVLkXl0uNtaQpvE0Ox6lQ4wse1H2rnqt73xtvoW82OeJv
 s/MZJk6GVYUMNa+lt4q5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rnihu9BoUwI=:76M27LK5XUXiGHQqHVlpOP
 42cJ9W+AStvIZIfLcElF99DJZOTSwEOLjRiRrXh5LMb++glNfOXn3w9R8R4RszDsnNesO1tK6
 p8uFfzMFvEx6LASRbalnB/p4KB6TnsgeQeZnTB/JuqQdgro9/302HDH6m1FNFL7XB8bC1JGiT
 3sw7jVpqV2HvFVyu7axeeijqkAgqmoE8f1PiwlX54bXIOO1haE0R6nZEL9bU4qUoSXQTHjIqw
 KEJIon2HonzMTpfMvadxQiRAnOgI7ux2/PL+umaGoC/CLK8lxq6Y6g9QiHaoejDUOxwIpYtns
 W3RGr7/1n4WRVilKTBBl8SoQ4omueMTQnZFzFMDUt0JCuK6etJS4HPnhd2Q7eZqLsS/rQmv+9
 pWlFG26oDvuhZ5eeizUhxtBOCsQYZd/O6jX+A4pWZYzaJ414HG1tYIiX8MhMnJtOdug2ugpt8
 PhAhEc2DHieqI0ivX+FmupavyDWJwmQsQBSYpzNFQ5wnPM+K3y5VhNBh55Lq9CrELFY6TaLAk
 3NF6/4Mr2pLJ9A9Cdt0aTDqPMZmNH/hFSn4U0qJ3aUDiXrUixBNRsgyu91fSH5KgKvdFK4qyA
 kh46RtFzfQcA+lShQoJLPxIOF9goPgSwionrfOaozGISZe5RwbpCfOfzzjrMTSPrmpSOfWFGt
 K0Xx4RxKM6nLwRqRtNMvI4WDzO1dkEw9OcPpncSJDT7xNXZcerFWnEywp6dd2ZKjQTHS9Mnak
 3J9Ctq5o5iPygHnXzq4+kPjWNa4PxL0Clh4bhXAiDLiaKNsCqE5o1dj6/hxDSa3G/+cb0OXDu
 kDrgSjgjr8ZGpbXkoDZsnSJJEPZLQ9Peag7mHTtMzyV0XkZj84=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_083916_245946_EF7CF4F4 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <agross@kernel.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 4:02 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> Arnd, Olof?
>

I finally pulled it in last night, sorry for the delay. I think my git
push came too late
for today's linux-next, but the branch was successfully build tested
along with the
other fixes we got for v5.7, so I plan to forward it all tomorrow.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
