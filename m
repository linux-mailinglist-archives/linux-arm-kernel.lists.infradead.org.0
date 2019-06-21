Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277024EC62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1zaYjrtDZVGC0YjsOm/pMSsG6pwdsu61wSrt/RCNfA=; b=N2ZYdqvTXYfzLi
	C9+ag/APZYk95uVzzG2TcT6+UjOgoj2D3nAYyXwQLSsxYC7u97FBl0WHEWwYL8N5p9RDlLMXImfJH
	Bt5PFe+ueC46U4iln7W52RKgtI6ZQEzuQBVp7SD5KwGyylFF4XOE7PmMh4eDjcIhH6o2H+u2ToGoO
	Cit4Z5eVgfehNz2sliJgGqVRszCTSX+XEY4CWSheM5MbKl4/zm2Ytwowt0j7hSDgQuYmQnX51AV8k
	8c227qDDn4sPUaaW7L4M/FW9N3isKR4W97D62czXz06Z6bKxKJD7j0Nvahv3MdTRhGHcomU2q2FgC
	/N6Nt/WPwS4wMwdirSrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLfo-00076I-9o; Fri, 21 Jun 2019 15:41:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLdo-0004Ta-Nu
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:39:55 +0000
Received: by mail-lj1-x243.google.com with SMTP id h10so6402432ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FTokQgNx7cdPK/mv6WeJrmrK4oV61TYi+9Ysp/6TCqk=;
 b=QNGeB8au8O4X7zRxBILcHMpiRAvThsjSSlCDFzpzLn1gzxbzWjjsQK7XJrjtVI6A6W
 Tgz6QjqHyp67mHUQp8WsiowO6LVI6QEqYSp5HfPqDcCyCK45NZbldsRXJPaHCNmaNFCj
 WHUnRrkKUOgK9VcmNDl7giRvj7NBo0rW7wuad8P2OEHM+ZAWBhn3KeYsiWdxEeFhmVCY
 2IS5cVLmlChE4PS34FeFGM7AgNylk72tiCxwLE42XYJn26OcPxKxJQuzKqFPcdXLAM3b
 Uy40pnT3QPNcmLMREtzCaO9/zItQM86ctpG3iCR9c0KQjVQVqzVwtvBGsU3EoZkkbm5p
 Fi0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FTokQgNx7cdPK/mv6WeJrmrK4oV61TYi+9Ysp/6TCqk=;
 b=CrWA0+sofolKQLsY69MUqaz3oydJ9kR2SrTQfG6rWO/kkbfbvC4mal8/iVaTXx1IDW
 CXdM00cafUJFlmtAnzrff7OQ3ELp4Emceh47Fck6t0DB+FosZ2ST6E0RypO0lLE18Cq5
 EduaecFSQFmEhgGDM3ahAVckp5+ZyrwBp7iOx9pmlHWYJTJXpBh8uHiKYUpYr2d7eXKQ
 hW8iTyccKCPw0mPC+7LBYxc3t6LOc8cm47TGqUNjEFetXNWHxaux9fl7exvSd1Alcj5s
 FjOBDOoutvPjKjsEGLXfSxMKjimjOCGaZ4BTDDs4IgCj+0Yw5zU3ZH2Anwq7vkVyYvK3
 lpaw==
X-Gm-Message-State: APjAAAVKHJoRwe0DQ+wrUAl1xIb/zPOKErSmGKkICw31jMm+OGqY8Aqn
 U76D1IOHbYnB0wS2DeZO2rnrJ3cuLsM7NqxQdS0=
X-Google-Smtp-Source: APXvYqxhyvKOX88teGy56BaP4nj6I0qAUv/MiHp1Om2bnmvacGEay3hQQw60oMQOe4cFzs8KKjanBBAqFj3PL249YRM=
X-Received: by 2002:a2e:a311:: with SMTP id l17mr52525936lje.214.1561131589876; 
 Fri, 21 Jun 2019 08:39:49 -0700 (PDT)
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
In-Reply-To: <CAOuPNLhstoCjxijrnKNmV1iKWjAXvSZ38Z13tfd5bvGbYSqPAA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 21 Jun 2019 12:40:07 -0300
Message-ID: <CAOMZO5CD-QQaZwNfiX6mOLAup4J8dBiqEb_V_6jz_z5jXZ5cEw@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Pintu Agarwal <pintu.ping@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083952_944543_D8E55161 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, Jun 21, 2019 at 12:13 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:

> Okay there is some update on the 2nd part.
> Now I am able to successfully install all imx modules after the resume
> (no hang).
> But, I got some errors after install finish:
> [drm] disabling vblank on crtc 1
> [IMX]: imx_drm_disable_vblank - called
> [drm:drm_atomic_helper_commit_cleanup_done] *ERROR* [CRTC:24:crtc-0]
> flip_done timed out
>
> Also I am able to start the weston successfully.
> But I see LCD/HDMI display is not working (only some backlight is visible).
>
> And, I noticed, weston also reports the following errors:
> imx-ipuv3 2400000.ipu: DC stop timeout after 50 ms
> [IMX]: drm_crtc_vblank_off - called
> [IMX]: imx_drm_disable_vblank - called
> INFO: rcu_preempt detected stalls on CPUs/tasks: { 1} (detected by 0,
> t=6002 jiffies, g=289, c=288, q=8)
> Task dump for CPU 1:
> weston          R running      0   306      1 0x00000000
> [<c05282d8>] (__schedule) from [<00080193>] (0x80193)
>
> Do you have any clue about these errors ?

Which kernel version is this?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
