Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270E64BC96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6AE3lybpEloE8Qoz8FqQYKvi2dxGXRIiHpCkIhMB+M=; b=B/R6sYScl5T8i9
	PzqF20oy38+8Yrh9S39H/2f7exGGuHIjXqKwGFI45QMxb9/dBEv5DDKVsbeeUHFmQLiGzCPB8a8GM
	a4PQBY7+gvjcsiERhd0XrV/7iyc0WMGPnajOqqaexRsRvEScNQ0p2rS5FJy/iv5HEbwmNvK4FZnjq
	YA3YrK0IVq/c1gY/bb+Dlsw/V73C2bm7Vd30xljnDuoTaBlUiLfuB0jgweFvNqGt0fYdH3Of5xctr
	2s4Y2C6FI34cAbOu+pulwhGBCtT5KHajELr/6qAs3x7TMaPBKxNBhjVXK6q1SGzLcp7DrmrYvA4vx
	gt18wbWSA1YILGAv8O8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcFX-0007Jj-Lk; Wed, 19 Jun 2019 15:11:47 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcFM-0007J7-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:11:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id j29so12409877lfk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c4lE+fDC/zjvYHc6bMY9y0fXVZdkPQJMI12oOjRnI+k=;
 b=sBFjUPLAQ8cjPXN9JHlZlv22CPccFqpl0Ah+uRBwMn8r1UCgPDCoEhbg46/fdDQuok
 Me2HINI71XxTkeo9la7F1nAB+b5IIrWzNrNrldg5nGsUkWbAWAFjG8kv1uLXBdG9zUt8
 LloQTMvNLcvcV9DDQMu7FuEjIdwTrNiE7fk0NVySbjzJSRwFm9be/71NIi2GITXQNVPt
 i3q+l2vt0qusV20jkNMXhHaSwhBe+wOFaTi296FszorbodLdURk0IHm/G2vutH7m8hDa
 Rokc24nejYYYW1E2BBqQP/YYfucJda/ZFDubDjJvisckgB5hzCHrOjhKqZeTv/hxpPAn
 NatA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c4lE+fDC/zjvYHc6bMY9y0fXVZdkPQJMI12oOjRnI+k=;
 b=ZER3UqannDSmNHy86ZhnkOhO05ai2r7b0g9hMeuHsvxWzLn0aHGViss19IHwiebkPK
 TgxQ7qZIzgaXXLpeEh89tTVwJgvCKLMW29IW9xq4TbQYsy4tFdFIsnYb73aJAqzEbtOt
 AI89242fMxXdVYqaLzMARgGuIF7ZHbo1uOfpQBp062nIKOAYB5m6zM5jlY+ES6H+I3rS
 Y5q2PKSsJg3pd5JjlW5J8nmcx6sc6nFZ1fGTufXdhaKwGkgrjxDgmyuigszz3TFQ9nZr
 aPQJ5IRszZlGmeFhlEi0WkvUVQmyGMDs2lLqOiSNMzfdtMLz98etqA4AHQ2NfhAxMB6w
 zTWA==
X-Gm-Message-State: APjAAAVxqacM1gHWH4BLhlRzdUiTorBTnTeP3OJ2XvMmDaV5wzG6RSFa
 KRVAySqLa/ElMz7jLFfPleNFL8dEkrtfNUWbuc4=
X-Google-Smtp-Source: APXvYqyCK8YTFUBv1UQndRV7hhrkJSwGjOFnCWzcsoSyOWUwr+U9SgjEgPfsQwWEyMFD3ET+TTI6fNJRcqHDftXikr0=
X-Received: by 2002:a05:6512:29a:: with SMTP id
 j26mr28681961lfp.44.1560957095128; 
 Wed, 19 Jun 2019 08:11:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
 <CAOMZO5ADK1L5UMM9XZetHvmjTvmvUg99G7VPdeXitgpctGLCkw@mail.gmail.com>
 <CAOuPNLhZhgN26rquLQq9zHBct1QxK-7hXAza0xk-0QooPGYLNw@mail.gmail.com>
In-Reply-To: <CAOuPNLhZhgN26rquLQq9zHBct1QxK-7hXAza0xk-0QooPGYLNw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 19 Jun 2019 12:11:50 -0300
Message-ID: <CAOMZO5BsJWTw0nCeUboam4kuKyCO3N_Ch5ZW8k5Y9KFtQBanhQ@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Pintu Agarwal <pintu.ping@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_081136_654035_A258C086 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 12:05 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:

> Okay. I will surely try it on another IMX6 fresh board.
> With 5.1.11 you mean the kernel from mainline kernel.org
> Or, is there a separate kernel repo for imx6. If yes, please let me know.

5.1.11 from kernel.org

> > Then you can test suspend/resume and see if HDMI hangs or not.
> >
> By this suspend/resume, you mean "suspend-to-ram" or "suspend-to-disk" ?

I tested with "echo mem > /sys/power/state"

> This scenario is not with suspend/resume.
> This hang is, when we make hdmi as a loadable module (.ko) and trying
> to install it after resume.
> In this case, suspend/resume will not come into picture. Not sure why
> it still hangs.
> Do you have any clue for this scenario?

I haven't tried this one.

Please test it with 5.1.11 and if it fails, please report.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
