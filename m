Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271AF1C2650
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 16:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VCV875oafJF3GpJ+iEaAsr3oo1p75lVStzxxwNQ5Szg=; b=bKZQ8mkF+Yx3AFeMlIT2XoxpKx
	e1aylAw6G6xvGqenSC0wZo13T4Vj0uLf/rxWcnhwHNs6j+opy68i7pCX57Z3Kv5sBKMkwEJXYvaO7
	/SGz9l4vlcCMkUj14psSdBphEE4PFe/cKnKq+DGwagMr1GzuX68+vnvYfCBd+fkPTG9/DxgVqRbai
	pN6QyXjgl/08EhgToEvgto3bxPNmTavUw6OF6E80XiA+7+Sc+JwCLjZLfEP/Xwn2JvtCumT36n6xg
	UPHGhcXU1T7YaVs/SFtYNQb9untterdib2zq4mgttBAhi3tXKVG4DjGwc+48+KCk03QPzyYorKgIP
	u2ZunLqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUtV9-0001bK-P3; Sat, 02 May 2020 14:52:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUtV3-0001Zm-MR
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 14:52:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id x25so3250769wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 07:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=eUmO9lFyYnSEUotvSkDdW7nX84l9YUGsDR7MyoCN3CU=;
 b=YJr5Y8afBHWlluBWUgx/5EYN6hyE6dcLw2z1n9vRkLHzQbpSGBhpcOfqygIy3U0gu3
 ZU0X0/T6IEfb9apK8ibAiOkQJB8QlmXhpHVMRe9jOCvalPLCRrcDaDdUz7BHVGmDsBdG
 u0quqzJnaF5I8H1s35iZ55qzUq6QYCjn4YnQcYk32wqe6fgKXVJnpcLkiex+yTPHan9n
 mVgx3/aJ99LjjauFWmgwTQallkMJgpWyd89bUQVy+MrLy5YJ3z9ta+ZgPG+Kt5yzEzD+
 h/CVwqzTMwVfGsIiYzVW3V/WuilTmu0Zdf20RW+WSqc2FJpiUV/KjciIkYOVE8Y0RaLJ
 nMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=eUmO9lFyYnSEUotvSkDdW7nX84l9YUGsDR7MyoCN3CU=;
 b=fZyzk5R5xNWEzXzlgmetc3rUgjs/k5grqTEeUK2YbvUnonh+tTMYfjTsFC5s+a5XKw
 F30BSOq0BasBHHs0X32RdP77pZ2gDiOD+FXg+p1v3iYYG2KqRsEFFbuCw+rNAZDqgsba
 0kh/zVG6pRdInNlc+3fjfnTRmBL713c6Po0ygybxC7+/8ZjrkSlFYRtN9P/oaQZOpss1
 iwM7z42Ya9vCFd/eU7B1pBIbwbqHuMlTsE7d9G4AFcvJwuBL3nArrA1F0AWN04sDOxTh
 owRoBbmFjZZ+9tQ8ZYW0ZOo1+pOM1pZCVmjZuAk5WoRW7h4DnJfUdMJ3+S5fIZTBj+Ta
 RtYA==
X-Gm-Message-State: AGi0PuYWU6j+D3vP4xwTv9YF7EX00MJUvj/AP5u/l/a84Nzn9m4TUKRy
 icxBQR6L3hjW/JnaKC+IYSaB/A==
X-Google-Smtp-Source: APiQypLQZrhbbLoB4l9/FVLUeKO9DpS30JZtXUoebbOs+GhYQzJCdHKM8cIDEnbn665XnkBqaQKeSA==
X-Received: by 2002:a1c:6389:: with SMTP id x131mr5212531wmb.155.1588431136061; 
 Sat, 02 May 2020 07:52:16 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id 92sm10023040wrm.71.2020.05.02.07.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 07:52:15 -0700 (PDT)
References: <5eabecbf.1c69fb81.2c617.628f@mx.google.com>
 <cc10812b-19bd-6bd1-75da-32082241640a@collabora.com>
 <20200501122536.GA38314@sirena.org.uk> <20200502134721.GH13035@sasha-vm>
 <20200502140908.GA10998@kroah.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>
Subject: Re: stable-rc/linux-5.4.y bisection: baseline.dmesg.alert on
 meson-g12a-x96-max
In-reply-to: <20200502140908.GA10998@kroah.com>
Date: Sat, 02 May 2020 16:52:14 +0200
Message-ID: <1jd07mie3l.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_075217_785262_4A9DA5EF 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Guillaume Tucker <guillaume.tucker@collabora.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 stable@vger.kernel.org, kernelci@groups.io, Mark Brown <broonie@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sat 02 May 2020 at 16:09, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:

> On Sat, May 02, 2020 at 09:47:21AM -0400, Sasha Levin wrote:
>> On Fri, May 01, 2020 at 01:25:36PM +0100, Mark Brown wrote:
>> > On Fri, May 01, 2020 at 12:57:27PM +0100, Guillaume Tucker wrote:
>> > 
>> > > The call stack is not the same as in the commit message found by
>> > > the bisection, so maybe it only fixed part of the problem:
>> > 
>> > No, it is a backport which was fixing an issue that wasn't present in
>> > v5.4.
>> > 
>> > > >   Result:     09f4294793bd3 ASoC: meson: axg-card: fix codec-to-codec link setup
>> > 
>> > As I said in reply to the AUTOSEL mail:
>> > 
>> > | > Since the addition of commit 9b5db059366a ("ASoC: soc-pcm: dpcm: Only allow
>> > | > playback/capture if supported"), meson-axg cards which have codec-to-codec
>> > | > links fail to init and Oops:
>> > 
>> > | This clearly describes the issue as only being present after the above
>> > | commit which is not in v5.6.
>> > 
>> > Probably best that this not be backported.
>> 
>> Hrm... But I never queued that commit... I wonder what's up.
>
> I saw the Fixes: tag, but missed the changelog text.  My fault.
>
> I'll go drop it from everywhere, sorry about that.
>
> greg k-h

Hi everyone,

Sorry for the mess this seems to have triggered.

Indeed, with the Fixes tag, I understand why the patch has been picked
up. Even I thought that a backport would be OK, since the mistake was
quite old.

If I had wrote it correctly from the start, I would have found the
problem that was waiting for us in ASoC ... but the 2 errors cancelled
each other out.

It is only now that ASoC has been fixed that we found my mistake.

Again, sorry for the mess.
Thanks a lot for your time and effort on this

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
