Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D037065A7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vW85/6F5NiA5G3XIkMLfu/tcEcqfSylCpg6vJk8mXAM=; b=bbX/6tptLJ7uLW
	TNCSbGohLFzT1ZFnRbo1AGErD+p05/EISfA29suEviiDShlRlVxkKQQdubePsBvtQZk+T5vlwE8+K
	XXv0Y1g3WR6NVyuzptIFKz52p764Zzlvae2PL9ddd8AGwTxtpgfNmJpKQSFeJ6oAjXsdn9Vm3t2t1
	r338yxV9033EIMUS/Sn9KJbTCu3k5W3ZhyQWDC6TXecWQe2HEMUEe09xHILCLH3mDoY8rW0ph0J4v
	w3MPVcjG6MUEp2/BqXqiChzQQShyeNY0m+z8J/dPvcBoseWeyYpVw673nbZJlBLfTTHpR0gacIr0w
	1qwnjLOLthtGzvE8e39g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlb1h-0001sQ-Ju; Thu, 11 Jul 2019 15:30:29 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlb1L-0001SK-B3
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:30:08 +0000
Received: by mail-vs1-xe43.google.com with SMTP id u3so4496393vsh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NKwh0BaKc7HdLVY/44p+/9uGqJilXs/pFH756+9dwa4=;
 b=pWNqSiF0wI+NAhKUO9jeUT5ddMPc4IWrwifKWWXllUwVCKeE7nkFPXKD/OTuDl+7zE
 r5YMnOFNfrvWr3wNDsqvEtjxgi43PgnPfifLNFD0znDVYw3QjzufMDUOxPj7jM7Kx2zG
 dMB90OfJ7gdvM3hVMVoITiVJO+y2/x1NAfphjoOcE1sc2u55FCTGkL8m4NR9zpOy52Zs
 U+8l+AAaYyDoDiC4V1daq19Ag8wP59d+QTQmV1YFziXr9qldRdiS2U/xHMPtCh140S88
 V9hJ7AYrOymLb5WnV96LZoEvmt6gKwMm2vYtzFmxitS1wPtZj8LwfPYM0p+Ucd3OVPNs
 u2iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NKwh0BaKc7HdLVY/44p+/9uGqJilXs/pFH756+9dwa4=;
 b=oSb7V4HnkaF9j4a0GCdCN495xIlcPSYhrfVNF0E2NFlSyk2W/c76tLhbggludgeZSo
 oYlLmFNeh74bBF+OG1nOJBmP6KFrZaqR3WJOsjTZpEz3aIQFCg/Vig1iPDSOIPS9KGts
 k9lvX4nTdhSHFuEacUuaDVfgyQNHwVpMz8QnXhp1elSndWtPE2rwtloxsNLWH+6U3Z7i
 mFSFOUb4zWrSAwac7cA8Q7WZfjbYT5mWwQInZjslhrABUk99ZQYB+Fu5yGZlz0vFK8ut
 SCWuGtmDxdFr+awHuNkAUFNGruh8nZT1K+FDwusB9gmy6ep7kDHSE3tyfS7xKOIxcU8O
 dhDQ==
X-Gm-Message-State: APjAAAUwn1qTmednXnEgUzwvJvM+TTwk+WoM/H4xW9eLRfjYFtebRSni
 XaMyZPC3HueyvcAvEfVUm2FTeMY5r+U01lWJiXk=
X-Google-Smtp-Source: APXvYqyD0lSKwc7ImB95W3u/TfjlUbYrn4b/hJuAi+NA5A4U1ZHu5NVT6j14kb0e1Cw62+NTPEJ+C5zvLalN1NjiCws=
X-Received: by 2002:a67:fc19:: with SMTP id o25mr5269898vsq.106.1562859005683; 
 Thu, 11 Jul 2019 08:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
 <CAOMZO5ADK1L5UMM9XZetHvmjTvmvUg99G7VPdeXitgpctGLCkw@mail.gmail.com>
 <CAOuPNLhZhgN26rquLQq9zHBct1QxK-7hXAza0xk-0QooPGYLNw@mail.gmail.com>
 <CAOMZO5BsJWTw0nCeUboam4kuKyCO3N_Ch5ZW8k5Y9KFtQBanhQ@mail.gmail.com>
 <CAOuPNLjrAU_C_TUKFMs1d0eGsw=AxuG6d6FhNHtHFwVhfYZGgA@mail.gmail.com>
 <CAOuPNLhstoCjxijrnKNmV1iKWjAXvSZ38Z13tfd5bvGbYSqPAA@mail.gmail.com>
 <CAOMZO5CD-QQaZwNfiX6mOLAup4J8dBiqEb_V_6jz_z5jXZ5cEw@mail.gmail.com>
 <CAOuPNLj=L_3RoC=9ws4yn1Q7QLoS3OEZ8FLRrF04HRQtQvc0Jg@mail.gmail.com>
 <CAOuPNLg5A1bB-Tmndm4PvsJ40tj0yn-bJ2mfifEpjAF-t84wiQ@mail.gmail.com>
In-Reply-To: <CAOuPNLg5A1bB-Tmndm4PvsJ40tj0yn-bJ2mfifEpjAF-t84wiQ@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Thu, 11 Jul 2019 20:59:54 +0530
Message-ID: <CAOuPNLjdSh+pw196PAcBO9B-OgRb=f7sKcMFyGJPW3PNFwEyZA@mail.gmail.com>
Subject: Re: [IMX] [DRM]: help in analyzing clock_summary rate difference
To: Fabio Estevam <festevam@gmail.com>, s.hauer@pengutronix.de,
 p.zabel@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_083007_400217_5D22ECAC 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Hi,

I need one general help in analyzing difference in clock_summary rate
before and after the system resume.

I am using custom IMX7 board with 4.9 Kernel.
With this I am trying to support some functionality during suspend/resume.
I am trying to analyze clk_summary from:
# cat /sys/kernel/debug/clk/clk_summary

I observed that there are difference in "clock rate" after system
resume and module install. However the enable/prepare count remains
the same.

Since I am not much familiar with clock framework, I am looking for
some help to analyze this issue. It's an internal issue.

May be someone which is familiar with clock analysis or fixed the
similar issue earlier can give me some guidance.
What does the difference in clock rate indicates?
What analysis can be done to narrow down the root cause?
Any example of reference could be helpful to understand.


Thank You!
Regards,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
