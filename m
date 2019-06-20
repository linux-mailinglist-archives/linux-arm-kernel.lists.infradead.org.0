Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202F54D2C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8i48mB/MYH2Zi/Q0HmJ1DOtbWWXv7zG0zIpBrwHi2E=; b=VrSCOrVUkK92il
	VPne/jlLKF+H9WHQSet6UAeqdxBbi+bfwTpJvCeEHxZExlguOW7vfLXFpvI1rWoOZomNPw4aI7UYG
	/Ujt24vVf+Jp1b/N2mEdVV1Zpha7+FEQmx+m0X//41S02xlEb2/O59Flh4d/MEPfS8zaiMupxRVXy
	ecJmFasQwj2CU+l/JnOLmDyqXB16PP49LFIzBWSaAXI7vmacY+oYFjbbJ9ZBUS0R876IMscZ045VA
	M27ikkhMYoDj14STPCecR6r3yQVvZlOdnBtPtqrFM0wanyifalHGVesHoVFpkoA6L+aQiQDupuR9q
	YjnsV0OHFKr11Hgske4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzcC-0002HJ-RP; Thu, 20 Jun 2019 16:08:44 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzbw-0002Ex-5U; Thu, 20 Jun 2019 16:08:29 +0000
Received: by mail-qt1-x841.google.com with SMTP id h21so3681148qtn.13;
 Thu, 20 Jun 2019 09:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZRLTstn1uH4xoAiOrvyBM/9FFvAo+8BIlcktIv+nkjc=;
 b=CCS/nz0hku8hGuhkjK6KYWjdMpaGphU8wH+TZBBIxWr/1ytT908qf1jGJmv50EUhid
 cCpSZE7w14Dz7/3e/Aec9rzY381NRnLSowrPG1josN80sE6k3/A4lHcde1d3MIib86ur
 ohblVxNSesRF2PSufua7wr2grW3EkYbDrYavkYg8WOt0krt90YqiMMSQswxjhHqoy5Je
 kp81zHJNTw88zKOCPlap6NwUr6MMRZxkCAvrD2QVm+IcriRMWt+Vm6E4skL3tDYG0QTG
 57UR5XfLCaCa1b7dq0eDLTbNmn70CklbJHSBczdlMycBQPZhLGCyL7ZKRQjgLTxqr0e6
 opeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZRLTstn1uH4xoAiOrvyBM/9FFvAo+8BIlcktIv+nkjc=;
 b=sRdI7GqbCeSs0za+QVhbFrI8HyF7o2g/R26uZtlih4m5hga3zwGh40/nXnxzQ0lipu
 ctW5NeIoXQVS4+ukWuVhblUlRXXgr+w2EbR2mADzYE3T6PuHDaK07GE+yvC47o06MIZK
 hW9I4QZPdRBnBq1fUdr9SWcarS0nPY5vgznvp1NcbBUvY8eWLwL7Zx4Dw6adIew9F+3j
 +X7Sx1C5NytWcEx/u4CdjvVqrzZcjT18MB2Cfsmx6iIxsitjIgjFtOLmXK79SASIGIJC
 E1qwdSSPOAlzXsmVfVfElxS2S4/Mp4XAFhGexpzRmIX/XBOZUEIHA7B7WAVZw9zero/4
 bt+A==
X-Gm-Message-State: APjAAAV3Z5PqVuprFFjskEMZ+l9HmUTDyq618IO9SdLng456oCweEyaw
 nKX4++AYmhR685+XdkOly3WCTzeJoV5pLgYMvOk=
X-Google-Smtp-Source: APXvYqxHBeodrFoAFIOXLEADpgqqMN5M0vUe2+Ac9VSRt+mgyN8DSm5aKvJf8irOp9uottIdu+z7UBTkzQVBY5AJPbU=
X-Received: by 2002:ac8:2439:: with SMTP id c54mr80219281qtc.160.1561046906007; 
 Thu, 20 Jun 2019 09:08:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190620134708.28311-1-enric.balletbo@collabora.com>
 <20190620154150.GE5316@sirena.org.uk>
In-Reply-To: <20190620154150.GE5316@sirena.org.uk>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Thu, 20 Jun 2019 18:08:14 +0200
Message-ID: <CAFqH_50RN0xXfzMDNRjQpk8egCEcxH7NEXr8KVYsh04mSLQEiQ@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rk3399_gru_sound: Support 32, 44.1 and 88.2 kHz
 sample rates
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_090828_211422_A9A2FC3E 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eballetbo[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, Collabora Kernel ML <kernel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Xing Zheng <zhengxing@rock-chips.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Jaroslav Kysela <perex@perex.cz>, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Missatge de Mark Brown <broonie@kernel.org> del dia dj., 20 de juny
2019 a les 17:42:
>
> On Thu, Jun 20, 2019 at 03:47:08PM +0200, Enric Balletbo i Serra wrote:
> > According to the datasheet the max98357a also supports 32, 44.1 and
> > 88.2 kHz sample rate. This support was also introduced recently by
> > commit fdf34366d324 ("ASoC: max98357a: add missing supported rates").
> > This patch adds support for these rates also for the machine driver so
> > we get rid of the errors like the below and we are able to play files
> > using these sample rates.
>
> Does the machine actually need to validate this at all?  The component
> drivers can all apply whatever constraints are needed and do their own
> validation, the machine driver is just getting in the way here.

I think you have reason, I'll test by removing these validation and
respin the patch.

Thanks,
~ Enric

> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
